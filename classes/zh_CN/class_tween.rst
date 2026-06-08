:github_url: hide

.. _class_Tween:

Tween
=====

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通过脚本进行通用动画的轻量级对象，使用 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-introduction-group

描述
----

补间动画（Tweens）主要用于那些需要在一定数值范围内对数字属性进行插值的动画。\ *Tween*\ （补间）这个名字来源于 *in-betweening*\ （中间画），这是一种动画技术：你只需要指定\ *关键帧*\ ，电脑就会自动计算并补全它们之间的那些过渡帧。使用 **Tween** 来制作动画的过程，就被称为“补间动画（tweening）”。

当动画的最终数值无法提前预知时，\ **Tween** 比 :ref:`AnimationPlayer<class_AnimationPlayer>` 更加适用。例如，动态插值一个随机选定的摄像机缩放值，用 **Tween** 来实现是最好的；但如果想用 :ref:`AnimationPlayer<class_AnimationPlayer>` 节点做同样的事情，就会非常困难。此外，Tweens 比 :ref:`AnimationPlayer<class_AnimationPlayer>` 更加轻量级，因此非常适合制作那些不需要编辑器进行可视化微调的简单动画或通用任务。对于一些通常需要用代码来处理的逻辑，你也可以用“发射后不管（fire-and-forget）”的方式来使用它们。比如，你可以使用一个带延迟的循环 :ref:`CallbackTweener<class_CallbackTweener>`\ ，来让某个物体周期性地发射子弹。

你可以通过调用 :ref:`SceneTree.create_tween()<class_SceneTree_method_create_tween>` 或 :ref:`Node.create_tween()<class_Node_method_create_tween>` 来创建一个 **Tween**\ 。如果是手动创建的 **Tween**\ （比如直接使用 ``Tween.new()``\ ），它是无效的，无法用来对数值进行补间动画。

你可以通过调用 tween_property、tween_interval、tween_callback、tween_method、tween_subtween 或 tween_await 这些方法，向 **Tween** 对象中添加 :ref:`Tweener<class_Tweener>`\ ，从而创建出一个补间动画:


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



这个序列会让 ``$Sprite`` 节点先变成红色，然后缩小，最后调用 :ref:`Node.queue_free()<class_Node_method_queue_free>` 来释放（销毁）这个精灵。默认情况下，\ :ref:`Tweener<class_Tweener>` 是一个接一个按顺序执行的。不过，你也可以使用 :ref:`parallel()<class_Tween_method_parallel>` 和 :ref:`set_parallel()<class_Tween_method_set_parallel>` 来改变这种（串行）行为。

当使用 ``tween_*`` 系列方法创建出一个 :ref:`Tweener<class_Tweener>` 后，你可以使用链式方法调用来微调这个 :ref:`Tweener<class_Tweener>` 的各项属性。例如，如果你想改变上面示例中的过渡类型（transition type），就可以使用 :ref:`set_trans()<class_Tween_method_set_trans>` 方法：


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



大多数 **Tween** 的方法也可以这样进行链式调用。在下面的例子中，这个 **Tween** 被绑定到了当前运行脚本所在的节点上，并且为它的 :ref:`Tweener<class_Tweener>`\ s 设置了一个默认的过渡效果：


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



\ **Tween** 的另一个有趣用法是，对任意一组对象进行动画处理：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    for sprite in get_children():
        tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    foreach (Node sprite in GetChildren())
        tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);



在上面的例子中，某个节点的所有子节点会被依次移动到 ``(0, 0)`` 的位置。

你应该避免对同一个对象的属性使用多个 **Tween**\ 。如果两个或更多的补间动画同时控制同一个属性，最后创建的那个会获得优先权，并决定该属性的最终值。如果你想中断并重新开始一个动画，可以考虑将 **Tween** 赋值给一个变量：


.. tabs::

 .. code-tab:: gdscript

    var tween
    func animate():
        if tween:
            tween.kill() #中断（或取消）上一次的动画。
        tween = create_tween()

 .. code-tab:: csharp

    private Tween _tween;

    public void Animate()
    {
        if (_tween != null)
            _tween.Kill(); // 中断（或取消）上一次的动画
        _tween = CreateTween();
    }



