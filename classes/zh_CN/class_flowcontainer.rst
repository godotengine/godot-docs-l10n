:github_url: hide

.. _class_FlowContainer:

FlowContainer
=============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HFlowContainer<class_HFlowContainer>`, :ref:`VFlowContainer<class_VFlowContainer>`

将子控件横向或纵向排列并在边界处换行的容器。

.. rst-class:: classref-introduction-group

描述
----

将子控件横向或纵向排列并在边界处换行的容器。类似于书本中文字在一行中写不下以后的换行方式。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`                 | :ref:`alignment<class_FlowContainer_property_alignment>`                     | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` | :ref:`last_wrap_alignment<class_FlowContainer_property_last_wrap_alignment>` | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`reverse_fill<class_FlowContainer_property_reverse_fill>`               | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`vertical<class_FlowContainer_property_vertical>`                       | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_line_count<class_FlowContainer_method_get_line_count>`\ (\ ) |const| |
   +-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_FlowContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_FlowContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_FlowContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_FlowContainer_AlignmentMode>`

.. _class_FlowContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

子控件会被排列在该容器的开头，如果是垂直朝向则为顶部，如果是水平朝向则为左侧（RTL 布局时为右侧）。

.. _class_FlowContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

子控件会在该容器里居中。

.. _class_FlowContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

子控件会被排列在该容器的末尾，如果是垂直朝向则为底部，如果是水平朝向则为右侧（RTL 布局时为左侧）。

.. rst-class:: classref-item-separator

----

.. _enum_FlowContainer_LastWrapAlignmentMode:

.. rst-class:: classref-enumeration

enum **LastWrapAlignmentMode**: :ref:`🔗<enum_FlowContainer_LastWrapAlignmentMode>`

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_INHERIT** = ``0``

最后部分填充的行或列将按照 :ref:`alignment<class_FlowContainer_property_alignment>` 与前一行或前一列对齐。

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_BEGIN** = ``1``

最后部分填充的行或列将会与前一行或前一列的开头对齐。

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_CENTER** = ``2``

最后部分填充的行或列将会与前一行或前一列的中心对齐。

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_END** = ``3``

最后部分填充的行或列将会与前一行或前一列的末尾对齐。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FlowContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **get_alignment**\ (\ )

该容器子节点的对齐方式（必须是 :ref:`ALIGNMENT_BEGIN<class_FlowContainer_constant_ALIGNMENT_BEGIN>`\ 、\ :ref:`ALIGNMENT_CENTER<class_FlowContainer_constant_ALIGNMENT_CENTER>`\ 、\ :ref:`ALIGNMENT_END<class_FlowContainer_constant_ALIGNMENT_END>` 之一）。

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_last_wrap_alignment:

.. rst-class:: classref-property

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **last_wrap_alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_last_wrap_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_last_wrap_alignment**\ (\ value\: :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>`\ )
- :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **get_last_wrap_alignment**\ (\ )

最后一个未填满的行/列的对齐方式（必须是 :ref:`LAST_WRAP_ALIGNMENT_INHERIT<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT>`\ 、\ :ref:`LAST_WRAP_ALIGNMENT_BEGIN<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN>`\ 、\ :ref:`LAST_WRAP_ALIGNMENT_CENTER<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER>`\ 、\ :ref:`LAST_WRAP_ALIGNMENT_END<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END>` 之一）。

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_reverse_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_fill** = ``false`` :ref:`🔗<class_FlowContainer_property_reverse_fill>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_fill**\ (\ )

如果为 ``true`` ，则翻转填充方向。水平的 **FlowContainer** 会从下往上一行行填充，垂直的 **FlowContainer** 会从右往左一列列填充。

如果使用的是垂直的 **FlowContainer** 和从右至左的 :ref:`Control.layout_direction<class_Control_property_layout_direction>`\ ，则会从左往右一列列填充。

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_FlowContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果为 ``true``\ ，则 **FlowContainer** 将垂直排列子节点，而不是水平排列。

使用 :ref:`HFlowContainer<class_HFlowContainer>` 和 :ref:`VFlowContainer<class_VFlowContainer>` 时不能改变。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FlowContainer_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_FlowContainer_method_get_line_count>`

返回当前的行数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_FlowContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_h_separation>`

子节点的水平分隔量。

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_v_separation>`

子节点的垂直分隔量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
