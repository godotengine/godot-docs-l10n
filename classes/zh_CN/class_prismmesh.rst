:github_url: hide

.. _class_PrismMesh:

PrismMesh
=========

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示棱柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-introduction-group

描述
----

表示棱柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`left_to_right<class_PrismMesh_property_left_to_right>`       | ``0.5``              |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_PrismMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_PrismMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_PrismMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_PrismMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PrismMesh_property_left_to_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **left_to_right** = ``0.5`` :ref:`🔗<class_PrismMesh_property_left_to_right>`

.. rst-class:: classref-property-setget

- |void| **set_left_to_right**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_left_to_right**\ (\ )

上边缘沿 X 轴的位移。0.0 将边缘定位在左下边缘的正上方。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_PrismMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

棱镜的大小。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

沿 Z 轴添加的边循环数。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

沿 Y 轴添加的边循环数。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

沿 X 轴添加的边循环数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
