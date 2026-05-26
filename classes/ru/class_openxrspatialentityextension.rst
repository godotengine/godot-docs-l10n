:github_url: hide

.. _class_OpenXRSpatialEntityExtension:

OpenXRSpatialEntityExtension
============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Расширение OpenXR, обрабатывающее пространственные объекты.

.. rst-class:: classref-introduction-group

Описание
----------------

Расширение OpenXR, которое обрабатывает пространственные объекты и, при включении, позволяет запрашивать информацию о них. Это расширение также будет автоматически управлять объектами :ref:`XRTracker<class_XRTracker>` для статических объектов.

.. rst-class:: classref-reftable-group

Методы
------------

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

Сигналы
--------------

.. _class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended:

.. rst-class:: classref-signal

**spatial_discovery_recommended**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended>`

Появляется, когда OpenXR рекомендует выполнить запрос на обнаружение, поскольку объекты, управляемые этим пространственным контекстом (вероятно), изменились.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRSpatialEntityExtension_Capability:

.. rst-class:: classref-enumeration

enum **Capability**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_Capability>`

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_PLANE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_PLANE_TRACKING** = ``1000741000``

Возможность отслеживания плоскости.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_QR_CODE** = ``1000743000``

Возможность отслеживания маркеров на основе QR-кода.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE** = ``1000743001``

Возможность отслеживания местоположения с помощью микро-QR-кодов.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_ARUCO_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_ARUCO_MARKER** = ``1000743002``

Возможность отслеживания маркеров на основе технологии Aruco.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_APRIL_TAG** = ``1000743003``

Возможность отслеживания местоположения с помощью апрельских тегов.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_ANCHOR** = ``1000762000``

Возможность привязки.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRSpatialEntityExtension_ComponentType:

.. rst-class:: classref-enumeration

enum **ComponentType**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_ComponentType>`

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_2D** = ``1``

Компонент, предоставляющий двумерные границы для пространственного объекта. Соответствующая структура списка: ``XrSpatialComponentBounded2DListEXT``; соответствующая структура данных: ``XrSpatialBounded2DDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_3D** = ``2``

Компонент, предоставляющий трёхмерные границы для пространственного объекта. Соответствующая структура списка: ``XrSpatialComponentBounded2DListEXT``; соответствующая структура данных: ``XrBoxf``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PARENT** = ``3``

Компонент, предоставляющий XrSpatialEntityIdEXT родительского элемента для пространственной сущности. Соответствующая структура списка: ``XrSpatialComponentParentListEXT``; соответствующая структура данных: ``XrSpatialEntityIdEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_3D** = ``4``

Компонент, предоставляющий трёхмерную-сетку для пространственного объекта. Соответствующая структура списка: ``XrSpatialComponentMesh3DListEXT``; соответствующая структура данных: ``XrSpatialMeshDataEXT``.

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_ALIGNMENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_ALIGNMENT** = ``1000741000``

Компонент, предоставляющий перечисление выравнивания плоскости для пространственного объекта. Соответствующая структура списка — ``XrSpatialComponentPlaneAlignmentListEXT``; соответствующая структура данных — ``XrSpatialPlaneAlignmentEXT`` (добавлена расширением ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_2D** = ``1000741001``

Компонент, предоставляющий двумерную сетку для пространственного объекта. Соответствующая структура списка: ``XrSpatialComponentMesh2DListEXT``; соответствующая структура данных: ``XrSpatialMeshDataEXT`` (добавлена расширением ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_POLYGON_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_POLYGON_2D** = ``1000741002``

Компонент, предоставляющий двумерный полигон границы для пространственного объекта. Соответствующая структура списка — ``XrSpatialComponentPolygon2DListEXT``; соответствующая структура данных — ``XrSpatialPolygon2DDataEXT`` (добавлена расширением ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_SEMANTIC_LABEL:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_SEMANTIC_LABEL** = ``1000741003``

Компонент, предоставляющий семантическую метку для плоскости. Соответствующая структура списка: ``XrSpatialComponentPlaneSemanticLabelListEXT``; соответствующая структура данных: ``XrSpatialPlaneSemanticLabelEXT`` (добавлена расширением ``XR_EXT_spatial_plane_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MARKER** = ``1000743000``

Компонент, описывающий тип маркера, его идентификатор и местоположение. Соответствующая структура списка — ``XrSpatialComponentMarkerListEXT``; соответствующая структура данных — ``XrSpatialMarkerDataEXT`` (добавлена расширением ``XR_EXT_spatial_marker_tracking``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_ANCHOR** = ``1000762000``

Компонент, предоставляющий местоположение для привязки. Соответствующая структура списка — ``XrSpatialComponentAnchorListEXT``; соответствующая структура данных — ``XrPosef`` (добавлена расширением ``XR_EXT_spatial_anchor``).

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PERSISTENCE:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PERSISTENCE** = ``1000763000``

Компонент, предоставляющий сохранённый UUID для пространственного объекта. Соответствующая структура списка — ``XrSpatialComponentPersistenceListEXT; соответствующая структура данных — [code]XrSpatialPersistenceDataEXT`` (добавлена расширением ``XR_EXT_spatial_persistence``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialEntityExtension_method_add_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **add_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`

