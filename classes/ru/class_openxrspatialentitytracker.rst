:github_url: hide

.. _class_OpenXRSpatialEntityTracker:

OpenXRSpatialEntityTracker
==========================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, :ref:`OpenXRMarkerTracker<class_OpenXRMarkerTracker>`, :ref:`OpenXRPlaneTracker<class_OpenXRPlaneTracker>`

Базовый класс для трекеров положения, управляемых расширениями пространственных объектов OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Это трекеры, созданные и управляемые расширениями пространственных объектов OpenXR, которые предоставляют доступ к определённым данным, связанным с пространственными объектами OpenXR. Они всегда будут иметь тип ``TRACKER_ANCHOR``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                           | :ref:`entity<class_OpenXRSpatialEntityTracker_property_entity>`                                 | ``RID()``                                                         |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`spatial_tracking_state<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>` | ``2``                                                             |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                                   | type                                                                                            | ``8`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed:

.. rst-class:: classref-signal

**spatial_tracking_state_changed**\ (\ spatial_tracking_state\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed>`

.. container:: contribute

	There is currently no description for this signal. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRSpatialEntityTracker_EntityTrackingState:

.. rst-class:: classref-enumeration

enum **EntityTrackingState**: :ref:`🔗<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_STOPPED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_STOPPED** = ``1``

Эта привязка перестала отслеживать.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_PAUSED** = ``2``

Отслеживание на данный момент приостановлено.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_TRACKING** = ``3``

Эта привязка сейчас отслеживается.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRSpatialEntityTracker_property_entity:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **entity** = ``RID()`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_entity>`

.. rst-class:: classref-property-setget

- |void| **set_entity**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_entity**\ (\ )

Пространственный объект, связанный с этим трекером.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_property_spatial_tracking_state:

.. rst-class:: classref-property

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **spatial_tracking_state** = ``2`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>`

.. rst-class:: classref-property-setget

- |void| **set_spatial_tracking_state**\ (\ value\: :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`\ )
- :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_spatial_tracking_state**\ (\ )

Состояние пространственного отслеживания для этого трекера.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
