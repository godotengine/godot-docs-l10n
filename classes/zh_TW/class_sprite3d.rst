:github_url: hide

.. _class_Sprite3D:

Sprite3D
========

**繼承：** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 世界中的 2D 精靈節點。

.. rst-class:: classref-introduction-group

說明
----

在 3D 環境中顯示 2D 紋理的節點。顯示的紋理可以是來自較大合集紋理的區域，也可以是來自精靈表動畫的影格。另見 :ref:`SpriteBase3D<class_SpriteBase3D>`\ ，定義有公告板模式等屬性。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite3D_property_frame>`                   | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite3D_property_frame_coords>`     | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite3D_property_hframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite3D_property_region_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite3D_property_region_rect>`       | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite3D_property_texture>`               |                       |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite3D_property_vframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Sprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_frame_changed>`

當 :ref:`frame<class_Sprite3D_property_frame>` 更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_texture_changed>`

當 :ref:`texture<class_Sprite3D_property_texture>` 更改時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Sprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Current frame to display from sprite sheet. :ref:`hframes<class_Sprite3D_property_hframes>` or :ref:`vframes<class_Sprite3D_property_vframes>` must be greater than 1. This property is automatically adjusted when :ref:`hframes<class_Sprite3D_property_hframes>` or :ref:`vframes<class_Sprite3D_property_vframes>` are changed to keep pointing to the same visual frame (same column and row). If that's impossible, this value is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite3D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

顯示的影格在精靈表中的座標。這是 :ref:`frame<class_Sprite3D_property_frame>` 屬性的別名。\ :ref:`vframes<class_Sprite3D_property_vframes>` 或 :ref:`hframes<class_Sprite3D_property_hframes>` 必須大於 1。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite3D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

The number of columns in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite3D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite3D_property_frame>` is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite3D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

如果為 ``true``\ ，則該精靈會使用 :ref:`region_rect<class_Sprite3D_property_region_rect>`\ ，只顯示紋理中的指定部分。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite3D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

要顯示的合集紋理區域。\ :ref:`region_enabled<class_Sprite3D_property_region_enabled>` 必須是 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

要繪製的 :ref:`Texture2D<class_Texture2D>` 對象。如果使用 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ ，則這個屬性會被覆蓋。仍會使用尺寸資訊。

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite3D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

The number of rows in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite3D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite3D_property_frame>` is reset to ``0``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
