:github_url: hide

.. _class_OpenXRSpatialComponentBounded3DList:

OpenXRSpatialComponentBounded3DList
===================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries bounded3d result data.

.. rst-class:: classref-introduction-group

描述
----

Object for storing the queries 3d bounding box result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_center_pose<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_size<class_OpenXRSpatialComponentBounded3DList_method_get_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialComponentBounded3DList_method_get_center_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_center_pose**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_center_pose>`

Returns the center of our bounding box for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentBounded3DList_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentBounded3DList_method_get_size>`

Returns the size of our bounding box for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
