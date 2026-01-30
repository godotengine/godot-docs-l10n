:github_url: hide

.. _class_RootMotionView:

RootMotionView
==============

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

仅限编辑器的帮助程序，用于在 :ref:`AnimationMixer<class_AnimationMixer>` 中设置根运动。

.. rst-class:: classref-introduction-group

描述
----

*根运动*\ 是指一种动画技术，通过使用网格的骨架为角色提供冲量。在处理 3D 动画时，动画师的一种流行技术是使用根骨架骨骼为骨架的其余部分提供运动。这允许以脚步实际与下面的地板匹配的方式对角色进行动画处理。它还允许在过场动画期间与对象进行精确交互。另见 :ref:`AnimationMixer<class_AnimationMixer>`\ 。

\ **注意：**\ **RootMotionView** 仅在编辑器中可见。在运行的项目中将自动隐藏。

.. rst-class:: classref-introduction-group

教程
----

- `使用 AnimationTree - 根运动 <../tutorials/animation/animation_tree.html#root-motion>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`animation_path<class_RootMotionView_property_animation_path>` | ``NodePath("")``          |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`cell_size<class_RootMotionView_property_cell_size>`           | ``1.0``                   |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`       | :ref:`color<class_RootMotionView_property_color>`                   | ``Color(0.5, 0.5, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`radius<class_RootMotionView_property_radius>`                 | ``10.0``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`bool<class_bool>`         | :ref:`zero_y<class_RootMotionView_property_zero_y>`                 | ``true``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RootMotionView_property_animation_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **animation_path** = ``NodePath("")`` :ref:`🔗<class_RootMotionView_property_animation_path>`

.. rst-class:: classref-property-setget

- |void| **set_animation_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_path**\ (\ )

用作根运动的基的 :ref:`AnimationMixer<class_AnimationMixer>` 节点的路径。

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_RootMotionView_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

以 3D 单位表示的网格单元大小。

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0.5, 0.5, 1, 1)`` :ref:`🔗<class_RootMotionView_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

网格的颜色。

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_RootMotionView_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

以 3D 单位表示的网格半径。随着与原点的距离增加，网格的不透明度将逐渐消失，直到达到此半径 :ref:`radius<class_RootMotionView_property_radius>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_zero_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **zero_y** = ``true`` :ref:`🔗<class_RootMotionView_property_zero_y>`

.. rst-class:: classref-property-setget

- |void| **set_zero_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_zero_y**\ (\ )

如果为 ``true``\ ，则网格的点都将位于相同的 Y 坐标上（\ *local* Y = 0）。如果 ``false``\ ，则保留点的原始 Y 坐标。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
