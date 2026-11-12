:github_url: hide

.. _class_AnimationNodeTransition:

AnimationNodeTransition
=======================

**Hérite de :** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une transition dans un :ref:`AnimationTree<class_AnimationTree>` reliant deux :ref:`AnimationNode<class_AnimationNode>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Simple state machine for cases which don't require a more advanced :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`. Animations can be connected to the inputs and transition times can be specified.

After setting the request and changing the animation playback, the transition node automatically clears the request on the next process frame by setting its ``transition_request`` value to empty.

\ **Note:** When using a cross-fade, ``current_state`` and ``current_index`` change to the next state immediately after the cross-fade begins.


.. tabs::

 .. code-tab:: gdscript

    # Play child animation connected to "state_2" port.
    animation_tree.set("parameters/Transition/transition_request", "state_2")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/transition_request"] = "state_2"

    # Get current state name (read-only).
    animation_tree.get("parameters/Transition/current_state")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/current_state"]

    # Get current state index (read-only).
    animation_tree.get("parameters/Transition/current_index")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/current_index"]

 .. code-tab:: csharp

    // Play child animation connected to "state_2" port.
    animationTree.Set("parameters/Transition/transition_request", "state_2");

    // Get current state name (read-only).
    animationTree.Get("parameters/Transition/current_state");

    // Get current state index (read-only).
    animationTree.Get("parameters/Transition/current_index");



Optionally, signals can be used by setting an :ref:`AnimationNodeObserverTransition<class_AnimationNodeObserverTransition>` through :ref:`AnimationTree<class_AnimationTree>`.


.. tabs::

 .. code-tab:: gdscript

    var observer = animation_tree.get("parameters/Transition/observer")
    observer.state_started.connect(on_state_started)

 .. code-tab:: csharp

    var observer = animationTree.Get("parameters/Transition/observer").As<AnimationNodeObserverTransition>();
    observer.StateStarted += OnStateStarted;



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`allow_transition_to_self<class_AnimationNodeTransition_property_allow_transition_to_self>` | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`input_count<class_AnimationNodeTransition_property_input_count>`                           | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>` | :ref:`xfade_curve<class_AnimationNodeTransition_property_xfade_curve>`                           |           |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>`                             | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_loop_broken_at_end<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_reset<class_AnimationNodeTransition_method_is_input_reset>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_set_as_auto_advance<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_as_auto_advance<class_AnimationNodeTransition_method_set_input_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_break_loop_at_end<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_reset<class_AnimationNodeTransition_method_set_input_reset>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeTransition_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeTransition_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

Si ``true``, permet la transition vers son propre état. Lorsque l'option de réinitialisation est activée en entrée, l'animation est redémarrée. Si ``false``, rien ne se passe lors de la transition vers son propre état.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_input_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_count** = ``0`` :ref:`🔗<class_AnimationNodeTransition_property_input_count>`

.. rst-class:: classref-property-setget

- |void| **set_input_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_count**\ (\ )

Le nombre de ports d'entrée actifs pour ce nœud d'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Détermine comment le fondu enchaîné entre les animations est amorti. Si vide, la transition sera linéaire. Devrait être une :ref:`Curve<class_Curve>` unitaire.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

Temps du fondu croisé (en secondes) entre chaque animation connectée aux entrées.

\ **Note :** :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` transitionne de l'état actuel immédiatement après le début du fondu. Le temps restant précis ne peut être déduit que de l'animation principale. Si :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` est considéré comme le plus en amont, le :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>` n'est pas échelonné selon le delta de l'aval. Voir aussi :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationNodeTransition_method_is_input_loop_broken_at_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_loop_broken_at_end**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`

Renvoie si l'animation brise la boucle à la fin du cycle de boucle pour la transition.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_reset:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_reset**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_reset>`

Renvoie si l'animation redémarre lorsque l'animation transitionne depuis l'autre animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_set_as_auto_advance:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_set_as_auto_advance**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`

Renvoie ``true`` si l'avance automatique est activée pour l'index ``input`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_as_auto_advance:

.. rst-class:: classref-method

|void| **set_input_as_auto_advance**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_as_auto_advance>`

Active ou désactive l'avancement automatique pour l'index ``input`` donné. Si activé, l'état change vers la prochaine entrée après avoir joué l'animation une fois. Si activé pour le dernier état d'entrée, il boucle jusqu'au premier.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_break_loop_at_end:

.. rst-class:: classref-method

|void| **set_input_break_loop_at_end**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`

Si ``true``, brise la boucle à la fin du cycle de boucle pour la transition, même si l'animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_reset:

.. rst-class:: classref-method

|void| **set_input_reset**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_reset>`

Si ``true``, l'animation de destination est redémarrée lors l'animation transitionne.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
