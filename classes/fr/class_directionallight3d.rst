:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight3D:

DirectionalLight3D
==================

**Hérite de :** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une lumière directionnelle à une certaine distance, comme pour le soleil.

.. rst-class:: classref-introduction-group

Description
-----------

Une lumière directionnelle est un type de nœud :ref:`Light3D<class_Light3D>` qui modélise un nombre infini de rayons parallèles couvrant toute la scène. Elle est utilisée pour les lumières à forte intensité qui sont situées loin de la scène pour modéliser la lumière du soleil ou le clair de lune.

La lumière est émise dans la direction -Z de la base globale du nœud. Pour une lumière non-pivotée, cela signifie que la lumière est émise vers l'avant, illuminant la face d'avant d'un modèle 3D (voir :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` et :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`). La position du nœud est ignorée, seule la base est utilisée pour déterminer la direction de la lumière.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Lumières et ombres 3D <../tutorials/3d/lights_and_shadows.html#directional-light>`__

- :doc:`Truquer l’illumination globale <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`directional_shadow_blend_splits<class_DirectionalLight3D_property_directional_shadow_blend_splits>` | ``false`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`     | ``0.8``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` | ``100.0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` | :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>`                 | ``2``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` | ``20.0``  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`           | ``0.1``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`           | ``0.2``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`           | ``0.5``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`       | :ref:`sky_mode<class_DirectionalLight3D_property_sky_mode>`                                               | ``0``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_DirectionalLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_DirectionalLight3D_ShadowMode>`

.. _class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_ORTHOGONAL** = ``0``

Rend la carte de l’ombre de toute la scène d’un point de vue orthogonal. C’est le mode d’ombre directionnelle le plus rapide. Peut entraîner des ombres plus floues sur les objets proches.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_2_SPLITS** = ``1``

Divise le frustum de vue en 2 zones, chacune avec sa propre shadow map. Ce mode d'ombre est un compromis en terme de performances entre :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` et :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_4_SPLITS** = ``2``

Divise le frustum de vue en 4 zones, chacune avec sa propre shadow map. Il s'agit du mode d'ombre directionnelle le plus lent.

.. rst-class:: classref-item-separator

----

.. _enum_DirectionalLight3D_SkyMode:

.. rst-class:: classref-enumeration

enum **SkyMode**: :ref:`🔗<enum_DirectionalLight3D_SkyMode>`

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_AND_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_AND_SKY** = ``0``

Rend la lumière visible dans l'éclairage de la scène et dans le rendu du ciel.

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_ONLY** = ``1``

Rend la lumière visible uniquement dans l'éclairage de la scène (y compris l'éclairage direct et l'illumination globale). Lors de l'utilisation de ce mode, la lumière ne sera pas visible depuis les shaders de ciel.

.. _class_DirectionalLight3D_constant_SKY_MODE_SKY_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_SKY_ONLY** = ``2``

Rend la lumière visible aux shaders du ciel seulement. Lors de l'utilisation de ce mode, la lumière n'éclairera pas la scène (par éclairage direct ou par illumination globale), mais peut être accédée par les shaders du ciel. Cela peut être utile, par exemple, lorsque vous voulez contrôler les effets du ciel sans éclairer la scène (pendant un cycle de nuit, par exemple).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_DirectionalLight3D_property_directional_shadow_blend_splits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional_shadow_blend_splits** = ``false`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_blend_splits>`

.. rst-class:: classref-property-setget

- |void| **set_blend_splits**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blend_splits_enabled**\ (\ )

Si ``true``, le détail des ombres est sacrifié pour obtenir des transitions plus lisses entre les fractions. Activer cette option a également un coût modéré sur les performances. Ceci est ignoré lorsque :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` est :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_fade_start:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_fade_start** = ``0.8`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_fade_start>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Proportion de :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` auquel point l'ombre commence à disparaître. À :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`, l'ombre disparaîtra. La valeur par défaut est un équilibre entre disparition lisse et visibilité des ombres distantes. Si la caméra se déplace rapidement et que :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` est faible, envisagez de diminuer :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` sous ``0.8`` pour rendre les transitions d'ombres moins visibles. D'un autre côté, si vous avez utilisé :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` pour couvrir l'ensemble de la scène, vous pouvez définir :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` à ``1.0`` pour empêcher l'ombre de disparaître au loin (elle sera soudainement coupée à la place).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_max_distance** = ``100.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distance maximale pour les divisions des ombres. Augmenter cette valeur rendra visible les ombres directionnelles de plus loin, mais affichera moins de détails des ombres et de moins bonnes performances (puisque plus d'objets doivent être inclus dans le rendu des ombres directionnelles).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **directional_shadow_mode** = ``2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

L'algorithme de rendu des ombre de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_pancake_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_pancake_size** = ``20.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_pancake_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Définit la taille du pancake des ombres directionnelles. Le pancake décalera le début du frustum de caméra de l'ombre pour fournir une plus haute résolution de profondeur pour l'ombre. Cependant, une grande taille de pancake peut causer des artéfacts dans les ombres des grands objets qui sont proches du bord du frustum. Réduire la taille du pancake peut aider. Définir la taille à ``0`` désactive l'effet de pancaking.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_1:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_1** = ``0.1`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_1>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distance de la caméra à la division 1 de l'ombre. Relative à :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Seulement utilisée lorsque :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` vaut :ref:`SHADOW_PARALLEL_2_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS>` ou :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_2:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_2** = ``0.2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_2>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distance de la division 1 à la division 2 de l'ombre. Relative à :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Seulement utilisée lorsque :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` vaut :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_3:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_3** = ``0.5`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_3>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distance de la division 2 à la division 3 de l'ombre. Relative à :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Seulement utilisée lorsque :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` vaut :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_sky_mode:

.. rst-class:: classref-property

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **sky_mode** = ``0`` :ref:`🔗<class_DirectionalLight3D_property_sky_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sky_mode**\ (\ value\: :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`\ )
- :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **get_sky_mode**\ (\ )

Si cette **DirectionalLight3D** est visible dans le ciel, dans la scène, ou dans le ciel et dans la scène.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
