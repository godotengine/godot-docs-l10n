:github_url: hide

.. _class_PathFollow2D:

PathFollow2D
============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

对 :ref:`Path2D<class_Path2D>` 的点取样的取样器。

.. rst-class:: classref-introduction-group

描述
----

这个节点接受它的父节点 :ref:`Path2D<class_Path2D>` 并返回其中一个点的坐标，需要给定到第一个顶点的距离。

在不编码移动图案的情况下，它可以使其他节点遵循一条路径。为此，节点必须是该节点的子节点。在该节点中设置 :ref:`progress<class_PathFollow2D_property_progress>` 后，后代节点会随之移动。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cubic_interp<class_PathFollow2D_property_cubic_interp>`     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`h_offset<class_PathFollow2D_property_h_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_PathFollow2D_property_loop>`                     | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress<class_PathFollow2D_property_progress>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`progress_ratio<class_PathFollow2D_property_progress_ratio>` | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`rotates<class_PathFollow2D_property_rotates>`               | ``true`` |
   +---------------------------+-------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`v_offset<class_PathFollow2D_property_v_offset>`             | ``0.0``  |
   +---------------------------+-------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PathFollow2D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow2D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

如果为 ``true``\ ，则两个缓存点之间的位置将进行三次插值，否则将线性插值。

沿着 :ref:`Path2D<class_Path2D>` 的 :ref:`Curve2D<class_Curve2D>` 的点在使用前被预先计算，以更快的计算速度。然后在两个相邻的缓存点之间计算请求偏移量的点。这可能会出现一个问题，如果曲线做急转弯，因为缓存点可能不跟随曲线足够近。

有两种方法可以解决这个问题：要么增加缓存点的数量，增加内存消耗，要么在两个点之间进行三次插值，但代价是（稍微）降低计算速度。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

节点沿曲线的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow2D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

如果为 ``true``\ ，路径长度以外的任何偏移都将环绕，而不是在结束时停止。对于循环路径使用它。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

沿路径走过的距离，单位为像素。改变这个值会将这个节点的位置设置为路径上的某个点。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

沿路径走过的距离，用 0.0（第一个顶点）到 1.0（最后一个顶点）范围内的数字表示。这只是表示路径内偏移量的另一种方式，提供的偏移量在内部会与路径的长度相乘。

\ **PathFollow2D** 为场景树中 :ref:`Path2D<class_Path2D>` 的子节点时才能够设置和获取，该 :ref:`Path2D<class_Path2D>` 中还需要存在长度非零的 :ref:`Curve2D<class_Curve2D>`\ 。否则设置该字段会输出错误，获取该字段则会返回 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_rotates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotates** = ``true`` :ref:`🔗<class_PathFollow2D_property_rotates>`

.. rst-class:: classref-property-setget

- |void| **set_rotates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotating**\ (\ )

如果为 ``true``\ ，则该节点会跟随路径旋转，+X 方向朝向路径前方。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow2D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow2D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

节点垂直于曲线的偏移量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
