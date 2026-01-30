:github_url: hide

.. _class_ColorPickerButton:

ColorPickerButton
=================

**繼承：** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

點擊後會顯示 :ref:`ColorPicker<class_ColorPicker>` 的按鈕。

.. rst-class:: classref-introduction-group

說明
----

封裝一個 :ref:`ColorPicker<class_ColorPicker>`\ ，按下按鈕即可存取該控制項。按下按鈕會切換 :ref:`ColorPicker<class_ColorPicker>` 的可見性。

另見 :ref:`BaseButton<class_BaseButton>`\ ，其中包含與該節點關聯的通用屬性和方法。

\ **注意：**\ 預設情況下，按鈕的寬度可能不足以使顏色預覽色板可見。確保將 :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` 設定為足夠大的值，以便為按鈕提供足夠的空間。

.. rst-class:: classref-introduction-group

教學
----

- `2D GD 畫圖演示 <https://godotengine.org/asset-library/asset/2768>`__

- `GUI 拖放演示 <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_ColorPickerButton_property_color>`                   | ``Color(0, 0, 0, 1)``                                                         |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_alpha<class_ColorPickerButton_property_edit_alpha>`         | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_intensity<class_ColorPickerButton_property_edit_intensity>` | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | toggle_mode                                                            | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`ColorPicker<class_ColorPicker>` | :ref:`get_picker<class_ColorPickerButton_method_get_picker>`\ (\ ) |
   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`PopupPanel<class_PopupPanel>`   | :ref:`get_popup<class_ColorPickerButton_method_get_popup>`\ (\ )   |
   +---------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bg<class_ColorPickerButton_theme_icon_bg>` |
   +-----------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ColorPickerButton_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPickerButton_signal_color_changed>`

顏色改變時發出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_picker_created:

.. rst-class:: classref-signal

**picker_created**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_picker_created>`

建立 :ref:`ColorPicker<class_ColorPicker>` 時（第一次按下按鈕）發出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_popup_closed:

.. rst-class:: classref-signal

**popup_closed**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_popup_closed>`

當 :ref:`ColorPicker<class_ColorPicker>` 關閉時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ColorPickerButton_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ColorPickerButton_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

目前選擇的顏色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

如果為 ``true``\ ，則顯示的 :ref:`ColorPicker<class_ColorPicker>` 中的 Alpha 通道將可見。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

If ``true``, the intensity slider in the displayed :ref:`ColorPicker<class_ColorPicker>` will be visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ColorPickerButton_method_get_picker:

.. rst-class:: classref-method

:ref:`ColorPicker<class_ColorPicker>` **get_picker**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_picker>`

返回此節點所切換的 :ref:`ColorPicker<class_ColorPicker>`\ 。

\ **警告：**\ 這是一個必需的內部節點，移除和釋放它可能會導致當機。如果你希望隱藏它或其所有子項，請使用其 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupPanel<class_PopupPanel>` **get_popup**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_popup>`

返回該控制項的 :ref:`PopupPanel<class_PopupPanel>`\ ，它允許連接到其彈出訊號。這允許在顯示或隱藏 ColorPicker 時處理事件。

\ **警告：**\ 這是一個必需的內部節點，移除和釋放它可能會導致當機。如果希望隱藏它或它的任何子項，請使用它們的 :ref:`Window.visible<class_Window_property_visible>` 屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_ColorPickerButton_theme_icon_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bg** :ref:`🔗<class_ColorPickerButton_theme_icon_bg>`

顏色預覽的背景將在按鈕上顯示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
