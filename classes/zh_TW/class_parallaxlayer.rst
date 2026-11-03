:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**已棄用：** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用 :ref:`ParallaxBackground<class_ParallaxBackground>` 的視差捲動層。

.. rst-class:: classref-introduction-group

說明
----

ParallaxLayer 必須是 :ref:`ParallaxBackground<class_ParallaxBackground>` 節點的子節點。每個 ParallaxLayer 都可以設定為相對於相機移動或 :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>` 值。

該節點的子節點將受其捲動偏移量的影響。

\ **注意：**\ 當該節點進入場景後，對其位置和比例的任何改變都將被忽略。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

**ParallaxLayer** 重複繪製的間隔，單位為像素。用於建立無限捲動的背景。如果將某個軸設定為 ``0``\ ，那麼 **ParallaxLayer** 就只會在那個方向上繪製一次。

\ **注意：**\ 如果想要在重複時讓子節點顯示的 :ref:`Texture2D<class_Texture2D>` 進行像素級對齊，那麼就應當在設定間隔時考慮紋理所使用的縮放。例如你使用 :ref:`Sprite2D<class_Sprite2D>` 節點將 600×600 的紋理進行 ``0.5`` 的縮放，然後希望紋理橫向重複，那麼就應該將“Mirroring”設定為 ``Vector2(300, 0)``\ 。

\ **注意：**\ 如果視埠的某個軸比對應重複軸的兩倍還要大，那麼就無法無限重複，因為時差圖層同一時間只能將該圖層繪製兩份。計算可見視窗時依據的是父級 :ref:`ParallaxBackground<class_ParallaxBackground>` 的位置，而不是圖層自身的位置。因此，使用鏡像時，\ **請勿**\ 改變 **ParallaxLayer** 相對於父節點的位置。如果需要修改背景的位置，請改為設定 :ref:`ParallaxBackground<class_ParallaxBackground>` 父節點的 :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` 屬性。

\ **注意：**\ 雖然這個屬性的名叫 Mirroring，是“鏡像”的意思，但是並不會對圖層做鏡像，只會進行重複。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

該 ParallaxLayer 的偏移量，相對於父 ParallaxBackground 的 :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

複製視差圖層的運動。如果一個軸被設定為 ``0``\ ，它將不會捲動。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
