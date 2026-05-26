:github_url: hide

.. _class_Tween:

Tween
=====

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objet léger utilisé pour l'animation générale par script, en utilisant des :ref:`Tweener<class_Tweener>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

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

Méthodes
----------------

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

Signaux
--------------

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

Émis quand le **Tween** a fini tout le tweening. Jamais émis lorsque le **Tween** est défini à une boucle infinie (voir :ref:`set_loops()<class_Tween_method_set_loops>`).

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

Émis lorsqu'une boucle complète est finie (voir :ref:`set_loops()<class_Tween_method_set_loops>`), fournissant l'index de la boucle. Ce signal n'est pas émis après la boucle finale, utilisez :ref:`finished<class_Tween_signal_finished>` à la place pour ce cas.

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

Émis lorsqu'une étape du **Tween** est terminée, en fournissant l'index de l'étape. Une étape est soit un seul :ref:`Tweener<class_Tweener>` ou un groupe de :ref:`Tweener<class_Tweener>`\ s fonctionnant en parallèle.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

Le **Tween** se met à jour après chaque trame de physique (voir :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

Le **Tween** se met à jour après chaque trame de traitement (voir :ref:`Node._process()<class_Node_private_method__process>`).

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

Si le **Tween** a un nœud lié, il traitera quand ce nœud peut traiter (voir :ref:`Node.process_mode<class_Node_property_process_mode>`). Sinon, identique à :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>`.

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

Si le :ref:`SceneTree<class_SceneTree>` est en pause, le **Tween** le sera aussi.

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

Le **Tween** traitera peu importe l'état de pause du :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

L'animation est interpolée linéairement.

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

L'animation est interpolée à l'aide d'une fonction sinusoïdale.

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

L'animation est interpolée avec une fonction quintique (à la puissance 5).

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

L'animation est interpolée avec une fonction quartique (à la puissance 4).

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

L'animation est interpolée avec une fonction quadratique (à la puissance 2).

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

L'animation est interpolée avec une fonction exponentielle (à la puissance x).

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

L'animation est interpolée avec un effet élastique, se balançant aux niveaux des bornes.

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

L'animation est interpolée avec une fonction cubique (à la puissance 3).

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

L'animation est interpolée avec la fonction de racine carrée.

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

L'animation est interpolée en rebondissant à la fin.

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

L’animation est interpolée en reculant aux extrémités.

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

L'animation est interpolée comme un ressort vers la fin.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

L'interpolation démarre lentement puis s'accélère à la fin.

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

L'interpolation démarre rapidement puis ralentit à la fin.

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

Une combinaison de :ref:`EASE_IN<class_Tween_constant_EASE_IN>` et de :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. L'interpolation est plus lente au début et à la fin.

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

Une combinaison de :ref:`EASE_IN<class_Tween_constant_EASE_IN>` et de :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. L'interpolation est plus rapide au début et à la fin.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

Lie ce **Tween** avec le nœud ``node`` donné. Les **Tween**\ s sont traités directement par le :ref:`SceneTree<class_SceneTree>`, donc ils fonctionnent indépendamment des nœuds animés. Lorsque vous liez un :ref:`Node<class_Node>` avec le **Tween**, le **Tween** arrêtera l'animation lorsque l'objet n'est pas à l'intérieur de l'arborescence et le **Tween** sera automatiquement tué lorsque l'objet lié est libéré. :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` rendra aussi le comportement de pause dépendant du nœud lié.

Pour un moyen plus court de créer et de lier un **Tween**, vous pouvez utiliser :ref:`Node.create_tween()<class_Node_method_create_tween>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

Utiliser pour enchaîner deux :ref:`Tweener<class_Tweener>` après que :ref:`set_parallel()<class_Tween_method_set_parallel>` est appelé avec ``true``.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # S'exécutera en parallèle de l'appel au-dessus.
    tween.chain().tween_property(...) # S'exécutera que quand les deux appels au-dessus seront terminés.

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // S'exécutera en parallèle de l'appel au-dessus.
    tween.Chain().TweenProperty(...); // S'exécutera que quand les deux appels au-dessus seront terminés.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

Traite le **Tween** par la valeur ``delta`` donnée, en secondes. Cela est surtout utile pour du contrôle manuel lorsque le **Tween** est mis en pause. Elle peut également être utilisée pour mettre fin à l'animation du **Tween** immédiatement, en fixant ``delta`` à une valeur plus longue que toute la durée de l'animation du **Tween**.

Renvoie ``true`` si le **Tween** a encore des :ref:`Tweener<class_Tweener>`\ s qui ne sont pas finis.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

Renvoie le nombre de boucles restantes pour ce **Tween** (voir :ref:`set_loops()<class_Tween_method_set_loops>`). Une valeur de renvoie de ``-1`` indique un **Tween** bouclant infiniement, et une valeur de renvoi de ``0`` indique que le **Tween** s'est déjà terminé.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

Renvoie le temps total en secondes durant lequel **Tween** a animé (c.-à-d. le temps depuis son début, sans compter les pauses, etc.). Le temps est affecté par :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>`, et :ref:`stop()<class_Tween_method_stop>` le réinitialisera à ``0``.

\ **Note :** Comme il résulte de l'accumulation des deltas de trames, le temps renvoyé après que le **Tween** ait fini d'animer sera légèrement supérieur à la durée réelle du **Tween**.

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

Cette méthode peut être utilisée pour de l'interpolation manuelle d'une valeur, lorsque vous ne voulez pas que **Tween** fasse l'animation pour vous. Elle est similaire à :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`, mais avec du support pour des transitions et accélérations personnalisées.

\ ``initial_value`` est la valeur de départ de l'interpolation.

\ ``delta_value`` est le changement de la valeur dans l'interpolation, c'est-à-dire qu'il est égal à ``final_value - initial_value``.

\ ``elapsed_time`` est le temps en secondes passé après que l'interpolation ait commencé et il est utilisé pour contrôler la position de l'interpolation. Par exemple, lorsqu'il est égal à la moitié de ``duration``, la valeur interpolée sera à mi-chemin entre les valeurs initiales et finales. Cette valeur peut également être supérieure à ``duration`` ou inférieure à 0, ce qui extrapolera la valeur.

\ ``duration`` est le temps total de l'interpolation.

\ **Note :** Si ``duration`` est égal à ``0``, la méthode renverra toujours la valeur finale, peu importe l'``elapsed_time`` fourni.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

Renvoie si le **Tween** est actuellement en cours d'exécution, c'est-à-dire qu'il n'a pas été mis en pause et il n'est pas fini.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

Renvoie si le **Tween** est valide. Un **Tween** valide est un **Tween** contenu par l'arborescence de scène (c.-à-d. le tableau de :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` contiendra ce **Tween**). Un **Tween** peut devenir invalide lorsqu'il a fini de tweening, est tué, ou lorsqu'il est créé avec ``Tween.new()``. Les **Tween** invalides ne peuvent pas avoir de :ref:`Tweener<class_Tweener>`\ s ajoutés.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

Avorte toutes les opérations de tweening et invalide le **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

Fait que le prochain :ref:`Tweener<class_Tweener>` s'exécute en parallèle au précédent.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property(...)
    tween.parallel().tween_property(...)
    tween.parallel().tween_property(...)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    Tween.TweenProperty(...)
    tween.Parallel().TweenProperty(...)
    tween.Parallel().TweenProperty(...)



Tous les :ref:`Tweener<class_Tweener>` de l'exemple s'exécuteront en même temps.

Vous pouvez rendre le **Tween** parallèle par défaut en utilisant :ref:`set_parallel()<class_Tween_method_set_parallel>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

Met en pause le tweening. L'animation peut être reprise en utilisant :ref:`play()<class_Tween_method_play>`.

\ **Note :** Si un Tween est en pause et n'est pas lié à un nœud, il existera indéfiniment jusqu'à ce qu'il soit manuellement démarré ou invalidé. Si vous perdez une référence à ce Tween, vous pouvez le récupérer en utilisant :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

Reprend un **Tween** en pause ou arrêté.

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

Si ``ignore`` vaut ``true``, le tween ignorera :ref:`Engine.time_scale<class_Engine_property_time_scale>` et se met à jour avec le temps réel écoulé. Cela affecte tous les :ref:`Tweener<class_Tweener>` et leurs délais. La valeur par défaut est ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

Définit le nombre de fois que la séquence de tweening sera répétée, c'est-à-dire que ``set_loops(2)`` exécutera l'animation deux fois.

Appeler cette méthode sans argument fera s'exécuter le **Tween** de manière infinie, jusqu'à ce qu'il soit tué avec :ref:`kill()<class_Tween_method_kill>`, le nœud lié du **Tween** est libéré, ou tous les objets animés ont été libérés (ce qui rend la suite de l'animation impossible).

\ **Attention :** Assurez-vous d'ajouter toujours une durée ou un délai lors de l'utilisation de boucles infinies. Pour éviter le gel du jeu, les animations en boucle de durée nulle (p. ex. un single :ref:`CallbackTweener<class_CallbackTweener>` sans délai) sont arrêtées après un petit nombre de boucles, qui peut produire des résultats inattendus. Si la durée de vie d'un **Tween** dépend d'un nœud, utilisez toujours :ref:`bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

Si ``parallel`` vaut ``true``, les :ref:`Tweener<class_Tweener>`\ s ajoutés après cette méthode s'exécuteront par défaut simultanément, au lieu de séquentiellement.

\ **Note:** Tout comme avec :ref:`parallel()<class_Tween_method_parallel>`, le tweener ajouté juste avant cette méthode fera également partie de l'étape parallèle.

::

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Couleur. GREEN, 0.5) # S'exécute ensemble avec le tweener de position.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

