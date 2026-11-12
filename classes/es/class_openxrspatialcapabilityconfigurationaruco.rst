:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAruco:

OpenXRSpatialCapabilityConfigurationAruco
=========================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for ArUco markers.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Configuration header for ArUco markers. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context that can detect ArUco markers.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+
   | :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` | :ref:`aruco_dict<class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict>` | ``16`` |
   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

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

Descripciones de Propiedades
--------------------------------------------------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`

Devuelve los componentes habilitados por esta configuración.

\ **Nota:** Solo válido después de que esta configuración se haya utilizado para crear un contexto espacial.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
