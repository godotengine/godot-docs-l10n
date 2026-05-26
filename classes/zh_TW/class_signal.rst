:github_url: hide

.. _class_Signal:

Signal
======

代表 :ref:`Object<class_Object>` 中某個訊號的內建型別。

.. rst-class:: classref-introduction-group

說明
----

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

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用訊號 <../getting_started/step_by_step/signals>`

- `GDScript 基礎 <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

建構子
------

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

方法
----

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

運算子
------

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

建構子說明
----------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

建構空的 **Signal**\ ，沒有綁定物件和訊號名稱。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

建構給定 **Signal** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Creates a **Signal** object referencing a signal named ``signal`` in the specified ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

Connects this signal to the specified ``callable``. Optional ``flags`` can be also added to configure the connection's behavior (see :ref:`ConnectFlags<enum_Object_ConnectFlags>` constants). You can provide additional arguments to the connected ``callable`` by using :ref:`Callable.bind()<class_Callable_method_bind>`.

A signal can only be connected once to the same :ref:`Callable<class_Callable>`. If the signal is already connected, this method returns :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` and generates an error, unless the signal is connected with :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. To prevent this, use :ref:`is_connected()<class_Signal_method_is_connected>` first to check for existing connections.

::

    for button in $Buttons.get_children():
        button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
        print(button.name, " was pressed")

\ **Note:** If the ``callable``'s object is freed, the connection will be lost.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

將該訊號與給定的 :ref:`Callable<class_Callable>` 斷開連接。如果該連接不存在，則會生成錯誤。請使用 :ref:`is_connected()<class_Signal_method_is_connected>` 來確保連接存在。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

發出該訊號。與該訊號相連的所有 :ref:`Callable<class_Callable>` 都將被觸發。此方法支援可變數量的參數，所以參數可以用逗號分隔列表的形式傳遞。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

返回該訊號的連接 :ref:`Array<class_Array>`\ 。連接用 :ref:`Dictionary<class_Dictionary>` 表示，包含三個條目：

- ``signal`` 是對此訊號的引用。

- ``callable`` 是對連接的 :ref:`Callable<class_Callable>` 的引用。

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的組合。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

返回該訊號的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

返回發出該訊號的物件。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

返回發出該訊號的物件的 ID（見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Returns ``true`` if any :ref:`Callable<class_Callable>` is connected to this signal.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

如果指定的 :ref:`Callable<class_Callable>` 已連接到此訊號，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Returns ``true`` if this **Signal** has no object and the signal name is empty. Equivalent to ``signal == Signal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

如果訊號的物件或名稱不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

如果訊號的物件和名稱相同，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
