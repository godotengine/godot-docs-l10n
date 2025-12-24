:github_url: hide

.. _class_GraphFrame:

GraphFrame
==========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`GraphElement<class_GraphElement>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

GraphFrame is a special :ref:`GraphElement<class_GraphElement>` that can be used to organize other :ref:`GraphElement<class_GraphElement>`\ s inside a :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-introduction-group

說明
----

GraphFrame is a special :ref:`GraphElement<class_GraphElement>` to which other :ref:`GraphElement<class_GraphElement>`\ s can be attached. It can be configured to automatically resize to enclose all attached :ref:`GraphElement<class_GraphElement>`\ s. If the frame is moved, all the attached :ref:`GraphElement<class_GraphElement>`\ s inside it will be moved as well.

A GraphFrame is always kept behind the connection layer and other :ref:`GraphElement<class_GraphElement>`\ s inside a :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` | ``true``                                                              |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>`   | ``40``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`drag_margin<class_GraphFrame_property_drag_margin>`               | ``16``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter                                                            | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                    | :ref:`tint_color<class_GraphFrame_property_tint_color>`                 | ``Color(0.3, 0.3, 0.3, 0.75)``                                        |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` | ``false``                                                             |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                  | :ref:`title<class_GraphFrame_property_title>`                           | ``""``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`HBoxContainer<class_HBoxContainer>` | :ref:`get_titlebar_hbox<class_GraphFrame_method_get_titlebar_hbox>`\ (\ ) |
   +-------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`resizer_color<class_GraphFrame_theme_color_resizer_color>`         | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_GraphFrame_theme_style_panel>`                         |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel_selected<class_GraphFrame_theme_style_panel_selected>`       |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar<class_GraphFrame_theme_style_titlebar>`                   |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar_selected<class_GraphFrame_theme_style_titlebar_selected>` |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_GraphFrame_signal_autoshrink_changed:

.. rst-class:: classref-signal

**autoshrink_changed**\ (\ ) :ref:`🔗<class_GraphFrame_signal_autoshrink_changed>`

Emitted when :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` or :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>` changes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GraphFrame_property_autoshrink_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink_enabled** = ``true`` :ref:`🔗<class_GraphFrame_property_autoshrink_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

If ``true``, the frame's rect will be adjusted automatically to enclose all attached :ref:`GraphElement<class_GraphElement>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_autoshrink_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **autoshrink_margin** = ``40`` :ref:`🔗<class_GraphFrame_property_autoshrink_margin>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_autoshrink_margin**\ (\ )

The margin around the attached nodes that is used to calculate the size of the frame when :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_drag_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_margin** = ``16`` :ref:`🔗<class_GraphFrame_property_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_margin**\ (\ )

The margin inside the frame that can be used to drag the frame.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_GraphFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

The color of the frame when :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_GraphFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

If ``true``, the tint color will be used to tint the frame.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_GraphFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Title of the frame.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GraphFrame_method_get_titlebar_hbox:

.. rst-class:: classref-method

:ref:`HBoxContainer<class_HBoxContainer>` **get_titlebar_hbox**\ (\ ) :ref:`🔗<class_GraphFrame_method_get_titlebar_hbox>`

Returns the :ref:`HBoxContainer<class_HBoxContainer>` used for the title bar, only containing a :ref:`Label<class_Label>` for displaying the title by default.

This can be used to add custom controls to the title bar such as option or close buttons.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_GraphFrame_theme_color_resizer_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **resizer_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_GraphFrame_theme_color_resizer_color>`

套用於調整尺寸大小圖示的顏色調變。

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_GraphFrame_theme_style_panel>`

The default :ref:`StyleBox<class_StyleBox>` used for the background of the **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel_selected** :ref:`🔗<class_GraphFrame_theme_style_panel_selected>`

The :ref:`StyleBox<class_StyleBox>` used for the background of the **GraphFrame** when it is selected.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar** :ref:`🔗<class_GraphFrame_theme_style_titlebar>`

The :ref:`StyleBox<class_StyleBox>` used for the title bar of the **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar_selected** :ref:`🔗<class_GraphFrame_theme_style_titlebar_selected>`

The :ref:`StyleBox<class_StyleBox>` used for the title bar of the **GraphFrame** when it is selected.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
