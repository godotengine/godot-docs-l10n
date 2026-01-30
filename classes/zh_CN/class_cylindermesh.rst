:github_url: hide

.. _class_CylinderMesh:

CylinderMesh
============

**继承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示圆柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。

.. rst-class:: classref-introduction-group

描述
----

表示圆柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的类。通过将 :ref:`top_radius<class_CylinderMesh_property_top_radius>` 或 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` 属性设置为 ``0.0``\ ，这个类可以用来创建圆锥体。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`     | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`           | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_CylinderMesh_property_cap_top>`                 | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderMesh_property_height>`                   | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CylinderMesh_property_radial_segments>` | ``64``   |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CylinderMesh_property_rings>`                     | ``4``    |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`top_radius<class_CylinderMesh_property_top_radius>`           | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CylinderMesh_property_bottom_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **bottom_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_bottom_radius>`

.. rst-class:: classref-property-setget

- |void| **set_bottom_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bottom_radius**\ (\ )

圆柱体的底部半径。如果设置为 ``0.0``\ ，则不会生成底面，呈圆锥状。另见 :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

如果为 ``true``\ ，则在圆柱体底部生成一个盖子。这可以设置为 ``false`` 以在相机从未看到盖子时加速生成和渲染。另见 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`\ 。

\ **注意：**\ 如果 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` 为 ``0.0``\ ，即使 :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>` 为 ``true``\ ，盖子生成也会始终被跳过。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

如果为 ``true``\ ，则在圆柱体顶部生成一个盖子。这可以设置为 ``false`` 以在相机从未看到盖子时加速生成和渲染。另见 :ref:`top_radius<class_CylinderMesh_property_top_radius>`\ 。

\ **注意：**\ 如果 :ref:`top_radius<class_CylinderMesh_property_top_radius>` 为 ``0.0``\ ，即使 :ref:`cap_top<class_CylinderMesh_property_cap_top>` 为 ``true``\ ，盖子生成也会始终被跳过。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

圆柱体的全高。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CylinderMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

圆柱体上的径向段数。更高的值会生成更细致的圆柱体或圆锥体，但以性能为代价。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``4`` :ref:`🔗<class_CylinderMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

沿圆柱体的高度的边缘环的数量。除非使用着色器或程序网格工具来更改顶点数据，否则更改 :ref:`rings<class_CylinderMesh_property_rings>` 不会影响显示，\ :ref:`rings<class_CylinderMesh_property_rings>` 应保持其默认值。较高的值会产生更多的细分，这可用于使用着色器或程序式网格工具创建更平滑的显示效果，但以性能为代价。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_top_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **top_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_top_radius>`

.. rst-class:: classref-property-setget

- |void| **set_top_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_top_radius**\ (\ )

圆柱体的顶部半径。如果设置为 ``0.0``\ ，则不会生成顶面，呈圆锥状。另见 :ref:`cap_top<class_CylinderMesh_property_cap_top>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
