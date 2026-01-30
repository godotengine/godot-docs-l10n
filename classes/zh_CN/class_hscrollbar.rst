:github_url: hide

.. _class_HScrollBar:

HScrollBar
==========

**继承：** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

水平滚动条，从左侧（最小）滚动到右侧（最大）。

.. rst-class:: classref-introduction-group

描述
----

水平滚动条，通常用于为超出控件可见宽度的内容进行导航。这是基于 :ref:`Range<class_Range>` 的控件，从左侧（最小）滚动到右侧（最大）。

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_bottom<class_HScrollBar_theme_constant_padding_bottom>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_top<class_HScrollBar_theme_constant_padding_top>`       | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_HScrollBar_theme_constant_padding_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_bottom** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_bottom>`

Padding between the bottom of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_HScrollBar_theme_constant_padding_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_top** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_top>`

Padding between the top of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
