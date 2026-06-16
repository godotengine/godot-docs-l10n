:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**Hérite de :** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un projecteur, comme un projecteur de spectacle ou un lanterne.

.. rst-class:: classref-introduction-group

Description
-----------

Un projecteur est un type de nœud :ref:`Light3D<class_Light3D>` qui émet de la lumière dans une direction spécifique, en une forme de cône. La lumière est atténuée avec la distance. Cette atténuation peut être configurée en changeant les paramètres d'énergie, de rayon et d'atténuation de la :ref:`Light3D<class_Light3D>`.

La lumière est émise dans la direction -Z de la base globale du nœud. Pour une lumière non-pivotée, cela signifie que la lumière est émise vers l'avant, illuminant la face avant d'un modèle 3D (voir :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` et :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

\ **Note :** Lors de l'utilisation de la méthode de rendu Mobile, seulement 8 projecteurs peuvent être affichés sur chaque ressource de maillage. Essayer d'afficher plus de 8 projecteurs sur une seule ressource de maillage entraînera des projecteurs qui clignoteront quand la caméra se déplace. Lors de l'utilisation de la méthode de rendu Compatibilité, seulement 8 projecteurs peuvent être affichés sur chaque ressource de maillage par défaut, mais cela peut être augmenté en ajustant :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Note :** Lors de l'utilisation des méthodes de rendu Mobile ou Compatibilité, les projecteurs n'affecteront correctement que les maillage dont l'AABB de visibilité intersecte avec l'AABB de la lumière. Si l'utilisation d'un shader pour déformer le maillage le fait sortir de sa AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` doit être augmenté sur le maillage. Sinon, la lumière peut ne pas être visible sur le maillage.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Lumières et ombres 3D <../tutorials/3d/lights_and_shadows.html#spot-light>`__

- :doc:`Truquer l’illumination globale <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

L'angle du projecteur en degrés. C'est le rayon angulaire, ce qui signifie l'angle de l'axe -Z, le centre du cône, vers le bord du cône. Le rayon angulaire par défaut de 45 degrés correspond à un cône avec un diamètre angulaire de 90 degrés.

\ **Note :** :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` n'est pas affecté par :ref:`Node3D.scale<class_Node3D_property_scale>` (l'échelle de la lumière ou l'échelle de ses parents).

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La courbe d’atténuation *angulaire* du projecteur. Voir aussi :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Contrôle la fonction d'atténuation de distance pour les projecteurs.

Une valeur de ``0.0`` maintiendra une luminosité constante à travers la plupart de la plage, mais atténue doucement la lumière au bord de l'intervalle. Utilisez une valeur de ``2.0`` pour des lumières physiquement précises, car cela entraîne une atténuation carrée inverse appropriée.

\ **Note :** Définir l'atténuation à ``2.0`` ou plus peut résulter en des objets distants recevant une lumière minimale, même dans l'intervalle. Par exemple, avec un intervalle de ``4096``, un objet à ``100`` unités est atténué par un facteur de ``0.0001``. Avec une luminosité par défaut de ``1``, la lumière ne serait pas visible à cette distance.

\ **Note :** L'utilisation de valeurs négatives ou supérieures à ``10.0`` peut entraîner des résultats inattendus.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La portée maximale qui peut être atteinte par le projecteur. Notez que la zone effectivement éclairée peut sembler plus petite en fonction du :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` utilisé. Peu importe le :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` utilisé, la lumière n'atteindra jamais rien à l'extérieur de cette plage.

\ **Note :** :ref:`spot_range<class_SpotLight3D_property_spot_range>` n'est pas affecté par :ref:`Node3D.scale<class_Node3D_property_scale>` (l'échelle de la lumière ou l'échelle de ses parents).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
