:github_url: hide

.. _class_AnimationNodeStateMachinePlayback:

AnimationNodeStateMachinePlayback
=================================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit le contrôle de la lecture pour une :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`.

.. rst-class:: classref-introduction-group

Description
-----------

Permet le contrôle d'automates :ref:`AnimationTree<class_AnimationTree>` créés avec :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`. Récupérez ``avec [code]$AnimationTree.get("parameters/playback")``.


.. tabs::

 .. code-tab:: gdscript

    var automate = $AnimationTree.get("parameters/playback")
    automate.travel("un_etat")

 .. code-tab:: csharp

    var automate = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback").As<AnimationNodeStateMachinePlayback>();
    automate.Travel("un_etat");



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_length<class_AnimationNodeStateMachinePlayback_method_get_current_length>`\ (\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_current_node<class_AnimationNodeStateMachinePlayback_method_get_current_node>`\ (\ ) |const|                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_play_position<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`\ (\ ) |const|                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_length<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`\ (\ ) |const|                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_fading_from_node<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`\ (\ ) |const|                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_play_position<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_length<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_position<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`\ (\ ) |const|                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_travel_path<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`\ (\ ) |const|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_playing<class_AnimationNodeStateMachinePlayback_method_is_playing>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`next<class_AnimationNodeStateMachinePlayback_method_next>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`start<class_AnimationNodeStateMachinePlayback_method_start>`\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ )                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`stop<class_AnimationNodeStateMachinePlayback_method_stop>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`travel<class_AnimationNodeStateMachinePlayback_method_travel>`\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimationNodeStateMachinePlayback_signal_state_finished:

.. rst-class:: classref-signal

**state_finished**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_finished>`

Émis lorsque l'état ``state`` finit la lecture. Si ``state`` est un automate en mode groupé, ses signaux sont passés avec son nom en préfixe.

S'il y a un fondu croisé, cela sera émis lorsque l'influence de l'animation :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>` n'est plus présente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_signal_state_started:

.. rst-class:: classref-signal

**state_started**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_started>`

Émis lorsque l'état ``state`` commence la lecture. Si ``state`` est un automate en mode groupé, ses signaux sont passés avec son nom en préfixe.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimationNodeStateMachinePlayback_method_get_current_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_length>`

Renvoie la longueur de l'état actuel.

\ **Note :** Il est possible que tout :ref:`AnimationRootNode<class_AnimationRootNode>` soit des nœuds ainsi que des animations. Cela signifie qu'il peut y avoir plusieurs animations dans un seul état. Quelle durée d'animation a la priorité dépend des nœuds connectés à l'intérieur. De plus, si une transition ne se réinitialise pas, la longueur restante à ce moment sera renvoyée.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_current_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_node>`

Renvoie l'état de l'animation jouant actuellement.

\ **Note :** Lors de l'utilisation d'un fondu enchaîné, l'état actuel change immédiatement à l'état suivant après que le fondu enchaîné commence.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`

Renvoie la position de lecture pour l'état actuel de l'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`

Returns the playback state length of the node from :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_fading_from_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`

Renvoie l'état de départ de l'animation en cours de fondu.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`

Renvoie la position de l’élément qui a actuellement le focus. Ou renvoie ``0`` si aucun n'a le focus.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`

Renvoie la durée de l'animation de fondu actuelle. Renvoie ``0`` si aucune animation de fondu ne se produit.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`

Returns the playback position of the current fade animation. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_travel_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_travel_path**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`

Renvoie le chemin de voyage actuel tel que calculé en interne par l’algorithme A\*.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_is_playing>`

Renvoie ``true`` si une animation est en lecture.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_next:

.. rst-class:: classref-method

|void| **next**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_next>`

S'il y a un chemin suivant par lequel voyager ou avancer automatiquement, transitionne immédiatement de l'état actuel à l'état suivant.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_start>`

Commence à jouer l'animation donnée.

Si ``reset`` vaut ``true``, l'animation est jouée depuis le début.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_stop>`

Arrête l’animation en cours de lecture.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_travel:

.. rst-class:: classref-method

|void| **travel**\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_travel>`

Transitionne de l'état actuel à un autre, en suivant le chemin le plus court.

Si le chemin ne se connecte pas depuis l'état actuel, l'animation jouera après les téléportations d'état.

Si ``reset_on_teleport`` vaut ``true``, l'animation est jouée depuis le début lorsque la transition cause une téléportation.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
