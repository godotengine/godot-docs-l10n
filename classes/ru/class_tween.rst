:github_url: hide

.. _class_Tween:

Tween
=====

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Легкий объект, используемый для универсальной анимации через скрипт с использованием :ref:`Tweener<class_Tweener>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Tweens are mostly useful for animations requiring a numerical property to be interpolated over a range of values. The name *tween* comes from *in-betweening*, an animation technique where you specify *keyframes* and the computer interpolates the frames that appear between them. Animating something with a **Tween** is called tweening.

\ **Tween** is more suited than :ref:`AnimationPlayer<class_AnimationPlayer>` for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a **Tween**; it would be difficult to do the same thing with an :ref:`AnimationPlayer<class_AnimationPlayer>` node. Tweens are also more light-weight than :ref:`AnimationPlayer<class_AnimationPlayer>`, so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a "fire-and-forget" manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped :ref:`CallbackTweener<class_CallbackTweener>` with a delay.

A **Tween** can be created by using either :ref:`SceneTree.create_tween()<class_SceneTree_method_create_tween>` or :ref:`Node.create_tween()<class_Node_method_create_tween>`. **Tween**\ s created manually (i.e. by using ``Tween.new()``) are invalid and can't be used for tweening values.

A tween animation is created by adding :ref:`Tweener<class_Tweener>`\ s to the **Tween** object, using :ref:`tween_property()<class_Tween_method_tween_property>`, :ref:`tween_interval()<class_Tween_method_tween_interval>`, :ref:`tween_callback()<class_Tween_method_tween_callback>`, :ref:`tween_method()<class_Tween_method_tween_method>`, :ref:`tween_subtween()<class_Tween_method_tween_subtween>`, or :ref:`tween_await()<class_Tween_method_tween_await>`:


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



This sequence will make the ``$Sprite`` node turn red, then shrink, before finally calling :ref:`Node.queue_free()<class_Node_method_queue_free>` to free the sprite. :ref:`Tweener<class_Tweener>`\ s are executed one after another by default. This behavior can be changed using :ref:`parallel()<class_Tween_method_parallel>` and :ref:`set_parallel()<class_Tween_method_set_parallel>`.

When a :ref:`Tweener<class_Tweener>` is created with one of the ``tween_*`` methods, a chained method call can be used to tweak the properties of this :ref:`Tweener<class_Tweener>`. For example, if you want to set a different transition type in the above example, you can use :ref:`set_trans()<class_Tween_method_set_trans>`:


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



Most of the **Tween** methods can be chained this way too. In the following example the **Tween** is bound to the running script's node and a default transition is set for its :ref:`Tweener<class_Tweener>`\ s:


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



Another interesting use for **Tween**\ s is animating arbitrary sets of objects:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    for sprite in get_children():
        tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    foreach (Node sprite in GetChildren())
        tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);



In the example above, all children of a node are moved one after another to position ``(0, 0)``.

You should avoid using more than one **Tween** per object's property. If two or more tweens animate one property at the same time, the last one created will take priority and assign the final value. If you want to interrupt and restart an animation, consider assigning the **Tween** to a variable:


.. tabs::

 .. code-tab:: gdscript

    var tween
    func animate():
        if tween:
            tween.kill() # Abort the previous animation.
        tween = create_tween()

 .. code-tab:: csharp

    private Tween _tween;

    public void Animate()
    {
        if (_tween != null)
            _tween.Kill(); // Abort the previous animation
        _tween = CreateTween();
    }



Some :ref:`Tweener<class_Tweener>`\ s use transitions and eases. The first accepts a :ref:`TransitionType<enum_Tween_TransitionType>` constant, and refers to the way the timing of the animation is handled (see `easings.net <https://easings.net/>`__ for some examples). The second accepts an :ref:`EaseType<enum_Tween_EaseType>` constant, and controls where the ``trans_type`` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different :ref:`TransitionType<enum_Tween_TransitionType>` constants with :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`, and use the one that looks best.

\ `Tween easing and transition types cheatsheet <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp>`__\ 

\ **Note:** Tweens are not designed to be reused and trying to do so results in an undefined behavior. Create a new Tween for each animation and every time you replay an animation from start. Keep in mind that Tweens start immediately, so only create a Tween when you want to start animating.