部分 :ref:`Tweener<class_Tweener>`\ （补间器）会用到过渡（transitions）和缓动（eases）。前者接受一个 :ref:`TransitionType<enum_Tween_TransitionType>` 常量，它决定了动画的时间节奏处理方式（你可以访问 `easings.net <https://easings.net/>`__ 查看一些具体的效果示例）。后者接受一个 :ref:`EaseType<enum_Tween_EaseType>` 常量，它控制着 ``trans_type``\ （过渡类型）在插值过程中的应用位置（是应用在开头、结尾，还是两头都应用）。如果你不知道该选哪种过渡和缓动效果，可以尝试搭配不同的 :ref:`TransitionType<enum_Tween_TransitionType>` 常量与 :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>` 一起使用，然后从中挑一个视觉效果最棒的。

\ `Tween easing and transition types cheatsheet <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp>`__\ 

\ **注意：** Tween 并不是为了重复使用而设计的，强行复用会导致不可预期的行为。每次制作动画，以及每次想要从头重播动画时，都应该创建一个新的 Tween。请记住，Tween 在创建后会立刻开始运行，所以只有当你真正准备开始播放动画时，再去创建它。

\ **注意：** Tween 是在当前帧的所有节点处理之后才被执行的。也就是说，节点的 :ref:`Node._process()<class_Node_private_method__process>` 方法会在 Tween 之前被调用（或者如果是根据 :ref:`set_process_mode()<class_Tween_method_set_process_mode>` 传入的值来决定的话，那就是 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 会在 Tween 之前被调用）。

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

信号
----

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

该 **Tween** 完成所有补间时发出。该 **Tween** 设为无限循环时不会发出（见 :ref:`set_loops()<class_Tween_method_set_loops>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

完成一次循环时触发（见 :ref:`set_loops()<class_Tween_method_set_loops>`\ ），会提供该循环的索引号。这个信号不会在最后一次循环后触发，这种情况请使用 :ref:`finished<class_Tween_signal_finished>` 代替。

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

完成该 **Tween** 的一步完成后触发，会提供这一步的索引号。一步指的是单个 :ref:`Tweener<class_Tweener>` 或一组并行执行的 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

该 **Tween** 在每个物理帧之后进行更新（见 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

该 **Tween** 在每个处理帧之后进行更新（见 :ref:`Node._process()<class_Node_private_method__process>`\ ）。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

如果该 **Tween** 绑定了节点，它将在该节点可以处理时进行处理（见 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）。否则与 :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>` 相同。

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

如果 :ref:`SceneTree<class_SceneTree>` 被暂停，则该 **Tween** 也会暂停。

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

无论 :ref:`SceneTree<class_SceneTree>` 是否被暂停，该 **Tween** 都会处理。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

动画是线性插值的。

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

动画使用正弦函数进行插值。

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

动画使用五次（5 次方）函数进行插值。

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

动画使用四次（4 次方）函数进行插值。

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

动画使用二次（2 次方）函数进行插值。

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

动画使用指数（x 次方）函数进行插值。

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

动画弹性插值，在边缘摆动。

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

动画使用三次（3 次方）函数进行插值。

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

动画使用平方根的函数进行插值。

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

动画通过在末尾弹跳插值。

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

动画在末端回放插值。

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

动画像朝着末尾的弹簧一样插值。

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

插值开始缓慢，并加速接近结束。

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

插值开始快速，接近结束时减慢。

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

:ref:`EASE_IN<class_Tween_constant_EASE_IN>` 和 :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>` 的组合。两端的插值最慢。

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

:ref:`EASE_IN<class_Tween_constant_EASE_IN>` 和 :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>` 的组合。两端的插值最快。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

将这个 **Tween** 绑定到给定的 ``node`` 上。\ **Tween** 是由 :ref:`SceneTree<class_SceneTree>` 直接处理的，所以不依赖被动画的节点运行。将该 **Tween** 绑定到某个 :ref:`Node<class_Node>` 后，该对象不在树中时该 **Tween** 就会暂停动画，绑定对象被释放时该 **Tween** 会被自动销毁。另外，\ :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` 会让暂停行为依赖于绑定的节点。

使用 :ref:`Node.create_tween()<class_Node_method_create_tween>` 来创建并绑定 **Tween** 更简单。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

