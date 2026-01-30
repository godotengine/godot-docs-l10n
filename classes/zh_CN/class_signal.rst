:github_url: hide

.. _class_Signal:

Signal
======

代表 :ref:`Object<class_Object>` 中某个信号的内置类型。

.. rst-class:: classref-introduction-group

描述
----

**Signal** 即信号，是一种内置的 :ref:`Variant<class_Variant>` 类型，代表某个 :ref:`Object<class_Object>` 实例上的某个信号。与所有 :ref:`Variant<class_Variant>` 一样，信号可以存储在变量中也可以传递给函数。所有连接到该信号的 :ref:`Callable<class_Callable>`\ （以及扩展出的相应对象）都可以监听事件并对事件进行响应，无需相互直接引用。这样代码就更加灵活，便于管理。你可以使用 :ref:`Object.has_signal()<class_Object_method_has_signal>` 来检查某个 :ref:`Object<class_Object>` 对象是否有特定名称的信号。

在 GDScript 中，信号可以使用 ``signal`` 关键字声明。在 C# 中，你可以对委托使用 ``[Signal]`` 特性。


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # 还可以额外声明参数。
    # 发出信号时必须传入这些参数。
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // 还可以额外声明参数。
    // 发出信号时必须传入这些参数。
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



连接信号是 Godot 中最常见的操作之一，API 为此提供了许多选项，详见下文。下面的代码展示的是推荐的做法。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 这里的 `button_down` 是 Signal Variant 类型。因此调用的是 Signal.connect() 方法而不是 Object.connect() 方法。
        # 对该 API 的概述见下面的讨论。
        button.button_down.connect(_on_button_down)

        # 假设存在 `Player` 类，定义了 `hit` 信号。
        var player = Player.new()
        # 我们再次使用 Signal.connect()，还使用了 Callable.bind() 方法，
        # 返回的是绑定了参数的新 Callable。
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("按下了按钮！")

    func _on_player_hit(weapon_type, damage):
        print("使用武器 %s 造成了 %d 点伤害。" % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# 支持将信号以事件的形式传递，因此我们可以这么写：
        button.ButtonDown += OnButtonDown;

        // 假设存在 `Player` 类，定义了 `hit` 信号。
        var player = new Player();
        // 需要绑定额外参数时可以使用 lambda。
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("按下了按钮！");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"使用武器 {weaponType} 造成了 {damage} 点伤害。");
    }



\ **\ ``Object.connect()`` 还是 ``Signal.connect()``?**\ 

如上所示，并不推荐使用 :ref:`Object.connect()<class_Object_method_connect>` 来连接信号。下面的代码中展示了连接信号的四种方法，包括这种传统的方法、推荐的 :ref:`connect()<class_Signal_method_connect>` 方法、使用隐式 :ref:`Callable<class_Callable>`\ 、以及手动定义。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 方法 1：Object.connect() 与方法的隐式 Callable。
        button.connect("button_down", _on_button_down)
        # 方法 2：Object.connect() 与使用目标对象和方法名构造的 Callable。
        button.connect("button_down", Callable(self, "_on_button_down"))
        # 方法 3：Signal.connect() 与方法的隐式 Callable。
        button.button_down.connect(_on_button_down)
        # 方法 4：Signal.connect() 与使用目标对象和方法名构造的 Callable。
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // 方法 1：在 C# 中，我们可以将信号以事件的形式使用，因此我们可以这么连接：
        button.ButtonDown += OnButtonDown;
        // 方法 2：GodotObject.Connect() 与方法组构造的 Callable。
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // 方法 3：GodotObject.Connect() 与使用目标对象和方法名构造的 Callable。
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("按下了按钮！");
    }



所有方法的效果都是一样的（\ ``button`` 的 :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` 信号连接到 ``_on_button_down``\ ），\ **方法 3** 的校验最为完善：如果 ``button_down`` **Signal** 或 ``_on_button_down`` :ref:`Callable<class_Callable>` 未定义就会输出编译错误。而\ **方法 2** 仅依赖字符串名称，只能在运行时校验名称：如果 ``"button_down"`` 不是信号或者 ``"_on_button_down"`` 不是 ``self`` 对象的方法，就会在运行时生成错误。使用方法 1、2、4 的主要原因是确实需要使用字符串（例如根据从配置文件读取的字符串通过程序来连接信号）。否则建议使用方法 3（而且速度最快）。

\ **参数的绑定和传递：**\ 

绑定参数的语法需要使用 :ref:`Callable.bind()<class_Callable_method_bind>`\ ，返回的是当前 :ref:`Callable<class_Callable>` 绑定参数后的副本。

调用 :ref:`emit()<class_Signal_method_emit>` 或 :ref:`Object.emit_signal()<class_Object_method_emit_signal>` 时也可以传递信号的参数。下面的例子展示的是信号参数和绑定参数之间的关系。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 假设存在 `Player` 类，定义了 `hit` 信号。
        var player = Player.new()
        # 使用 Callable.bind()。
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # 发出信号时添加的参数先传递。
        player.hit.emit("Dark lord", 5)

    # 发出信号时传入了 (`hit_by`, `level`) 两个参数，
    # 连接信号时绑定了 (`weapon_type`, `damage`) 两个参数。
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("受到来自 %s（%d 级）的攻击，使用武器 %s 造成了 %d 点伤害。" % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 假设存在 `Player` 类，定义了 `hit` 信号。
        var player = new Player();
        // 使用 lambda 表达式创建闭包，捕获额外参数。
        // Lambda 只会接受信号委托定义的参数。
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // 发出信号时添加的参数先传递。
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // 发出信号时传入了 (`hit_by`, `level`) 两个参数，
    // 连接信号时绑定了 (`weapon_type`, `damage`) 两个参数。
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"受到来自 {hitBy}（{level} 级）的攻击，使用武器 {weaponType} 造成了 {damage} 点伤害。");
    }



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
