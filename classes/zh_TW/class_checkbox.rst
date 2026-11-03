:github_url: hide

.. _class_CheckBox:

CheckBox
========

**繼承：** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

代表二元選項的按鈕。

.. rst-class:: classref-introduction-group

說明
----

**CheckBox** 允許使用者在僅有的兩個可能的選項中選擇一個。它在功能上類似於 :ref:`CheckButton<class_CheckButton>`\ ，但外觀不同。為了遵循既定的 UX 模式，建議在切換而\ **不會**\ 立即對某些內容產生影響時使用 **CheckBox**\ 。例如，切換後只會在按下確認按鈕後才執行某些操作時，就可以使用它。

另見 :ref:`BaseButton<class_BaseButton>`\ ，其中包含與該節點相關的通用屬性和方法。

當 :ref:`BaseButton.button_group<class_BaseButton_property_button_group>` 指定 :ref:`ButtonGroup<class_ButtonGroup>` 時，\ **CheckBox** 的外觀將變為選項按鈕，並使用各種 ``radio_*`` 主題屬性。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_checked_color<class_CheckBox_theme_color_checkbox_checked_color>`     | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_unchecked_color<class_CheckBox_theme_color_checkbox_unchecked_color>` | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckBox_theme_constant_check_v_offset>`                  | ``0``                 |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckBox_theme_icon_checked>`                                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckBox_theme_icon_checked_disabled>`                  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked<class_CheckBox_theme_icon_radio_checked>`                        |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked_disabled<class_CheckBox_theme_icon_radio_checked_disabled>`      |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked<class_CheckBox_theme_icon_radio_unchecked>`                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked_disabled<class_CheckBox_theme_icon_radio_unchecked_disabled>`  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckBox_theme_icon_unchecked>`                                |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckBox_theme_icon_unchecked_disabled>`              |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_CheckBox_theme_color_checkbox_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_checked_color>`

勾選圖示的顏色，該 **CheckBox** 被按下時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_color_checkbox_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_unchecked_color>`

未勾選圖示的顏色，該 **CheckBox** 未被按下時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckBox_theme_constant_check_v_offset>`

渲染勾選圖示時使用的垂直偏移量（單位：圖元）。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckBox_theme_icon_checked>`

勾選圖示，該 **CheckBox** 被勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_checked_disabled>`

勾選圖示，該 **CheckBox** 被勾選且被停用時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked** :ref:`🔗<class_CheckBox_theme_icon_radio_checked>`

勾選圖示，該 **CheckBox** 被配置為選項按鈕、被勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_checked_disabled>`

勾選圖示，該 **CheckBox** 被配置為選項按鈕、被停用且未勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked>`

勾選圖示，該 **CheckBox** 被配置為選項按鈕、未勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked_disabled>`

勾選圖示，該 **CheckBox** 被配置為選項按鈕、被停用且未勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckBox_theme_icon_unchecked>`

勾選圖示，該 **CheckBox** 未勾選時顯示。

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_unchecked_disabled>`

勾選圖示，該 **CheckBox** 未勾選且被停用時顯示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