\ **Note:** The tween is processed after all of the nodes in the current frame, i.e. node's :ref:`Node._process()<class_Node_private_method__process>` method would be called before the tween (or :ref:`Node._physics_process()<class_Node_private_method__physics_process>` depending on the value passed to :ref:`set_process_mode()<class_Tween_method_set_process_mode>`).

.. rst-class:: classref-reftable-group

Методы
------------

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

Сигналы
--------------

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

Срабатывает, когда **Tween** завершил все промежуточные кадры. Никогда не срабатывает, когда **Tween** установлен на бесконечный цикл (см. :ref:`set_loops()<class_Tween_method_set_loops>`).

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

Срабатывает при завершении полного цикла (см. :ref:`set_loops()<class_Tween_method_set_loops>`), предоставляя индекс цикла. Этот сигнал не срабатывает после последнего цикла, вместо этого используйте :ref:`finished<class_Tween_signal_finished>` для этого случая.

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

Срабатывает, когда один шаг **Tween** завершен, предоставляя индекс шага. Один шаг — это либо один :ref:`Tweener<class_Tweener>`, либо группа :ref:`Tweener<class_Tweener>`, работающих параллельно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

**Tween** обновляется после каждого физического кадра (см. :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

**Tween** обновляется после каждого кадра процесса (см. :ref:`Node._process()<class_Node_private_method__process>`).

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

Если **Tween** имеет связанный узел, то он будет обрабатываться, когда этот узел тоже может обрабатываться (см. :ref:`Node.process_mode<class_Node_property_process_mode>`). В противном случае это то же самое, что и :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>`.

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

Если :ref:`SceneTree<class_SceneTree>` приостановлен, **Tween** также будет приостановлен.

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

**Tween** будет обрабатываться независимо от того, приостановлено ли :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

Анимация интерполируется линейно.

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

Анимация интерполируется с использованием синусоидальной функции.

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

Анимация интерполируется с помощью функции пятой степени.

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

Анимация интерполируется с помощью функции четвертой степени.

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

Анимация интерполируется с помощью квадратичной (в степени 2) функции.

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

Анимация интерполируется с помощью экспоненциальной (в степени x) функции.

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

Анимация интерполирована с эластичностью, покачиваясь по краям.

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

Анимация интерполируется с помощью кубической (в степени 3) функции.

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

Анимация интерполируется с помощью функции, использующей квадратные корни.

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

Анимация интерполируется путем подпрыгивания в конце.

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

Анимация интерполируется с отходом назад на концах.

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

Анимация к концу интерполируется подобно пружине.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

Интерполяция начинается медленно и ускоряется к концу.

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

Интерполяция начинается быстро и замедляется к концу.

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

Комбинация :ref:`EASE_IN<class_Tween_constant_EASE_IN>` и :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. Интерполяция самая медленная на обоих концах.

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

Комбинация :ref:`EASE_IN<class_Tween_constant_EASE_IN>` и :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. Интерполяция выполняется быстрее всего на обоих концах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

Связывает этот **Tween** с заданным ``node``. **Tween** обрабатываются непосредственно :ref:`SceneTree<class_SceneTree>`, поэтому они запускаются независимо от анимированных узлов. Когда вы связываете :ref:`Node<class_Node>` с **Tween**, **Tween** остановит анимацию, когда объект не находится внутри дерева, и **Tween** будет автоматически завершен, когда связанный объект будет освобожден. Также :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` сделает поведение паузы зависимым от связанного узла.

Для более короткого способа создания и привязки **Tween** вы можете использовать :ref:`Node.create_tween()<class_Node_method_create_tween>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

Используется для связывания двух :ref:`Tweener<class_Tweener>` после вызова :ref:`set_parallel()<class_Tween_method_set_parallel>` с ``true``.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # Будет работать параллельно с предыдущим.
    tween.chain().tween_property(...) # Будет запущен после завершения двух вышеуказанных действий.

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // Будет работать параллельно с предыдущим.
    tween.Chain().TweenProperty(...); // Будет запущен после завершения двух вышеуказанных действий.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

Обрабатывает **Tween** по заданному значению ``delta`` в секундах. Это в основном полезно для ручного управления, когда **Tween** приостановлен. Его также можно использовать для немедленного завершения анимации **Tween**, установив ``delta`` больше, чем вся продолжительность анимации **Tween**.

Возвращает ``true``, если **Tween** все еще имеет :ref:`Tweener<class_Tweener>`, которые не были завершены.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

Возвращает количество оставшихся циклов для этого **Tween** (см. :ref:`set_loops()<class_Tween_method_set_loops>`). Возвращаемое значение ``-1`` указывает на бесконечно зацикленный **Tween**, а возвращаемое значение ``0`` указывает на то, что **Tween** уже завершен.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

Возвращает общее время в секундах, в течение которого **Tween** анимировался (т. е. время с момента начала, не считая пауз и т. д.). На время влияет :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>`, а :ref:`stop()<class_Tween_method_stop>` сбросит его до ``0``.

\ **Примечание:** Поскольку это происходит из-за накопления кадровых дельт, время, возвращаемое после того, как **Tween** завершил анимацию, будет немного больше фактической длительности **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_has_tweeners:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tweeners**\ (\ ) |const| :ref:`🔗<class_Tween_method_has_tweeners>`

Returns ``true`` if any :ref:`Tweener<class_Tweener>` has been added to the **Tween** and the **Tween** is valid. Useful when tweeners are added dynamically and the tween can end up empty. Killing an empty tween before it starts will prevent errors.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_interpolate_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **interpolate_value**\ (\ initial_value\: :ref:`Variant<class_Variant>`, delta_value\: :ref:`Variant<class_Variant>`, elapsed_time\: :ref:`float<class_float>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>`, ease_type\: :ref:`EaseType<enum_Tween_EaseType>`\ ) |static| :ref:`🔗<class_Tween_method_interpolate_value>`

Этот метод можно использовать для ручной интерполяции значения, когда вы не хотите, чтобы **Tween** выполнял анимацию за вас. Он похож на :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`, но с поддержкой настраиваемого перехода и смягчения.

\ ``initial_value`` — начальное значение интерполяции.

\ ``delta_value`` — изменение значения при интерполяции, т. е. оно равно ``final_value - initial_value``.

\ ``elapsed_time`` — время в секундах, прошедшее после начала интерполяции, и оно используется для управления положением интерполяции. Например, когда оно равно половине ``duration``, интерполированное значение будет находиться посередине между начальным и конечным значениями. Это значение также может быть больше ``duration`` или меньше 0, что приведет к экстраполяции значения.

\ ``duration`` — общее время интерполяции.

\ **Примечание:** Если ``duration`` равен ``0``, метод всегда будет возвращать конечное значение, независимо от предоставленного ``elapsed_time``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

Возвращает, выполняется ли в данный момент **Tween**, т.е. не приостановлен ли он и не завершен ли.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

Возвращает, является ли **Tween** допустимым. Допустимый **Tween** — это **Tween**, содержащийся в дереве сцены (т. е. массив из :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` будет содержать этот **Tween**). **Tween** может стать недопустимым после завершения tween, уничтожения или при создании с помощью ``Tween.new()``. Недопустимые **Tween** не могут иметь добавленных :ref:`Tweener<class_Tweener>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

Прерывает все операции по созданию промежуточных кадров и делает **Tween** недействительным.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

Заставляет следующий :ref:`Tweener<class_Tweener>` работать параллельно предыдущему.


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



Все **Tween**-ы в примере будут запущены одновременно.

Вы можете сделать **Tween** параллельным по умолчанию, используя :ref:`set_parallel()<class_Tween_method_set_parallel>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

