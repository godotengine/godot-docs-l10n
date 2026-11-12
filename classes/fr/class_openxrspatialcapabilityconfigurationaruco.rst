:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAruco:

OpenXRSpatialCapabilityConfigurationAruco
=========================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for ArUco markers.

.. rst-class:: classref-introduction-group

Description
-----------

Configuration header for ArUco markers. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context that can detect ArUco markers.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+
   | :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` | :ref:`aruco_dict<class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict>` | ``16`` |
   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict:

.. rst-class:: classref-enumeration

enum **ArucoDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_50** = ``1``

4 by 4 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_100** = ``2``

4 by 4 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_250** = ``3``

4 by 4 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_1000** = ``4``

4 by 4 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_50** = ``5``

5 by 5 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_100** = ``6``

5 by 5 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_250** = ``7``

5 by 5 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_1000** = ``8``

5 by 5 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_50** = ``9``

6 by 6 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_100** = ``10``

6 by 6 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_250** = ``11``

6 by 6 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_1000** = ``12``

6 by 6 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_50** = ``13``

7 by 7 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_100** = ``14``

7 by 7 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_250** = ``15``

7 by 7 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_1000** = ``16``

7 by 7 pixel ArUco marker dictionary with 1000 IDs.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict:

.. rst-class:: classref-property

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **aruco_dict** = ``16`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict>`

.. rst-class:: classref-property-setget

- |void| **set_aruco_dict**\ (\ value\: :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>`\ )
- :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **get_aruco_dict**\ (\ )

Dictionary to use to decode ArUco markers.

\ **Note:** Must be set before using this configuration to create a spatial context.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`

Returns the components enabled by this configuration.

\ **Note:** Only valid after this configuration was used to create a spatial context.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
