:github_url: hide

.. _class_OpenXRSpatialComponentData:

OpenXRSpatialComponentData
==========================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`OpenXRSpatialComponentAnchorList<class_OpenXRSpatialComponentAnchorList>`, :ref:`OpenXRSpatialComponentBounded2DList<class_OpenXRSpatialComponentBounded2DList>`, :ref:`OpenXRSpatialComponentBounded3DList<class_OpenXRSpatialComponentBounded3DList>`, :ref:`OpenXRSpatialComponentMarkerList<class_OpenXRSpatialComponentMarkerList>`, :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`, :ref:`OpenXRSpatialComponentMesh3DList<class_OpenXRSpatialComponentMesh3DList>`, :ref:`OpenXRSpatialComponentParentList<class_OpenXRSpatialComponentParentList>`, :ref:`OpenXRSpatialComponentPersistenceList<class_OpenXRSpatialComponentPersistenceList>`, :ref:`OpenXRSpatialComponentPlaneAlignmentList<class_OpenXRSpatialComponentPlaneAlignmentList>`, :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`, :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`, :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>`

Objeto para almacenar los datos del componente de entidad espacial de OpenXR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Objeto para almacenar los datos del componente de entidad espacial de OpenXR.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_component_type<class_OpenXRSpatialComponentData_private_method__get_component_type>`\ (\ ) |virtual| |const|                               |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_structure_data<class_OpenXRSpatialComponentData_private_method__get_structure_data>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`_set_capacity<class_OpenXRSpatialComponentData_private_method__set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual|                 |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_capacity<class_OpenXRSpatialComponentData_method_set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ )                                     |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialComponentData_private_method__get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_component_type**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_component_type>`

Devuelve el tipo de componente para el que almacenamos datos.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__get_structure_data:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_structure_data**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_structure_data>`

Return a pointer to the structure data that will be submitted along with the snapshot query. This pointer must remain valid as long as this object is instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__set_capacity:

.. rst-class:: classref-method

|void| **_set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__set_capacity>`

Establece la capacidad esperada proporcionada por el sistema de consulta de entidades espaciales. Los búferes deben inicializarse con el almacenamiento correcto.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_set_capacity:

.. rst-class:: classref-method

|void| **set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialComponentData_method_set_capacity>`

Establece la capacidad esperada proporcionada por el sistema de consulta de entidades espaciales. Los búferes deben inicializarse con el almacenamiento correcto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
