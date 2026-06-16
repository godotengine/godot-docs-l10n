:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Реализация логики отслеживания маркеров пространственных объектов.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс обрабатывает расширение пространственного объекта отслеживания маркеров OpenXR.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`

Вызывает :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>` и :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` с объектами маркеров, связанными с ``spatial_context``.

\ ``component_data`` — это :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, которые необходимо обновить для этой возможности маркера.

Если ``next_snapshot_create`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`.

Если ``next_snapshot_query`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание маркеров меток April.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание маркеров Aruco.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание микро-QR-кодов.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

Возвращает ``true``, если текущее устройство поддерживает отслеживание маркеров QR-кода.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`

Вызывает :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` и :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` с объектами-маркерами, связанными с ``spatial_context``.

\ ``component_data`` — это :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`, которые необходимо обнаружить для этой возможности маркера.

Если ``next_snapshot_create`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

Если ``next_snapshot_query`` не равен null, передайте его параметру ``next`` в :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, если он не равен null, вызывается с двумя параметрами, обычно дважды. Первый параметр — это :ref:`RID<class_RID>` снимка обнаружения, а второй параметр — логическое значение, где ``false`` указывает, что снимок обнаружения вот-вот будет обработан, а ``true`` указывает, что снимок обнаружения был обработан и ``component_data`` содержит допустимые данные. Второй вызов пропускается, если возникла ошибка.

Возвращаемый :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` идентичен результату, возвращаемому методом :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
