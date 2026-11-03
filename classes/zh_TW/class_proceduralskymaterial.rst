:github_url: hide

.. _class_ProceduralSkyMaterial:

ProceduralSkyMaterial
=====================

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以圖塊的形式向 :ref:`TileSet<class_TileSet>` 資源暴露一組場景。

.. rst-class:: classref-introduction-group

說明
----

**ProceduralSkyMaterial** 提供了一種通過為太陽、天空和地面定義程式參數，來快速建立一個有效背景的方法。天空和地面由主顏色、地平線顏色、以及在它們之間插值的緩動曲線定義。太陽通過天空中的位置、顏色、以及緩動曲線結束時距太陽的最大角度來描述。因此，最大角度定義了天空中太陽的大小。

\ **ProceduralSkyMaterial** 支援最多 4 個太陽，它們使用場景中前四個 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 節點的顏色、能量、方向和角距離。這意味著太陽由其相應的 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 的屬性單獨定義，並由 :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>` 和 :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>` 全域定義。

\ **ProceduralSkyMaterial** 使用輕量級著色器來繪製天空，因此適合即時更新。這使得它成為簡單、低計算成本且不切實際的天空的絕佳選擇。如果你需要更真實的程式化選項，請使用 :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_ProceduralSkyMaterial_property_energy_multiplier>`               | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>`           | ``Color(0.2, 0.169, 0.133, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_curve<class_ProceduralSkyMaterial_property_ground_curve>`                         | ``0.02``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`ground_energy_multiplier<class_ProceduralSkyMaterial_property_ground_energy_multiplier>` | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>`         | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>`                               |                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`             | ``Color(1, 1, 1, 1)``                |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_curve<class_ProceduralSkyMaterial_property_sky_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`       | ``1.0``                              |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>`               | ``Color(0.6463, 0.6558, 0.6708, 1)`` |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>`                       | ``Color(0.385, 0.454, 0.55, 1)``     |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>`                       | ``30.0``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_curve<class_ProceduralSkyMaterial_property_sun_curve>`                               | ``0.15``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_ProceduralSkyMaterial_property_use_debanding>`                       | ``true``                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ProceduralSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

天空整體亮度的乘數。數值越高，天空就越亮。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_bottom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_bottom_color** = ``Color(0.2, 0.169, 0.133, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_bottom_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_bottom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_bottom_color**\ (\ )

地面底部的顏色。會與 :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>` 混合。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_curve** = ``0.02`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_curve>`

.. rst-class:: classref-property-setget

- |void| **set_ground_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_curve**\ (\ )

從 :ref:`ground_horizon_color<class_ProceduralSkyMaterial_property_ground_horizon_color>` 漸變到 :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>` 的速度。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **ground_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_ground_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ground_energy_multiplier**\ (\ )

地面顏色的乘數。值越高，地面越亮。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_ground_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_ground_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_horizon_color**\ (\ )

地面在地平線處的顏色。會與 :ref:`ground_bottom_color<class_ProceduralSkyMaterial_property_ground_bottom_color>` 混合。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **sky_cover** :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_sky_cover**\ (\ )

要使用的天空覆蓋紋理。這個紋理必須使用一個等角投影（類似於\ :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`\ ）。 該紋理的顏色將被\ *新增*\ 到現有的天空顏色中，並將乘以 :ref:`sky_energy_multiplier<class_ProceduralSkyMaterial_property_sky_energy_multiplier>` 和 :ref:`sky_cover_modulate<class_ProceduralSkyMaterial_property_sky_cover_modulate>`\ 。這主要適用於顯示夜晚的星星，但也可以用來顯示白天或夜晚的雲彩（具有非物理精確性的外觀）。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_cover_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_cover_modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_cover_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_sky_cover_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_cover_modulate**\ (\ )

套用於 :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>` 紋理的色調。可用於改變天空覆蓋的顏色或不透明度，不受天空能量的影響，對於晝夜轉換或天氣轉換很有用。只有在 :ref:`sky_cover<class_ProceduralSkyMaterial_property_sky_cover>` 中定義了紋理時才有效。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sky_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_curve**\ (\ )

從 :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>` 漸變到 :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>` 的速度。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **sky_energy_multiplier** = ``1.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_sky_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sky_energy_multiplier**\ (\ )

天空顏色的倍數。值越高天空越亮。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_horizon_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_horizon_color** = ``Color(0.6463, 0.6558, 0.6708, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_horizon_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_horizon_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_horizon_color**\ (\ )

天空在地平線處的顏色。會與 :ref:`sky_top_color<class_ProceduralSkyMaterial_property_sky_top_color>` 混合。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sky_top_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **sky_top_color** = ``Color(0.385, 0.454, 0.55, 1)`` :ref:`🔗<class_ProceduralSkyMaterial_property_sky_top_color>`

.. rst-class:: classref-property-setget

- |void| **set_sky_top_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_sky_top_color**\ (\ )

天空在頂部的顏色。會與 :ref:`sky_horizon_color<class_ProceduralSkyMaterial_property_sky_horizon_color>` 混合。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_angle_max** = ``30.0`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_sun_angle_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_angle_max**\ (\ )

太陽完全淡出消失的位置與太陽中心的距離。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_sun_curve:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_curve** = ``0.15`` :ref:`🔗<class_ProceduralSkyMaterial_property_sun_curve>`

.. rst-class:: classref-property-setget

- |void| **set_sun_curve**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_curve**\ (\ )

在太陽圓盤邊緣和 :ref:`sun_angle_max<class_ProceduralSkyMaterial_property_sun_angle_max>` 之間，太陽消失得有多快。

.. rst-class:: classref-item-separator

----

.. _class_ProceduralSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_ProceduralSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

如果為 ``true``\ ，則啟用去色帶。去色帶會增加少量噪點，這有助於減少天空中顏色的平滑變化而出現的色帶。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
