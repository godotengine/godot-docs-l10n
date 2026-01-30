:github_url: hide

.. _class_OpenXRSpatialQueryResultData:

OpenXRSpatialQueryResultData
============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the main query result data.

.. rst-class:: classref-introduction-group

描述
----

Object for storing the main query result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`. This must always be the first component requested.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_capacity<class_OpenXRSpatialQueryResultData_method_get_capacity>`\ (\ ) |const|                                        |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_entity_id<class_OpenXRSpatialQueryResultData_method_get_entity_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|       |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`get_entity_state<class_OpenXRSpatialQueryResultData_method_get_entity_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialQueryResultData_method_get_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capacity**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_capacity>`

Returns the number of entities that were retrieved.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_entity_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_id>`

Returns the entity id (``XrSpatialEntityIdEXT``) for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_state:

.. rst-class:: classref-method

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_entity_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_state>`

Returns the entity state for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
