:github_url: hide

.. _class_Light2D:

Light2D
=======

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`DirectionalLight2D<class_DirectionalLight2D>`, :ref:`PointLight2D<class_PointLight2D>`

在 2D 環境中投射光線。

.. rst-class:: classref-introduction-group

說明
----

在 2D 環境中投射光線。光線由顏色、能量值、模式（見常數）以及其他各種參數（與範圍和陰影有關）來定義。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`2D 燈光和陰影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_Light2D_BlendMode>`       | :ref:`blend_mode<class_Light2D_property_blend_mode>`                       | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`color<class_Light2D_property_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`editor_only<class_Light2D_property_editor_only>`                     | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`enabled<class_Light2D_property_enabled>`                             | ``true``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`energy<class_Light2D_property_energy>`                               | ``1.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`   | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_max<class_Light2D_property_range_layer_max>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_min<class_Light2D_property_range_layer_min>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_max<class_Light2D_property_range_z_max>`                     | ``1024``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_min<class_Light2D_property_range_z_min>`                     | ``-1024``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`shadow_color<class_Light2D_property_shadow_color>`                   | ``Color(0, 0, 0, 0)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`shadow_enabled<class_Light2D_property_shadow_enabled>`               | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` | :ref:`shadow_filter<class_Light2D_property_shadow_filter>`                 | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>`   | ``0.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>` | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_height<class_Light2D_method_get_height>`\ (\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_height<class_Light2D_method_set_height>`\ (\ height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Light2D_ShadowFilter:

.. rst-class:: classref-enumeration

enum **ShadowFilter**: :ref:`🔗<enum_Light2D_ShadowFilter>`

.. _class_Light2D_constant_SHADOW_FILTER_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_NONE** = ``0``

不對陰影貼圖套用篩選。提供較硬的陰影邊緣，算繪速度最快。見 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. _class_Light2D_constant_SHADOW_FILTER_PCF5:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF5** = ``1``

對陰影貼圖使用百分比接近篩選（5 個樣本）。與硬陰影算繪相比較慢。見 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. _class_Light2D_constant_SHADOW_FILTER_PCF13:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF13** = ``2``

對陰影貼圖使用百分比接近篩選（13 個樣本）。最慢的陰影篩選模式，應謹慎使用。見 :ref:`shadow_filter<class_Light2D_property_shadow_filter>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_Light2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_Light2D_BlendMode>`

.. _class_Light2D_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_ADD** = ``0``

將 Light2D 對應的圖元值與其下方的圖元值相加。這是燈的常見行為。

.. _class_Light2D_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_SUB** = ``1``

將 Light2D 對應的圖元值減去其下方的圖元值，產生反光效果。

.. _class_Light2D_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_MIX** = ``2``

通過線性插值將 Light2D 對應的圖元值與其下方的圖元值混合。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Light2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_Light2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_Light2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_Light2D_BlendMode>`\ )
- :ref:`BlendMode<enum_Light2D_BlendMode>` **get_blend_mode**\ (\ )

The Light2D's blend mode.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

該 Light2D 的顏色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light2D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

如果為 ``true``\ ，Light2D 將只在編輯場景時出現。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Light2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``true``\ ，Light2D 會發光。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_Light2D_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

Light2D 的能量值。該值越大，光線就越強。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_range_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_cull_mask**\ (\ )

層遮罩。\ :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 與之配對的對象才會被該 Light2D 影響。另見 :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>`\ ，影響的是哪些物件能夠投射陰影。

\ **注意：**\ :ref:`DirectionalLight2D<class_DirectionalLight2D>` 會忽略 :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`\ ，始終對 2D 節點進行照明，無論其 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 的取值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_max** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_max>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_max**\ (\ )

受 Light2D 影響的對象的最大層數值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_min** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_min>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_min**\ (\ )

受 Light2D 影響的對象的最小層數值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_max** = ``1024`` :ref:`🔗<class_Light2D_property_range_z_max>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_max**\ (\ )

受 Light2D 影響的物體的最大 ``z`` 值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_min** = ``-1024`` :ref:`🔗<class_Light2D_property_range_z_min>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_min**\ (\ )

受 Light2D 影響的物體的最小 ``z`` 值。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Light2D_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

該 Light2D 投下的影子的顏色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light2D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shadow_enabled**\ (\ )

如果為 ``true``\ ，則該 Light2D 將投下陰影。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter:

.. rst-class:: classref-property

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **shadow_filter** = ``0`` :ref:`🔗<class_Light2D_property_shadow_filter>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_filter**\ (\ value\: :ref:`ShadowFilter<enum_Light2D_ShadowFilter>`\ )
- :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **get_shadow_filter**\ (\ )

Shadow filter type.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter_smooth:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_filter_smooth** = ``0.0`` :ref:`🔗<class_Light2D_property_shadow_filter_smooth>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_smooth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shadow_smooth**\ (\ )

陰影的平滑值。更高的值將導致更柔和的陰影，代價是在陰影算繪中可能出現可見的條紋。只有在 :ref:`shadow_filter<class_Light2D_property_shadow_filter>` 為 :ref:`SHADOW_FILTER_PCF5<class_Light2D_constant_SHADOW_FILTER_PCF5>` 或 :ref:`SHADOW_FILTER_PCF13<class_Light2D_constant_SHADOW_FILTER_PCF13>` 時，\ :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>` 才有效果。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_shadow_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_shadow_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_shadow_cull_mask**\ (\ )

陰影遮罩。與 :ref:`LightOccluder2D<class_LightOccluder2D>` 一起使用以投射陰影。只有配對 :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` 的遮擋物才會投射陰影。另見 :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`\ ，它影響哪些物件可以\ *接收*\ 光。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Light2D_method_get_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_height**\ (\ ) |const| :ref:`🔗<class_Light2D_method_get_height>`

返回該燈光的高度，用於 2D 法線對應。見 :ref:`PointLight2D.height<class_PointLight2D_property_height>` 和 :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light2D_method_set_height:

.. rst-class:: classref-method

|void| **set_height**\ (\ height\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light2D_method_set_height>`

設定該燈光的高度，用於 2D 法線對應。見 :ref:`PointLight2D.height<class_PointLight2D_property_height>` 和 :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
