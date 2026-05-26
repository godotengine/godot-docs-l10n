:github_url: hide

.. _class_OpenXRSpatialPlaneTrackingCapability:

OpenXRSpatialPlaneTrackingCapability
====================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Реализация для обработки логики отслеживания пространственных объектов в плоскости объекта.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс обрабатывает расширение OpenXR для отслеживания пространственных объектов на плоскости.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_supported<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`start_entity_discovery<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialPlaneTrackingCapability_method_is_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание плоскости.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the plane entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this plane capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
