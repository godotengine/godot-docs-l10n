:github_url: hide

.. _class_CanvasLayer:

CanvasLayer
===========

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`ParallaxBackground<class_ParallaxBackground>`

用於 2D 場景中的物件的獨立渲染的節點。

.. rst-class:: classref-introduction-group

說明
----

**CanvasLayer** 的直接或間接子節點中，派生自 :ref:`CanvasItem<class_CanvasItem>` 的節點會在該圖層中進行繪製。圖層是定義繪製順序的數字索引。預設 2D 場景使用的索引為 ``0``\ ，因此索引為 ``-1`` 的 **CanvasLayer** 會在下方繪製，而索引為 ``1`` 的 **CanvasLayer** 會在上方繪製。無論節點在圖層中的 :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` 是多少，這一順序都成立。

\ **CanvasLayer** 可以隱藏，也可以跟隨視埠。因此常用於血條等 HUD（位於 ``1`` 或更高的圖層上）和背景（位於 ``-1`` 或更低的圖層上）。

\ **注意：**\ 嵌入式 :ref:`Window<class_Window>` 位於 ``1024`` 圖層。位於 ``1025`` 或更高圖層的 :ref:`CanvasItem<class_CanvasItem>` 會顯示在嵌入式視窗之上。

\ **注意：**\ 每個 **CanvasLayer** 都是在一個特定的 :ref:`Viewport<class_Viewport>` 中繪製的，不能在多個 :ref:`Viewport<class_Viewport>` 之間共享，見 :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`\ 。使用多個 :ref:`Viewport<class_Viewport>` 時，例如分屏遊戲中，你需要為每個想要繪製的 :ref:`Viewport<class_Viewport>` 建立一個單獨的 **CanvasLayer**\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Viewport 和畫布變換 <../tutorials/2d/2d_transforms>`

- :doc:`畫布層 <../tutorials/2d/canvas_layers>`

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`                 |                                   |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` | ``false``                         |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>`     | ``1.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`layer<class_CanvasLayer_property_layer>`                                     | ``1``                             |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CanvasLayer_property_offset>`                                   | ``Vector2(0, 0)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_CanvasLayer_property_rotation>`                               | ``0.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_CanvasLayer_property_scale>`                                     | ``Vector2(1, 1)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CanvasLayer_property_transform>`                             | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CanvasLayer_property_visible>`                                 | ``true``                          |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_canvas<class_CanvasLayer_method_get_canvas>`\ (\ ) |const|                   |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_final_transform<class_CanvasLayer_method_get_final_transform>`\ (\ ) |const| |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`hide<class_CanvasLayer_method_hide>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`show<class_CanvasLayer_method_show>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_CanvasLayer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_CanvasLayer_signal_visibility_changed>`

當該層的可見性發生變化時觸發。請參閱 :ref:`visible<class_CanvasLayer_property_visible>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CanvasLayer_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_CanvasLayer_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

分配給該 **CanvasLayer** 的自訂 :ref:`Viewport<class_Viewport>` 節點。如果為 ``null``\ ，則使用預設的視埠。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport_enabled** = ``false`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_viewport**\ (\ )

啟用時，\ **CanvasLayer** 會保持在世界空間中的位置。停用時，\ **CanvasLayer** 會保持在螢幕上的某個固定位置。

與 :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>` 配合可以實現偽 3D 效果。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **follow_viewport_scale** = ``1.0`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_scale>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_follow_viewport_scale**\ (\ )

使用 :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` 時縮放圖層。移入到前景的圖層應具有增加的縮放，而移入到背景的圖層應具有減小的縮放。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **layer** = ``1`` :ref:`🔗<class_CanvasLayer_property_layer>`

.. rst-class:: classref-property-setget

- |void| **set_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer**\ (\ )

畫布層的索引，用於確定繪製順序。索引值小的畫布層繪製在索引值大的畫布層後面。

\ **注意：**\ 如果多個 CanvasLayer 的畫布層索引相同，一個 CanvasLayer 的 :ref:`CanvasItem<class_CanvasItem>` 子節點都會繪製在另一個 CanvasLayer 的 :ref:`CanvasItem<class_CanvasItem>` 子節點之後。哪個 CanvasLayer 畫在前面並不一定。

\ **注意：**\ 畫布層索引應當在 :ref:`RenderingServer.CANVAS_LAYER_MIN<class_RenderingServer_constant_CANVAS_LAYER_MIN>` 和 :ref:`RenderingServer.CANVAS_LAYER_MAX<class_RenderingServer_constant_CANVAS_LAYER_MAX>` 之間（含兩端）。其他值都會發生環繞。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CanvasLayer_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

圖層的基本偏移量。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_CanvasLayer_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

圖層的旋轉弧度。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_CanvasLayer_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

圖層的縮放。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CanvasLayer_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

圖層的變換。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CanvasLayer_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

為 ``false`` 時，該 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>` 都會被隱藏。

與 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 不同，\ **CanvasLayer** 的顯示與否不會傳播到其內部的層。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CanvasLayer_method_get_canvas:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_canvas**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_canvas>`

返回此層使用的畫布的 RID。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_get_final_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_final_transform**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_final_transform>`

Returns the transform from the **CanvasLayer**'s coordinate system to the :ref:`Viewport<class_Viewport>`'s coordinate system.

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_CanvasLayer_method_hide>`

隱藏該 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>`\ 。相當於將 :ref:`visible<class_CanvasLayer_property_visible>` 設為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_CanvasLayer_method_show>`

顯示該 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>`\ 。相當於將 :ref:`visible<class_CanvasLayer_property_visible>` 設為 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
