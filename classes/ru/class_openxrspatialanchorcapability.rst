:github_url: hide

.. _class_OpenXRSpatialAnchorCapability:

OpenXRSpatialAnchorCapability
=============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Реализация для обработки логики привязки пространственных объектов.

.. rst-class:: classref-introduction-group

Описание
----------------

Это внутренний класс, который обрабатывает расширение OpenXR для пространственных сущностей-якорей.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`create_default_persistence_context<class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context>`\ (\ user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` | :ref:`create_new_anchor<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID(), next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                                                                                                                                                                     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`create_persistence_context<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`do_entity_update<class_OpenXRSpatialAnchorCapability_method_do_entity_update>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                           |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`free_persistence_context<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_persistence_context_handle<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_persistence_scope_supported<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_anchor_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_persistence_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`persist_anchor<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_anchor<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ )                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`start_entity_discovery<class_OpenXRSpatialAnchorCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`unpersist_anchor<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRSpatialAnchorCapability_PersistenceScope:

.. rst-class:: classref-enumeration

enum **PersistenceScope**: :ref:`🔗<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_SYSTEM_MANAGED:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_SYSTEM_MANAGED** = ``1``

Предоставляет приложению доступ только для чтения (т.е. приложение не может изменять эту область действия) к пространственным объектам, сохраняемым и управляемым системой. Приложение может использовать UUID в компоненте сохранения данных для этой области действия, чтобы сопоставлять объекты в разных пространственных контекстах и при перезагрузке устройства.

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_LOCAL_ANCHORS:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_LOCAL_ANCHORS** = ``1000781000``

Операции сохранения данных и доступ к ним ограничены пространственными привязками, на одном и том же устройстве, для одного и того же пользователя и одного и того же приложения (с использованием функций :ref:`persist_anchor()<class_OpenXRSpatialAnchorCapability_method_persist_anchor>` и :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`)

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_default_persistence_context**\ (\ user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context>`

Calls :ref:`create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>` with a configuration that likely works with the XR runtime.

\ ``user_callback`` is called when the context is created.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_create_new_anchor:

.. rst-class:: classref-method

:ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` **create_new_anchor**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID(), next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`

Creates a new anchor that will be tracked by the XR runtime. The ``transform`` should be a transform in the local space of your :ref:`XROrigin3D<class_XROrigin3D>` node. If ``spatial_context`` is not specified the default will be used, this requires :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>` to be set. The returned tracker will track the location in case our reference space changes.

\ ``next`` must be a valid next object for the ``XrSpatialAnchorCreateInfoEXT`` chain.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_create_persistence_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_persistence_context**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`

Создает новый контекст постоянного хранения данных.

\ **Примечание:** Это асинхронный метод, возвращающий объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, с помощью которого отслеживается статус; удаление этого объекта не отменит процесс создания. В случае успеха будет вызван ``user_callback``, если он указан. Результатом этой функции является :ref:`RID<class_RID>` нашего контекста постоянного хранения.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_do_entity_update>`

Calls :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the anchor entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to update for this anchor capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_free_persistence_context:

.. rst-class:: classref-method

|void| **free_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`

Освобождает контекст постоянного хранения, ранее созданный с помощью метода :ref:`create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistence_context_handle**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`

Возвращает внутренний дескриптор для данного контекста сохранения данных.

\ **Примечание:** Для реализаций GDExtension.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_persistence_scope_supported**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`

Возвращает ``true``, если данная область сохранения поддерживается нашей возможностью пространственной привязки.

\ **Примечание:** Действительно только после создания экземпляра OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_anchor_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`

Возвращает ``true``, если аппаратное обеспечение поддерживает пространственные привязки. Возвращает допустимое значение только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_persistence_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`

Возвращает ``true``, если оборудование поддерживает постоянные пространственные привязки. Возвращает допустимое значение только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_persist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **persist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`

Преобразует этот якорь в постоянный. Это означает, что его местоположение будет сохранено на устройстве, и якорь будет восстановлен при следующем запуске вашего приложения. Если ``persistence_context`` не указан, будет использоваться значение по умолчанию; для этого необходимо установить :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>`.

\ **Примечание:** Это асинхронный метод, который возвращает объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, с помощью которого отслеживается статус; удаление этого объекта не отменит процесс создания. В случае успеха будет вызван ``user_callback``, если он указан. Значение результата этой функции — логическое значение, которое будет установлено в ``true`` после успешного завершения.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_remove_anchor:

.. rst-class:: classref-method

|void| **remove_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`

Удалите якорь, созданный ранее с помощью метода :ref:`create_new_anchor()<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`. Если этот якорь был постоянным, необходимо сначала вызвать метод :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>` и дождаться его обратного вызова.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the anchor entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this anchor capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_unpersist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **unpersist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`

Удаляет постоянные данные из этого якоря. Среда выполнения не будет создавать якорь заново при перезапуске вашего приложения. Если ``persistence_context`` не указан, будет использоваться значение по умолчанию; для этого необходимо установить :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enabled<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enabled>`.

\ **Примечание:** Это асинхронный метод, который возвращает объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, с помощью которого отслеживается статус; удаление этого объекта не отменит процесс создания. В случае успеха будет вызван ``user_callback``, если он указан. Значение результата этой функции — логическое значение, которое будет установлено в ``true`` после успешного завершения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
