:github_url: hide

.. _class_Slider:

Slider
======

**繼承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

滑桿的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

滑桿的抽象基底類別，通過將抓取器（滑桿）沿水平軸或垂直軸移動類調整取值。滑桿是基於 :ref:`Range<class_Range>` 的控制項。

.. rst-class:: classref-reftable-group

屬性
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

主題屬性
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

訊號
----

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

Emitted when the grabber stops being dragged. If ``value_changed`` is ``true``, :ref:`Range.value<class_Range_property_value>` is different from the value when the dragging was started.

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

Emitted when the grabber starts being dragged. This is emitted before the corresponding :ref:`Range.value_changed<class_Range_signal_value_changed>` signal.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

Places the ticks at the bottom of the :ref:`HSlider<class_HSlider>`, or right of the :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

Places the ticks at the top of the :ref:`HSlider<class_HSlider>`, or left of the :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

Places the ticks at the both sides of the slider.

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

Places the ticks at the center of the slider.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果為 ``true``\ ，則滑動條可以互動。如果為 ``false``\ ，則只能通過程式碼更改該值。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

如果為 ``true``\ ，則可以使用滑鼠滾輪更改該值。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

滑動條上顯示的刻度線數量，包括邊界刻度線。刻度是均勻分佈的數值標記。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

如果為 ``true``\ ，則滑動條將顯示最小值和最大值的刻度。

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

Sets the position of the ticks. See :ref:`TickPosition<enum_Slider_TickPosition>` for details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

布林常數。如果為 ``1``\ ，則會忽略抓取器紋理的大小，根據其中心位置將其縮放到捲軸的邊界。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_offset>`

Vertical or horizontal offset of the grabber.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_offset>`

Vertical or horizontal offset of the ticks. The offset is reversed for top or left ticks.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

用作拖動條的紋理（可拖動的元素）。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

抓取器禁用時的材質。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

抓取器獲得焦點時的材質。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

刻度的紋理。當 :ref:`tick_count<class_Slider_property_tick_count>` 大於 0 時可見。

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area** :ref:`🔗<class_Slider_theme_style_grabber_area>`

The background of the area to the left or bottom of the grabber.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

The background of the area to the left or bottom of the grabber that displays when it's being hovered or focused.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

The background for the whole slider. Affects the height or width of the :ref:`grabber_area<class_Slider_theme_style_grabber_area>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
