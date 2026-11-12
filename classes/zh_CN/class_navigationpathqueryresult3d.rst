:github_url: hide

.. _class_NavigationPathQueryResult3D:

NavigationPathQueryResult3D
===========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 3D 寻路查询的结果。

.. rst-class:: classref-introduction-group

描述
----

这个类存储的是向 :ref:`NavigationServer3D<class_NavigationServer3D>` 进行 3D 导航路径查询的结果。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationPathQueryObject <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`path<class_NavigationPathQueryResult3D_property_path>`                     | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`path_length<class_NavigationPathQueryResult3D_property_path_length>`       | ``0.0``                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`path_owner_ids<class_NavigationPathQueryResult3D_property_path_owner_ids>` | ``PackedInt64Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]  | :ref:`path_rids<class_NavigationPathQueryResult3D_property_path_rids>`           | ``[]``                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`path_types<class_NavigationPathQueryResult3D_property_path_types>`         | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------+
   | |void| | :ref:`reset<class_NavigationPathQueryResult3D_method_reset>`\ (\ ) |
   +--------+--------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_NavigationPathQueryResult3D_PathSegmentType:

.. rst-class:: classref-enumeration

enum **PathSegmentType**: :ref:`🔗<enum_NavigationPathQueryResult3D_PathSegmentType>`

.. _class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_REGION:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult3D_PathSegmentType>` **PATH_SEGMENT_TYPE_REGION** = ``0``

这一段路径穿过了某个地区。

.. _class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult3D_PathSegmentType>` **PATH_SEGMENT_TYPE_LINK** = ``1``

这一段路径穿过了某个链接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationPathQueryResult3D_property_path:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **path** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_path**\ (\ )

导航查询的路径数组结果。所有的路径数组位置都使用全局坐标。未自定义查询参数时，与 :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>` 返回的路径相同。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_length**\ (\ )

返回路径的长度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_owner_ids:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **path_owner_ids** = ``PackedInt64Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_owner_ids>`

.. rst-class:: classref-property-setget

- |void| **set_path_owner_ids**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_path_owner_ids**\ (\ )

管理路径上的各个点所经过的地区和链接的 :ref:`Object<class_Object>` 的 ``ObjectID``\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_rids:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **path_rids** = ``[]`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_rids>`

.. rst-class:: classref-property-setget

- |void| **set_path_rids**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_path_rids**\ (\ )

路径上的各个点所经过的地区和链接的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_types:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **path_types** = ``PackedInt32Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_types>`

.. rst-class:: classref-property-setget

- |void| **set_path_types**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_path_types**\ (\ )

路径上的各个点所经过的导航图元类型（地区或链接）。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationPathQueryResult3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_NavigationPathQueryResult3D_method_reset>`

将结果对象重置为其初始状态。这对于在多次查询中重复使用该对象是很有用的。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
