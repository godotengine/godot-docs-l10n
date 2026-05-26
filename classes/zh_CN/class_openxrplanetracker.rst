:github_url: hide

.. _class_OpenXRPlaneTracker:

OpenXRPlaneTracker
==================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于空间实体平面跟踪扩展的空间实体跟踪器。

.. rst-class:: classref-introduction-group

描述
----

用于 OpenXR 空间实体平面跟踪扩展的空间实体跟踪器。这些跟踪器可以识别现实空间中的实体，例如墙壁、地板、桌子等，并将它们的位置映射到虚拟空间中。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                       | :ref:`bounds_size<class_OpenXRPlaneTracker_property_bounds_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` | :ref:`plane_alignment<class_OpenXRPlaneTracker_property_plane_alignment>` | ``0``             |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                                         | :ref:`plane_label<class_OpenXRPlaneTracker_property_plane_label>`         | ``""``            |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_mesh_data<class_OpenXRPlaneTracker_method_clear_mesh_data>`\ (\ )                                                                                                                                                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`               | :ref:`get_mesh<class_OpenXRPlaneTracker_method_get_mesh>`\ (\ )                                                                                                                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_mesh_offset<class_OpenXRPlaneTracker_method_get_mesh_offset>`\ (\ ) |const|                                                                                                                                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`         | :ref:`get_shape<class_OpenXRPlaneTracker_method_get_shape>`\ (\ thickness\: :ref:`float<class_float>` = 0.01\ )                                                                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_mesh_data<class_OpenXRPlaneTracker_method_set_mesh_data>`\ (\ origin\: :ref:`Transform3D<class_Transform3D>`, vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>` = PackedInt32Array()\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRPlaneTracker_signal_mesh_changed:

.. rst-class:: classref-signal

**mesh_changed**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_signal_mesh_changed>`

当网格数据发生变化，网格实例和碰撞体需要更新时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRPlaneTracker_property_bounds_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **bounds_size** = ``Vector2(0, 0)`` :ref:`🔗<class_OpenXRPlaneTracker_property_bounds_size>`

.. rst-class:: classref-property-setget

- |void| **set_bounds_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_bounds_size**\ (\ )

平面的边界大小。这是一个 2D 大小。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_property_plane_alignment:

.. rst-class:: classref-property

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **plane_alignment** = ``0`` :ref:`🔗<class_OpenXRPlaneTracker_property_plane_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_plane_alignment**\ (\ value\: :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>`\ )
- :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **get_plane_alignment**\ (\ )

该平面在空间中的主要对齐方式。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_property_plane_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **plane_label** = ``""`` :ref:`🔗<class_OpenXRPlaneTracker_property_plane_label>`

.. rst-class:: classref-property-setget

- |void| **set_plane_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plane_label**\ (\ )

该平面的语义标签。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRPlaneTracker_method_clear_mesh_data:

.. rst-class:: classref-method

|void| **clear_mesh_data**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_clear_mesh_data>`

清除该跟踪器的网格数据。仅当需自行处理发现逻辑时才应调用该函数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_mesh**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_get_mesh>`

获取根据网格数据或该平面的边界大小创建的网格。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_mesh_offset:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_mesh_offset**\ (\ ) |const| :ref:`🔗<class_OpenXRPlaneTracker_method_get_mesh_offset>`

获取用于将网格和碰撞形状从我们的姿势偏移以正确显示它们的变换。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ thickness\: :ref:`float<class_float>` = 0.01\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_get_shape>`

获取由网格数据或该平面的边界大小构建的碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_set_mesh_data:

.. rst-class:: classref-method

|void| **set_mesh_data**\ (\ origin\: :ref:`Transform3D<class_Transform3D>`, vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>` = PackedInt32Array()\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_set_mesh_data>`

设置该平面的网格数据。仅当需自行处理发现逻辑时才应调用该方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
