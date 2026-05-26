:github_url: hide

.. _class_Tween:

Tween
=====

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objeto ligero utilizado para animación de propósito general a través de script, utilizando :ref:`Tweener<class_Tweener>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_Tween_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tween_signal_finished>`

Emitida cuando el **Tween** ha terminado todo el tweening. Nunca se emite cuando el **Tween** está configurado para bucles infinitos (véase :ref:`set_loops()<class_Tween_method_set_loops>`).

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_loop_finished:

.. rst-class:: classref-signal

**loop_finished**\ (\ loop_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_loop_finished>`

Emitida cuando se completa un bucle completo (véase :ref:`set_loops()<class_Tween_method_set_loops>`), proporcionando el índice del bucle. Esta señal no se emite después del bucle final, usa :ref:`finished<class_Tween_signal_finished>` en su lugar para este caso.

.. rst-class:: classref-item-separator

----

.. _class_Tween_signal_step_finished:

.. rst-class:: classref-signal

**step_finished**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Tween_signal_step_finished>`

Emitida cuando se completa un paso del **Tween**, proporcionando el índice del paso. Un paso es un solo :ref:`Tweener<class_Tweener>` o un grupo de :ref:`Tweener<class_Tweener>`\ s que se ejecutan en paralelo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Tween_TweenProcessMode:

.. rst-class:: classref-enumeration

enum **TweenProcessMode**: :ref:`🔗<enum_Tween_TweenProcessMode>`

.. _class_Tween_constant_TWEEN_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_PHYSICS** = ``0``

El **Tween** se actualiza después de cada frame de física (véase :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

.. _class_Tween_constant_TWEEN_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TweenProcessMode<enum_Tween_TweenProcessMode>` **TWEEN_PROCESS_IDLE** = ``1``

El **Tween** se actualiza después de cada frame de proceso (véase :ref:`Node._process()<class_Node_private_method__process>`).

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TweenPauseMode:

.. rst-class:: classref-enumeration

enum **TweenPauseMode**: :ref:`🔗<enum_Tween_TweenPauseMode>`

.. _class_Tween_constant_TWEEN_PAUSE_BOUND:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_BOUND** = ``0``

Si el **Tween** tiene un nodo vinculado, se procesará cuando ese nodo pueda procesarse (véase :ref:`Node.process_mode<class_Node_property_process_mode>`). De lo contrario, es lo mismo que :ref:`TWEEN_PAUSE_STOP<class_Tween_constant_TWEEN_PAUSE_STOP>`.

.. _class_Tween_constant_TWEEN_PAUSE_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_STOP** = ``1``

Si :ref:`SceneTree<class_SceneTree>` está en pausa, el **Tween** también se pausará.

.. _class_Tween_constant_TWEEN_PAUSE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`TweenPauseMode<enum_Tween_TweenPauseMode>` **TWEEN_PAUSE_PROCESS** = ``2``

El **Tween** se procesará independientemente de si :ref:`SceneTree<class_SceneTree>` está en pausa.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_TransitionType:

.. rst-class:: classref-enumeration

enum **TransitionType**: :ref:`🔗<enum_Tween_TransitionType>`

.. _class_Tween_constant_TRANS_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_LINEAR** = ``0``

La animación se interpola linealmente.

.. _class_Tween_constant_TRANS_SINE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SINE** = ``1``

La animación se interpola usando una función senoidal.

.. _class_Tween_constant_TRANS_QUINT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUINT** = ``2``

La animación se interpola con una función a la quinta (a la potencia de 5).

.. _class_Tween_constant_TRANS_QUART:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUART** = ``3``

La animación se interpola con una función a la cuarta (a la potencia de 4).

.. _class_Tween_constant_TRANS_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_QUAD** = ``4``

La animación se interpola con una función cuadrática (a la potencia de 2).

.. _class_Tween_constant_TRANS_EXPO:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_EXPO** = ``5``

La animación se interpola con una función exponencial (a la potencia de x).

.. _class_Tween_constant_TRANS_ELASTIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_ELASTIC** = ``6``

La animación se interpola con elasticidad, moviéndose alrededor de los bordes.

.. _class_Tween_constant_TRANS_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CUBIC** = ``7``

La animación se interpola con una función cúbica (a la potencia de 3).

.. _class_Tween_constant_TRANS_CIRC:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_CIRC** = ``8``

La animación se interpola con una función que utiliza raíces cuadradas.

.. _class_Tween_constant_TRANS_BOUNCE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BOUNCE** = ``9``

La animación se interpola al rebotar al final.

.. _class_Tween_constant_TRANS_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_BACK** = ``10``

La animación es interpolada retrocediendo en los extremos.

.. _class_Tween_constant_TRANS_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionType<enum_Tween_TransitionType>` **TRANS_SPRING** = ``11``

La animación se interpola como un resorte hacia el final.

.. rst-class:: classref-item-separator

----

.. _enum_Tween_EaseType:

.. rst-class:: classref-enumeration

enum **EaseType**: :ref:`🔗<enum_Tween_EaseType>`

.. _class_Tween_constant_EASE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN** = ``0``

La interpolación comienza lentamente y se acelera hacia el final.

.. _class_Tween_constant_EASE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT** = ``1``

La interpolación comienza rápidamente y se ralentiza hacia el final.

.. _class_Tween_constant_EASE_IN_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_IN_OUT** = ``2``

Una combinación de :ref:`EASE_IN<class_Tween_constant_EASE_IN>` y :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. La interpolación es más lenta en ambos extremos.

.. _class_Tween_constant_EASE_OUT_IN:

.. rst-class:: classref-enumeration-constant

:ref:`EaseType<enum_Tween_EaseType>` **EASE_OUT_IN** = ``3``

Una combinación de :ref:`EASE_IN<class_Tween_constant_EASE_IN>` y :ref:`EASE_OUT<class_Tween_constant_EASE_OUT>`. La interpolación es más rápida en ambos extremos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Tween_method_bind_node:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **bind_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Tween_method_bind_node>`

Enlaza este **Tween** con el ``node`` dado. Los **Tween**\ s son procesados directamente por el :ref:`SceneTree<class_SceneTree>`, por lo que se ejecutan independientemente de los nodos animados. Cuando enlazas un :ref:`Node<class_Node>` con el **Tween**, el **Tween** detendrá la animación cuando el objeto no esté dentro del árbol y el **Tween** se eliminará automáticamente cuando se libere el objeto enlazado. Además, :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>` hará que el comportamiento de pausa dependa del nodo enlazado.

Para una forma más corta de crear y enlazar un **Tween**, puedes usar :ref:`Node.create_tween()<class_Node_method_create_tween>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_chain:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **chain**\ (\ ) :ref:`🔗<class_Tween_method_chain>`

Se utiliza para encadenar dos :ref:`Tweener<class_Tweener>`\ s después de que se llame a :ref:`set_parallel()<class_Tween_method_set_parallel>` con ``true``.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween().set_parallel(true)
    tween.tween_property(...)
    tween.tween_property(...) # Se ejecutará en paralelo con lo anterior.
    tween.chain().tween_property(...) # Se ejecutará después de que terminen los dos anteriores.

 .. code-tab:: csharp

    Tween tween = CreateTween().SetParallel(true);
    tween.TweenProperty(...);
    tween.TweenProperty(...); // Se ejecutará en paralelo con lo anterior.
    tween.Chain().TweenProperty(...); // Se ejecutará después de que terminen los dos anteriores.



.. rst-class:: classref-item-separator

----

.. _class_Tween_method_custom_step:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **custom_step**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_custom_step>`

Procesa el **Tween** por el valor ``delta`` dado, en segundos. Esto es mayormente útil para el control manual cuando el **Tween** está en pausa. También puede ser usado para terminar la animación **Tween** inmediatamente, estableciendo ``delta`` más largo que la duración completa de la animación **Tween**.

Devuelve ``true`` si el **Tween** todavía tiene :ref:`Tweener<class_Tweener>`\ s que no han terminado.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_loops_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loops_left**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_loops_left>`

Devuelve el número de bucles restantes para este **Tween** (véase :ref:`set_loops()<class_Tween_method_set_loops>`). Un valor de retorno de ``-1`` indica un **Tween** en bucle infinito, y un valor de retorno de ``0`` indica que el **Tween** ya ha terminado.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_get_total_elapsed_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_total_elapsed_time**\ (\ ) |const| :ref:`🔗<class_Tween_method_get_total_elapsed_time>`

Devuelve el tiempo total en segundos que el **Tween** ha estado animando (es decir, el tiempo desde que comenzó, sin contar las pausas, etc.). El tiempo se ve afectado por :ref:`set_speed_scale()<class_Tween_method_set_speed_scale>`, y :ref:`stop()<class_Tween_method_stop>` lo restablecerá a ``0``.

\ **Nota:** Como resultado de la acumulación de deltas de frame, el tiempo devuelto después de que el **Tween** haya terminado de animarse será ligeramente mayor que la duración real del **Tween**.

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

Este método se puede utilizar para la interpolación manual de un valor, cuando no quieres que **Tween** haga la animación por ti. Es similar a :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`, pero con soporte para la transición y el suavizado personalizados.

\ ``initial_value`` es el valor inicial de la interpolación.

\ ``delta_value`` es el cambio del valor en la interpolación, es decir, es igual a ``final_value - initial_value``.

\ ``elapsed_time`` es el tiempo en segundos que ha pasado después de que comenzó la interpolación y se usa para controlar la posición de la interpolación. Por ejemplo, cuando es igual a la mitad de la ``duration``, el valor interpolado estará a medio camino entre los valores inicial y final. Este valor también puede ser mayor que ``duration`` o menor que 0, lo que extrapolará el valor.

\ ``duration`` es el tiempo total de la interpolación.

\ **Nota:** Si ``duration`` es igual a ``0``, el método siempre devolverá el valor final, independientemente del ``elapsed_time`` proporcionado.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_Tween_method_is_running>`

Devuelve si el **Tween** se está ejecutando actualmente, es decir, no se ha pausado y no ha terminado.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) :ref:`🔗<class_Tween_method_is_valid>`

Devuelve si el **Tween** es válido. Un **Tween** válido es un **Tween** contenido por el árbol de escena (es decir, el array de :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>` contendrá este **Tween**). Un **Tween** puede volverse inválido cuando ha terminado de interpolar, se elimina o cuando se crea con ``Tween.new()``. Los **Tween** inválidos no pueden tener :ref:`Tweener<class_Tweener>`\ s añadidos.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_kill:

.. rst-class:: classref-method

|void| **kill**\ (\ ) :ref:`🔗<class_Tween_method_kill>`

Anula todas las operaciones de interpolación e invalida el **Tween**.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **parallel**\ (\ ) :ref:`🔗<class_Tween_method_parallel>`

Hace que el siguiente :ref:`Tweener<class_Tweener>` se ejecute en paralelo al anterior.


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



Todos los :ref:`Tweener<class_Tweener>` en el ejemplo se ejecutarán al mismo tiempo.

Puedes hacer que el **Tween** sea paralelo por defecto usando :ref:`set_parallel()<class_Tween_method_set_parallel>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_Tween_method_pause>`

Pausa el tweening. La animación puede ser reanudada usando :ref:`play()<class_Tween_method_play>`.

\ **Nota:** Si un Tween está pausado y no está enlazado a ningún nodo, existirá indefinidamente hasta que se inicie o invalide manualmente. Si pierdes una referencia a tal Tween, puedes recuperarla usando :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_Tween_method_play>`

Reanuda un **Tween** pausado o detenido.

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

Si ``ignore`` es ``true``, el tween ignorará :ref:`Engine.time_scale<class_Engine_property_time_scale>` y se actualizará con el tiempo real transcurrido. Esto afecta a todos los :ref:`Tweener<class_Tweener>`\ s y sus retardos. El valor por defecto es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_loops:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_loops**\ (\ loops\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Tween_method_set_loops>`

Establece el número de veces que se repetirá la secuencia de interpolación, es decir, ``set_loops(2)`` ejecutará la animación dos veces.

Llamar a este método sin argumentos hará que el **Tween** se ejecute infinitamente, hasta que se detenga con :ref:`kill()<class_Tween_method_kill>`, el nodo enlazado del **Tween** se libere o todos los objetos animados se hayan liberado (lo que hace que la animación adicional sea imposible).

\ **Advertencia:** Asegúrate de añadir siempre alguna duración/retardo cuando uses bucles infinitos. Para evitar que el juego se congele, las animaciones en bucle de duración 0 (por ejemplo, un solo :ref:`CallbackTweener<class_CallbackTweener>` sin retardo) se detienen después de un pequeño número de bucles, lo que puede producir resultados inesperados. Si la vida útil de un **Tween** depende de algún nodo, usa siempre :ref:`bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_parallel:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_parallel**\ (\ parallel\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Tween_method_set_parallel>`

Si ``parallel`` es ``true``, los :ref:`Tweener<class_Tweener>`\ s añadidos después de este método se ejecutarán por defecto simultáneamente, en lugar de secuencialmente.

\ **Nota:** Al igual que con :ref:`parallel()<class_Tween_method_parallel>`, el tweener añadido justo antes de este método también formará parte del paso paralelo.

::

    tween.tween_property(self, "position", Vector2(300, 0), 0.5)
    tween.set_parallel()
    tween.tween_property(self, "modulate", Color.GREEN, 0.5) # Se ejecuta junto con el interpolador de posición.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_pause_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_pause_mode**\ (\ mode\: :ref:`TweenPauseMode<enum_Tween_TweenPauseMode>`\ ) :ref:`🔗<class_Tween_method_set_pause_mode>`

Determina el comportamiento del **Tween** cuando el :ref:`SceneTree<class_SceneTree>` está en pausa.

El valor por defecto es :ref:`TWEEN_PAUSE_BOUND<class_Tween_constant_TWEEN_PAUSE_BOUND>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_process_mode:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_process_mode**\ (\ mode\: :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ) :ref:`🔗<class_Tween_method_set_process_mode>`

Determina si el **Tween** debe ejecutarse después de los frames de proceso (ver :ref:`Node._process()<class_Node_private_method__process>`) o los frames de física (véase :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

El valor por defecto es :ref:`TWEEN_PROCESS_IDLE<class_Tween_constant_TWEEN_PROCESS_IDLE>`.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_speed_scale:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_speed_scale**\ (\ speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Tween_method_set_speed_scale>`

Escala la velocidad del tweening. Esto afecta a todos los :ref:`Tweener<class_Tweener>`\ s y sus retardos.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_set_trans:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_Tween_method_set_trans>`

Establece el tipo de transición predeterminado para :ref:`PropertyTweener<class_PropertyTweener>`\ s y :ref:`MethodTweener<class_MethodTweener>`\ s añadidos después de este método.

Antes de llamar a este método, el tipo de transición predeterminado es :ref:`TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>`.

::

    var tween = create_tween()
    tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Usa TRANS_LINEAR.
    tween.set_trans(Tween.TRANS_SINE)
    tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Usa TRANS_SINE.

.. rst-class:: classref-item-separator

----

.. _class_Tween_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Tween_method_stop>`

Detiene el tweening y restablece el **Tween** a su estado inicial. Esto no eliminará ningún :ref:`Tweener<class_Tweener>` añadido.

\ **Nota:** Esto *no* restablece los objetivos de :ref:`PropertyTweener<class_PropertyTweener>`\ s a sus valores cuando el **Tween** comenzó por primera vez.

::

    var tween = create_tween()

    # Se moverá de 0 a 500 durante 1 segundo.
    position.x = 0.0
    tween.tween_property(self, "position:x", 500, 1.0)

    # Estará en (aproximadamente) 250 cuando el temporizador termine.
    await get_tree().create_timer(0.5).timeout

    # Ahora se moverá de (aproximadamente) 250 a 500 durante 1 segundo,
    # por lo tanto a la mitad de la velocidad que antes.
    tween.stop()
    tween.play()

\ **Nota:** Si un Tween se detiene y no está ligado a ningún nodo, existirá indefinidamente hasta que se inicie o invalide manualmente. Si pierdes una referencia a tal Tween, puedes recuperarla usando :ref:`SceneTree.get_processed_tweens()<class_SceneTree_method_get_processed_tweens>`.

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

Crea y añade un :ref:`CallbackTweener<class_CallbackTweener>`. Este método puede ser usado para llamar a un método arbitrario en cualquier objeto. Utiliza :ref:`Callable.bind()<class_Callable_method_bind>` para enlazar argumentos adicionales para la llamada.

\ **Ejemplo:** Objeto que sigue disparando cada 1 segundo:


.. tabs::

 .. code-tab:: gdscript

    var tween = get_tree().create_tween().set_loops()
    tween.tween_callback(shoot).set_delay(1.0)

 .. code-tab:: csharp

    Tween tween = GetTree().CreateTween().SetLoops();
    tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);



