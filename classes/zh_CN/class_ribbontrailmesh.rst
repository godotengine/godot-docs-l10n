:github_url: hide

.. _class_RibbonTrailMesh:

RibbonTrailMesh
===============

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表竖直丝带形状的 :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ ，丝带的宽度可变。

.. rst-class:: classref-introduction-group

描述
----

**RibbonTrailMesh** 代表竖直条带形状的网格，条带的宽度可变。条带由若干扁平或十字形的分节构成，每一节的长度 :ref:`section_length<class_RibbonTrailMesh_property_section_length>` 和分段数 :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` 都相同。条带会沿着总长度对 :ref:`curve<class_RibbonTrailMesh_property_curve>` 进行采样，这样这条曲线就决定了条带沿长度的大小。

该基本网格常用于粒子拖尾。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`3D 粒子拖尾 <../tutorials/3d/particles/trails>`

- :doc:`粒子系统（3D） <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Curve<class_Curve>`                | :ref:`curve<class_RibbonTrailMesh_property_curve>`                       |         |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`section_length<class_RibbonTrailMesh_property_section_length>`     | ``0.2`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`section_segments<class_RibbonTrailMesh_property_section_segments>` | ``3``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                    | :ref:`sections<class_RibbonTrailMesh_property_sections>`                 | ``5``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`Shape<enum_RibbonTrailMesh_Shape>` | :ref:`shape<class_RibbonTrailMesh_property_shape>`                       | ``1``   |
   +------------------------------------------+--------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                | :ref:`size<class_RibbonTrailMesh_property_size>`                         | ``1.0`` |
   +------------------------------------------+--------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_RibbonTrailMesh_Shape:

.. rst-class:: classref-enumeration

enum **Shape**: :ref:`🔗<enum_RibbonTrailMesh_Shape>`

.. _class_RibbonTrailMesh_constant_SHAPE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_FLAT** = ``0``

将网格指定为单个扁平的面。

.. _class_RibbonTrailMesh_constant_SHAPE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **SHAPE_CROSS** = ``1``

将网格指定为两个互相垂直的面，形成十字形。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RibbonTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_RibbonTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

决定条带沿长度的大小。通过将基础大小 :ref:`size<class_RibbonTrailMesh_property_size>` 乘以这条曲线上给定位置对应的值，就可以得到分节上某一段的大小。如果得到的值小于 ``0``\ ，则对应的面会被翻转。应当为单位 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_RibbonTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

条带中一节的长度。

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_section_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_segments** = ``3`` :ref:`🔗<class_RibbonTrailMesh_property_section_segments>`

.. rst-class:: classref-property-setget

- |void| **set_section_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_segments**\ (\ )

条带中一节的段数。每一段的大小是根据对 :ref:`curve<class_RibbonTrailMesh_property_curve>` 的采样确定的。更高的值会生成更细致的条带，但以性能为代价。

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_RibbonTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

条带中分节的数量。

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_shape:

.. rst-class:: classref-property

:ref:`Shape<enum_RibbonTrailMesh_Shape>` **shape** = ``1`` :ref:`🔗<class_RibbonTrailMesh_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape<enum_RibbonTrailMesh_Shape>`\ )
- :ref:`Shape<enum_RibbonTrailMesh_Shape>` **get_shape**\ (\ )

决定条带的形状。

.. rst-class:: classref-item-separator

----

.. _class_RibbonTrailMesh_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_RibbonTrailMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

条带的基础大小。通过将这个大小乘以 :ref:`curve<class_RibbonTrailMesh_property_curve>` 上给定位置对应的值，就可以得到分节上某一段的大小。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
