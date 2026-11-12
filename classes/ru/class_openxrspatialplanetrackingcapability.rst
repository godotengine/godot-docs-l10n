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

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` | :ref:`get_built_in_tracking_state<class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_supported<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`start_built_in_tracking<class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`                   | :ref:`start_entity_discovery<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`stop_built_in_tracking<class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking>`\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state:

.. rst-class:: classref-method

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **get_built_in_tracking_state**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state>`

Returns the state of the built-in tracking system.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_is_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание плоскости.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_built_in_tracking**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking>`

Starts the built-in plane tracking logic. This will fail if built-in tracking is already enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`

Вызывает :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` и :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` с объектами плоскости, связанными с ``spatial_context``.

\ ``component_data`` — это :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, которые необходимо обнаружить для этой возможности плоскости.

Если ``next_snapshot_create`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

Если ``next_snapshot_query`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, если он не равен null, вызывается с двумя параметрами, обычно дважды. Первый параметр — это :ref:`RID<class_RID>` снимка обнаружения, а второй параметр — логическое значение, где ``false`` указывает, что снимок обнаружения вот-вот будет обработан, а ``true`` указывает, что снимок обнаружения был обработан и ``component_data`` содержит допустимые данные. Второй вызов пропускается, если возникла ошибка.

Возвращаемый :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` идентичен результату, возвращаемому методом :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking:

.. rst-class:: classref-method

|void| **stop_built_in_tracking**\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking>`

Stops the built-in plane tracking logic.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
