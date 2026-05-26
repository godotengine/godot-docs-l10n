:github_url: hide

.. _class_OpenXRSpatialComponentPersistenceList:

OpenXRSpatialComponentPersistenceList
=====================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于存储查询持久化结果数据的对象。

.. rst-class:: classref-introduction-group

描述
----

用于调用 :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` 时存储查询持久化结果数据的对象。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_persistent_state<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_persistent_uuid<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistent_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`

返回该 ``index`` 处实体的持久状态（\ ``XrSpatialPersistenceStateEXT``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_persistent_uuid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`

返回该 ``index`` 处实体的持久 uuid。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
