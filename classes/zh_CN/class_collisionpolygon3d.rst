:github_url: hide

.. _class_CollisionPolygon3D:

CollisionPolygon3D
==================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

向 :ref:`CollisionObject3D<class_CollisionObject3D>` 父级提供加厚多边形形状（角柱体）的节点。

.. rst-class:: classref-introduction-group

描述
----

向 :ref:`CollisionObject3D<class_CollisionObject3D>` 父级提供加厚多边形形状（角柱体）的节点，并允许对其编辑。该多边形可以是凹多边形，也可以是凸多边形。能够为 :ref:`Area3D<class_Area3D>` 提供检测形状，也能够将 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 变为实体。

\ **警告：**\ 非均匀缩放的 :ref:`CollisionShape3D<class_CollisionShape3D>` 可能不会按预期运行。请确保在所有轴上保持其缩放相同并改为调整其形状资源。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`debug_color<class_CollisionPolygon3D_property_debug_color>` | ``Color(0, 0, 0, 0)``    |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`debug_fill<class_CollisionPolygon3D_property_debug_fill>`   | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`depth<class_CollisionPolygon3D_property_depth>`             | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon3D_property_disabled>`       | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`margin<class_CollisionPolygon3D_property_margin>`           | ``0.04``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon3D_property_polygon>`         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CollisionPolygon3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionPolygon3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

碰撞形状的颜色，在编辑器中显示，勾选编辑器顶部的 **调试 > 显示碰撞形状** 时也会在运行项目时显示。

\ **注意：**\ 默认值为 :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`\ 。这里记录的 ``Color(0, 0, 0, 0)`` 值是占位符，不是实际的默认调试颜色。

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionPolygon3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

如果为 ``true``\ ，则显示形状时除了显示线框外还会显示填充颜色。

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CollisionPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

产生的碰撞沿着与 2D 多边形垂直的任意方向深入的长度。

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

如果为 ``true``\ ，则不会产生碰撞。该属性应使用 :ref:`Object.set_deferred()<class_Object_method_set_deferred>` 进行更改。

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_CollisionPolygon3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

生成的 :ref:`Shape3D<class_Shape3D>` 的碰撞边距。详见 :ref:`Shape3D.margin<class_Shape3D_property_margin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

在局部 XY 平面中定义 2D 多边形的顶点数组。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