Приостанавливает tween. Анимацию можно возобновить с помощью :ref:`play()<class_Tween_method_play>`.

\ **Примечание:** Если Tween приостановлен и не привязан ни к одному узлу, он будет существовать бесконечно, пока не будет запущен вручную или не станет недействительным. Если вы потеряете ссылку на такой Tween, вы можете восстановить его с помощью :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

Возобновляет приостановленный или остановленный **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_ease:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_Tween_method_set_ease>`

Sets the default ease type for :ref:`PropertyTweener<class_PropertyTweener>`\ s and :ref:`MethodTweener<class_MethodTweener>`\ s appended after this method.

Before this method is called, the default ease type is :ref:`EASE_IN_OUT<class_Tween_constant_EASE_IN_OUT>`.


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

Если ``ignore`` равен ``true``, твин будет игнорировать :ref:`Engine.time_scale<class_Engine_property_time_scale>` и обновляться с реальным, прошедшим временем. Это влияет на все :ref:`Tweener<class_Tweener>` и их задержки. Значение по умолчанию — ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

Устанавливает количество повторений последовательности tween, т. е. ``set_loops(2)`` запустит анимацию дважды.

Вызов этого метода без аргументов заставит **Tween** работать бесконечно, пока он не будет убит с помощью :ref:`kill()<class_Tween_method_kill>`, связанный узел **Tween** не будет освобожден или все анимированные объекты не будут освобождены (что делает дальнейшую анимацию невозможной).

\ **Предупреждение:** Обязательно всегда добавляйте некоторую длительность/задержку при использовании бесконечных циклов. Чтобы предотвратить зависание игры, циклические анимации с нулевой длительностью (например, один :ref:`CallbackTweener<class_CallbackTweener>` без задержки) останавливаются после небольшого количества циклов, что может привести к неожиданным результатам. Если время жизни **Tween** зависит от какого-либо узла, всегда используйте :ref:`bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

