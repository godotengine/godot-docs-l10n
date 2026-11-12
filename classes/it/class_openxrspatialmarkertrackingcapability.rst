:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementazione per gestire la logica di tracciamento dei marcatori sulle entità spaziali.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe gestisce l'estensione OpenXR per il tracciamento dei marcatori sulle entità spaziali.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`do_entity_update<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                           |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` | :ref:`get_built_in_tracking_state<class_OpenXRSpatialMarkerTrackingCapability_method_get_built_in_tracking_state>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_april_tag_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_aruco_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_micro_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`start_built_in_tracking<class_OpenXRSpatialMarkerTrackingCapability_method_start_built_in_tracking>`\ (\ marker_types\: |bitfield|\[:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>`\]\ )                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`                   | :ref:`start_entity_discovery<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`stop_built_in_tracking<class_OpenXRSpatialMarkerTrackingCapability_method_stop_built_in_tracking>`\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags:

.. rst-class:: classref-enumeration

flags **MarkerTypeFlags**: :ref:`🔗<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>`

.. _class_OpenXRSpatialMarkerTrackingCapability_constant_MARKER_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>` **MARKER_QR_CODE** = ``1``

QR Code.

.. _class_OpenXRSpatialMarkerTrackingCapability_constant_MARKER_MICRO_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>` **MARKER_MICRO_QR_CODE** = ``2``

Micro QR Code.

.. _class_OpenXRSpatialMarkerTrackingCapability_constant_MARKER_ARUCO:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>` **MARKER_ARUCO** = ``4``

ArUco marker.

.. _class_OpenXRSpatialMarkerTrackingCapability_constant_MARKER_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>` **MARKER_APRIL_TAG** = ``8``

April tag.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`

Chiama :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` e :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` con le entità di marcatore associate al contesto spaziale ``spatial_context``.

\ ``component_data`` sono i :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` da aggiornare per questa capacità di marcatore.

Se ``next_snapshot_create`` non è nullo, passalo al parametro ``next`` di :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

Se ``next_snapshot_query`` non è nullo, passalo al parametro ``next`` di :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_get_built_in_tracking_state:

.. rst-class:: classref-method

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **get_built_in_tracking_state**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_get_built_in_tracking_state>`

Returns the state of the built-in tracking system.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

Restituisce ``true`` se il tracciamento dei marcatori April tag è supportato dal dispositivo attuale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

Returns ``true`` if ArUco marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

Restituisce ``true`` se il tracciamento dei marcatori dei codici micro QR è supportato dal dispositivo attuale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

Restituisce ``true`` se il tracciamento dei marcatori dei codici QR è supportato dal dispositivo attuale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_start_built_in_tracking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_built_in_tracking**\ (\ marker_types\: |bitfield|\[:ref:`MarkerTypeFlags<enum_OpenXRSpatialMarkerTrackingCapability_MarkerTypeFlags>`\]\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_start_built_in_tracking>`

Starts the built-in marker tracking logic for the specified marker types. This will fail if built-in tracking is already enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`

Chiama :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` e :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` con le entità di marcatore associate al contesto spaziale ``spatial_context``.

\ ``component_data`` sono i :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` da individuare per questa capacità di marcatore.

Se ``next_snapshot_create`` non è nullo, passalo al parametro ``next`` di :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

Se ``next_snapshot_query`` non è nullo, passalo al parametro ``next`` di :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, se non è nullo, viene chiamato con due parametri, solitamente due volte. Il primo parametro è l':ref:`RID<class_RID>` dello snapshot di individuazione e il secondo parametro è un valore booleano: ``false`` indica che lo snapshot di individuazione sta per essere elaborato, mentre ``true`` indica che lo snapshot di individuazione è stato elaborato e che ``component_data`` contiene dati validi. La seconda chiamata viene saltata in caso di errore.

Il :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` restituito è identico a quello restituito da :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_stop_built_in_tracking:

.. rst-class:: classref-method

|void| **stop_built_in_tracking**\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_stop_built_in_tracking>`

Stops the built-in marker tracking logic.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
