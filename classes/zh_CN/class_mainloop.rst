:github_url: hide

.. _class_MainLoop:

MainLoop
========

**继承：** :ref:`Object<class_Object>`

**派生：** :ref:`SceneTree<class_SceneTree>`

游戏主循环的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

**MainLoop** 是 Godot 项目中游戏循环的抽象基类。它被 :ref:`SceneTree<class_SceneTree>` 继承，\ :ref:`SceneTree<class_SceneTree>` 是 Godot 项目中使用的默认游戏循环的实现，不过也可以编写和使用自己的 **MainLoop** 子类，来代替场景树。

应用程序启动时必须向操作系统提供一个 **MainLoop** 实现；否则应用程序将退出。该过程是自动的（会创建 :ref:`SceneTree<class_SceneTree>`\ ），除非从命令行提供了 **MainLoop** :ref:`Script<class_Script>`\ （例如 ``godot -s my_loop.gd``\ ）或覆盖了 :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` 项目设置。

以下是实现简单 **MainLoop** 的示例脚本：


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("初始化：")
        print("  开始时间：%s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # 返回 true 结束主循环。
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("完成：")
        print("  结束时间：%s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("初始化：");
            GD.Print($"  开始时间：{_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // 返回 true 结束主循环。
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("完成：");
            GD.Print($"  结束时间：{_timeElapsed}");
        }
    }



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_finalize<class_MainLoop_private_method__finalize>`\ (\ ) |virtual|                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_initialize<class_MainLoop_private_method__initialize>`\ (\ ) |virtual|                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_physics_process<class_MainLoop_private_method__physics_process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process<class_MainLoop_private_method__process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                 |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

当用户对权限请求作出反应时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

当应用程序超过其分配的内存时，从操作系统收到的通知。

仅限 iOS 平台。

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

当翻译可能发生变化时收到的通知。会在用户改变区域设置时触发。可以用来响应语言的变化，例如实时改变 UI 字符串。可配合内置的翻译支持使用，比如 :ref:`Object.tr()<class_Object_method_tr>`\ 。

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

当发出“关于”信息请求时，从操作系统收到的通知。

仅限 macOS 平台。

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

当引擎即将崩溃时，从Godot的崩溃处理程序收到的通知。

如果崩溃处理程序被启用，这只会在桌面平台上实现。

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

当应用程序恢复时，从操作系统收到的通知。

具体针对 Android 和 iOS 平台。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

应用程序暂停时从操作系统收到的通知。

特定于 Android 和 iOS 平台。

\ **注意：**\ 在 iOS 上，你只有大约 5 秒时间来完成由该信号启动的任务。如果你超过了该分配，则 iOS 将终止该应用程序而不是暂停它。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

当应用程序获得焦点时从操作系统收到的通知，即焦点将从操作系统桌面或第三方应用程序更改为 Godot 实例的任何一个打开窗口时。

在桌面和移动平台上实现。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

当应用程序失去焦点时从操作系统收到通知，即焦点将从 Godot 实例的任何一个打开窗口，更改为操作系统桌面或第三方应用程序时。

在桌面和移动平台上实现。

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

文本服务器被更改时，收到的通知。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

在程序退出前调用。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

在初始化时调用一次。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

每个物理周期调用一次。\ ``delta`` 是物理周期之间的逻辑时间，单位为秒，等于 :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。等价于 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ 。

实现后，该方法必须返回布尔值。\ ``true`` 会终止主循环，而 ``false`` 则会允许其进入下一步。

\ **注意：**\ :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` 每（空闲）帧最多只能调用 :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 次。引擎遭遇性能问题时可能触及该限制。

\ **注意：**\ 对 ``delta`` 进行累加可能与现实世界的秒数存在偏差。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

每个空闲帧调用一次，调用时机在渲染之前、所有物理帧处理完毕之后。\ ``delta`` 是帧与帧之间的时间，单位为秒。等价于 :ref:`Node._process()<class_Node_private_method__process>`\ 。

实现后，该方法必须返回布尔值。\ ``true`` 会终止主循环，而 ``false`` 则会允许其进入下一帧。

\ **注意：**\ 引擎遭遇帧率下降时，\ ``delta`` 会增大。\ ``delta`` 增大时，最大值为 :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。因此，对 ``delta`` 进行累加可能与现实世界的秒数存在偏差。

\ **注意：**\ 如果启用了 ``--fixed-fps`` 或者在 Movie Maker 模式下运行（见 :ref:`MovieWriter<class_MovieWriter>`\ ），每帧的处理 ``delta`` 都相同，与该帧的渲染耗时无关。

\ **注意：**\ 如果项目启用了 :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>`\ ，则帧间隔可能经过后期处理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
