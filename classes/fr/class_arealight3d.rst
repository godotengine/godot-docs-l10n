:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**Hérite de :** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une lumière de zone, comme un tube de néon ou un écran.

.. rst-class:: classref-introduction-group

Description
-----------

Une lumière de zone est un type de :ref:`Light3D<class_Light3D>` qui émet de la lumière dans une zone en deux dimensions, en une forme de rectangle. La lumière est atténuée avec la distance. Cette atténuation peut être configurée en changeant les paramètres d'énergie, :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`, et :ref:`area_range<class_AreaLight3D_property_area_range>`.

La lumière est émise dans la direction Z de la base globale du nœud. Pour une lumière non-pivotée, cela signifie que la lumière est émise vers l'avant, illuminant la face avant d'un modèle 3D (voir :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` et :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

Les lumières de zone peuvent projeter des ombres douces, utilisant PCSS, que vous pouvez contrôler en ajustant le paramètres de taille. Le plan d'ombre se dessine à partir du centre de la lumière.

\ **Note :** Les lumières de zone ont un maintient limité sur le mobile et les rendus compatibles. Pour les rendus mobiles, la taille de la pénombre ne varie pas comme il le devrait avec PCSS. Pour la compatibilité les lumières ne peuvent pas produire d'ombre.

\ **Avertissement :** Les ombres projeté par une lumière de zone peuvent sembler incorrect si l'objet projetant des ombres n'a pas assez de sous-divisions et qu'il est très proche d'une lumière de zone. Ceci est la même limitation que celui du mode d'ombre "Dual Paraboloid" dans :ref:`OmniLight3D<class_OmniLight3D>`.

\ **Performance :** Les lumières de zone sont plus coûteuse sur le GPU comparé aux lumières omnidirectionnelles et de spot. Dans Forward+, il existe un coût GPU additionnel sur *tout* les objets rendus dès qu'une lumière de zone est présente dans le vue du frustum (dû à la nature de l'éclairage groupé). Envisagez de les utiliser seulement pour des cinématiques ou lorsque vous ciblez des appareils haut de gamme.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Lumières et ombres 3D <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Contrôle la fonction d'atténuation de distance pour les lumières de zone.

Une valeur de ``0.0`` maintiendra une luminosité constante à travers la plupart de la plage, mais atténuera doucement la lumière au bord de l'intervalle. Utilisez une valeur de ``2.0`` pour des lumières physiquement précises, car cela entraîne une atténuation carrée inverse appropriée.

\ **Note :** Définir l'atténuation à ``2.0`` ou plus peut résulter en des objets distants recevant une lumière minimale, même dans l'intervalle. Par exemple, avec un intervalle de ``4096``, un objet à ``100`` unités est atténué par un facteur de ``0.0001``. Avec une luminosité par défaut de ``1``, la lumière ne serait pas visible à cette distance.

\ **Note :** L'utilisation de valeurs négatives ou supérieures à ``10.0`` peut entraîner des résultats inattendus.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

Définit si l'énergie est normalisée (divisée) par la zone de surface de la lumière. Si ajustée à ``vrai``, la modification de la taille n'affecte pas l'énergie totale émise, et n'altère pas fortement la luminosité de la scène.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

L'intervalle de zone est en mètres. Ceci détermine la distante maximale de n'importe quel point de la zone dans laquelle elle peut continuer d'émettre de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

L'étendue (largeur et hauteur) de la zone est en mètres.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

Une texture optionnelle à utiliser comme source lumineuse. La modification de la texture en exécution peut impacter la performance, comme elle doit être dessinée sur la carte de la lumière avec des mipmaps filtrés.

Si aucune texture n'est attribuée, la lumière de zone émet une lumière uniforme au travers sa surface.

\ **Note :** Les textures de la lumière de zone ne sont supportées que dans les méthodes pour les rendus Forward+ et Mobile, pas pour Compatibilité. Afin de réduire l'impact sur la performance sur la bascule de texture en exécution, assurez-vous que chaque dimension de la texture de zone est un multiple de 128 pixels, ou une puissance de deux. Cela évite le besoin de transmettre une échelle, ce qui ralentit les changement de texture. Les textures n'ont pas besoin d'être nécessairement carrées pour être idéales. Les exemples de tailles de textures idéales incluent 32x64, 128x128 et 256x384.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