\ **Ejemplo:** Cambiar un sprite de rojo a azul, con un retardo de 2 segundos:


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

Crea y añade un :ref:`IntervalTweener<class_IntervalTweener>`. Este método puede ser usado para crear retrasos en la animación tween, como una alternativa a usar el retardo en otros :ref:`Tweener<class_Tweener>`\ s, o cuando no hay animación (en cuyo caso el **Tween** actúa como un temporizador). ``time`` es la duración del intervalo, en segundos.

\ **Ejemplo:** Crear un intervalo en la ejecución del código:


.. tabs::

 .. code-tab:: gdscript

    # ... algo de código
    await create_tween().tween_interval(2).finished
    # ... más código

 .. code-tab:: csharp

    // ... algo de código
    await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
    // ... más código



\ **Ejemplo:** Crear un objeto que se mueve de un lado a otro y salta cada pocos segundos:


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

Creates and appends a :ref:`MethodTweener<class_MethodTweener>`. This method is similar to a combination of :ref:`tween_callback()<class_Tween_method_tween_callback>` and :ref:`tween_property()<class_Tween_method_tween_property>`. It calls a method over time with a tweened value provided as an argument. The value is tweened between ``from`` and ``to`` over the time specified by ``duration``, in seconds. Use :ref:`Callable.bind()<class_Callable_method_bind>` to bind additional arguments for the call. You can use :ref:`MethodTweener.set_ease()<class_MethodTweener_method_set_ease>` and :ref:`MethodTweener.set_trans()<class_MethodTweener_method_set_trans>` to tweak the easing and transition of the value or :ref:`MethodTweener.set_delay()<class_MethodTweener_method_set_delay>` to delay the tweening.