Регистрирует объект, созданный непосредственно в среде выполнения OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_create_spatial_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_spatial_context**\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`

Создаёт новый пространственный контекст, который обрабатывает сущности для предоставленных конфигураций возможностей. ``capability_configurations`` — это массив :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` с необходимыми данными конфигурации возможностей.\ ``next`` — необязательный параметр, который может содержать дополнительную информацию для создания нашего пространственного контекста.\ **Примечание:** Это асинхронный метод, который возвращает объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, с помощью которого отслеживается статус; удаление этого объекта не отменит процесс создания. В случае успеха будет вызван ``user_callback``, если он указан. Результатом этой функции является :ref:`RID<class_RID>` нашего пространственного контекста.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`

Запускает новый запрос обнаружения, который соберёт все объекты, отслеживаемые параметром ``spatial_context``, имеющие хотя бы один из типов компонентов, указанных в ``component_types``.\ ``next`` — необязательный параметр, который может содержать дополнительную информацию для выполнения запроса обнаружения.\ **Примечание:** Это асинхронный метод, возвращающий объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, с помощью которого отслеживается статус; удаление этого объекта не отменит процесс обнаружения. В случае успеха будет вызван ``user_callback``, если он указан. Результатом этой функции является :ref:`RID<class_RID>` для нашего снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_find_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **find_spatial_entity**\ (\ entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`

Возвращает :ref:`RID<class_RID>` для указанного идентификатора пространственного объекта.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_context:

.. rst-class:: classref-method

|void| **free_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`

Освобождает пространственный контекст, созданный ранее при вызове :ref:`create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`. Если создание пространственного контекста продолжается, асинхронный процесс отменяется.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_entity:

.. rst-class:: classref-method

|void| **free_spatial_entity**\ (\ entity\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`

Освобождает объект, созданный ранее, при вызове метода :ref:`add_spatial_entity()<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>` или :ref:`make_spatial_entity()<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot:

.. rst-class:: classref-method

|void| **free_spatial_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`

Освобождает пространственный снимок, созданный ранее при вызове :ref:`discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`. Если создание пространственного снимка продолжается, асинхронный процесс отменяется.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_float_buffer:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_float_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`

Возвращает буфер с числами с плавающей запятой из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_context_handle**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`

Возвращает дескриптор пространственного контекста OpenXR для этого снимка.

\ **Примечание:** Этот метод предназначен для использования в расширениях GDExtensions, реализующих обработчики возможностей пространственных объектов.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_spatial_context_ready**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`

Возвращает ``true``, если создание пространственного контекста закончено, и он готов к использованию.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_entity_context**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`

Возвращает пространственный контекст для этого объекта.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_entity_id**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`

Возвращает внутренний ``XrSpatialEntityIdEXT``, связанный с этим объектом.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_snapshot_context**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`

Возвращает пространственный контекст, связанный с этим пространственным снимком.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_snapshot_handle**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`

Возвращает дескриптор пространственного снимка OpenXR для этого снимка.

\ **Примечание:** Этот метод предназначен для использования в расширениях GDExtensions, реализующих обработчики возможностей пространственных объектов.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_string>`

Возвращает строку из буфера, полученную при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint8_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_uint8_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`

Возвращает буфер с 8-битными целыми числами из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint16_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint16_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`

Возвращает буфер с 16-битными целыми числами из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint32_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint32_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`

Возвращает буфер с 32-битными целыми числами из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector2_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vector2_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`

Возвращает буфер с записями :ref:`Vector2<class_Vector2>` из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector3_buffer:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vector3_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`

Возвращает буфер с записями :ref:`Vector3<class_Vector3>` из буфера, полученного при создании снимка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_make_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`

Создаёт новый объект для ``entity_id``. ``spatial_context`` должен соответствовать контексту, в котором объект был обнаружен.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_query_snapshot:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **query_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_query_snapshot>`

Выполняет запрос к данным снимка. Это позволит найти все сущности в снимке, содержащие все запрошенные компоненты в ``component_data``. Затем объекты, хранящиеся в ``component_data``, будут заполнены запрошенными данными. ``component_data`` всегда должен содержать объект :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>` в качестве первой записи.

\ ``next`` — необязательный параметр, который может содержать дополнительную информацию, передаваемую при установке условий запроса.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_capability:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_capability**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_capability>`

Возвращает ``true``, если пространственный объект ``capability`` поддерживается используемым оборудованием.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_component_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_component_type**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_component_type>`

Возвращает ``true``, если ``capability`` поддерживает ``component_type``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_update_spatial_entities:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **update_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`

Создаёт снимок состояния ограниченного числа объектов. Это НЕ асинхронный метод, и снимок будет возвращён немедленно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
