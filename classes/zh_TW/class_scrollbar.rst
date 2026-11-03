:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**繼承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

捲軸的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

捲軸的抽象基底類別，通常用於對超出控制項可視區域的內容進行導覽。捲軸是基於 :ref:`Range<class_Range>` 的控制項。

.. rst-class:: classref-reftable-group

屬性
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

主題屬性
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

訊號
----

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

當捲軸捲動時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

覆蓋 在按下增和減按鈕時或在 **ScrollBar** 已獲得焦點且使用方向鍵時 的步長。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

作為按鈕使用的圖示，它用於使 **ScrollBar** 向左捲動。捲動步長由 :ref:`custom_step<class_ScrollBar_property_custom_step>` 屬性值自訂。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

當滑鼠指標懸停在遞減按鈕上時顯示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

在按下遞減按鈕時顯示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

作為按鈕使用的圖示，它用於使 **ScrollBar** 向右捲動。捲動步長由 :ref:`custom_step<class_ScrollBar_property_custom_step>` 屬性值自訂。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

當滑鼠指標懸停在差異量按鈕上時顯示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

在按下差異量按鈕時顯示。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

用作拖動條的紋理，表示目前的可拖動元素。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

當滑鼠懸停在拖動條上時使用。

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

在拖動條被拖動時使用。

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

當 **ScrollBar** 具有 GUI 焦點時用作背景。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