\ **Example:** Making a 3D object look from one point to another point:


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # The look_at() method takes up vector as second argument.

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Use lambdas to bind additional arguments for the call.



\ **Example:** Setting the text of a :ref:`Label<class_Label>`, using an intermediate method and after a delay:


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

Creates and appends a :ref:`PropertyTweener<class_PropertyTweener>`. This method tweens a ``property`` of an ``object`` between an initial value and ``final_val`` in a span of time equal to ``duration``, in seconds. The initial value by default is the property's value at the time the tweening of the :ref:`PropertyTweener<class_PropertyTweener>` starts.


.. tabs::

 .. code-tab:: gdscript

    var tween = create_tween()
    tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
    tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

 .. code-tab:: csharp

    Tween tween = CreateTween();
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
    tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);



will move the sprite to position (100, 200) and then to (200, 300). If you use :ref:`PropertyTweener.from()<class_PropertyTweener_method_from>` or :ref:`PropertyTweener.from_current()<class_PropertyTweener_method_from_current>`, the starting position will be overwritten by the given value instead. See other methods in :ref:`PropertyTweener<class_PropertyTweener>` to see how the tweening can be tweaked further.

\ **Note:** You can find the correct property name by hovering over the property in the Inspector. You can also provide the components of a property directly by using ``"property:component"`` (eg. ``position:x``), where it would only apply to that particular component.

\ **Example:** Moving an object twice from the same position, with different transition types:


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

Crea y añade un :ref:`SubtweenTweener<class_SubtweenTweener>`. Este método puede ser usado para anidar ``subtween`` dentro de este **Tween**, permitiendo la creación de secuencias más complejas y componibles.

::

    # El subtween rotará el objeto.
    var subtween = create_tween()
    subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
    subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

    # El tween padre ejecutará el subtween como uno de sus pasos.
    var tween = create_tween()
    tween.tween_property(self, "position:x", 500, 3.0)
    tween.tween_subtween(subtween)
    tween.tween_property(self, "position:x", 300, 2.0)

\ **Nota:** Los métodos :ref:`pause()<class_Tween_method_pause>`, :ref:`stop()<class_Tween_method_stop>`, y :ref:`set_loops()<class_Tween_method_set_loops>` pueden causar que el **Tween** padre se atasque en el paso del subtween; mira la documentación de esos métodos para más información.

\ **Nota:** Los modos de pausa y proceso establecidos por :ref:`set_pause_mode()<class_Tween_method_set_pause_mode>` y :ref:`set_process_mode()<class_Tween_method_set_process_mode>` en ``subtween`` serán sobrescritos por la configuración del **Tween** padre.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