用于在使用 ``true`` 调用 :ref:`set_parallel()<class_Tween_method_set_parallel>` 后，将两个 :ref:`Tweener<class_Tweener>` 串联。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # 会和上一条并行执行。
    tween.chain().tween_property(...) # 会在前两条完成后执行。

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // 会和上一条并行执行。
    tween.Chain().TweenProperty(...); // 会在前两条完成后执行。



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

使用给定的增量 ``delta`` 处理该 **Tween**\ ，单位为秒。主要用于在该 **Tween** 暂停时进行手动控制。通过将 ``delta`` 设置为大于 **Tween** 动画总时长的值，也可以立即结束该 **Tween** 的动画。

如果该 **Tween** 仍然有未完成的 :ref:`Tweener<class_Tweener>`\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

返回该 **Tween** 所剩的循环数（见 :ref:`set_loops()<class_Tween_method_set_loops>`\ ）。返回 ``-1`` 表示 **Tween** 无限循环，返回 ``0`` 表示 **Tween** 已结束。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

返回该 **Tween** 已进行动画的总时长（即自开始以来经过的时间，不计算暂停等时间），单位为秒。时长会受到 :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>` 影响，\ :ref:`stop()<class_Tween_method_stop>` 会将其重置为 ``0``\ 。

\ **注意：**\ 由于时长是由帧的增量时间累计而来的，该 **Tween** 完成动画后所返回的时长会比 **Tween** 的实际时长略大。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_has_tweeners:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tweeners**\ (\ ) |const| :ref:`🔗<class_Tween_method_has_tweeners>`

如果已向 **Tween** 添加了任意 :ref:`Tweener<class_Tweener>` 且该 **Tween** 有效，则返回 ``true``\ 。当动态添加补间器且补间序列最终可能为空时，此方法非常有用。在空补间开始前将其终止，可避免报错。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_interpolate_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **interpolate_value**\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| :ref:`🔗<class_Tween_method_interpolate_value>`

不想使用 **Tween** 进行动画时，可以使用这个方法进行手动插值。与 :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>` 类似，但支持自定义过渡和缓动。

\ ``initial_value`` 为插值的起始值。

\ ``delta_value`` 为插值的变化值，即等于 ``final_value - initial_value``\ 。

\ ``elapsed_time`` 为插值开始后所经过的秒数，用于控制插值的位置。例如，等于 ``duration`` 的一半时，插值后的值位于初始值和最终值的一半。这个值也可以比 ``duration`` 大或者比 0 小，此时会进行外插。

\ ``duration`` 为插值的总时长。

\ **注意：**\ 如果 ``duration`` 等于 ``0``\ ，那么无论提供的 ``elapsed_time`` 为多少，该方法返回的始终是最终值。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

返回该 **Tween** 目前是否正在执行，即未暂停且未完成。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

返回该 **Tween** 是否有效。有效的 **Tween** 是由场景树包含的 **Tween**\ （即 :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` 返回的数组中包含这个 **Tween**\ ）。\ **Tween** 失效的情况有：补间完成、被销毁、使用 ``Tween.new()`` 创建。无效的 **Tween** 不能追加 :ref:`Tweener<class_Tweener>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

中止所有补间操作，并使该 **Tween** 无效。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

让下一个 :ref:`Tweener<class_Tweener>` 与上一个并行执行。


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



该示例中的所有 :ref:`Tweener<class_Tweener>` 都会同时执行。

你可以通过使用 :ref:`set_parallel()<class_Tween_method_set_parallel>` 让该 **Tween** 默认并行。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

暂停该补间。可以使用 :ref:`play()<class_Tween_method_play>` 恢复动画。

\ **注意：**\ 如果一个 Tween 被暂停并且没有被绑定到任何节点，它将无限期地存在，直到手动启动或失效。如果丢失了对这种 Tween 的引用，可以使用 :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` 检索它。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

恢复已暂停或已停止的 **Tween**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ease:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_Tween_method_set_ease>`

设置在此方法之后添加的 :ref:`PropertyTweener<class_PropertyTweener>`\ （属性补间器）和 :ref:`MethodTweener<class_MethodTweener>`\ （方法补间器）的默认缓动类型。

在调用此方法之前，默认的缓动类型是 :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`\ 。


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

如果 ``ignore`` 为 ``true``\ ，则该补间动画会忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>`\ ，随实际流逝的时间更新。所有 :ref:`Tweener<class_Tweener>` 和对应的延迟都会受到影响。默认值为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

