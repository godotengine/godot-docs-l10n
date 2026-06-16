:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**Hérite de :** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une lumière omnidirectionnelle, comme une ampoule ou une bougie.

.. rst-class:: classref-introduction-group

Description
-----------

Une lumière Omnidirectionnelle est un type de nœud :ref:`Light3D<class_Light3D>` qui émet de la lumière dans toutes les directions. La lumière est atténuée avec la distance et cette atténuation peut être configurée en changeant ses paramètres d'énergie, de rayon et d'atténuation.

\ **Note :** Lors de l'utilisation de la méthode de rendu Mobile, seulement 8 lumières omnidirectionnelles peuvent être affichés sur chaque ressource de maillage. Essayer d'afficher plus de 8 lumières omnidirectionnelles sur une seule ressource de maillage entraînera des lumières omnidirectionnelles qui clignoteront quand la caméra se déplace. Lors de l'utilisation de la méthode de rendu Compatibilité, seulement 8 lumières omnidirectionnelles peuvent être affichés sur chaque ressource de maillage par défaut, mais cela peut être augmenté en ajustant :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Note :** Lors de l'utilisation des méthodes de rendu Mobile ou Compatibilité, les lumières omnidirectionnelles n'affecteront correctement que les maillages dont l'AABB de visibilité intersecte avec l'AABB de la lumière. Si l'utilisation d'un shader pour déformer le maillage le fait sortir de sa AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` doit être augmenté sur le maillage. Sinon, la lumière peut ne pas être visible sur le maillage.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Lumières et ombres 3D <../tutorials/3d/lights_and_shadows.html#omni-light>`__

- :doc:`Truquer l’illumination globale <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

Les ombres sont rendues dans une texture dual-paraboloïde. Plus rapide que :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>`, mais de qualité inférieure.

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

Les ombres sont rendues dans une CubeMap. Plus lent que :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>`, mais de qualité supérieure.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Contrôle la fonction d'atténuation de distance pour les lumières omnidirectionnelles.

Une valeur de ``0.0`` maintiendra une luminosité constante à travers la plupart de la plage, mais atténue doucement la lumière au bord de l'intervalle. Utilisez une valeur de ``2.0`` pour des lumières physiquement précises, car cela entraîne une atténuation carrée inverse appropriée.

\ **Note :** Définir l'atténuation à ``2.0`` ou plus peut résulter en des objets distants recevant une lumière minimale, même dans l'intervalle. Par exemple, avec un intervalle de ``4096``, un objet à ``100`` unités est atténué par un facteur de ``0.0001``. Avec une luminosité par défaut de ``1``, la lumière ne serait pas visible à cette distance.

\ **Note :** L'utilisation de valeurs négatives ou supérieures à ``10.0`` peut entraîner des résultats inattendus.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Le rayon de la lumière. Notez que la zone effectivement éclairée peut sembler plus petite en fonction du :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` utilisé. Peu importe le :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` utilisé, la lumière n'atteindra jamais rien à l'extérieur de ce rayon.

\ **Note :** :ref:`omni_range<class_OmniLight3D_property_omni_range>` n'est pas affecté par :ref:`Node3D.scale<class_Node3D_property_scale>` (l'échelle de la lumière ou l'échelle de ses parents).

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
