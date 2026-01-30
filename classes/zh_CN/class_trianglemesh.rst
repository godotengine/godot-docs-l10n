:github_url: hide

.. _class_TriangleMesh:

TriangleMesh
============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于高效、无物理交互查询的三角形几何体。

.. rst-class:: classref-introduction-group

描述
----

在三角形几何体周围创建一个包围体积层次（Bounding Volume Hierarchy，BVH）树结构。

三角形 BVH 树可以用于高效的交互查询，无需涉及物理引擎。

例如，在编辑器工具中可以用来根据鼠标光标位置选择具有复杂形状的对象。

\ **性能：**\ 为复杂几何体创建 BVH 树是一个缓慢的过程，最好在后台线程中进行。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`create_from_faces<class_TriangleMesh_method_create_from_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_TriangleMesh_method_get_faces>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_ray<class_TriangleMesh_method_intersect_ray>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_segment<class_TriangleMesh_method_intersect_segment>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TriangleMesh_method_create_from_faces:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **create_from_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_TriangleMesh_method_create_from_faces>`

根据面数组创建 BVH 树。输入的 ``faces`` 数组中的每三个顶点代表一个三角形（面）。

如果树成功构建则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_TriangleMesh_method_get_faces>`

返回几何体中所有面的副本。数组中每三个顶点代表一个三角形（面）。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_ray>`

检测与射线的交点，射线从 ``begin`` 开始，朝向 ``dir``\ ，无限延伸。

如果与某个三角形存在交点，则返回一个 :ref:`Dictionary<class_Dictionary>`\ ，其中包含以下字段：

\ ``position``\ ：相交三角形上的位置。

\ ``normal``\ ：相交三角形的法线。

\ ``face_index``\ ：相交三角形的索引。

如果不存在交点则返回空 :ref:`Dictionary<class_Dictionary>`\ 。

另见 :ref:`intersect_segment()<class_TriangleMesh_method_intersect_segment>`\ ，与此方法类似，但使用的是线段，长度有限。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_segment:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_segment**\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_segment>`

检测与线段的交点，线段从 ``begin`` 开始，到 ``end`` 结束。

如果与某个三角形存在交点，则返回一个 :ref:`Dictionary<class_Dictionary>`\ ，其中包含以下字段：

\ ``position``\ ：相交三角形上的位置。

\ ``normal``\ ：相交三角形的法线。

\ ``face_index``\ ：相交三角形的索引。

如果不存在交点则返回空 :ref:`Dictionary<class_Dictionary>`\ 。

另见 :ref:`intersect_ray()<class_TriangleMesh_method_intersect_ray>`\ ，与此方法类似，但使用的是射线，长度无限。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
