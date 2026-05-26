:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAruco:

OpenXRSpatialCapabilityConfigurationAruco
=========================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Encabezado de configuración para marcadores Aruco.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Encabezado de configuración para marcadores Aruco. Pasa esto a :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` para crear un contexto espacial que pueda detectar marcadores Aruco.

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

Diccionario de marcadores Aruco de 4x4 píxeles con 50 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_100** = ``2``

Diccionario de marcadores Aruco de 4x4 píxeles con 100 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_250** = ``3``

Diccionario de marcadores Aruco de 4x4 píxeles con 250 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_1000** = ``4``

Diccionario de marcadores Aruco de 4x4 píxeles con 1000 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_50** = ``5``

Diccionario de marcadores Aruco de 5x5 píxeles con 50 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_100** = ``6``

Diccionario de marcadores Aruco de 5x5 píxeles con 100 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_250** = ``7``

Diccionario de marcadores Aruco de 5x5 píxeles con 250 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_1000** = ``8``

Diccionario de marcadores Aruco de 5x5 píxeles con 1000 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_50** = ``9``

Diccionario de marcadores Aruco de 6x6 píxeles con 50 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_100** = ``10``

Diccionario de marcadores Aruco de 6x6 píxeles con 100 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_250** = ``11``

Diccionario de marcadores Aruco de 6x6 píxeles con 250 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_1000** = ``12``

Diccionario de marcadores Aruco de 6x6 píxeles con 1000 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_50** = ``13``

Diccionario de marcadores Aruco de 7x7 píxeles con 50 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_100** = ``14``

Diccionario de marcadores Aruco de 7x7 píxeles con 100 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_250** = ``15``

Diccionario de marcadores Aruco de 7x7 píxeles con 250 ID.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_1000** = ``16``

Diccionario de marcadores Aruco de 7x7 píxeles con 1000 ID.

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

Diccionario a usar para decodificar marcadores Aruco.

\ **Nota:** Debe establecerse antes de usar esta configuración para crear un contexto espacial.

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
