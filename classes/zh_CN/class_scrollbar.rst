:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**继承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

滚动条的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

滚动条的抽象基类，通常用于对超出控件可视区域的内容进行导航。滚动条是基于 :ref:`Range<class_Range>` 的控件。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`custom_step<class_ScrollBar_property_custom_step>` | ``-1.0``                                                            |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                               | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | step                                                     | ``0.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_ScrollBar_theme_icon_decrement>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_ScrollBar_theme_icon_decrement_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_pressed<class_ScrollBar_theme_icon_decrement_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_ScrollBar_theme_icon_increment>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_ScrollBar_theme_icon_increment_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_pressed<class_ScrollBar_theme_icon_increment_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber<class_ScrollBar_theme_style_grabber>`                        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_highlight<class_ScrollBar_theme_style_grabber_highlight>`    |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_pressed<class_ScrollBar_theme_style_grabber_pressed>`        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll<class_ScrollBar_theme_style_scroll>`                          |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll_focus<class_ScrollBar_theme_style_scroll_focus>`              |
   +-----------------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

当滚动条滚动时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

覆盖 在按下增和减按钮时或在 **ScrollBar** 已获得焦点且使用箭头键时 的步长。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

用作向左/向上滚动 **ScrollBar** 的按钮的图标。使用 :ref:`custom_step<class_ScrollBar_property_custom_step>` 属性支持自定义步长。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

当鼠标指针悬停在递减按钮上时显示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

在按下递减按钮时显示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

用作向右/向下滚动 **ScrollBar** 的按钮的图标。使用 :ref:`custom_step<class_ScrollBar_property_custom_step>` 属性支持自定义步长。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

当鼠标指针悬停在增量按钮上时显示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

在按下增量按钮时显示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

用作抓取器的纹理，表示当前的可拖动元素。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

当鼠标悬停在抓取器上时使用。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

在抓取器被拖动时使用。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll** :ref:`🔗<class_ScrollBar_theme_style_scroll>`

用作此 **ScrollBar** 的背景。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll_focus** :ref:`🔗<class_ScrollBar_theme_style_scroll_focus>`

当 **ScrollBar** 具有 GUI 焦点时用作背景。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
