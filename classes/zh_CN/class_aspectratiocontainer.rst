:github_url: hide

.. _class_AspectRatioContainer:

AspectRatioContainer
====================

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

保留子控件长宽比的容器。

.. rst-class:: classref-introduction-group

描述
----

一种容器类型，它以一种在调整容器大小时自动保持其比例的方式排列其子控件。当容器具有动态大小，并且子节点必须相应地调整其大小而不丢失其长宽比时很有用。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_horizontal<class_AspectRatioContainer_property_alignment_horizontal>` | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_vertical<class_AspectRatioContainer_property_alignment_vertical>`     | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                     | :ref:`ratio<class_AspectRatioContainer_property_ratio>`                               | ``1.0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`     | :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`                 | ``2``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AspectRatioContainer_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_AspectRatioContainer_StretchMode>`

.. _class_AspectRatioContainer_constant_STRETCH_WIDTH_CONTROLS_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_WIDTH_CONTROLS_HEIGHT** = ``0``

子控件的高度会根据容器的宽度自动调整。

.. _class_AspectRatioContainer_constant_STRETCH_HEIGHT_CONTROLS_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_HEIGHT_CONTROLS_WIDTH** = ``1``

子控件的宽度会根据容器的高度自动调整。

.. _class_AspectRatioContainer_constant_STRETCH_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_FIT** = ``2``

子控件的边界矩形会自动调整以适应容器，同时保持长宽比。

.. _class_AspectRatioContainer_constant_STRETCH_COVER:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_COVER** = ``3``

子控件的宽度和高度被自动调整，以使其边框覆盖容器的整个区域，同时保持长宽比。

当子控件的边界矩形超过容器的大小，并且 :ref:`Control.clip_contents<class_Control_property_clip_contents>` 被启用时，这允许仅显示受其自身边界矩形限制的容器区域。

.. rst-class:: classref-item-separator

----

.. _enum_AspectRatioContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_AspectRatioContainer_AlignmentMode>`

.. _class_AspectRatioContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

将子控件与容器的开头对齐（左侧或顶部）。

.. _class_AspectRatioContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

使子控件与容器的中心对齐。

.. _class_AspectRatioContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

将子控件与容器的末端对齐（右侧或底部）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AspectRatioContainer_property_alignment_horizontal:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_horizontal** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_horizontal**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_horizontal**\ (\ )

指定子控件的水平相对位置。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_alignment_vertical:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_vertical** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_vertical**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_vertical**\ (\ )

指定子控件的垂直相对位置。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``1.0`` :ref:`🔗<class_AspectRatioContainer_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

对子控件强制实施的长宽比。这是宽度除以高度。这个比例取决于 :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_AspectRatioContainer_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`\ )
- :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **get_stretch_mode**\ (\ )

用来对齐子控件的拉伸模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
