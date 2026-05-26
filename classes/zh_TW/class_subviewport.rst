:github_url: hide

.. _class_SubViewport:

SubViewport
===========

**繼承：** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

遊戲世界的介面，不會建立視窗，也不會直接繪製到螢幕上。

.. rst-class:: classref-introduction-group

說明
----

**SubViewport** Isolates a rectangular region of a scene to be displayed independently. This can be used, for example, to display UI in 3D space.

\ **Note:** **SubViewport** is a :ref:`Viewport<class_Viewport>` that isn't a :ref:`Window<class_Window>`, i.e. it doesn't draw anything by itself. To display anything, **SubViewport** must have a non-zero size and be either put inside a :ref:`SubViewportContainer<class_SubViewportContainer>` or assigned to a :ref:`ViewportTexture<class_ViewportTexture>`.

\ **Note:** :ref:`InputEvent<class_InputEvent>`\ s are not passed to a standalone **SubViewport** by default. To ensure :ref:`InputEvent<class_InputEvent>` propagation, a **SubViewport** can be placed inside of a :ref:`SubViewportContainer<class_SubViewportContainer>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用視口 <../tutorials/rendering/viewports>`

- :doc:`Viewport 和畫布變換 <../tutorials/2d/2d_transforms>`

- `3D 檢視埠 GUI 範例 <https://godotengine.org/asset-library/asset/2807>`__

- `3D in 2D Viewport Demo <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `螢幕捕捉演示 <https://godotengine.org/asset-library/asset/2808>`__

- `動態分屏演示 <https://godotengine.org/asset-library/asset/2806>`__

- `3D Resolution Scaling Demo <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`ClearMode<enum_SubViewport_ClearMode>`   | :ref:`render_target_clear_mode<class_SubViewport_property_render_target_clear_mode>`   | ``0``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | :ref:`render_target_update_mode<class_SubViewport_property_render_target_update_mode>` | ``2``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size<class_SubViewport_property_size>`                                           | ``Vector2i(512, 512)`` |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size_2d_override<class_SubViewport_property_size_2d_override>`                   | ``Vector2i(0, 0)``     |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                        | :ref:`size_2d_override_stretch<class_SubViewport_property_size_2d_override_stretch>`   | ``false``              |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                          | :ref:`view_count<class_SubViewport_property_view_count>`                               | ``1``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SubViewport_ClearMode:

.. rst-class:: classref-enumeration

enum **ClearMode**: :ref:`🔗<enum_SubViewport_ClearMode>`

.. _class_SubViewport_constant_CLEAR_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ALWAYS** = ``0``

繪製前始終清除算繪目標。

.. _class_SubViewport_constant_CLEAR_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_NEVER** = ``1``

永不清除算繪目標。

.. _class_SubViewport_constant_CLEAR_MODE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ONCE** = ``2``

在下一影格清除算繪目標，然後切換到 :ref:`CLEAR_MODE_NEVER<class_SubViewport_constant_CLEAR_MODE_NEVER>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_SubViewport_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_SubViewport_UpdateMode>`

.. _class_SubViewport_constant_UPDATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_DISABLED** = ``0``

不要更新算繪目標。

.. _class_SubViewport_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ONCE** = ``1``

更新算繪目標一次，然後切換到 :ref:`UPDATE_DISABLED<class_SubViewport_constant_UPDATE_DISABLED>`\ 。

.. _class_SubViewport_constant_UPDATE_WHEN_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_VISIBLE** = ``2``

僅在算繪目標可見時更新算繪目標。這是預設值。

.. _class_SubViewport_constant_UPDATE_WHEN_PARENT_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_PARENT_VISIBLE** = ``3``

僅在其父級可見時更新算繪目標。

.. _class_SubViewport_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ALWAYS** = ``4``

始終更新算繪目標。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SubViewport_property_render_target_clear_mode:

.. rst-class:: classref-property

:ref:`ClearMode<enum_SubViewport_ClearMode>` **render_target_clear_mode** = ``0`` :ref:`🔗<class_SubViewport_property_render_target_clear_mode>`

.. rst-class:: classref-property-setget

- |void| **set_clear_mode**\ (\ value\: :ref:`ClearMode<enum_SubViewport_ClearMode>`\ )
- :ref:`ClearMode<enum_SubViewport_ClearMode>` **get_clear_mode**\ (\ )

該子視口用作算繪目標時的清除模式。

\ **注意：**\ 此屬性適用於 2D 用途。

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_render_target_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **render_target_update_mode** = ``2`` :ref:`🔗<class_SubViewport_property_render_target_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_SubViewport_UpdateMode>`\ )
- :ref:`UpdateMode<enum_SubViewport_UpdateMode>` **get_update_mode**\ (\ )

該子視口用作算繪目標時的更新模式。

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(512, 512)`` :ref:`🔗<class_SubViewport_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

子視口的寬度和高度。必須在兩個維度上設定為大於或等於 2 圖元的值。否則，不會顯示任何內容。

\ **注意：**\ 如果父節點是一個 :ref:`SubViewportContainer<class_SubViewportContainer>`\ ，並且它的 :ref:`SubViewportContainer.stretch<class_SubViewportContainer_property_stretch>` 為 ``true``\ ，則無法手動更改該視口大小。

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size_2d_override** = ``Vector2i(0, 0)`` :ref:`🔗<class_SubViewport_property_size_2d_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size_2d_override**\ (\ )

子視口的 2D 尺寸覆蓋。如果寬度或高度為 ``0``\ ，則禁用覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **size_2d_override_stretch** = ``false`` :ref:`🔗<class_SubViewport_property_size_2d_override_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_size_2d_override_stretch_enabled**\ (\ )

如果為 ``true``\ ，則 2D 尺寸覆蓋也會影響拉伸。

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_SubViewport_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

The number of view layers we are rendering to. Set this to ``2`` to enable stereo rendering.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
