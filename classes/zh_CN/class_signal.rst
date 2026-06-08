:github_url: hide

.. _class_Signal:

Signal
======

代表 :ref:`Object<class_Object>` 中某个信号的内置类型。

.. rst-class:: classref-introduction-group

描述
----

**Signal** 是一种内置的 :ref:`Variant<class_Variant>` 类型，它代表了一个 :ref:`Object<class_Object>` 实例的信号。和所有的 :ref:`Variant<class_Variant>` 类型一样，它可以被存储在变量中，也可以被传递给函数。信号允许所有已连接的 :ref:`Callable<class_Callable>`\ （以及它们各自所属的对象）去监听并响应事件，而无需彼此之间直接引用。这种设计让代码保持了极高的灵活性，也更易于管理。你可以使用 :ref:`Object.has_signal()<class_Object_method_has_signal>` 方法来检查一个 :ref:`Object<class_Object>` 是否拥有指定名称的信号。

在 GDScript 中，可以使用 ``signal`` 关键字来声明信号；而在 C# 中，则可以在委托（delegate）上使用 ``[Signal]`` 特性（Attribute）来定义。


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # 也可以声明额外的参数。
    # 这些参数在发射信号时必须被传入。
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // 也可以声明额外的参数。
    // 这些参数在发射信号时必须被传入。
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



在 Godot 中，连接信号是最常见的操作之一，API 提供了多种实现方式，下面会做详细介绍。下面的代码块展示了推荐的连接方法。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 这里的 button_down 是一个 Signal（信号）Variant 类型。因此，我们调用的是 Signal.connect() 方法，而不是 Object.connect()。
        # 关于该 API 更深入的介绍，请参见下方的讨论。
        button.button_down.connect(_on_button_down)

        # 这里假设存在一个定义了 `hit` 信号的 `Player` 类。
        var player = Player.new()
        # 我们再次使用了 Signal.connect()，同时还使用了 Callable.bind() 方法。
        # 它会返回一个新的 Callable，并且这个 Callable 已经绑定了相应的参数。
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Button down!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# 支持将信号作为事件来传递，因此我们可以使用这种符合语言习惯的写法：
        button.ButtonDown += OnButtonDown;

        // 这里假设存在一个定义了 `Hit` 信号的 `Player` 类。
        var player = new Player();
        // 当我们需要绑定额外的参数时，可以使用 Lambda 表达式。
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



\ ``Object.connect()`` **还是** ``Signal.connect()``\ **？**\ 

如上文所示，连接信号的推荐方法并不是 :ref:`Object.connect()<class_Object_method_connect>`\ 。下面的代码块展示了连接信号的四种选项，分别是使用这种旧版方法或推荐的 :ref:`connect()<class_Signal_method_connect>`\ ，以及使用隐式的 :ref:`Callable<class_Callable>` 或手动定义的 :ref:`Callable<class_Callable>`\ 。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 方法一：使用 Object.connect()，并为定义好的函数隐式创建一个 Callable。
        button.connect("button_down", _on_button_down)
        # 方法二：使用 Object.connect()，并通过指定目标对象和方法名来手动构建一个 Callable。
        button.connect("button_down", Callable(self, "_on_button_down"))
        # 方法三：使用 Signal.connect()，并为定义好的函数隐式创建一个 Callable。
        button.button_down.connect(_on_button_down)
        # 方法四：使用 Signal.connect()，并通过指定目标对象和方法名来手动构建一个 Callable。
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // 方法一：在 C# 中，我们可以将信号当作事件来使用，并通过这种符合语言习惯的语法进行连接：
        button.ButtonDown += OnButtonDown;
        // 方法二：使用 GodotObject.Connect()，并通过方法组来构建一个 Callable。
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // 方法三：使用 GodotObject.Connect()，并通过指定目标对象和方法名来构建一个 Callable。
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }



