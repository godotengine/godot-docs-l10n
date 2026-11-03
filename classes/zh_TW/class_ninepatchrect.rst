:github_url: hide

.. _class_NinePatchRect:

NinePatchRect
=============

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

顯示紋理的控制項，會保持角落不變，但平鋪邊緣和中心。

.. rst-class:: classref-introduction-group

說明
----

也叫 9 片式面板，\ **NinePatchRect** 能夠根據較小的紋理，生成任何大小的乾淨面板。為了做到這一點，它將紋理分割成 3×3 的網格。當你縮放節點時，它會在水平或垂直方向上平鋪紋理的側邊，在兩個軸上平鋪中心，但不會縮放或平鋪角落。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_NinePatchRect_property_axis_stretch_horizontal>` | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_NinePatchRect_property_axis_stretch_vertical>`     | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_center<class_NinePatchRect_property_draw_center>`                         | ``true``                                                              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`               | mouse_filter                                                                         | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_bottom<class_NinePatchRect_property_patch_margin_bottom>`         | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_left<class_NinePatchRect_property_patch_margin_left>`             | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_right<class_NinePatchRect_property_patch_margin_right>`           | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_top<class_NinePatchRect_property_patch_margin_top>`               | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                  | :ref:`region_rect<class_NinePatchRect_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)``                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                          | :ref:`texture<class_NinePatchRect_property_texture>`                                 |                                                                       |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_patch_margin<class_NinePatchRect_method_get_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_patch_margin<class_NinePatchRect_method_set_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_NinePatchRect_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_NinePatchRect_signal_texture_changed>`

當節點的紋理發生變化時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_NinePatchRect_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_NinePatchRect_AxisStretchMode>`

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

在 NinePatchRect 上拉伸中心紋理。這可能會導致紋理失真。

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

在 NinePatchRect 上重複中心紋理。這不會導致任何可見的失真。 紋理必須是無縫的，這樣才能在邊緣之間不顯示偽影。

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

在 NinePatchRect 上重複中心紋理，但也會拉伸紋理以確保每個圖塊都完整可見。這可能會導致紋理扭曲，但少於 :ref:`AXIS_STRETCH_MODE_STRETCH<class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH>`\ 。紋理必須是無縫的，這樣才能在邊緣之間不顯示偽影。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NinePatchRect_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

水平拉伸/平鋪時使用的拉伸模式。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

垂直拉伸/平鋪時使用的拉伸模式。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_NinePatchRect_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

如果為 ``true``\ ，則繪製面板的中心。否則，只畫9-slice的邊框。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_bottom** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片底行的高度。邊距為 16 意味著 9-切片的底角和側面將有 16 圖元的高度。你可以單獨設定所有 4 個邊距值，來建立有非均勻邊框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_left** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片左列的寬度。邊距為 16 意味著 9-切片的左角和側面將有 16 圖元的寬度。你可以單獨設定所有 4 個邊距值，來建立有非均勻邊框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_right** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片右列的寬度。邊距為 16 意味著 9-切片的右角和側面將有 16 圖元的寬度。你可以單獨設定所有 4 個邊距值，來建立有非均勻邊框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_top** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

9-切片頂行的高度。邊距為 16 意味著 9-切片的頂角和側面將有 16 圖元的高度。你可以單獨設定所有 4 個邊距值，來建立有非均勻邊框的面板。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NinePatchRect_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要取樣的紋理的矩形區域。如果你正在使用一個合集，使用這個屬性來定義 9-切片應該使用的區域。所有其他屬性都是相對於這個屬性而言的。如果矩形為空，NinePatchRect 將使用整個紋理。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_NinePatchRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

節點的紋理資源。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NinePatchRect_method_get_patch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_NinePatchRect_method_get_patch_margin>`

返回指定 :ref:`Side<enum_@GlobalScope_Side>` 的邊距大小。

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_method_set_patch_margin:

.. rst-class:: classref-method

|void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NinePatchRect_method_set_patch_margin>`

將給定 :ref:`Side<enum_@GlobalScope_Side>` 的邊距大小設定為 ``value`` 圖元。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
