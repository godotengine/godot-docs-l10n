:github_url: hide

.. _class_AnimationNodeAnimation:

AnimationNodeAnimation
======================

**Hérite de :** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une animation d'entrée pour un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une ressource à ajouter à un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Possède seulement un port de sortie utilisant la propriété :ref:`animation<class_AnimationNodeAnimation_property_animation>`. Utilisé comme entrée pour les :ref:`AnimationNode<class_AnimationNode>`\ s qui mélangent des animations ensemble.

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

   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`advance_on_start<class_AnimationNodeAnimation_property_advance_on_start>`       | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                   | :ref:`animation<class_AnimationNodeAnimation_property_animation>`                     | ``&""``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`LoopMode<enum_Animation_LoopMode>`              | :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`                     |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` | :ref:`play_mode<class_AnimationNodeAnimation_property_play_mode>`                     | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`start_offset<class_AnimationNodeAnimation_property_start_offset>`               |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`stretch_time_scale<class_AnimationNodeAnimation_property_stretch_time_scale>`   |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>`         |           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AnimationNodeAnimation_PlayMode:

.. rst-class:: classref-enumeration

enum **PlayMode**: :ref:`🔗<enum_AnimationNodeAnimation_PlayMode>`

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_FORWARD** = ``0``

Joue l'animation en sens avant.

.. _class_AnimationNodeAnimation_constant_PLAY_MODE_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **PLAY_MODE_BACKWARD** = ``1``

Joue l'animation en sens inverse.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeAnimation_property_advance_on_start:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **advance_on_start** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_advance_on_start>`

.. rst-class:: classref-property-setget

- |void| **set_advance_on_start**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_advance_on_start**\ (\ )

Si ``true``, à la réception d'une demande de lecture d'une animation depuis le début, la première trame n'est pas dessiné, mais seulement traitée, et la lecture commence à partir de la prochaine trame.

Voir aussi les notes de :ref:`AnimationPlayer.play()<class_AnimationPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&""`` :ref:`🔗<class_AnimationNodeAnimation_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

L'animation à utiliser comme sortie. C'est l'une des animations fournies par :ref:`AnimationTree.anim_player<class_AnimationTree_property_anim_player>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_Animation_LoopMode>` **loop_mode** :ref:`🔗<class_AnimationNodeAnimation_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_Animation_LoopMode>`\ )
- :ref:`LoopMode<enum_Animation_LoopMode>` **get_loop_mode**\ (\ )

Si :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` vaut ``true``, redéfinit les paramètres de boucle de la ressource :ref:`Animation<class_Animation>` originale par la valeur.

\ **Note :** Si l'option :ref:`Animation.loop_mode<class_Animation_property_loop_mode>` n'est pas activée pour boucler, l'option :ref:`Animation.track_set_interpolation_loop_wrap()<class_Animation_method_track_set_interpolation_loop_wrap>` ne sera pas respectée. Si vous ne pouvez pas obtenir le comportement attendu, envisagez de doubler la ressource :ref:`Animation<class_Animation>` et de modifier les paramètres de boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_play_mode:

.. rst-class:: classref-property

:ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **play_mode** = ``0`` :ref:`🔗<class_AnimationNodeAnimation_property_play_mode>`

.. rst-class:: classref-property-setget

- |void| **set_play_mode**\ (\ value\: :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>`\ )
- :ref:`PlayMode<enum_AnimationNodeAnimation_PlayMode>` **get_play_mode**\ (\ )

Détermine la direction de lecture de l'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_start_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **start_offset** :ref:`🔗<class_AnimationNodeAnimation_property_start_offset>`

.. rst-class:: classref-property-setget

- |void| **set_start_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_start_offset**\ (\ )

Si :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` vaut ``true``, décale la position de démarrage de l'animation.

Ceci est utile pour ajuster quel pied marche en premier dans les animations de marche en 3D.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_stretch_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch_time_scale** :ref:`🔗<class_AnimationNodeAnimation_property_stretch_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretching_time_scale**\ (\ )

Si ``true``, redimensionne le temps de sorte que la longueur spécifiée dans :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>` soit d'un cycle.

Ceci est utile pour faire correspondre les périodes des animations de marche et de course.

Si ``false``, la longueur d'animation originale est respectée. Si vous définissez la boucle à :ref:`loop_mode<class_AnimationNodeAnimation_property_loop_mode>`, l'animation bouclera en :ref:`timeline_length<class_AnimationNodeAnimation_property_timeline_length>` secondes.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_timeline_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **timeline_length** :ref:`🔗<class_AnimationNodeAnimation_property_timeline_length>`

.. rst-class:: classref-property-setget

- |void| **set_timeline_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_timeline_length**\ (\ )

La longueur de la chronologie personnalisée.

Si :ref:`use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` vaut ``true``, décale la position de démarrage de l'animation.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeAnimation_property_use_custom_timeline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_timeline** = ``false`` :ref:`🔗<class_AnimationNodeAnimation_property_use_custom_timeline>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_timeline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_timeline**\ (\ )

Si ``true``, :ref:`AnimationNode<class_AnimationNode>` fournit une animation basée sur la ressource :ref:`Animation<class_Animation>` avec quelques paramètres ajustés.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