这只该补间序列的重复次数，即 ``set_loops(2)`` 会让动画执行两次。

调用这个方法时如果不带参数，那么该 **Tween** 会无限执行，直到被 :ref:`kill()<class_Tween_method_kill>` 销毁、该 **Tween** 绑定的节点被释放或者所有进行动画的对象都被释放（无法再进行任何动画）。

\ **警告：**\ 使用无限循环时请一定要加入一些时长/延迟。为了防止游戏冻结，0 时长的循环动画（例如单个不带延迟的 :ref:`CallbackTweener<class_CallbackTweener>`\ ）会在循环若干次后停止，造成出乎预料的结果。如果 **Tween** 的生命期依赖于某个节点，请一定使用 :ref:`bind_node()<class_Tween_method_bind_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

如果 ``parallel`` 为 ``true``\ ，则后续追加的 :ref:`Tweener<class_Tweener>` 默认就是同时运行的，否则默认依次运行。

\ **注意：**\ 与 :ref:`parallel()<class_Tween_method_parallel>` 类似，在这个方法前添加的那一个补间器也是并行步骤的一部分。

::

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # 与位置补间器一同运行。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

决定该 **Tween** 在 :ref:`SceneTree<class_SceneTree>` 暂停时的行为。

默认值为 :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

决定该 **Tween** 应当在处理帧（见 :ref:`Node._process()<class_Node_private_method__process>`\ ）还是物理帧（见 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）执行。

默认值为 :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

补间的速度缩放。影响所有 :ref:`Tweener<class_Tweener>` 及其延迟。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

设置在该方法之后追加的 :ref:`PropertyTweener<class_PropertyTweener>` 和 :ref:`MethodTweener<class_MethodTweener>` 的默认过渡类型。

调用该方法前的默认过渡类型为 :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`\ 。

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # 使用 TRANS_LINEAR。
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # 使用 TRANS_SINE。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

停止补间动画并将 **Tween** 重置为初始状态，不会移除已追加的 :ref:`Tweener<class_Tweener>`\ 。

\ **注意：**\ 该方法\ *不会*\ 将 :ref:`PropertyTweener<class_PropertyTweener>` 的目标重置为 **Tween** 首次开始时的值。

::

    var tween = create_tween()

    # 将在 1 秒内从 0 移动到 500。
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # 计时器结束时（大概）在 250。
    await get_tree().create_timer(0.5).timeout

    # 现在将在 1 秒内从（大概）250 移动到 500，
    # 因此速度为原先的一半。
    tween.stop()
    tween.play()

\ **注意：**\ 如果 Tween 被停止且未与任何节点绑定，则会无限存续下去，直到手动启动或手动废除。如果你丢失了对这种 Tween 的引用，则可以通过 :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` 来获取。

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_await:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **tween_await**\ (\ signal\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Tween_method_tween_await>`

创建并追加一个 :ref:`AwaitTweener<class_AwaitTweener>`\ 。该方法可用于等待信号发出，以创建异步动画或过场动画。

在等待的信号发出或连接失效（例如因目标对象被释放）之前，动画不会进入下一步。如果预计信号可能不会发出，请使用 :ref:`AwaitTweener.set_timeout()<class_AwaitTweener_method_set_timeout>`\ 。

\ **注意：** 等待的信号应在 :ref:`AwaitTweener<class_AwaitTweener>` 处于活动状态的步骤期间发出。

\ **示例：** 一个对象发射自身，并在碰撞时或 4 秒后爆炸。

::

    var tween = create_tween()
    tween.tween_callback(launch)
    tween.tween_await(collided).set_timeout(4.0)
    tween.tween_callback(explode)

\ **示例：** 一个角色走到指定位置，说出几行台词，当玩家关闭消息框时再走回去。

::

    var tween = create_tween()
    tween.tween_callback(walk_to.bind(600.0))
    tween.tween_await(destination_reached)
    tween.tween_callback(say_dialogue.bind("Good day, sir!"))
    tween.tween_await(dialogue_closed)
    tween.tween_callback(walk_to.bind(0.0))

