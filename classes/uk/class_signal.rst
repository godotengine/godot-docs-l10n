:github_url: hide

.. _class_Signal:

Signal
======

Вбудований тип, що представляє сигнал :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Опис
--------

**Signal** — це вбудований тип :ref:`Variant<class_Variant>`, який представляє сигнал екземпляра :ref:`Object<class_Object>`. Як і всі типи :ref:`Variant<class_Variant>`, його можна зберігати у змінних та передавати у функції. Сигнали дозволяють усім підключеним :ref:`Callable<class_Callable>` (а отже, і відповідним об’єктам) відстежувати події та реагувати на них без прямого посилання один на одного. Це забезпечує гнучкість коду та спрощує його управління. Ви можете перевірити, чи має :ref:`Object<class_Object>` задане ім'я сигналу, використовуючи :ref:`Object.has_signal()<class_Object_method_has_signal>`.

У GDScript сигнали можна оголошувати за допомогою ключового слова ``signal``. У C# ви можете використовувати атрибут ``[Signal]`` на делегаті.


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # Можна оголосити додаткові аргументи.
    # Ці аргументи повинні бути передані під час випромінювання сигналу.
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // Можна оголосити додаткові аргументи.
    // Ці аргументи повинні бути передані під час випромінювання сигналу.
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



Підключення сигналів є однією з найпоширеніших операцій у Godot, і API надає багато варіантів для цього, які описані нижче. Блок коду нижче демонструє рекомендований підхід.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
     var button = Button.new()
     # `button_down` тут є типом Signal Variant. Тому ми викликаємо метод Signal.connect(), а не Object.connect().
     # Дивіться обговорення нижче для більш детального огляду API.
     button.button_down.connect(_on_button_down)

        # Це передбачає, що існує клас `Player`, який визначає сигнал `hit`.
     var player = Player.new()
     # Ми знову використовуємо Signal.connect(), а також метод Callable.bind(),
     # який повертає новий Callable з прив'язаними параметрами.
     player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
     print("Button down!")

    func _on_player_hit(weapon_type, damage):
     print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
     var button = new Button();
        // C# підтримує передачу сигналів як подій, тому ми можемо використовувати цю ідіоматичну конструкцію:
     button.ButtonDown += OnButtonDown;

     // Це передбачає, що існує клас `Player`, який визначає сигнал `Hit`.
     var player = new Player();
     // Ми можемо використовувати лямбди, коли нам потрібно прив'язати додаткові параметри.
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



\ ``Object.connect()`` **або** ``Signal.connect()``\ **?**\ 

Як бачимо вище, рекомендованим методом підключення сигналів не є :ref:`Object.connect()<class_Object_method_connect>`. У наведеному нижче блоці коду показано чотири варіанти підключення сигналів: із використанням цього застарілого методу або рекомендованого :ref:`connect()<class_Signal_method_connect>`, а також із використанням неявного :ref:`Callable<class_Callable>` або визначеного вручну.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
     var button = Button.new()
     # Варіант 1: Object.connect() з неявним Callable для визначеної функції.
        button.connect("button_down", _on_button_down)
     # Варіант 2: Object.connect() з побудованим Callable з використанням об’єкта-цілі та імені методу.
     button.connect("button_down", Callable(self, "_on_button_down"))
     # Варіант 3: Signal.connect() з неявним Callable для визначеної функції.
     button.button_down.connect (_on_button_down)
     # Варіант 4: Signal.connect() із сконструйованим Callable з використанням об’єкта-цілі та імені методу.
     button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
     print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
     // Варіант 1: У C# ми можемо використовувати сигнали як події та підключатися за допомогою цього ідіоматичного синтаксису:
     button.ButtonDown += OnButtonDown;
     // Варіант 2: GodotObject.Connect() із сконструйованим Callable з групи методів.
     button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Варіант 3: GodotObject.Connect() із сконструйованим Callable, використовуючи об’єкт-ціль та ім’я методу.
     button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
     GD.Print("Button down!");
    }



