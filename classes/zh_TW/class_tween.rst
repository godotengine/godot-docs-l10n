:github_url: hide

.. _class_Tween:

Tween
=====

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通過腳本進行通用動畫的羽量級物件，使用 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-introduction-group

說明
----

補間動畫（Tweens）主要用於那些需要在一定數值範圍內對數字屬性進行插值的動畫。\ *Tween*\ （補間）這個名字來源於 *in-betweening*\ （中間畫），這是一種動畫技術：你只需要指定\ *關鍵影格*\ ，電腦就會自動計算並補全它們之間的那些過渡影格。使用 **Tween** 來製作動畫的過程，就被稱為“補間動畫（tweening）”。

當動畫的最終數值無法提前預知時，\ **Tween** 比 :ref:`AnimationPlayer<class_AnimationPlayer>` 更加適用。例如，動態插值一個動態選定的攝影機縮放值，用 **Tween** 來實現是最好的；但如果想用 :ref:`AnimationPlayer<class_AnimationPlayer>` 節點做同樣的事情，就會非常困難。此外，Tweens 比 :ref:`AnimationPlayer<class_AnimationPlayer>` 更加輕量級，因此非常適合製作那些不需要編輯器進行視覺化微調的簡單動畫或通用任務。對於一些通常需要用程式碼來處理的邏輯，你也可以用“啟動後不必持續管理（fire-and-forget）”的方式來使用它們。比如，你可以使用一個帶延遲的循環 :ref:`CallbackTweener<class_CallbackTweener>`\ ，來讓某個物體週期性地發射子彈。

你可以通過呼叫 :ref:`SceneTree.create_tween()<class_SceneTree_method_create_tween>` 或 :ref:`Node.create_tween()<class_Node_method_create_tween>` 來建立一個 **Tween**\ 。如果是手動建立的 **Tween**\ （比如直接使用 ``Tween.new()``\ ），它是無效的，無法用來對數值進行補間動畫。

你可以通過呼叫 :ref:`tween_property()<class_Tween_method_tween_property>`\ 、\ :ref:`tween_interval()<class_Tween_method_tween_interval>`\ 、\ :ref:`tween_callback()<class_Tween_method_tween_callback>`\ 、\ :ref:`tween_method()<class_Tween_method_tween_method>`\ 、\ :ref:`tween_subtween()<class_Tween_method_tween_subtween>` 或 :ref:`tween_await()<class_Tween_method_tween_await>`\ ，向 **Tween** 物件中新增 :ref:`Tweener<class_Tweener>`\ ，從而建立出一個補間動畫:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



這個序列會讓 ``$Sprite`` 節點先變成紅色，然後縮小，最後呼叫 :ref:`Node.queue_free()<class_Node_method_queue_free>` 來釋放（銷毀）這個精靈。預設情況下，\ :ref:`Tweener<class_Tweener>` 是一個接一個按順序執行的。不過，你也可以使用 :ref:`parallel()<class_Tween_method_parallel>` 和 :ref:`set_parallel()<class_Tween_method_set_parallel>` 來改變這種（串行）行為。

當使用 ``tween_*`` 系列方法建立出一個 :ref:`Tweener<class_Tweener>` 後，你可以使用鏈式方法呼叫來微調這個 :ref:`Tweener<class_Tweener>` 的各項屬性。例如，如果你想改變上面範例中的過渡型別（transition type），就可以使用 :ref:`set_trans()<class_Tween_method_set_trans>` 方法：


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0).set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0).set_trans(Tween.TRANS_BOUNCE)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f).SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f).SetTrans(Tween.TransitionType.Bounce);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



大多數 **Tween** 的方法也可以這樣進行鏈式呼叫。在下面的例子中，這個 **Tween** 被綁定到了目前執行腳本所在的節點上，並且為它的 :ref:`Tweener<class_Tweener>`\ s 設定了一個預設的過渡效果：


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
    tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
    tween.tween_property($Sprite, "scale", Vector2(), 1.0)
    tween.tween_callback($Sprite.queue_free)

 .. code-tab:: csharp

    var tween = GetTree().CreateTween().BindNode(this).SetTrans(Tween.TransitionType.Elastic);
    tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
    tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));



