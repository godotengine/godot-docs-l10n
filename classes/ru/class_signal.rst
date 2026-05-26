:github_url: hide

.. _class_Signal:

Signal
======

Встроенный тип, представляющий сигнал :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**Signal** is a built-in :ref:`Variant<class_Variant>` type that represents a signal of an :ref:`Object<class_Object>` instance. Like all :ref:`Variant<class_Variant>` types, it can be stored in variables and passed to functions. Signals allow all connected :ref:`Callable<class_Callable>`\ s (and by extension their respective objects) to listen and react to events, without directly referencing one another. This keeps the code flexible and easier to manage. You can check whether an :ref:`Object<class_Object>` has a given signal name using :ref:`Object.has_signal()<class_Object_method_has_signal>`.

In GDScript, signals can be declared with the ``signal`` keyword. In C#, you may use the ``[Signal]`` attribute on a delegate.


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # Additional arguments may be declared.
    # These arguments must be passed when the signal is emitted.
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // Additional arguments may be declared.
    // These arguments must be passed when the signal is emitted.
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



Connecting signals is one of the most common operations in Godot and the API gives many options to do so, which are described further down. The code block below shows the recommended approach.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # `button_down` here is a Signal Variant type. We therefore call the Signal.connect() method, not Object.connect().
        # See discussion below for a more in-depth overview of the API.
        button.button_down.connect(_on_button_down)

        # This assumes that a `Player` class exists, which defines a `hit` signal.
        var player = Player.new()
        # We use Signal.connect() again, and we also use the Callable.bind() method,
        # which returns a new Callable with the parameter binds.
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Button down!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# supports passing signals as events, so we can use this idiomatic construct:
        button.ButtonDown += OnButtonDown;

        // This assumes that a `Player` class exists, which defines a `Hit` signal.
        var player = new Player();
        // We can use lambdas when we need to bind additional parameters.
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"Hit with weapon {weaponType} for {damage} damage.");
    }



\ ``Object.connect()`` **or** ``Signal.connect()``\ **?**\ 

As seen above, the recommended method to connect signals is not :ref:`Object.connect()<class_Object_method_connect>`. The code block below shows the four options for connecting signals, using either this legacy method or the recommended :ref:`connect()<class_Signal_method_connect>`, and using either an implicit :ref:`Callable<class_Callable>` or a manually defined one.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # Option 1: Object.connect() with an implicit Callable for the defined function.
        button.connect("button_down", _on_button_down)
        # Option 2: Object.connect() with a constructed Callable using a target object and method name.
        button.connect("button_down", Callable(self, "_on_button_down"))
        # Option 3: Signal.connect() with an implicit Callable for the defined function.
        button.button_down.connect(_on_button_down)
        # Option 4: Signal.connect() with a constructed Callable using a target object and method name.
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // Option 1: In C#, we can use signals as events and connect with this idiomatic syntax:
        button.ButtonDown += OnButtonDown;
        // Option 2: GodotObject.Connect() with a constructed Callable from a method group.
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Option 3: GodotObject.Connect() with a constructed Callable using a target object and method name.
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }



While all options have the same outcome (``button``'s :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` signal will be connected to ``_on_button_down``), **option 3** offers the best validation: it will print a compile-time error if either the ``button_down`` **Signal** or the ``_on_button_down`` :ref:`Callable<class_Callable>` are not defined. On the other hand, **option 2** only relies on string names and will only be able to validate either names at runtime: it will generate an error at runtime if ``"button_down"`` is not a signal, or if ``"_on_button_down"`` is not a method in the object ``self``. The main reason for using options 1, 2, or 4 would be if you actually need to use strings (e.g. to connect signals programmatically based on strings read from a configuration file). Otherwise, option 3 is the recommended (and fastest) method.

\ **Binding and passing parameters:**\ 

The syntax to bind parameters is through :ref:`Callable.bind()<class_Callable_method_bind>`, which returns a copy of the :ref:`Callable<class_Callable>` with its parameters bound.

When calling :ref:`emit()<class_Signal_method_emit>` or :ref:`Object.emit_signal()<class_Object_method_emit_signal>`, the signal parameters can be also passed. The examples below show the relationship between these signal parameters and bound parameters.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # This assumes that a `Player` class exists, which defines a `hit` signal.
        var player = Player.new()
        # Using Callable.bind().
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # Parameters added when emitting the signal are passed first.
        player.hit.emit("Dark lord", 5)

    # We pass two arguments when emitting (`hit_by`, `level`),
    # and bind two more arguments when connecting (`weapon_type`, `damage`).
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // This assumes that a `Player` class exists, which defines a `Hit` signal.
        var player = new Player();
        // Using lambda expressions that create a closure that captures the additional parameters.
        // The lambda only receives the parameters defined by the signal's delegate.
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // Parameters added when emitting the signal are passed first.
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // We pass two arguments when emitting (`hit_by`, `level`),
    // and bind two more arguments when connecting (`weapon_type`, `damage`).
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }



