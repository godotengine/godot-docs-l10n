:github_url: hide

.. _class_OpenXRSpatialEntityExtension:

OpenXRSpatialEntityExtension
============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Estensione di OpenXR che gestisce entità spaziali.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Estensione di OpenXR che gestisce entità spaziali e, se abilitata, consente di interrogarle. Questa estensione gestirà automaticamente anche gli oggetti :ref:`XRTracker<class_XRTracker>` per le entità statiche.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`add_spatial_entity<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                          |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`create_spatial_context<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`discover_spatial_entities<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`discover_spatial_entities_with_component_data<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`find_spatial_entity<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`\ (\ entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_context<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_entity<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`\ (\ entity\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_snapshot<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_float_buffer<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_context_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_spatial_context_ready<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_entity_context<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_entity_id<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_snapshot_context<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_snapshot_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`get_string<class_OpenXRSpatialEntityExtension_method_get_string>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`get_uint8_buffer<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint16_buffer<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint32_buffer<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vector2_buffer<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vector3_buffer<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`make_spatial_entity<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`query_snapshot<class_OpenXRSpatialEntityExtension_method_query_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_capability<class_OpenXRSpatialEntityExtension_method_supports_capability>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ )                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_component_type<class_OpenXRSpatialEntityExtension_method_supports_component_type>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ )                                                                                                                                                                      |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`update_spatial_entities<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended:

.. rst-class:: classref-signal

**spatial_discovery_recommended**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended>`

Emesso quando OpenXR consiglia di effettuare una richiesta di individuazione perché le entità gestite da questo contesto spaziale sono (probabilmente) cambiate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRSpatialEntityExtension_Capability:

.. rst-class:: classref-enumeration

enum **Capability**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_Capability>`

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_PLANE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_PLANE_TRACKING** = ``1000741000``

Capacità di tracciamento dei piani.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_QR_CODE** = ``1000743000``

Capacità di tracciamento dei marcatori basata su codici QR.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE** = ``1000743001``

Capacità di tracciamento dei marcatori basata su codici micro QR.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_ARUCO_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_ARUCO_MARKER** = ``1000743002``

Capacità di tracciamento dei marcatori basata su marcatori Aruco.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_APRIL_TAG** = ``1000743003``

Capacità di tracciamento dei marcatori basata su April tag.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_ANCHOR** = ``1000762000``

Capacità di ancoraggio.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRSpatialEntityExtension_ComponentType:

.. rst-class:: classref-enumeration

enum **ComponentType**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_ComponentType>`

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_2D** = ``1``

Componente che fornisce i limiti 2D per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentBounded2DListEXT``; la struttura dati corrispondente è ``XrSpatialBounded2DDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_3D** = ``2``

Componente che fornisce i limiti 3D per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentBounded3DListEXT``; la struttura dati corrispondente è ``XrBoxf``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PARENT** = ``3``

Componente che fornisce l'XrSpatialEntityIdEXT del padre per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentParentListEXT``; la struttura dati corrispondente è ``XrSpatialEntityIdEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_3D** = ``4``

Componente che fornisce una mesh 3D per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentMesh3DListEXT``; la struttura dati corrispondente è ``XrSpatialMeshDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_ALIGNMENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_ALIGNMENT** = ``1000741000``

Componente che fornisce l'enumerazione dell'allineamento di un piano per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentPlaneAlignmentListEXT``; la struttura dati corrispondente è ``XrSpatialPlaneAlignmentEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_2D** = ``1000741001``

Componente che fornisce una mesh 2D per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentMesh2DListEXT``; la struttura dati corrispondente è ``XrSpatialMeshDataEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_POLYGON_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_POLYGON_2D** = ``1000741002``

Componente che fornisce una poligono di confine 2D per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentPolygon2DListEXT``; la struttura dati corrispondente è ``XrSpatialPolygon2DDataEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_SEMANTIC_LABEL:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_SEMANTIC_LABEL** = ``1000741003``

Componente che fornisce un'etichetta semantica per un piano. La struttura di lista corrispondente è ``XrSpatialComponentPlaneSemanticLabelListEXT``; la struttura dati corrispondente è ``XrSpatialPlaneSemanticLabelEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MARKER** = ``1000743000``

Componente che describe il tipo di marcatore, l'ID e posizione. La struttura di lista corrispondente è ``XrSpatialComponentMarkerListEXT``; la struttura dati corrispondente è ``XrSpatialMarkerDataEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_marker_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_ANCHOR** = ``1000762000``

Componente che fornisce la posizione per un ancoraggio. La struttura di elenco corrispondente è ``XrSpatialComponentAnchorListEXT``; la struttura dati corrispondente è ``XrPosef`` (aggiunta dall'estensione ``XR_EXT_spatial_anchor``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PERSISTENCE:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PERSISTENCE** = ``1000763000``

Componente che fornisce l'UUID persistente per un'entità spaziale. La struttura di lista corrispondente è ``XrSpatialComponentPersistenceListEXT; la struttura dati corrispondente è [code]XrSpatialPersistenceDataEXT`` (aggiunta dall'estensione ``XR_EXT_spatial_persistence``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialEntityExtension_method_add_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **add_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`

Registra un'entità che è stata creata direttamente nel runtime OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_create_spatial_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_spatial_context**\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`

Crea un nuovo contesto spaziale che gestisce le entità per le configurazioni di capacità fornite. ``capability_configurations`` è un array di :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` contenente i dati di configurazione delle capacità necessari.

\ ``next`` è un parametro facoltativo che può contenere ulteriori informazioni per creare il contesto spaziale.

\ **Nota:** Questo è un metodo asincrono e restituisce un oggetto :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` con cui tenere traccia dello stato; scartare questo oggetto non annullerà il processo di creazione. In caso di successo, verrà richiamato ``user_callback`` se specificato. I dati risultanti da questa funzione sono il :ref:`RID<class_RID>` del contesto spaziale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`

Avvia una nuova richiesta di individuazione, che raccoglierà tutti gli oggetti tracciati dal contesto spaziale ``spatial_context`` che hanno almeno uno dei tipi di componente specificati in ``component_types``.

\ ``next`` è un parametro facoltativo che può contenere ulteriori informazioni per eseguire la richiesta di individuazione.

\ **Nota:** Questo è un metodo asincrono e restituisce un oggetto :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` con cui tenere traccia dello stato; scartare questo oggetto non annullerà il processo di individuazione. In caso di successo, verrà richiamata la funzione ``user_callback`` se specificata. I dati risultanti per questa funzione sono il :ref:`RID<class_RID>` del nostro snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities_with_component_data**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data>`

Metodo di convenienza quando il chiamante ha solo un :ref:`Array<class_Array>` di :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` e deve individuare entità spaziali.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_find_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **find_spatial_entity**\ (\ entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`

Restituisce l':ref:`RID<class_RID>` per l'ID di entità spaziale specificato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_context:

.. rst-class:: classref-method

|void| **free_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`

Libera un contesto spaziale creato in precedenza tramite :ref:`create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`. Se la creazione del contesto spaziale è ancora in corso, il processo asincrono viene annullato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_entity:

.. rst-class:: classref-method

|void| **free_spatial_entity**\ (\ entity\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`

Libera un'entità creata in precedenza tramite :ref:`add_spatial_entity()<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>` o :ref:`make_spatial_entity()<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot:

.. rst-class:: classref-method

|void| **free_spatial_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`

Libera uno snapshot spaziale creato in precedenza tramite :ref:`discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`. Se la creazione dello snapshot spaziale è ancora in corso, il processo asincrono viene annullato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_float_buffer:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_float_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`

Restituisce un buffer con valori float da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_context_handle**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`

Restituisce il gestore OpenXR del contesto spaziale per questo snapshot.

\ **Nota:** Questo metodo è destinato all'uso da GDExtension che implementano gestori di capacità di entità spaziali.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_spatial_context_ready**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`

Restituisce ``true`` se il contesto spaziale ha terminato la sua creazione ed è pronto all'uso.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_entity_context**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`

Restituisce il contesto spaziale per questa entità.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_entity_id**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`

Restituisce il ``XrSpatialEntityIdEXT`` interno associato all'entità.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_snapshot_context**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`

Restituisce il contesto spaziale relativo a questo snapshot spaziale.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_snapshot_handle**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`

Restituisce il gestore OpenXR dello snapshot spaziale per questo snapshot.

\ **Nota:** Questo metodo è destinato all'uso da GDExtension che implementano gestori di capacità di entità spaziali.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_string>`

Restituisce una stringa da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint8_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_uint8_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`

Restituisce un buffer con interi a 8 bit da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint16_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint16_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`

Restituisce un buffer con interi a 16 bit da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint32_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint32_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`

Restituisce un buffer con interi a 32 bit da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector2_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vector2_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`

Restituisce un buffer con elementi :ref:`Vector2<class_Vector2>` da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector3_buffer:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vector3_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`

Restituisce un buffer con elementi :ref:`Vector3<class_Vector3>` da un buffer recuperato alla cattura di uno snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_make_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`

Crea una nuova entità per questo ``entity_id``. Il contesto spaziale ``spatial_context`` deve corrispondere al contesto che ha individuato l'entità.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_query_snapshot:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **query_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_query_snapshot>`

Interroga i dati dello snapshot. Individuerà tutte le entità presenti nello snapshot che contengono tutti i componenti richiesti specificati in ``component_data``. Gli oggetti contenuti in ``component_data`` verranno quindi popolati con i dati interrogati. ``component_data`` deve sempre contenere un oggetto di tipo :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>` come prima voce.

\ ``next`` è un parametro facoltativo che può contenere ulteriori informazioni passate durante l'impostazione delle condizioni da interrogare.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_capability:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_capability**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_capability>`

Restituisce ``true`` se la capacità ``capability`` di entità spaziale è supportata dall'hardware utilizzato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_component_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_component_type**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_component_type>`

Restituisce ``true`` se la capacità ``capability`` supporta il tipo di componente ``component_type``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_update_spatial_entities:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **update_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`

Cattura uno snapshot per un numero limitato di entità. Questo metodo NON è asincrono e restituirà lo snapshot immediatamente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