\ **Tween** 的另一個有趣用法是，對任意一組物件進行動畫處理：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    for sprite in get_children():
        tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    foreach (Node sprite in GetChildren())
        tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);



在上面的例子中，某個節點的所有子節點會被依次移動到 ``(0, 0)`` 的位置。

你應該避免對同一個物件的屬性使用多個 **Tween**\ 。如果兩個或更多的補間動畫同時控制同一個屬性，最後建立的那個會獲得優先權，並決定該屬性的最終值。如果你想中斷並重新開始一個動畫，可以考慮將 **Tween** 賦值給一個變數：


.. tabs::

 .. code-tab:: gdscript

    var tween
    func animate():
        if tween:
            tween.kill() #中斷（或取消）上一次的動畫。
        tween = create_tween()

 .. code-tab:: csharp

    private Tween _tween;

    public void Animate()
    {
        if (_tween != null)
            _tween.Kill(); // 中斷（或取消）上一次的動畫
        _tween = CreateTween();
    }



部分 :ref:`Tweener<class_Tweener>`\ （補間器）會用到過渡（transitions）和緩動（eases）。前者接受一個 :ref:`TransitionType<enum_Tween_TransitionType>` 常數，它決定了動畫的時間節奏處理方式（你可以訪問 `easings.net <https://easings.net/>`__ 查看一些具體的效果範例）。後者接受一個 :ref:`EaseType<enum_Tween_EaseType>` 常數，它控制著 ``trans_type``\ （過渡型別）在插值過程中的應用位置（是應用在開頭、結尾，還是兩頭都應用）。如果你不知道該選哪種過渡和緩動效果，可以嘗試搭配不同的 :ref:`TransitionType<enum_Tween_TransitionType>` 常數與 :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>` 一起使用，然後從中挑一個視覺效果最棒的。

\ `Tween easing and transition types cheatsheet <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp>`__\ 

\ **注意：** Tween 並不是為了重複使用而設計的，強行復用會導致不可預期的行為。每次製作動畫，以及每次想要從頭重播動畫時，都應該建立一個新的 Tween。請記住，Tween 在建立後會立刻開始執行，所以只有當你真正準備開始播放動畫時，再去建立它。

\ **注意：** Tween 是在目前影格的所有節點處理之後才被執行的。也就是說，節點的 :ref:`Node._process()<class_Node_private_method__process>` 方法會在 Tween 之前被呼叫（或者如果是根據 :ref:`set_process_mode()<class_Tween_method_set_process_mode>` 傳入的值來決定的話，那就是 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 會在 Tween 之前被呼叫）。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`bind_node<class_Tween_method_bind_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`chain<class_Tween_method_chain>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`custom_step<class_Tween_method_custom_step>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`get_loops_left<class_Tween_method_get_loops_left>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | :ref:`get_total_elapsed_time<class_Tween_method_get_total_elapsed_time>`\ (\ ) |const|                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`has_tweeners<class_Tween_method_has_tweeners>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`interpolate_value<class_Tween_method_interpolate_value>`\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_running<class_Tween_method_is_running>`\ (\ )                                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_valid<class_Tween_method_is_valid>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`kill<class_Tween_method_kill>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`parallel<class_Tween_method_parallel>`\ (\ )                                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`pause<class_Tween_method_pause>`\ (\ )                                                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`play<class_Tween_method_play>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ease<class_Tween_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_ignore_time_scale<class_Tween_method_set_ignore_time_scale>`\ (\ ignore\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_loops<class_Tween_method_set_loops>`\ (\ loops\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_parallel<class_Tween_method_set_parallel>`\ (\ parallel\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_pause_mode<class_Tween_method_set_pause_mode>`\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ )                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_process_mode<class_Tween_method_set_process_mode>`\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ )                                                                                                                                                                                                                                            |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_speed_scale<class_Tween_method_set_speed_scale>`\ (\ speed\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                     | :ref:`set_trans<class_Tween_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )                                                                                                                                                                                                                                                             |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`stop<class_Tween_method_stop>`\ (\ )                                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AwaitTweener<class_AwaitTweener>`       | :ref:`tween_await<class_Tween_method_tween_await>`\ (\ signal\: :ref:`Signal<class_Signal>`\ )                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`tween_callback<class_Tween_method_tween_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ )                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`IntervalTweener<class_IntervalTweener>` | :ref:`tween_interval<class_Tween_method_tween_interval>`\ (\ time\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                                                           |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>`     | :ref:`tween_method<class_Tween_method_tween_method>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PropertyTweener<class_PropertyTweener>` | :ref:`tween_property<class_Tween_method_tween_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                          |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`tween_subtween<class_Tween_method_tween_subtween>`\ (\ subtween\: :ref:`Tween<class_Tween>`\ )                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

該 **Tween** 完成所有補間時發出。該 **Tween** 設為無限迴圈時不會發出（見 :ref:`set_loops()<class_Tween_method_set_loops>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

完成一次迴圈時觸發（見 :ref:`set_loops()<class_Tween_method_set_loops>`\ ），會提供該迴圈的索引號。這個訊號不會在最後一次迴圈後觸發，這種情況請使用 :ref:`finished<class_Tween_signal_finished>` 代替。

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

完成該 **Tween** 的一步完成後觸發，會提供這一步的索引號。一步指的是單個 :ref:`Tweener<class_Tweener>` 或一組並存執行的 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

該 **Tween** 在每個物理影格之後進行更新（見 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

該 **Tween** 在每個處理影格之後進行更新（見 :ref:`Node._process()<class_Node_private_method__process>`\ ）。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

如果該 **Tween** 綁定了節點，它將在該節點可以處理時進行處理（見 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）。否則與 :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>` 相同。

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

如果 :ref:`SceneTree<class_SceneTree>` 被暫停，則該 **Tween** 也會暫停。

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

無論 :ref:`SceneTree<class_SceneTree>` 是否被暫停，該 **Tween** 都會處理。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

動畫是線性插值的。

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

動畫使用正弦函式進行插值。

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

動畫使用五次（5 次方）函式進行插值。

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

動畫使用四次（4 次方）函式進行插值。

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

動畫使用二次（2 次方）函式進行插值。

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

動畫使用指數（x 次方）函式進行插值。

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

動畫彈性插值，在邊緣擺動。

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

動畫使用三次（3 次方）函式進行插值。

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

動畫使用平方根的函式進行插值。

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

動畫通過在末尾彈跳插值。

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

動畫在末端重播插值。

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

動畫像朝著末尾的彈簧一樣插值。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

插值開始緩慢，並加速接近結束。

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

插值開始快速，接近結束時減慢。

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

:ref:`EASE_IN<class_Tween_constant_EASE_IN>` 和 :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>` 的組合。兩端的插值最慢。

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

:ref:`EASE_IN<class_Tween_constant_EASE_IN>` 和 :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>` 的組合。兩端的插值最快。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

將這個 **Tween** 綁定到給定的 ``node`` 上。\ **Tween** 是由 :ref:`SceneTree<class_SceneTree>` 直接處理的，所以不依賴被動畫的節點運作。將該 **Tween** 綁定到某個 :ref:`Node<class_Node>` 後，該對象不在樹中時該 **Tween** 就會暫停動畫，綁定對象被釋放時該 **Tween** 會被自動銷毀。另外，\ :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` 會讓暫停行為依賴於綁定的節點。

使用 :ref:`Node.create_tween()<class_Node_method_create_tween>` 來建立並綁定 **Tween** 更簡單。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

用於在使用 ``true`` 呼叫 :ref:`set_parallel()<class_Tween_method_set_parallel>` 後，將兩個 :ref:`Tweener<class_Tweener>` 串聯。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # 會和上一條並存執行。
    tween.chain().tween_property(...) # 會在前兩條完成後執行。

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // 會和上一條並存執行。
    tween.Chain().TweenProperty(...); // 會在前兩條完成後執行。



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

使用給定的差異量秒數 ``delta`` 處理該 **Tween**\ 。最常見的用法是在該 **Tween** 暫停時對其進行手動控制。也可用於立即停止該 **Tween** 的動畫，將 ``delta`` 設得比完整長度更大即可。

如果該 **Tween** 仍然有未完成的 :ref:`Tweener<class_Tweener>`\ ，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

返回該 **Tween** 所剩的迴圈數（見 :ref:`set_loops()<class_Tween_method_set_loops>`\ ）。返回 ``-1`` 表示 **Tween** 無限迴圈，返回 ``0`` 表示 **Tween** 已結束。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

返回該 **Tween** 已進行動畫的總時長（即自開始以來經過的時間，不計算暫停等時間），單位為秒。時長會受到 :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>` 影響，\ :ref:`stop()<class_Tween_method_stop>` 會將其重設為 ``0``\ 。

\ **注意：**\ 由於時長是由影格的差異量時間累計而來的，該 **Tween** 完成動畫後所返回的時長會比 **Tween** 的實際時長略大。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_has_tweeners:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tweeners**\ (\ ) |const| :ref:`🔗<class_Tween_method_has_tweeners>`

如果已向 **Tween** 新增了任意 :ref:`Tweener<class_Tweener>` 且該 **Tween** 有效，則回傳 ``true``\ 。當動態新增補間器且補間序列最終可能為空時，此方法非常有用。在空補間開始前將其終止，可避免報錯。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_interpolate_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **interpolate_value**\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| :ref:`🔗<class_Tween_method_interpolate_value>`

不想使用 **Tween** 進行動畫時，可以使用這個方法進行手動插值。與 :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>` 類似，但支援自訂過渡和緩動。

\ ``initial_value`` 為插值的起始值。

\ ``delta_value`` 為插值的變化值，即等於 ``final_value - initial_value``\ 。

\ ``elapsed_time`` 為插值開始後所經過的秒數，用於控制插值的位置。例如，等於 ``duration`` 的一半時，插值後的值位於初始值和最終值的一半。這個值也可以比 ``duration`` 大或者比 0 小，此時會進行外插。

\ ``duration`` 為插值的總時長。

\ **注意：**\ 如果 ``duration`` 等於 ``0``\ ，那麼無論提供的 ``elapsed_time`` 為多少，該方法返回的始終是最終值。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

返回該 **Tween** 目前是否正在執行，即未暫停且未完成。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

返回該 **Tween** 是否有效。有效的 **Tween** 是由場景樹包含的 **Tween**\ （即 :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` 返回的陣列中包含這個 **Tween**\ ）。\ **Tween** 失效的情況有：補間完成、被銷毀、使用 ``Tween.new()`` 建立。無效的 **Tween** 不能追加 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

中止所有補間操作，並使該 **Tween** 無效。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

讓下一個 :ref:`Tweener<class_Tweener>` 與上一個並行執行。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(...)
    tween.parallel().tween_property(...)
    tween.parallel().tween_property(...)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(...);
    tween.Parallel().TweenProperty(...);
    tween.Parallel().TweenProperty(...);



該範例中的所有 :ref:`Tweener<class_Tweener>` 都會同時執行。

你可以通過使用 :ref:`set_parallel()<class_Tween_method_set_parallel>` 讓該 **Tween** 預設並行。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

暫停補間。可使用 :ref:`play()<class_Tween_method_play>` 恢復動畫。

\ **注意：**\ 如果一個Tween被暫停並且沒有綁定到任何節點，它將無限期地存在，直到手動啟動或失效。如果遺失了對此類 Tween 的引用，可以使用 :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` 檢索它。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

恢復已暫停或已停止的 **Tween**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ease:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_Tween_method_set_ease>`

設定在此方法之後新增的 :ref:`PropertyTweener<class_PropertyTweener>`\ （屬性補間器）和 :ref:`MethodTweener<class_MethodTweener>`\ （方法補間器）的預設緩動型別。

在呼叫此方法之前，預設的緩動型別是 :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Uses EASE_IN_OUT.
    tween.set_ease(Tween.EASE_IN)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Uses EASE_IN.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(this, "position", new Vector2(300, 0), 0.5); // Uses EaseType.InOut.
    tween.SetEase(Tween.EaseType.In);
    tween.TweenProperty(this, "rotation_degrees", 45.0, 0.5); // Uses EaseType.In.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ignore_time_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ignore_time_scale**\ (\ ignore\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_ignore_time_scale>`

如果 ``ignore`` 為 ``true``\ ，則該補間動畫會忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>`\ ，隨實際流逝的時間更新。所有 :ref:`Tweener<class_Tweener>` 和對應的延遲都會受到影響。預設值為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

這只該補間序列的重複次數，即 ``set_loops(2)`` 會讓動畫執行兩次。

呼叫這個方法時如果不帶參數，那麼該 **Tween** 會無限執行，直到被 :ref:`kill()<class_Tween_method_kill>` 銷毀、該 **Tween** 綁定的節點被釋放、或者所有進行動畫的物件都被釋放（無法再進行任何動畫）。

\ **警告：**\ 使用無限迴圈時請一定要加入一些時長/延遲。為了防止遊戲凍結，0 時長的迴圈動畫（例如單個不帶延遲的 :ref:`CallbackTweener<class_CallbackTweener>`\ ）會在迴圈若干次後停止，造成出乎預料的結果。如果 **Tween** 的生命期依賴於某個節點，請一定使用 :ref:`bind_node()<class_Tween_method_bind_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

If ``parallel`` is ``true``, the :ref:`Tweener<class_Tweener>`\ s appended after this method will by default run simultaneously, as opposed to sequentially.

\ **Note:** Just like with :ref:`parallel()<class_Tween_method_parallel>`, the tweener added right before this method will also be part of the parallel step.


.. tabs::

 .. code-tab:: gdscript

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # Runs together with the position tweener.

 .. code-tab:: csharp

    tween.TweenProperty(this, "position", new Vector2(300, 0), 0.5f);
    tween.SetParallel();
    tween.TweenProperty(this, "modulate", Colors.Green, 0.5f); // Runs together with the position tweener.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

決定該 **Tween** 在 :ref:`SceneTree<class_SceneTree>` 暫停時的行為。

預設值為 :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

決定該 **Tween** 應當在處理影格（見 :ref:`Node._process()<class_Node_private_method__process>`\ ）還是物理影格（見 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）執行。

預設值為 :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

補間的速度縮放。影響所有 :ref:`Tweener<class_Tweener>` 及其延遲。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Sets the default transition type for :ref:`PropertyTweener<class_PropertyTweener>`\ s and :ref:`MethodTweener<class_MethodTweener>`\ s appended after this method.

Before this method is called, the default transition type is :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Uses TRANS_LINEAR.
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Uses TRANS_SINE.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(this, "position", new Vector2(300, 0), 0.5f); // Uses TransitionType.Linear.
    tween.SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(this, "rotation_degrees", 45.0f, 0.5f); // Uses TransitionType.Sine.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Stops the tweening and resets the **Tween** to its initial state. This will not remove any appended :ref:`Tweener<class_Tweener>`\ s.

\ **Note:** This does *not* reset targets of :ref:`PropertyTweener<class_PropertyTweener>`\ s to their values when the **Tween** first started.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()

    # Will move from 0 to 500 over 1 second.
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # Will be at (about) 250 when the timer finishes.
    await get_tree().create_timer(0.5).timeout

    # Will now move from (about) 250 to 500 over 1 second,
    # thus at half the speed as before.
    tween.stop()
    tween.play()

 .. code-tab:: csharp

    Tween tween = CreateTween();

    // Will move from 0 to 500 over 1 second.
    Position = Position with { X = 0.0f };
    tween.TweenProperty(this, "position:x", 500.0f, 1.0f);

    // Will be at (about) 250 when the timer finishes.
    await ToSignal(GetTree().CreateTimer(0.5f), Timer.SignalName.Timeout);

    // Will now move from (about) 250 to 500 over 1 second,
    // thus at half the speed as before.
    tween.Stop();
    tween.Play();



\ **Note:** If a Tween is stopped and not bound to any node, it will exist indefinitely until manually started or invalidated. If you lose a reference to such Tween, you can retrieve it using :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_await:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **tween_await**\ (\ signal\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Tween_method_tween_await>`

Creates and appends an :ref:`AwaitTweener<class_AwaitTweener>`. This method can be used to await a signal to be emitted and create asynchronous animations or cutscenes.

The animation will not progress to the next step until the awaited signal is emitted or the connection becomes invalid (e.g. as a result of freeing the target object). If you know that the emission may not happen, use :ref:`AwaitTweener.set_timeout()<class_AwaitTweener_method_set_timeout>`.

\ **Note:** The awaited signal should be emitted during the step when :ref:`AwaitTweener<class_AwaitTweener>` is active.

\ **Example:** An object launches itself and explodes upon collision or after 4 seconds.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_callback(launch)
    tween.tween_await(collided).set_timeout(4.0)
    tween.tween_callback(explode)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenCallback(Callable.From(Launch));
    tween.TweenAwait(new Signal(this, SignalName.Collided)).SetTimeout(4.0f);
    tween.TweenCallback(Callable.From(Explode));



\ **Example:** A character walks to a specific point, says some lines and walks back when the player closes the message box.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_callback(walk_to.bind(600.0))
    tween.tween_await(destination_reached)
    tween.tween_callback(say_dialogue.bind("Good day, sir!"))
    tween.tween_await(dialogue_closed)
    tween.tween_callback(walk_to.bind(0.0))

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenCallback(Callable.From(() => WalkTo(600.0f)));
    tween.TweenAwait(new Signal(this, SignalName.DestinationReached));
    tween.TweenCallback(Callable.From(() => SayDialogue("Good day, sir!")));
    tween.TweenAwait(new Signal(this, SignalName.DialogueClosed));
    tween.TweenCallback(Callable.From(() => WalkTo(0.0f)));



\ **Note:** If you are awaiting a signal from a callback called in the same **Tween**, make sure the signal is emitted *after* the await starts. If it can't be reasonably guaranteed, you can await and emit in the same step:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_await(signal)
    tween.parallel().tween_callback(method_that_emits_signal)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenAwait(new Signal(this, SignalName.Signal));
    tween.Parallel().TweenCallback(Callable.From(MethodThatEmitsSignal));



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_callback:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **tween_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Tween_method_tween_callback>`

建立並追加一個 :ref:`CallbackTweener<class_CallbackTweener>`\ 。這個方法可用於呼叫任意物件的任意方法。請使用 :ref:`Callable.bind()<class_Callable_method_bind>` 綁定額外的呼叫參數。

\ **範例：**\ 總是每隔 1 秒射擊一次的物件：


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **範例：**\ 將精靈變紅然後變藍，帶有 2 秒延遲：


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween()
    tween.tween_callback($Sprite.set_modulate.bind(Color.RED)).set_delay(2)
    tween.tween_callback($Sprite.set_modulate.bind(Color.BLUE)).set_delay(2)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween();
    Sprite2D sprite = GetNode<Sprite2D>("Sprite");
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Red)).SetDelay(2.0f);
    tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Blue)).SetDelay(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_interval:

.. rst-class:: classref-method

:ref:`IntervalTweener<class_IntervalTweener>` **tween_interval**\ (\ time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_interval>`

建立並追加一個 :ref:`IntervalTweener<class_IntervalTweener>`\ 。這個方法可用於在補間動畫中建立延遲，可以替代在其他 :ref:`Tweener<class_Tweener>` 中使用延遲，或無動畫的情況（此時 **Tween** 充當計時器的角色）。\ ``time`` 為間隔時間，單位為秒。

\ **範例：**\ 建立程式碼執行的間隔：


.. tabs::

 .. code-tab:: gdscript

    # ... 一些程式碼
    yield(create_tween().tween_interval(2), "finished")
    # ... 更多程式碼

 .. code-tab:: csharp

    // ... 一些程式碼
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... 更多程式碼



\ **範例：**\ 建立每隔幾秒就來回移動並跳躍的物件：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_loops()
    tween.tween_property($Sprite, "position:x", 200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)
    tween.tween_property($Sprite, "position:x", -200.0, 1.0).as_relative()
    tween.tween_callback(jump)
    tween.tween_interval(2)

 .. code-tab:: csharp

    Tween tween = CreateTween().SetLoops();
    tween.TweenProperty(GetNode("Sprite"), "position:x", 200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);
    tween.TweenProperty(GetNode("Sprite"), "position:x", -200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Jump));
    tween.TweenInterval(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_method:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **tween_method**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_method>`

建立並追加一個 :ref:`MethodTweener<class_MethodTweener>`\ 。這個方法與 :ref:`tween_callback()<class_Tween_method_tween_callback>` 和 :ref:`tween_property()<class_Tween_method_tween_property>` 的組合類似，會使用補間後的值作為參數去持續呼叫某個方法。該值是從 ``from`` 到 ``to`` 進行補間的，時長為 ``duration`` 秒。請使用 :ref:`Callable.bind()<class_Callable_method_bind>` 綁定額外的呼叫參數。你可以使用 :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` 和 :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` 來調整該值的緩動和過渡，可以使用 :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` 來延遲補間。

\ **範例：**\ 讓 3D 物件面向另一個點：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # look_at() 方法的第二個參數接受的是上向量。

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // 使用 lambda 為呼叫綁定附加參數。



\ **範例：**\ 在一段延遲後，使用中間方法來設定 :ref:`Label<class_Label>` 的文字：


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var tween = create_tween()
        tween.tween_method(set_label_text, 0, 10, 1).set_delay(1)

    func set_label_text(value: int):
        $Label.text = "Counting " + str(value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        base._Ready();

        Tween tween = CreateTween();
        tween.TweenMethod(Callable.From<int>(SetLabelText), 0.0f, 10.0f, 1.0f).SetDelay(1.0f);
    }

    private void SetLabelText(int value)
    {
        GetNode<Label>("Label").Text = $"Counting {value}";
    }



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_property:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **tween_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_property>`

建立並追加一個 :ref:`PropertyTweener<class_PropertyTweener>`\ 。這個方法會將 ``object`` 物件的 ``property`` 屬性在初始值和最終值 ``final_val`` 之間進行補間，持續時間為 ``duration`` 秒。初始值預設為該 :ref:`PropertyTweener<class_PropertyTweener>` 啟動時該屬性的值。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



會將該精靈移動到 (100, 200) 然後再移動到 (200, 300)。如果你使用了 :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` 或 :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`\ ，那麼起始位置就會被給定的值所覆蓋。更多調整項請參閱 :ref:`PropertyTweener<class_PropertyTweener>` 中的其他方法。

\ **注意：**\ 滑鼠懸停在屬性檢視器中的屬性上即可查看正確的屬性名稱。你還可以用 ``"屬性:元件"`` 的形式提供屬性中的元件（例如 ``position:x``\ ），這樣就只會修改這個特定的元件。

\ **範例：**\ 使用不同的過渡型別從同一位置開始移動兩次：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().set_trans(Tween.TRANS_SINE)
    tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().from_current().set_trans(Tween.TRANS_EXPO)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().SetTrans(Tween.TransitionType.Sine);
    tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().FromCurrent().SetTrans(Tween.TransitionType.Expo);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_subtween:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **tween_subtween**\ (\ subtween\: :ref:`Tween<class_Tween>`\ ) :ref:`🔗<class_Tween_method_tween_subtween>`

Creates and appends a :ref:`SubtweenTweener<class_SubtweenTweener>`. This method can be used to nest ``subtween`` within this **Tween**, allowing for the creation of more complex and composable sequences.


.. tabs::

 .. code-tab:: gdscript

    # Subtween will rotate the object.
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # Parent tween will execute the subtween as one of its steps.
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

 .. code-tab:: csharp

    // Subtween will rotate the object.
    Tween subtween = CreateTween();
    subtween.TweenProperty(this, "rotation_degrees", 45.0f, 1.0f);
    subtween.TweenProperty(this, "rotation_degrees", 0.0f, 1.0f);

    // Parent tween will execute the subtween as one of its steps.
    Tween tween = CreateTween();
    tween.TweenProperty(this, "position:x", 500.0f, 3.0f);
    tween.TweenSubtween(subtween);
    tween.TweenProperty(this, "position:x", 300.0f, 2.0f);



\ **Note:** The methods :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>`, and :ref:`set_loops()<class_Tween_method_set_loops>` can cause the parent **Tween** to get stuck on the subtween step; see the documentation for those methods for more information.

\ **Note:** The pause and process modes set by :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` and :ref:`set_process_mode()<class_Tween_method_set_process_mode>` on ``subtween`` will be overridden by the parent **Tween**'s settings.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
