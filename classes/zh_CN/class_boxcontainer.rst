:github_url: hide

.. _class_BoxContainer:

BoxContainer
============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HBoxContainer<class_HBoxContainer>`, :ref:`VBoxContainer<class_VBoxContainer>`

将子控件横向或纵向排列的容器。

.. rst-class:: classref-introduction-group

描述
----

将子控件横向或纵向排列的容器，会在这些控件的最小尺寸发生改变时自动重排。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` | :ref:`alignment<class_BoxContainer_property_alignment>`       | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`reverse_sort<class_BoxContainer_property_reverse_sort>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`vertical<class_BoxContainer_property_vertical>`         | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`add_spacer<class_BoxContainer_method_add_spacer>`\ (\ begin\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`separation<class_BoxContainer_theme_constant_separation>` | ``4`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_BoxContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_BoxContainer_AlignmentMode>`

.. _class_BoxContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

子控件会被排列在该容器的开头，如果是垂直朝向则为顶部，如果是水平朝向则为左侧（RTL 布局时为右侧）。

.. _class_BoxContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

子控件会在该容器里居中。

.. _class_BoxContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

子控件会被排列在该容器的末尾，如果是垂直朝向则为底部，如果是水平朝向则为右侧（RTL 布局时为左侧）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoxContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_BoxContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **get_alignment**\ (\ )

该容器子节点的对齐方式（必须是 :ref:`ALIGNMENT_BEGIN<class_BoxContainer_constant_ALIGNMENT_BEGIN>`\ 、\ :ref:`ALIGNMENT_CENTER<class_BoxContainer_constant_ALIGNMENT_CENTER>`\ 、\ :ref:`ALIGNMENT_END<class_BoxContainer_constant_ALIGNMENT_END>` 之一）。

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_reverse_sort:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_sort** = ``false`` :ref:`🔗<class_BoxContainer_property_reverse_sort>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_sort**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_sort**\ (\ )

If ``true``, the **BoxContainer** will arrange its children in reverse order.

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_BoxContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果为 ``true``\ ，则该 **BoxContainer** 会将子节点垂直排列，否则会水平排列。

使用 :ref:`HBoxContainer<class_HBoxContainer>` 和 :ref:`VBoxContainer<class_VBoxContainer>` 时无法改变。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BoxContainer_method_add_spacer:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **add_spacer**\ (\ begin\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoxContainer_method_add_spacer>`

添加 :ref:`Control<class_Control>` 节点作为间隔。如果 ``begin`` 为 ``true``\ ，则会将该 :ref:`Control<class_Control>` 节点添加到所有其他节点之前。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_BoxContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``4`` :ref:`🔗<class_BoxContainer_theme_constant_separation>`

**BoxContainer** 元素之间的距离，单位为像素。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