\ **Note:** In a boolean context, a signal will evaluate to ``false`` if it's null (see :ref:`is_null()<class_Signal_method_is_null>`). Otherwise, a signal will always evaluate to ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование сигналов <../getting_started/step_by_step/signals>`

- `Основы GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ )                                                                                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ from\: :ref:`Signal<class_Signal>`\ )                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`connect<class_Signal_method_connect>`\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`disconnect<class_Signal_method_disconnect>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit<class_Signal_method_emit>`\ (\ ...\ ) |vararg| |const|                                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_connections<class_Signal_method_get_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_Signal_method_get_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Signal_method_get_object>`\ (\ ) |const|                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Signal_method_get_object_id>`\ (\ ) |const|                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_connections<class_Signal_method_has_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_connected<class_Signal_method_is_connected>`\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const|                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Signal_method_is_null>`\ (\ ) |const|                                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Signal_operator_neq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Signal_operator_eq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Создает пустой **Signal** без привязанного имени объекта или сигнала.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Создает **Signal** как копию заданного **Signal**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Создает объект **Signal**, ссылающийся на сигнал с именем ``signal`` в указанном ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

Соединяет этот сигнал с указанным ``callable``. Дополнительно можно указать ``flags`` для настройки поведения соединения (см. константы :ref:`ConnectFlags<enum_Object_ConnectFlags>`). Вы можете передать дополнительные аргументы в связанный ``callable``, используя :ref:`Callable.bind()<class_Callable_method_bind>`. 

Сигнал может быть соединён с одним и тем же :ref:`Callable<class_Callable>` только один раз. Если сигнал уже соединён, метод вернёт :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` и сгенерирует ошибку, за исключением случая, когда сигнал соединён с флагом :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Чтобы избежать этого, сначала используйте :ref:`is_connected()<class_Signal_method_is_connected>` для проверки существующих соединений. 

::
 
    for button in $Buttons.get_children(): 
        button.pressed.connect(_on_pressed.bind(button)) 

    func _on_pressed(button): 
        print(button.name, " was pressed")  

\ **Примечание:** Если объект ``callable`` освобождён, соединение будет потеряно.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Отключает этот сигнал от указанного :ref:`Callable<class_Callable>`. Если соединение не существует, генерирует ошибку. Используйте :ref:`is_connected()<class_Signal_method_is_connected>`, чтобы убедиться, что соединение существует.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Выдает этот сигнал. Все :ref:`Callable<class_Callable>`, подключенные к этому сигналу, будут активированы. Этот метод поддерживает переменное количество аргументов, поэтому параметры можно передавать в виде списка, разделенного запятыми.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Возвращает :ref:`Array<class_Array>` соединений для этого сигнала. Каждое соединение представлено как :ref:`Dictionary<class_Dictionary>`, который содержит три записи:

- ``signal`` — ссылка на этот сигнал;

- ``callable`` — ссылка на подключенный :ref:`Callable<class_Callable>`;

- ``flags`` — комбинация :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Возвращает имя этого сигнала.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Возвращает объект, испускающий этот сигнал.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Возвращает идентификатор объекта, испускающего этот сигнал (см. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Возвращает ``true``, если к этому сигналу подключен какой-либо :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Возвращает ``true``, если указанный :ref:`Callable<class_Callable>` подключен к этому сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Возвращает ``true``, если этот **Signal** не имеет объекта и имя сигнала пустое. Эквивалентно ``signal == Signal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Возвращает ``true``, если сигналы не имеют одного и того же объекта и имени.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Возвращает ``true``, если оба сигнала имеют один и тот же объект и имя.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