Détermine le comportement du **Tween** lorsque le :ref:`SceneTree<class_SceneTree>` est mis en pause.

La valeur par défaut est :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

Détermine si le **Tween** devrait s'exécuter après les cadres de traitement (voir :ref:`Node._process()<class_Node_private_method__process>`) ou les trames de physique (voir :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

La valeur par défaut est :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

Redimensionne la vitesse du tweening. Cela affecte tous les :ref:`Tweener<class_Tweener>`\ s et leurs délais.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Définit le type de transition par défaut pour les :ref:`PropertyTweener<class_PropertyTweener>`\ s et :ref:`MethodTweener<class_MethodTweener>`\ s ajoutés après cette méthode.

Avant que cette méthode soit appelée, le type de transition par défaut est :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`.

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Utilise TRANS_LINEAR.
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Utilise TRANS_SINE.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Arrête le tweening et réinitialise le **Tween** à son état initial. Cela ne supprimera pas de :ref:`Tweener<class_Tweener>`\ s ajoutés.

\ **Note :** Cela ne réinitialise *pas* les cibles des :ref:`PropertyTweener<class_PropertyTweener>`\ s à leur valeurs de quand le **Tween** a démarré pour la première fois.

::

    var tween = create_tween()

    # Se déplacera de 0 à 500 en une 1 seconde.
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # Sera à (environ) 250 quand le minuteur se finit.
    await get_tree().create_timer(0.5).timeout

    # Se déplacera maintenant d'environ 250 à 500 en une 1 seconde,
    # donc à la moitié de la vitesse d'avant.
    tween.stop()
    tween.play()

\ **Note :** Si un Tween est arrêté et n'est pas lié à un nœud, il existera toujours jusqu'à ce qu'il soit démarré ou invalidé manuellement. Si vous perdez une référence à ce genre de Tween, vous pouvez la récupérer en utilisant :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

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

Crée et ajoute un :ref:`CallbackTweener<class_CallbackTweener>`. Cette méthode peut être utilisée pour appeler une méthode arbitraire sur n'importe quel objet. Utilisez :ref:`Callable.bind()<class_Callable_method_bind>` pour passer des arguments additionnels lors de l'appel.

\ **Exemple :** Un objet qui tire toujours les secondes :


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(tirer).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Tirer)).SetDelay(1.0f);



\ **Exemple :** Changer un sprite en rouge puis en bleu, avec un délai de 2 secondes :


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

Crée et ajoute un :ref:`IntervalTweener<class_IntervalTweener>`. Cette méthode peut être utilisée pour créer des délais lors de l'interpolation du tween, ou comme une alternative pour utiliser le délai dans d'autres :ref:`Tweener<class_Tweener>`\ s, ou quand il n'y a pas d'animation (dans ce cas le **Tween** se comporte comme un minuteur). ``time`` est le durée du délai, en secondes.

\ **Exemple :** Créer un délai dans l'exécution du code :


.. tabs::

 .. code-tab:: gdscript

    # ... du code
    await create_tween().tween_interval(2).finished
    # ... encore du code

 .. code-tab:: csharp

    // ... du code
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... encode du code



\ **Exemple :** Créer un objet qui se déplace d'avant en arrière et saute toutes les quelques secondes :


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_loops()
    tween.tween_property($Sprite, "position:x", 200.0, 1.0).as_relative()
    tween.tween_callback(sauter)
    tween.tween_interval(2)
    tween.tween_property($Sprite, "position:x", -200.0, 1.0).as_relative()
    tween.tween_callback(sauter)
    tween.tween_interval(2)

 .. code-tab:: csharp

    Tween tween = CreateTween().SetLoops();
    tween.TweenProperty(GetNode("Sprite"), "position:x", 200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Sauter));
    tween.TweenInterval(2.0f);
    tween.TweenProperty(GetNode("Sprite"), "position:x", -200.0f, 1.0f).AsRelative();
    tween.TweenCallback(Callable.From(Sauter));
    tween.TweenInterval(2.0f);



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_method:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **tween_method**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`Variant<class_Variant>`, to\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_method>`

