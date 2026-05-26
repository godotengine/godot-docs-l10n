:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag:

OpenXRSpatialCapabilityConfigurationAprilTag
============================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Encabezado de configuración para marcadores AprilTag.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Encabezado de configuración para marcadores April tag. Pasa esto a :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` para crear un contexto espacial que pueda detectar AprilTags.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+
   | :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` | :ref:`april_dict<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>` | ``4`` |
   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict:

.. rst-class:: classref-enumeration

enum **AprilTagDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_16H5:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_16H5** = ``1``

4 por 4 bits, distancia de Hamming mínima entre dos códigos cualesquiera = 5, 30 códigos.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_25H9:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_25H9** = ``2``

5 por 5 bits, distancia de Hamming mínima entre dos códigos cualesquiera = 9, 35 códigos.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H10:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H10** = ``3``

6 by 6 bits, minimum Hamming distance between any two codes = 10, 2320 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H11:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H11** = ``4``

6 por 6 bits, distancia de Hamming mínima entre dos códigos cualesquiera = 11, 587 códigos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict:

.. rst-class:: classref-property

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **april_dict** = ``4`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>`

.. rst-class:: classref-property-setget

- |void| **set_april_dict**\ (\ value\: :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`\ )
- :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **get_april_dict**\ (\ )

Dictionary to use to decode April tags.

\ **Note:** Must be set before using this configuration to create a spatial context.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`

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