\ **注意：** 如果你正在等待一个在同一个 **Tween** 中调用的回调函数发出的信号，请确保该信号是在等待（await）开始 *之后* 才发出的。如果无法合理地保证这一点，你可以将等待和发出信号放在同一个步骤中进行：

::

    var tween = create_tween()
    tween.tween_await(signal)
    tween.parallel().tween_callback(method_that_emits_signal)

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_callback:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **tween_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Tween_method_tween_callback>`

创建并追加一个 :ref:`CallbackTweener<class_CallbackTweener>`\ 。这个方法可用于调用任意对象的任意方法。请使用 :ref:`Callable.bind()<class_Callable_method_bind>` 绑定额外的调用参数。

\ **示例：**\ 总是每隔 1 秒射击一次的对象：


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **示例：**\ 将精灵变红然后变蓝，带有 2 秒延迟：


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

创建并追加一个 :ref:`IntervalTweener<class_IntervalTweener>`\ 。这个方法可用于在补间动画中创建延迟，可以替代在其他 :ref:`Tweener<class_Tweener>` 中使用延迟，或无动画的情况（此时 **Tween** 充当计时器的角色）。\ ``time`` 为间隔时间，单位为秒。

\ **示例：**\ 创建代码执行的间隔：


.. tabs::

 .. code-tab:: gdscript

    # ... 一些代码
    yield(create_tween().tween_interval(2), "finished")
    # ... 更多代码

 .. code-tab:: csharp

    // ... 一些代码
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... 更多代码



\ **示例：**\ 创建每隔几秒就来回移动并跳跃的对象：


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

创建并追加一个 :ref:`MethodTweener<class_MethodTweener>`\ 。这个方法与 :ref:`tween_callback()<class_Tween_method_tween_callback>` 和 :ref:`tween_property()<class_Tween_method_tween_property>` 的组合类似，会使用补间后的值作为参数去持续调用某个方法。该值是从 ``from`` 到 ``to`` 进行补间的，时长为 ``duration`` 秒。请使用 :ref:`Callable.bind()<class_Callable_method_bind>` 绑定额外的调用参数。你可以使用 :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` 和 :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` 来调整该值的缓动和过渡，可以使用 :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` 来延迟补间。

\ **示例：**\ 让 3D 对象面向另一个点：


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # look_at() 方法的第二个参数接受的是上向量。

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // 使用 lambda 为调用绑定附加参数。



\ **示例：**\ 在一段延迟后，使用中间方法来设置 :ref:`Label<class_Label>` 的文本：


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

创建并追加一个 :ref:`PropertyTweener<class_PropertyTweener>`\ 。这个方法会将 ``object`` 对象的 ``property`` 属性在初始值和最终值 ``final_val`` 之间进行补间，持续时间为 ``duration`` 秒。初始值默认为该 :ref:`PropertyTweener<class_PropertyTweener>` 启动时该属性的值。


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



会将该精灵移动到 (100, 200) 然后再移动到 (200, 300)。如果你使用了 :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` 或 :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`\ ，那么起始位置就会被给定的值所覆盖。更多调整项请参阅 :ref:`PropertyTweener<class_PropertyTweener>` 中的其他方法。

\ **注意：**\ 鼠标悬停在检查器中的属性上即可查看正确的属性名称。你还可以用 ``"属性:组件"`` 的形式提供属性中的组件（例如 ``position:x``\ ），这样就只会修改这个特定的组件。

\ **示例：**\ 使用不同的过渡类型从同一位置开始移动两次：


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

创建并追加 :ref:`SubtweenTweener<class_SubtweenTweener>`\ 。该方法可用于将 ``subtween`` 嵌套至该 **Tween** 中，从而创建更复杂、方便合成的动画序列。

::

    # 子补间动画会旋转该对象。
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # 父补间动画会将子补间动画作为单一步骤执行。
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

\ **注意：**\ :ref:`pause()<class_Tween_method_pause>`\ 、\ :ref:`stop()<class_Tween_method_stop>`\ 、\ :ref:`set_loops()<class_Tween_method_set_loops>` 等方法可能导致父 **Tween** 卡在子补间动画步骤；详见对应方法的文档。

\ **注意：**\ 使用 :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` 和 :ref:`set_process_mode()<class_Tween_method_set_process_mode>` 对 ``subtween`` 设置的暂停模式和处理模式会被父 **Tween** 的设置覆盖。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
