:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**继承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

平面 2D 多边形形状，用于 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的遮挡剔除。

.. rst-class:: classref-introduction-group

描述
----

**PolygonOccluder3D** 储存的是多边形形状，可用于引擎的遮挡剔除系统。在编辑器中选中具有 **PolygonOccluder3D** 的 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 时，3D 视口的顶部会出现用于添加/移除顶点的编辑器。所有的顶点都必须在相同的 2D 平面中放置，也就是说，使用单个 **PolygonOccluder3D** 是无法任意创建 3D 形状的。要将任意 3D 形状作为遮挡器，请改用 :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` 或 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的烘焙功能。

设置遮挡剔除的步骤见 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文档。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`遮挡剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

用于遮挡剔除的多边形。既可以是凸多边形，也可以是凹多边形，但只有让顶点的数量尽可能地少，才能够让性能最大化。

多边形必须\ *不存在*\ 相交的线。否则三角形化会失败（同时会输出错误信息）。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