虽然所有选项的最终结果都一样（\ ``button`` 的 :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` 信号都会被连接到 ``_on_button_down`` 上），但 **选项 3** 提供了最好的验证机制：如果 ``button_down`` **Signal** 或者 ``_on_button_down`` :ref:`Callable<class_Callable>` 没有被定义，它会在编译阶段直接打印出错误。另一方面，\ **选项 2** 仅仅依赖于字符串名称，只能在程序运行时进行验证：如果 ``"button_down"`` 不是一个信号，或者 ``"_on_button_down"`` 不是 ``self`` 对象中的一个方法，它会在运行时产生一个错误。使用选项 1、2 或 4 的主要原因，是你确实需要使用字符串（例如，根据从配置文件中读取的字符串来以编程方式连接信号）。除此之外，选项 3 是最推荐（也是最快）的方法。

\ **绑定和传递参数：**\ 绑定参数的语法是通过 :ref:`Callable.bind()<class_Callable_method_bind>`\ ，它会返回一个绑定了参数的 :ref:`Callable<class_Callable>` 副本。

当调用 :ref:`emit()<class_Signal_method_emit>` 或 :ref:`Object.emit_signal()<class_Object_method_emit_signal>` 时，也可以传递信号参数。

下面的示例展示了这些信号参数与绑定参数之间的关系。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 这里假设存在一个定义了 `hit` 信号的 `Player` 类。
        var player = Player.new()
        # 使用 Callable.bind()。
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # 发射信号时添加的参数会最先传递。
        player.hit.emit("Dark lord", 5)

    # 我们在发射信号时传递了两个参数 (`hit_by`, `level`)，
    # 并在连接信号时绑定了另外两个参数 (`weapon_type`, `damage`)。
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 这里假设存在一个定义了 `Hit` 信号的 `Player` 类。
        var player = new Player();
        // 使用 Lambda 表达式创建一个闭包，来捕获额外的参数。
        // Lambda 表达式只会接收到信号委托所定义的参数。
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // 发射信号时添加的参数会最先传递。
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // 我们在发射信号时传入了两个参数（`hit_by` 和 `level`），
    // 并在连接信号时绑定了另外两个参数（`weapon_type` 和 `damage`）。
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }



\ **注意：** 在布尔环境下，如果信号为 null（空），它的求值结果将为 ``false``\ （假）（详见 :ref:`is_null()<class_Signal_method_is_null>`\ ）。除此之外，信号的求值结果始终为 ``true``\ （真）。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用信号 <../getting_started/step_by_step/signals>`

- `GDScript 基础 <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

构造函数
--------

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

运算符
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

构造函数说明
------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

构造空的 **Signal**\ ，没有绑定对象和信号名称。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

构造给定 **Signal** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

新建 **Signal** 对象，引用 ``object`` 对象中名为 ``signal`` 的信号。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

将信号连接到可调用体 ``callable``\ 。还可以添加 ``flags`` 对连接的行为进行配置（见 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 常量）。可以使用 :ref:`Callable.bind()<class_Callable_method_bind>` 为连接的 ``callable`` 提供额外的参数。

一个信号只能和同一个 :ref:`Callable<class_Callable>` 连接一次。如果信号已连接，则会返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 并生成错误，除非信号是用 :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>` 连接的。要防止这个问题，请先使用 :ref:`is_connected()<class_Signal_method_is_connected>` 检查已有连接。

::

    for button in $Buttons.get_children():
        button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
        print(button.name, " 被按了一下")

\ **注意：**\ 如果 ``callable`` 的对象被释放，连接会丢失。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

将该信号与给定的 :ref:`Callable<class_Callable>` 断开连接。如果该连接不存在，则会生成错误。请使用 :ref:`is_connected()<class_Signal_method_is_connected>` 来确保连接存在。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

发出该信号。与该信号相连的所有 :ref:`Callable<class_Callable>` 都将被触发。此方法支持可变数量的参数，所以参数可以用逗号分隔列表的形式传递。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

返回该信号的连接 :ref:`Array<class_Array>`\ 。连接用 :ref:`Dictionary<class_Dictionary>` 表示，包含三个条目：

- ``signal`` 是对此信号的引用。

- ``callable`` 是对连接的 :ref:`Callable<class_Callable>` 的引用。

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的组合。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

返回该信号的名称。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

返回发出该信号的对象。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

返回发出该信号的对象的 ID（见 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

如果存在连接到该信号的 :ref:`Callable<class_Callable>`\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

如果指定的 :ref:`Callable<class_Callable>` 已连接到此信号，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

如果该 **Signal** 不存在对象且信号名为空，则返回 ``true``\ 。等价于 ``signal == Signal()``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

如果信号的对象或名称不同，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

如果信号的对象和名称相同，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
