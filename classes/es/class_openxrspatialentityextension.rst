:github_url: hide

.. _class_OpenXRSpatialEntityExtension:

OpenXRSpatialEntityExtension
============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Extensión de OpenXR que maneja entidades espaciales.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Extensión de OpenXR que maneja entidades espaciales y, cuando está habilitada, permite consultar esas entidades espaciales. Esta extensión también gestionará automáticamente objetos :ref:`XRTracker<class_XRTracker>` para entidades estáticas.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`add_spatial_entity<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ )                                                                                                                                                                                                      |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`create_spatial_context<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`discover_spatial_entities<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`find_spatial_entity<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`\ (\ entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_context<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_entity<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`\ (\ entity\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_snapshot<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_float_buffer<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_context_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_spatial_context_ready<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_entity_context<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_entity_id<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_snapshot_context<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_snapshot_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`get_string<class_OpenXRSpatialEntityExtension_method_get_string>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`get_uint8_buffer<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint16_buffer<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                               |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint32_buffer<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                               |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vector2_buffer<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                             |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vector3_buffer<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                             |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`make_spatial_entity<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`query_snapshot<class_OpenXRSpatialEntityExtension_method_query_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_capability<class_OpenXRSpatialEntityExtension_method_supports_capability>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ )                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_component_type<class_OpenXRSpatialEntityExtension_method_supports_component_type>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ )                                                                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`update_spatial_entities<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended:

.. rst-class:: classref-signal

**spatial_discovery_recommended**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended>`

Emitido cuando OpenXR recomienda ejecutar una consulta de descubrimiento porque las entidades gestionadas por este contexto espacial han (probablemente) cambiado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_OpenXRSpatialEntityExtension_Capability:

.. rst-class:: classref-enumeration

enum **Capability**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_Capability>`

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_PLANE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_PLANE_TRACKING** = ``1000741000``

Capacidad de seguimiento de planos.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_QR_CODE** = ``1000743000``

Capacidad de seguimiento de marcadores basada en códigos QR.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE** = ``1000743001``

Capacidad de seguimiento de marcadores basada en códigos Micro QR.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_ARUCO_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_ARUCO_MARKER** = ``1000743002``

Capacidad de seguimiento de marcadores basada en marcadores Aruco.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_APRIL_TAG** = ``1000743003``

Capacidad de seguimiento de marcadores basada en etiquetas AprilTag.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_ANCHOR** = ``1000762000``

Capacidad de anclaje.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRSpatialEntityExtension_ComponentType:

.. rst-class:: classref-enumeration

enum **ComponentType**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_ComponentType>`

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_2D** = ``1``

Componente que proporciona los límites 2D para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentBounded2DListEXT``; la estructura de datos correspondiente es ``XrSpatialBounded2DDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_3D** = ``2``

Componente que proporciona los límites 3D para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentBounded3DListEXT``; la estructura de datos correspondiente es ``XrBoxf``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PARENT** = ``3``

Componente que proporciona el XrSpatialEntityIdEXT del padre para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentParentListEXT``; la estructura de datos correspondiente es ``XrSpatialEntityIdEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_3D** = ``4``

Componente que proporciona una malla 3D para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentMesh3DListEXT``; la estructura de datos correspondiente es ``XrSpatialMeshDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_ALIGNMENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_ALIGNMENT** = ``1000741000``

