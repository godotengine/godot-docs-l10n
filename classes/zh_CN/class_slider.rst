:github_url: hide

.. _class_Slider:

Slider
======

**继承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

滑块的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

滑块的抽象基类，通过将抓取器（滑块）沿水平轴或垂直轴移动类调整取值。滑块是基于 :ref:`Range<class_Range>` 的控件。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`editable<class_Slider_property_editable>`                 | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                      | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`scrollable<class_Slider_property_scrollable>`             | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | step                                                            | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`tick_count<class_Slider_property_tick_count>`             | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`ticks_on_borders<class_Slider_property_ticks_on_borders>` | ``false``                                                           |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TickPosition<enum_Slider_TickPosition>` | :ref:`ticks_position<class_Slider_property_ticks_position>`     | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`center_grabber<class_Slider_theme_constant_center_grabber>`              | ``0`` |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`grabber_offset<class_Slider_theme_constant_grabber_offset>`              | ``0`` |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`             | :ref:`tick_offset<class_Slider_theme_constant_tick_offset>`                    | ``0`` |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber<class_Slider_theme_icon_grabber>`                                |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber_disabled<class_Slider_theme_icon_grabber_disabled>`              |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber_highlight<class_Slider_theme_icon_grabber_highlight>`            |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`tick<class_Slider_theme_icon_tick>`                                      |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_area<class_Slider_theme_style_grabber_area>`                     |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_area_highlight<class_Slider_theme_style_grabber_area_highlight>` |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`slider<class_Slider_theme_style_slider>`                                 |       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

停止拖拽抓取器时发出。如果 ``value_changed`` 为 ``true``\ ，则 :ref:`Range.value<class_Range_property_value>` 与开始拖拽时的值不同。

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

开始拖拽抓取器时发出，时机在对应的 :ref:`Range.value_changed<class_Range_signal_value_changed>` 信号之前。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

将刻度放置在 :ref:`HSlider<class_HSlider>` 的底部、\ :ref:`VSlider<class_VSlider>` 的右侧。

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

将刻度放置在 :ref:`HSlider<class_HSlider>` 的顶部、\ :ref:`VSlider<class_VSlider>` 的左侧。

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

在滑杆的两侧放置刻度。

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

在滑杆的中间放置刻度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果为 ``true``\ ，则滑块可以交互。如果为 ``false``\ ，则只能通过代码更改该值。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

如果为 ``true``\ ，则可以使用鼠标滚轮更改该值。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

滑杆上显示的刻度线数量，包括边界刻度线。刻度是均匀分布的数值标记。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

如果为 ``true``\ ，则滑杆将显示最小值和最大值的刻度。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

设置刻度的位置。详见 :ref:`TickPosition<enum_Slider_TickPosition>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

布尔常量。如果为 ``1``\ ，则会忽略抓取器纹理的大小，根据其中心位置将其缩放到滑杆的边界。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_offset>`

抓取器的垂直或水平偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_offset>`

刻度的垂直或水平偏移量。顶部和左侧刻度的偏移量是反的。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

用作抓取器（可拖动的元素）的纹理。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

抓取器禁用时的材质。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

抓取器获得焦点时的材质。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

刻度的纹理。当 :ref:`tick_count<class_Slider_property_tick_count>` 大于 0 时可见。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area** :ref:`🔗<class_Slider_theme_style_grabber_area>`

抓取器左侧或底部区域的背景。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

抓取器被悬停或聚焦时，显示的左侧或底部区域的背景。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

整个滑杆的背景。影响 :ref:`grabber_area<class_Slider_theme_style_grabber_area>` 的高度或宽度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