Если ``parallel`` равен ``true``, то :ref:`Tweener<class_Tweener>`, добавленный после этого метода, по умолчанию будет выполняться одновременно, а не последовательно.

\ **Примечание:** Как и в случае с :ref:`parallel()<class_Tween_method_parallel>`, tweener, добавленный непосредственно перед этим методом, также будет частью параллельного шага.

::

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # Работает вместе с позиционным твином.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

Определяет поведение **Tween**, когда :ref:`SceneTree<class_SceneTree>` приостановлен.

Значение по умолчанию — :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

Определяет, должен ли **Tween** запускаться после кадров процесса (см. :ref:`Node._process()<class_Node_private_method__process>`) или кадров физики (см. :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

Значение по умолчанию — :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

Масштабирует скорость tweening. Это влияет на все :ref:`Tweener<class_Tweener>` и их задержки.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Устанавливает тип перехода по умолчанию для :ref:`PropertyTweener<class_PropertyTweener>` и :ref:`MethodTweener<class_MethodTweener>`, добавленных после этого метода.

Перед вызовом этого метода тип перехода по умолчанию — :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`.

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Использует TRANS_LINEAR.
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Использует TRANS_SINE.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Останавливает tweening и сбрасывает **Tween** в его начальное состояние. Это не удалит никакие добавленные :ref:`Tweener<class_Tweener>`.

\ **Примечание:** Это *не* сбрасывает цели :ref:`PropertyTweener<class_PropertyTweener>` к их значениям, когда **Tween** был запущен впервые.

::

    var tween = create_tween()

    # Будет изменяться от 0 до 500 за 1 секунду.
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # Когда таймер закончит отсчет, будет (примерно) 250.
    await get_tree().create_timer(0.5).timeout

    # Теперь будет двигаться от (примерно) 250 до 500 за 1 секунду,
    # таким образом, с половинной скоростью, чем раньше.
    tween.stop()
    tween.play()

\ **Примечание:** Если Tween остановлен и не привязан ни к одному узлу, он будет существовать бесконечно, пока не будет запущен вручную или не станет недействительным. Если вы потеряете ссылку на такой Tween, вы можете восстановить его с помощью :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_await:

.. rst-class:: classref-method

:ref:`AwaitTweener<class_AwaitTweener>` **tween_await**\ (\ signal\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Tween_method_tween_await>`

Creates and appends an :ref:`AwaitTweener<class_AwaitTweener>`. This method can be used to await a signal to be emitted and create asynchronous animations or cutscenes.

The animation will not progress to the next step until the awaited signal is emitted or the connection becomes invalid (e.g. as a result of freeing the target object). If you know that the emission may not happen, use :ref:`AwaitTweener.set_timeout()<class_AwaitTweener_method_set_timeout>`.

\ **Note:** The awaited signal should be emitted during the step when :ref:`AwaitTweener<class_AwaitTweener>` is active.

\ **Example:** An object launches itself and explodes upon collision or after 4 seconds.

::

    var tween = create_tween()
    tween.tween_callback(launch)
    tween.tween_await(collided).set_timeout(4.0)
    tween.tween_callback(explode)

\ **Example:** A character walks to a specific point, says some lines and walks back when the player closes the message box.

::

    var tween = create_tween()
    tween.tween_callback(walk_to.bind(600.0))
    tween.tween_await(destination_reached)
    tween.tween_callback(say_dialogue.bind("Good day, sir!"))
    tween.tween_await(dialogue_closed)
    tween.tween_callback(walk_to.bind(0.0))

\ **Note:** If you are awaiting a signal from a callback called in the same **Tween**, make sure the signal is emitted *after* the await starts. If it can't be reasonably guaranteed, you can await and emit in the same step:

::

    var tween = create_tween()
    tween.tween_await(signal)
    tween.parallel().tween_callback(method_that_emits_signal)

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_callback:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **tween_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Tween_method_tween_callback>`

Создает и добавляет :ref:`CallbackTweener<class_CallbackTweener>`. Этот метод можно использовать для вызова произвольного метода в любом объекте. Используйте :ref:`Callable.bind()<class_Callable_method_bind>` для привязки дополнительных аргументов для вызова.

\ **Пример:** Объект, который продолжает стрелять каждую секунду:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **Пример:** Окрашиваем спрайт в красный, а затем в синий цвет с задержкой в 2 секунды:


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

Создает и добавляет :ref:`IntervalTweener<class_IntervalTweener>`. Этот метод можно использовать для создания задержек в анимации tween, как альтернативу использованию задержки в других **Tween** или когда нет анимации (в этом случае **Tween** действует как таймер). ``time`` — это длина интервала в секундах.

\ **Пример:** Создание интервала при выполнении кода:


.. tabs::

 .. code-tab:: gdscript

    # ... какой-то код
    await create_tween().tween_interval(2).finished
    # ... больше кода

 .. code-tab:: csharp

    // ... какой-то код
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... больше кода



\ **Пример:** Создание объекта, который движется вперед и назад и прыгает каждые несколько секунд:


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

Создает и добавляет :ref:`MethodTweener<class_MethodTweener>`. Этот метод похож на комбинацию :ref:`tween_callback()<class_Tween_method_tween_callback>` и :ref:`tween_property()<class_Tween_method_tween_property>`. Он вызывает метод с течением времени с tween-значением, предоставленным в качестве аргумента. Значение tween-значение между ``from`` и ``to`` в течение времени, указанного ``duration`` в секундах. Используйте :ref:`Callable.bind()<class_Callable_method_bind>`, чтобы привязать дополнительные аргументы для вызова. Вы можете использовать :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` и :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>`, чтобы настроить смягчение и переход значения или :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>`, чтобы задержать tween-значение.

\ **Пример:** Заставить 3D-объект смотреть из одной точки в другую:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # Метод look_at() принимает вектор в качестве второго аргумента.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Используйте лямбда-выражения для привязки дополнительных аргументов к вызову.



\ **Пример:** Установка текста :ref:`Label<class_Label>` с использованием промежуточного метода и после задержки:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var tween = create_tween()
        tween.tween_method(set_label_text, 0, 10, 1.0).set_delay(1.0)

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

Создает и добавляет :ref:`PropertyTweener<class_PropertyTweener>`. Этот метод делает промежуток между ``property`` ``object`` между начальным значением и ``final_val`` в течение промежутка времени, равного ``duration`` в секундах. Начальным значением по умолчанию является значение свойства в момент начала промежуточного твина :ref:`PropertyTweener<class_PropertyTweener>`.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



переместит спрайт в позицию (100, 200), а затем в (200, 300). Если вы используете :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` или :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`, начальная позиция будет перезаписана заданным значением. Смотрите другие методы в :ref:`PropertyTweener<class_PropertyTweener>`, чтобы увидеть, как можно дополнительно настроить анимацию.

\ **Примечание:** Вы можете найти правильное имя свойства, наведя курсор на свойство в Инспекторе. Вы также можете указать компоненты свойства напрямую, используя ``"property:component"`` (например, ``position:x``), где это будет применяться только к этому конкретному компоненту.

\ **Пример:** Перемещение объекта дважды из одной и той же позиции с разными типами перехода:


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

Создает и добавляет :ref:`SubtweenTweener<class_SubtweenTweener>`. Этот метод можно использовать для вложения ``subtween`` в этот **Tween**, что позволяет создавать более сложные и компонуемые последовательности.

::

    # Subtween вращает объект.
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # Родительский tween выполнит subtween как один из своих шагов.
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

\ **Примечание:** Методы :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>` и :ref:`set_loops()<class_Tween_method_set_loops>` могут привести к тому, что родительский **Tween** застрянет на шаге subtween; для получения дополнительной информации см. документацию по этим методам.

\ **Примечание:** Режимы паузы и обработки, установленные :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` и :ref:`set_process_mode()<class_Tween_method_set_process_mode>` в ``subtween``, будут переопределены настройками родительского **Tween**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