Componente que proporciona la enumeración de alineación del plano para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentPlaneAlignmentListEXT``; la estructura de datos correspondiente es ``XrPlaneAlignmentEXT`` (añadido por la extensión ``XR_EXT_spatial_plane_tracking``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_2D** = ``1000741001``

Component that provides a 2D mesh for a spatial entity. The corresponding list structure is ``XrSpatialComponentMesh2DListEXT``; the corresponding data structure is ``XrSpatialMeshDataEXT`` (Added by the ``XR_EXT_spatial_plane_tracking`` extension).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_POLYGON_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_POLYGON_2D** = ``1000741002``

Componente que proporciona un polígono de límite 2D para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentPolygon2DListEXT``; la estructura de datos correspondiente es ``XrSpatialPolygon2DDataEXT`` (añadido por la extensión ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_SEMANTIC_LABEL:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_SEMANTIC_LABEL** = ``1000741003``

Componente que proporciona una etiqueta semántica para un plano. La estructura de lista correspondiente es ``XrSpatialComponentPlaneSemanticLabelListEXT``; la estructura de datos correspondiente es ``XrSpatialPlaneSemanticLabelEXT`` (añadido por la extensión ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MARKER** = ``1000743000``

Un componente que describe el tipo de marcador, ID y ubicación. La estructura de lista correspondiente es ``XrSpatialComponentMarkerListEXT``; la estructura de datos correspondiente es ``XrSpatialMarkerDataEXT`` (añadido por la extensión ``XR_EXT_spatial_marker_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_ANCHOR** = ``1000762000``

Componente que proporciona la ubicación para un ancla. La estructura de lista correspondiente es ``XrSpatialComponentAnchorListEXT``; la estructura de datos correspondiente es ``XrPosef`` (añadido por la extensión ``XR_EXT_spatial_anchor``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PERSISTENCE:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PERSISTENCE** = ``1000763000``

Componente que proporciona el UUID persistido para una entidad espacial. La estructura de lista correspondiente es ``XrSpatialComponentPersistenceListEXT; la estructura de datos correspondiente es [code]XrSpatialPersistenceDataEXT`` (añadido por la extensión ``XR_EXT_spatial_persistence``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialEntityExtension_method_add_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **add_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`

Registra una entidad que fue creada directamente en el tiempo de ejecución de OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_create_spatial_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_spatial_context**\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`

Crea un nuevo contexto espacial que maneja entidades para las configuraciones de capacidad proporcionadas. ``capability_configurations`` es un array de :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` con los datos de configuración de capacidad necesarios.

\ ``next`` es un parámetro opcional que puede contener información adicional para crear nuestro contexto espacial.

\ **Nota:** Este es un método asíncrono y devuelve un objeto :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` con el que rastrear el estado; descartar este objeto no cancelará el proceso de creación. Si tiene éxito, se llamará a ``user_callback`` si se especifica. Los datos de resultado para esta función son el :ref:`RID<class_RID>` de nuestro contexto espacial.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`

Starts a new discovery query, this will gather all objects tracked by the ``spatial_context`` that have at least one of the component types specified in ``component_types``.

\ ``next`` is an optional parameter that can contain additional information for executing the discovery query.

\ **Note:** This is an asynchronous method and returns an :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object with which to track the status, discarding this object will not cancel the discovery process. On success ``user_callback`` will be called if specified. The result data for this function is the :ref:`RID<class_RID>` for our snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_find_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **find_spatial_entity**\ (\ entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`

Devuelve el :ref:`RID<class_RID>` para el ID de entidad espacial especificado.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_context:

.. rst-class:: classref-method

|void| **free_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`

Libera un contexto espacial creado previamente al llamar a :ref:`create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`. Si la creación del contexto espacial aún está en curso, el proceso asíncrono se cancela.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_entity:

.. rst-class:: classref-method

|void| **free_spatial_entity**\ (\ entity\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`

Libera una entidad creada previamente al llamar a :ref:`add_spatial_entity()<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>` o :ref:`make_spatial_entity()<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot:

.. rst-class:: classref-method

|void| **free_spatial_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`

Frees a spatial snapshot previously created when calling :ref:`discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`. If the spatial snapshot creation is still ongoing, the asynchronous process is cancelled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_float_buffer:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_float_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`

Returns a buffer with floats from a buffer that was retrieved when taking a snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_context_handle**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`

Returns the OpenXR spatial context handle for this snapshot.

\ **Note:** This method is intended to be used from GDExtensions that implement spatial entity capability handlers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_spatial_context_ready**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`

Devuelve ``true`` si el contexto espacial terminó su creación y está listo para ser usado.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_entity_context**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`

Devuelve el contexto espacial para esta entidad.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_entity_id**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`

Devuelve el nodo ``XrSpatialEntityIdEXT`` asociado con la entidad.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_snapshot_context**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`

Returns the spatial context related to this spatial snapshot.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_snapshot_handle**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`

Devuelve el manejador de instantánea espacial de OpenXR para esta instantánea.

\ **Nota:** Este método está destinado a ser usado desde GDExtensions que implementan manejadores de capacidad de entidad espacial.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_string>`

Devuelve una cadena de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint8_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_uint8_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`

Devuelve un búfer con enteros de 8 bits de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint16_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint16_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`

Devuelve un búfer con enteros de 16 bits de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint32_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint32_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`

Devuelve un búfer con enteros de 32 bits de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector2_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vector2_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`

Devuelve un búfer con entradas :ref:`Vector2<class_Vector2>` de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector3_buffer:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vector3_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`

Devuelve un búfer con entradas :ref:`Vector3<class_Vector3>` de un búfer que fue recuperado al tomar una instantánea.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_make_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`

Crea una nueva entidad para este ``entity_id``. El ``spatial_context`` debe coincidir con el contexto que descubrió la entidad.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_query_snapshot:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **query_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_query_snapshot>`

Véanse los datos de la instantánea. Esto encontrará todas las entidades en la instantánea que contienen todos los componentes solicitados en ``component_data``. Los objetos contenidos en ``component_data`` se poblarán con los datos consultados. ``component_data`` siempre debe tener un objeto de :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>` como primera entrada.

\ ``next`` es un parámetro opcional que puede contener información adicional pasada al establecer nuestras condiciones de consulta.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_capability:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_capability**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_capability>`

Devuelve ``true`` si esta ``capability`` de entidad espacial es soportada por el hardware utilizado.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_component_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_component_type**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_component_type>`

Devuelve ``true`` si esta ``capability`` soporta el ``component_type``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_update_spatial_entities:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **update_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`

Realiza una instantánea para un número limitado de entidades. Este NO es un método asíncrono y devolverá la instantánea inmediatamente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