Хоча всі варіанти дають однаковий результат (сигнал ``button`` :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` буде підключено до ``_on_button_down``), **варіант 3** забезпечує найкращу перевірку: він видасть помилку під час компіляції, якщо або ``button_down`` **Signal** або ``_on_button_down`` :ref:`Callable<class_Callable>` не визначені. З іншого боку, **варіант 2** покладається лише на імена рядків і зможе перевірити їх лише під час виконання: він видасть помилку під час виконання, якщо ``"button_down"`` не є сигналом або якщо ``"_on_button_down"`` не є методом в об’єкті ``self``. Основною причиною використання варіантів 1, 2 або 4 є необхідність фактичного використання рядків (наприклад, для програмного підключення сигналів на основі рядків, прочитаних із файлу конфігурації). В іншому випадку рекомендується (і найшвидший) варіант 3.

\ **Прив'язування та передача параметрів:**\ 

Синтаксис прив'язки параметрів здійснюється за допомогою :ref:`Callable.bind()<class_Callable_method_bind>`, який повертає копію :ref:`Callable<class_Callable>` з прив'язаними параметрами.

При виклику :ref:`emit()<class_Signal_method_emit>` або :ref:`Object.emit_signal()<class_Object_method_emit_signal>` також можна передавати параметри сигналу. Наведені нижче приклади показують взаємозв'язок між цими параметрами сигналу та прив'язаними параметрами.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
     # Тут передбачається, що існує клас `Player`, який визначає сигнал `hit`.
     var player = Player.new()
     # Використання Callable.bind().
     player.hit.connect(_on_player_hit.bind("sword", 100))

        # Параметри, додані під час випромінювання сигналу, передаються першими.
     player.hit.emit("Dark lord", 5)

    # Ми передаємо два аргументи під час випромінювання (`hit_by`, `level`),
    # і прив'язуємо ще два аргументи під час підключення (`weapon_type`, `damage`).
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Вдарив %s (рівень %d) зброєю %s, завдавши %d шкоди." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
     // Це передбачає, що існує клас `Player`, який визначає сигнал `Hit`.
     var player = new Player();
        // Використання лямбда-виразів, що створюють замикання, яке фіксує додаткові параметри.
     // Лямбда отримує лише параметри, визначені делегатом сигналу.
     player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // Параметри, додані під час випромінювання сигналу, передаються першими.
     player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // Ми передаємо два аргументи під час випромінювання (`hit_by`, `level`),
    // і прив'язуємо ще два аргументи під час підключення (`weapon_type`, `damage`).
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
     GD.Print($"Вдарено {hitBy} (рівень {level}) зброєю {weaponType} з ушкодженням {damage}.");
    }



\ **Примітка:** У булевому контексті сигнал буде обчислюватися як ``false``, якщо він нульовий (див. :ref:`is_null()<class_Signal_method_is_null>`). В іншому випадку сигнал завжди обчислюватиметься як ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання сигналів <../getting_started/step_by_step/signals>`

- `Основи GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Конструктори
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

Методи
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

Оператори
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

Описи конструкторів
--------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Створює порожній **Signal** без прив'язаного до об'єкта чи імені сигналу.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Constructs a **Signal** як копія даної **Signal**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Створює об’єкт **Signal**, який посилається на сигнал із назвою ``signal`` у вказаному ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

З'єднує цей сигнал із зазначеним ``callable``. Також можна додати додаткові ``flags`` для налаштування поведінки з'єднання (див. константи :ref:`ConnectFlags<enum_Object_ConnectFlags>`). Ви можете надати додаткові аргументи підключеному ``callable`` за допомогою :ref:`Callable.bind()<class_Callable_method_bind>`.

Сигнал може бути підключений до того самого :ref:`Callable<class_Callable>` лише один раз. Якщо сигнал вже підключено, цей метод повертає :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` та генерує помилку, якщо сигнал не підключено з :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Щоб запобігти цьому, спочатку використовуйте :ref:`is_connected()<class_Signal_method_is_connected>` для перевірки наявності існуючих з'єднань.

::

    for button in $Buttons.get_children():
    button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
    print(button.name, "було натиснуто")

\ **Примітка:** Якщо об'єкт ``callable`` звільниться, з'єднання буде втрачено.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Відключення цього сигналу з вказаного :ref:`Callable<class_Callable>`. Якщо підключення не існує, генерує помилку. Використовуйте ``method_connected``, щоб переконатися, що підключення існує.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Зніміть цей сигнал. Всі :ref:`Callable<class_Callable>`, підключені до цього сигналу, будуть запущені. Цей метод підтримує змінну кількість аргументів, тому параметри можуть бути передані як окремий список коми.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Повернутися до :ref:`Array<class_Array>` підключень до цього сигналу. Кожен з'єднання представлений як :ref:`Dictionary<class_Dictionary>`, який містить три записи:

- ``signal`` - посилання на цей сигнал;

- ``Callable`` - посилання на підключений :ref:`Callable<class_Callable>`;

- ``flags`` - це поєднання об'єкту [enum. Роз'єм.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Повертає назву цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Повернення об'єкта, що видає цей сигнал.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Повертає ідентифікатор об'єкта, який випромінює цей сигнал (див. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Повертає ``true``, якщо будь-який :ref:`Callable<class_Callable>` підключено до цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Повертає ``true``, якщо зазначений :ref:`Callable<class_Callable>` підключений до цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Повертає ``true``, якщо цей **Signal** не має об’єкта, а назва сигналу порожня. Еквівалент ``singal == Singal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Повертає ``true``, якщо сигнали не діляться тим самим об'єктом і назвою.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Повертає ``true``, якщо обидва сигнали діляться тим самим об'єктом і назвою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
