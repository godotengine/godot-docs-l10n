:github_url: hide

.. _class_Separator:

Separator
=========

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HSeparator<class_HSeparator>`, :ref:`VSeparator<class_VSeparator>`

分隔线的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

分隔线的抽象基类，用于分隔其他控件。\ **Separator** 只提供视觉上的分隔，通常用 :ref:`StyleBoxLine<class_StyleBoxLine>` 绘制。

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>`           | :ref:`separation<class_Separator_theme_constant_separation>` | ``0`` |
   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`separator<class_Separator_theme_style_separator>`      |       |
   +---------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_Separator_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``0`` :ref:`🔗<class_Separator_theme_constant_separation>`

分隔器所覆盖区域的大小。其作用类似于最小宽度/高度。

.. rst-class:: classref-item-separator

----

.. _class_Separator_theme_style_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **separator** :ref:`🔗<class_Separator_theme_style_separator>`

分隔线的样式。与 :ref:`StyleBoxLine<class_StyleBoxLine>` 一起使用效果最好（请记住为 :ref:`VSeparator<class_VSeparator>` 启用 :ref:`StyleBoxLine.vertical<class_StyleBoxLine_property_vertical>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
