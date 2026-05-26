:github_url: hide

.. _class_OpenXRSpatialComponentData:

OpenXRSpatialComponentData
==========================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`OpenXRSpatialComponentAnchorList<class_OpenXRSpatialComponentAnchorList>`, :ref:`OpenXRSpatialComponentBounded2DList<class_OpenXRSpatialComponentBounded2DList>`, :ref:`OpenXRSpatialComponentBounded3DList<class_OpenXRSpatialComponentBounded3DList>`, :ref:`OpenXRSpatialComponentMarkerList<class_OpenXRSpatialComponentMarkerList>`, :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`, :ref:`OpenXRSpatialComponentMesh3DList<class_OpenXRSpatialComponentMesh3DList>`, :ref:`OpenXRSpatialComponentParentList<class_OpenXRSpatialComponentParentList>`, :ref:`OpenXRSpatialComponentPersistenceList<class_OpenXRSpatialComponentPersistenceList>`, :ref:`OpenXRSpatialComponentPlaneAlignmentList<class_OpenXRSpatialComponentPlaneAlignmentList>`, :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`, :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`, :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>`

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_component_type<class_OpenXRSpatialComponentData_private_method__get_component_type>`\ (\ ) |virtual| |const|                       |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_structure_data<class_OpenXRSpatialComponentData_private_method__get_structure_data>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`_set_capacity<class_OpenXRSpatialComponentData_private_method__set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual|         |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_component_type<class_OpenXRSpatialComponentData_method_get_component_type>`\ (\ ) |const|                                           |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_capacity<class_OpenXRSpatialComponentData_method_set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ )                             |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialComponentData_private_method__get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_component_type**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_component_type>`

Return the component type for the component we store data for.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__get_structure_data:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_structure_data**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_structure_data>`

Return a pointer to the structure data that will be submitted along with the snapshot query. This pointer must remain valid as long as this object is instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__set_capacity:

.. rst-class:: classref-method

|void| **_set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__set_capacity>`

Sets the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_component_type**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentData_method_get_component_type>`

Gets this **OpenXRSpatialComponentData**'s ``XrSpatialComponentTypeEXT``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_set_capacity:

.. rst-class:: classref-method

|void| **set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialComponentData_method_set_capacity>`

Sets the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
