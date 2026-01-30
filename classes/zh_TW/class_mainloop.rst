:github_url: hide

.. _class_MainLoop:

MainLoop
========

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`SceneTree<class_SceneTree>`

遊戲主迴圈的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

**MainLoop** is the abstract base class for a Godot project's game loop. It is inherited by :ref:`SceneTree<class_SceneTree>`, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own **MainLoop** subclass instead of the scene tree.

Upon the application start, a **MainLoop** implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a :ref:`SceneTree<class_SceneTree>` is created) unless a **MainLoop** :ref:`Script<class_Script>` is provided from the command line (with e.g. ``godot -s my_loop.gd``) or the :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` project setting is overwritten.

Here is an example script implementing a simple **MainLoop**:


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("Initialized:")
        print("  Starting time: %s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # Return true to end the main loop.
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("Finalized:")
        print("  End time: %s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("Initialized:");
            GD.Print($"  Starting Time: {_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // Return true to end the main loop.
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("Finalized:");
            GD.Print($"  End Time: {_timeElapsed}");
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

訊號
----

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

當使用者對許可權請求作出反應時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

當套用程式超過其分配的記憶體時，從作業系統收到的通知。

僅限 iOS 平臺。

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

當翻譯可能發生變化時收到的通知。會在使用者改變區域設定時觸發。可以用來回應語言的變化，例如即時改變 UI 字串。可配合內建的翻譯支援使用，比如 :ref:`Object.tr()<class_Object_method_tr>`\ 。

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

當發出“關於”資訊請求時，從作業系統收到的通知。

僅限 macOS 平臺。

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

當引擎即將當機時，從Godot的當機處理常式收到的通知。

如果當機處理常式被啟用，這只會在桌面平臺上實作。

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

當應用程式從暫停恢復時，從作業系統收到的通知。

僅適用於 Android 與 iOS 平台。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

當應用程式被暫停時，從作業系統收到的通知。

僅適用於 Android 與 iOS 平台。

\ **注意：**\ 在 iOS 上，這個訊號觸發後，你大約只有 5 秒可以完成相關任務。超過這個限制，iOS 將會直接終止應用程式，而非單純暫停。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

當應用程式獲得焦點時，從作業系統收到的通知，即當焦點從作業系統桌面或第三方應用程式切換到 Godot 任一開啟視窗時。

在桌面與行動平台皆有實作。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

當應用程式失去焦點時，從作業系統收到的通知，即當焦點從 Godot 任一開啟視窗切換到作業系統桌面或第三方應用程式時。

在桌面與行動平台皆有實作。

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

文字伺服器被更改時，收到的通知。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

在程式退出前呼叫。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

在初始化時呼叫一次。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

Called each physics tick. ``delta`` is the logical time between physics ticks in seconds and is equal to :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Equivalent to :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

If implemented, the method must return a boolean value. ``true`` ends the main loop, while ``false`` lets it proceed to the next step.

\ **Note:** :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` may be called up to :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` times per (idle) frame. This step limit may be reached when the engine is suffering performance issues.

\ **Note:** Accumulated ``delta`` may diverge from real world seconds.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

Called on each idle frame, prior to rendering, and after physics ticks have been processed. ``delta`` is the time between frames in seconds. Equivalent to :ref:`Node._process()<class_Node_private_method__process>`.

If implemented, the method must return a boolean value. ``true`` ends the main loop, while ``false`` lets it proceed to the next frame.

\ **Note:** When the engine is struggling and the frame rate is lowered, ``delta`` will increase. When ``delta`` is increased, it's capped at a maximum of :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. As a result, accumulated ``delta`` may not represent real world time.

\ **Note:** When ``--fixed-fps`` is enabled or the engine is running in Movie Maker mode (see :ref:`MovieWriter<class_MovieWriter>`), process ``delta`` will always be the same for every frame, regardless of how much time the frame took to render.

\ **Note:** Frame delta may be post-processed by :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` if this is enabled for the project.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
