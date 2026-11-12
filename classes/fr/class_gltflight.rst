:github_url: hide

.. _class_GLTFLight:

GLTFLight
=========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente une lumière glTF.

.. rst-class:: classref-introduction-group

Description
-----------

Représente une lumière comme définie par l'extension glTF ``KHR_lights_punctual``.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

- `Spécification d'extension glTF KHR_lights_punctual <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Khronos/KHR_lights_punctual>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`   | :ref:`color<class_GLTFLight_property_color>`                       | ``Color(1, 1, 1, 1)`` |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`inner_cone_angle<class_GLTFLight_property_inner_cone_angle>` | ``0.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`intensity<class_GLTFLight_property_intensity>`               | ``1.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>` | :ref:`light_type<class_GLTFLight_property_light_type>`             | ``""``                |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`outer_cone_angle<class_GLTFLight_property_outer_cone_angle>` | ``0.7853982``         |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`range<class_GLTFLight_property_range>`                       | ``inf``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_dictionary<class_GLTFLight_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_node<class_GLTFLight_method_from_node>`\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static|                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_additional_data<class_GLTFLight_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_additional_data<class_GLTFLight_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFLight_method_to_dictionary>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Light3D<class_Light3D>`       | :ref:`to_node<class_GLTFLight_method_to_node>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFLight_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFLight_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La :ref:`Color<class_Color>` de la lumière dans l'espace linéaire. Blanc par défaut. Une couleur noire fait que la lumière pour n'a aucun effet.

Cette valeur est linéaire pour correspondre au glTF, mais sera convertie en sRGB non linéaire lors de la création d'un nœud Godot :ref:`Light3D<class_Light3D>` lors de l'import, ou convertie en linéaire lors de l'export d'un :ref:`Light3D<class_Light3D>` de Godot en glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_inner_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_cone_angle** = ``0.0`` :ref:`🔗<class_GLTFLight_property_inner_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_inner_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_cone_angle**\ (\ )

L'angle interne du cône dans un projecteur. Doit être inférieur ou égal à l'angle externe du cône.

Dans cet angle, la lumière est à pleine luminosité. Entre les angles interne et externe du cône, il y a une transition de la luminosité totale à aucune luminosité. Lors de la création d'un :ref:`SpotLight3D<class_SpotLight3D>` de Godot, le rapport entre les angles de cône interne et externe est utilisé pour calculer l'atténuation de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_GLTFLight_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

L'intensité de la lumière. Ceci est exprimé en candelas (lumens par stéradian) pour les lumières en point et les spots, et en lux (lumens par m²) pour les lumières directionnels. En créant une lumière, cette valeur est convertie en un multiplicateur sans unité.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_light_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **light_type** = ``""`` :ref:`🔗<class_GLTFLight_property_light_type>`

.. rst-class:: classref-property-setget

- |void| **set_light_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_light_type**\ (\ )

Le type de la lumière. Les valeurs acceptées par Godot sont « point », « spot » et « directional », qui correspondent respectivement au :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>` et :ref:`DirectionalLight3D<class_DirectionalLight3D>` de Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_outer_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_cone_angle** = ``0.7853982`` :ref:`🔗<class_GLTFLight_property_outer_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_outer_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_cone_angle**\ (\ )

L'angle externe du cône dans un projecteur. Doit être inférieur ou égal à l'angle interne du cône.

À cet angle, la lumière a une luminosité nulle. Entre les angles internes et externes du cône, il y a une transition de luminosité totale à aucune luminosité. Si l'angle est un demi tour, le projecteur émet dans toutes les directions. Lors de la création d'un :ref:`SpotLight3D<class_SpotLight3D>` de Godot, l'angle externe du cône est utilisé en tant qu'angle du projecteur.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **range** = ``inf`` :ref:`🔗<class_GLTFLight_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range**\ (\ )

La portée de la lumière, au-delà de laquelle la lumière n'a plus aucun effet. Les lumières en glTF sans portée définie se comportent comme des lumières physiques (qui ont une portée infinie). Lors de la création d'une lumière de Godot, la portée est bornée à ``4096.0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFLight_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_dictionary>`

Crée une nouvelle instance GLTFLight en interprétant le :ref:`Dictionary<class_Dictionary>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_node**\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_node>`

Crée une nouvelle instance GLTFLight à partir du nœud Godot :ref:`Light3D<class_Light3D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFLight_method_get_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFLight_method_set_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_dictionary>`

Sérialise cette instance GLTFLight en un :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_node:

.. rst-class:: classref-method

:ref:`Light3D<class_Light3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_node>`

Convertit cette instance GLTFLight en un nœud Godot :ref:`Light3D<class_Light3D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
