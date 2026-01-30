:github_url: hide

.. _class_ArrayOccluder3D:

ArrayOccluder3D
===============

**继承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于与 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 中的遮挡剔除一起使用的 3D 多边形形状。

.. rst-class:: classref-introduction-group

描述
----

**ArrayOccluder3D** 存储一个任意的 3D 多边形形状，可供引擎的遮挡剔除系统使用。这类似于 :ref:`ArrayMesh<class_ArrayMesh>`\ ，但适用于遮挡物。

有关设置遮挡剔除的说明，请参阅 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文档。

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
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`indices<class_ArrayOccluder3D_property_indices>`   | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_ArrayOccluder3D_property_vertices>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_arrays<class_ArrayOccluder3D_method_set_arrays>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ArrayOccluder3D_property_indices:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **indices** = ``PackedInt32Array()`` :ref:`🔗<class_ArrayOccluder3D_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ )

该遮挡物的索引位置。索引确定 :ref:`vertices<class_ArrayOccluder3D_property_vertices>` 数组中的哪些点应被绘制，以及以哪种顺序绘制。

\ **注意：**\ 该遮挡物总是在设置这个值后更新。如果程序化创建遮挡物，请考虑改用 :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` 来避免在创建时更新遮挡物两次。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ArrayOccluder3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_ArrayOccluder3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

该遮挡物在局部 3D 坐标中的顶点位置。

\ **注意：**\ 该遮挡物总是在设置这个值后更新。如果程序化创建遮挡物，请考虑改用 :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` 来避免在创建时更新遮挡物两次。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ArrayOccluder3D_method_set_arrays:

.. rst-class:: classref-method

|void| **set_arrays**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_ArrayOccluder3D_method_set_arrays>`

设置 :ref:`indices<class_ArrayOccluder3D_property_indices>` 和 :ref:`vertices<class_ArrayOccluder3D_property_vertices>`\ ，同时会在两个值都被设置后仅更新一次最终遮挡物。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
