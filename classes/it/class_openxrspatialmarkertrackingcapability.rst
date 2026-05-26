:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementation for handling spatial entity marker tracking logic.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This class handles the OpenXR marker tracking spatial entity extension.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`do_entity_update<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_april_tag_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_aruco_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_micro_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`start_entity_discovery<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`

Calls :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the marker entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to update for this marker capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

Returns ``true`` if April tag marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

Returns ``true`` if Aruco marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

Returns ``true`` if micro QR code marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

Returns ``true`` if QR code marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the marker entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this marker capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
