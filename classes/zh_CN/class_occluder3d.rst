:github_url: hide

.. _class_Occluder3D:

Occluder3D
==========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`ArrayOccluder3D<class_ArrayOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>`, :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`, :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`SphereOccluder3D<class_SphereOccluder3D>`

用于与 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 中的遮挡剔除一起使用的遮挡物形状资源。

.. rst-class:: classref-introduction-group

描述
----

**Occluder3D** 存储一个遮挡器形状，可供引擎的遮挡剔除系统使用。

有关设置遮挡剔除的说明，请参阅 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文档。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`遮挡剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_Occluder3D_method_get_indices>`\ (\ ) |const|   |
   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_Occluder3D_method_get_vertices>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Occluder3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_indices>`

返回该遮挡器形状的顶点索引。

.. rst-class:: classref-item-separator

----

.. _class_Occluder3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_vertices>`

返回该遮挡器形状的顶点位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
