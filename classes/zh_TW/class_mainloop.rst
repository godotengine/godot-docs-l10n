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

**MainLoop** 是 Godot 專案中遊戲循環的抽象基底類別。它被 :ref:`SceneTree<class_SceneTree>` 繼承，\ :ref:`SceneTree<class_SceneTree>` 是 Godot 專案中使用的預設遊戲循環的實作，不過也可以編寫和使用自己的 **MainLoop** 子類別，來代替場景樹。

應用程式啟動時必須向作業系統提供一個 **MainLoop** 實作；否則應用程式將退出。該過程是自動的（會建立 :ref:`SceneTree<class_SceneTree>`\ ），除非從命令行提供了 **MainLoop** :ref:`Script<class_Script>`\ （例如 ``godot -s my_loop.gd``\ ）或覆蓋了 :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` 專案設定。

以下是實作簡單 **MainLoop** 的範例腳本：


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("初始化：")
        print("  開始時間：%s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # 回傳 true 結束主循環。
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("完成：")
        print("  結束時間：%s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("初始化：");
            GD.Print($"  開始時間：{_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // 回傳 true 結束主循環。
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("完成：");
            GD.Print($"  結束時間：{_timeElapsed}");
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

當輸入法引擎發生更新時，從作業系統收到的通知（例如，IME 游標位置或組成字串的變化）。

已在桌面平台和 web 平台上實作。

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

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

當應用程式進入畫中畫模式時收到的通知。

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

當應用程式退出畫中畫模式時收到的通知。

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

每個物理週期呼叫一次。\ ``delta`` 是物理週期之間的邏輯時間，單位為秒，等於 :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。等價於 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ 。

實作後，該方法必須回傳布林值。\ ``true`` 會終止主循環，而 ``false`` 則會允許其進入下一步。

\ **注意：**\ :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` 每（空閒）影格最多只能呼叫 :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 次。引擎遭遇效能問題時可能觸及該限制。

\ **注意：**\ 對 ``delta`` 進行累加可能與現實世界的秒數存在偏差。

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

每個空閒影格呼叫一次，呼叫時機在渲染之前、所有物理影格處理完畢之後。\ ``delta`` 是影格與影格之間的時間，單位為秒。等價於 :ref:`Node._process()<class_Node_private_method__process>`\ 。

實作後，該方法必須回傳布林值。\ ``true`` 會終止主循環，而 ``false`` 則會允許其進入下一影格。

\ **注意：**\ 引擎遭遇影格率下降時，\ ``delta`` 會增大。\ ``delta`` 增大時，最大值為 :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。因此，對 ``delta`` 進行累加可能與現實世界的秒數存在偏差。

\ **注意：**\ 如果啟用了 ``--fixed-fps`` 或者在 Movie Maker 模式下執行（見 :ref:`MovieWriter<class_MovieWriter>`\ ），每影格的處理 ``delta`` 都相同，與該影格的渲染耗時無關。

\ **注意：**\ 如果專案啟用了 :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>`\ ，則影格間隔可能經過後期處理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