Crée et ajoute un :ref:`MethodTweener<class_MethodTweener>`. Cette méthode est similaire à une combinaison de :ref:`tween_callback()<class_Tween_method_tween_callback>` et :ref:`tween_property()<class_Tween_method_tween_property>`. Elle appelle une méthode au fil du temps avec une valeur tweenée fournie comme argument. La valeur est tweenée entre ``from`` et ``to`` au cours du temps spécifié par ``duration``, en secondes. Utilisez :ref:`Callable.bind()<class_Callable_method_bind>` pour lier des arguments supplémentaires à l'appel. Vous pouvez utiliser :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` et :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` pour modifier l'assouplissement et la transition de la valeur ou :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` pour retarder le tweening.

\ **Exemple:** Faire regarder un objet 3D d'un point à un autre :


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # La méthode look_at() prend le vecteur up comme arguement.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Utilisez des fonctions lambda pour lier des arguments supplémentaires à l'appel.



\ **Exemple :** Définir le texte d'un :ref:`Label<class_Label>`, en utilisant une méthode intermédiaire et après un délai :


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var tween = create_tween()
        tween.tween_method(set_label_text, 0, 10, 1.0).set_delay(1.0)

    func definir_texte_label(valeur: int):
        $Label.text = "Comptage " + str(valeur)

 .. code-tab:: csharp

    public override void _Ready()
    {
        base._Ready();

        Tween tween = CreateTween();
        tween.TweenMethod(Callable.From<int>(SetLabelText), 0.0f, 10.0f, 1.0f).SetDelay(1.0f);
    }

    private void DefinirTexteLabel(int value)
    {
        GetNode<Label>("Label").Text = $"Comptage {value}";
    }



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_tween_property:

.. rst-class:: classref-method

:ref:`PropertyTweener<class_PropertyTweener>` **tween_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`NodePath<class_NodePath>`, final_val\: :ref:`Variant<class_Variant>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_tween_property>`

Crée et ajoute un :ref:`PropertyTweener<class_PropertyTweener>`. Cette méthode interpole une propriété ``property`` d'un objet ``object`` entre une valeur initiale et une valeur finale ``final_val`` durant la durée ``duration``, en secondes. La valeur initiale par défaut est la valeur de la propriété au moment où le tweening du :ref:`PropertyTweener<class_PropertyTweener>` commence.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



déplacera la sprite à la position (100, 200) puis ensuite à (200, 300). Si vous utilisez :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` ou :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`, la position de départ sera remplacée par la valeur donnée à la place. Voir les autres méthodes de :ref:`PropertyTweener<class_PropertyTweener>` pour voir comment le tweening peut être encore plus ajusté.

\ **Note :** Vous pouvez trouver les noms corrects des propriétés en survolant ces propriétés dans l'Inspecteur. Vous pouvez aussi fournir les composantes d'une propriété directement en utilisant ``"propriété:composante"`` (ex. ``position:x``), l'interpolation ne se fera alors que sur cette unique composante.

\ **Exemple :** Déplacer un objet deux fois depuis la même position, avec différents types de transition.


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

Crée et ajoute un :ref:`SubtweenTweener<class_SubtweenTweener>`. Cette méthode peut être utiliser pour imbriquer un ``subtween`` dans ce **Tween**, permettant la création de séquences composables et plus complexes.

::

    # Le sous-tween tournera l'objet.
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # Le tween parent exécutera le sous-tween comme l'une de ses étapes.
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

\ **Note :** Les méthodes :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>`, et :ref:`set_loops()<class_Tween_method_set_loops>` peuvent faire que le **Tween** parent soit bloqué à l'étape du sous-tween, voir la documentation sur ces méthodes pour plus d'informations.

\ **Note :** Les modes de pause et de traitement définis par :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` et :ref:`set_process_mode()<class_Tween_method_set_process_mode>` sur ``subtween`` seront redéfinies par les paramètres du **Tween** parent.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
