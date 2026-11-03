:github_url: hide

.. _class_Sprite2D:

Sprite2D
========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

通用精靈節點。

.. rst-class:: classref-introduction-group

說明
----

顯示 2D 紋理的節點。顯示的紋理可以是較大合集紋理中的某個區域，也可以是精靈表動畫中的某一影格。

.. rst-class:: classref-introduction-group

教學
----

- `產生實體演示 <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`centered<class_Sprite2D_property_centered>`                                     | ``true``              |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_h<class_Sprite2D_property_flip_h>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_v<class_Sprite2D_property_flip_v>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite2D_property_frame>`                                           | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite2D_property_frame_coords>`                             | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite2D_property_hframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_Sprite2D_property_offset>`                                         | ``Vector2(0, 0)``     |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite2D_property_region_enabled>`                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_filter_clip_enabled<class_Sprite2D_property_region_filter_clip_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite2D_property_region_rect>`                               | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite2D_property_texture>`                                       |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite2D_property_vframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_Sprite2D_method_get_rect>`\ (\ ) |const|                                                    |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_pixel_opaque<class_Sprite2D_method_is_pixel_opaque>`\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Sprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_frame_changed>`

當 :ref:`frame<class_Sprite2D_property_frame>` 更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_texture_changed>`

當 :ref:`texture<class_Sprite2D_property_texture>` 更改時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Sprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_Sprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

如果為 ``true``\ ，則會將紋理居中。

\ **注意：**\ 像素風遊戲中，紋理在居中後可能會變形。這是因為此時紋理的位置在兩個像素之間。要避免這種情況，請將該屬性設為 ``false``\ ，或者考慮啟用 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` 和 :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

若為 ``true``\ ，紋理將水平翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

若為 ``true``\ ，紋理將垂直翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

目前顯示的精靈表中的影格。\ :ref:`hframes<class_Sprite2D_property_hframes>` 和 :ref:`vframes<class_Sprite2D_property_vframes>` 必須大於 1。\ :ref:`hframes<class_Sprite2D_property_hframes>` 或 :ref:`vframes<class_Sprite2D_property_vframes>` 發生變化時會自動調整該屬性，讓它在視覺上保持指向同一影格（同一行、同一列）。 如果無法保持，則會重設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite2D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

顯示的影格在精靈表中的座標。這是 :ref:`frame<class_Sprite2D_property_frame>` 屬性的別名。\ :ref:`vframes<class_Sprite2D_property_vframes>` 或 :ref:`hframes<class_Sprite2D_property_hframes>` 必須大於 1。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite2D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

精靈表中的列數。該屬性發生變化時會對 :ref:`frame<class_Sprite2D_property_frame>` 進行調整，在視覺上維持相同的影格（同一行、同一列）。如果無法維持，則會將 :ref:`frame<class_Sprite2D_property_frame>` 重設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Sprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

紋理繪製偏移。

\ **注意：**\ 在 Sprite2D 中增大 :ref:`offset<class_Sprite2D_property_offset>`.y 會讓精靈在螢幕上向下移動（即 +Y 朝下）。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

如果為 ``true``\ ，則會從更大的圖集紋理上裁剪出紋理。見 :ref:`region_rect<class_Sprite2D_property_region_rect>`\ 。

\ **注意：**\ 對 **Sprite2D** 使用自訂 :ref:`Shader<class_Shader>` 時，著色器內建的 ``UV`` 指的是完整紋理空間。請使用內建的 ``REGION_RECT`` 取得 :ref:`region_rect<class_Sprite2D_property_region_rect>` 中定義的目前可見區域。詳見《\ :doc:`CanvasItem 著色器 <../tutorials/shaders/shader_reference/canvas_item_shader>`\ 》。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_filter_clip_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_filter_clip_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_filter_clip_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_filter_clip_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_filter_clip_enabled**\ (\ )

如果為 ``true``\ ，則會裁剪 :ref:`region_rect<class_Sprite2D_property_region_rect>` 之外的區域，避免周圍紋理像素的出血現象。\ :ref:`region_enabled<class_Sprite2D_property_region_enabled>` 必須為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite2D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要顯示的合集紋理區域。\ :ref:`region_enabled<class_Sprite2D_property_region_enabled>` 必須是 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

要繪製的 :ref:`Texture2D<class_Texture2D>` 對象。

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite2D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

精靈表中的行數。該屬性發生變化時會對 :ref:`frame<class_Sprite2D_property_frame>` 進行調整，在視覺上維持相同的影格（同一行、同一列）。如果無法維持，則會將 :ref:`frame<class_Sprite2D_property_frame>` 重設為 ``0``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Sprite2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Sprite2D_method_get_rect>`

回傳代表該 Sprite2D 邊界的 :ref:`Rect2<class_Rect2>`\ ，使用區域座標。

\ **範例：**\ 檢測該 Sprite2D 是否被點選：


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            if get_rect().has_point(to_local(event.position)):
                print("我點！")

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventMouseButton inputEventMouse)
        {
            if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left)
            {
                if (GetRect().HasPoint(ToLocal(inputEventMouse.Position)))
                {
                    GD.Print("我點！");
                }
            }
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_method_is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pixel_opaque**\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Sprite2D_method_is_pixel_opaque>`

如果給定位置的像素不透明，則回傳 ``true``\ ，否則回傳 ``false``\ 。如果給定位置超出範圍或該精靈的 :ref:`texture<class_Sprite2D_property_texture>` 為 ``null``\ ，也會回傳 ``false``\ 。\ ``pos`` 為區域座標。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
