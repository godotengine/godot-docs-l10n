:github_url: hide

.. _class_OpenXRMarkerTracker:

OpenXRMarkerTracker
===================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于空间实体标记跟踪扩展的空间实体跟踪器。

.. rst-class:: classref-introduction-group

描述
----

用于 OpenXR 空间实体标记跟踪扩展的空间实体跟踪器。这些跟踪器可以识别现实空间中由诸如二维码或 Aruco 码等视觉标记检测到的实体，并将它们的位置映射到虚拟空间。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`bounds_size<class_OpenXRMarkerTracker_property_bounds_size>` | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                               | :ref:`marker_id<class_OpenXRMarkerTracker_property_marker_id>`     | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`marker_type<class_OpenXRMarkerTracker_property_marker_type>` | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_marker_data<class_OpenXRMarkerTracker_method_get_marker_data>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_marker_data<class_OpenXRMarkerTracker_method_set_marker_data>`\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRMarkerTracker_property_bounds_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **bounds_size** = ``Vector2(0, 0)`` :ref:`🔗<class_OpenXRMarkerTracker_property_bounds_size>`

.. rst-class:: classref-property-setget

- |void| **set_bounds_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_bounds_size**\ (\ )

该标记的边界大小。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **marker_id** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_id>`

.. rst-class:: classref-property-setget

- |void| **set_marker_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_marker_id**\ (\ )

该标记的标记 ID，仅适用于 Aruco 和 AprilTag 标记。对于二维码标记，请调用 :ref:`get_marker_data()<class_OpenXRMarkerTracker_method_get_marker_data>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_type:

.. rst-class:: classref-property

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **marker_type** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_type>`

.. rst-class:: classref-property-setget

- |void| **set_marker_type**\ (\ value\: :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>`\ )
- :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ )

标记的类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRMarkerTracker_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ ) |const| :ref:`🔗<class_OpenXRMarkerTracker_method_get_marker_data>`

返回该标记的标记数据。可以返回 :ref:`String<class_String>` 或 :ref:`PackedByteArray<class_PackedByteArray>`\ 。仅适用于基于二维码的标记。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_method_set_marker_data:

.. rst-class:: classref-method

|void| **set_marker_data**\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRMarkerTracker_method_set_marker_data>`

设置该标记的标记数据。

\ **注意：**\ 该数据只能由标记发现逻辑设置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
