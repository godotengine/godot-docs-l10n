:github_url: hide

.. _class_PhysicalSkyMaterial:

PhysicalSkyMaterial
===================

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

透過一組物理屬性定義 :ref:`Sky<class_Sky>` 資源的天空的材質。

.. rst-class:: classref-introduction-group

說明
----

該 **PhysicalSkyMaterial** 使用 Preetham 解析日光模型，根據物理屬性繪製一個天空。這會產生比 :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>` 更加逼真的天空，但速度稍慢且靈活性較差。

該 **PhysicalSkyMaterial** 僅支援一個太陽。太陽的顏色、能量和方向，取自場景樹中的第一個 :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PhysicalSkyMaterial_property_energy_multiplier>`       | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_color<class_PhysicalSkyMaterial_property_ground_color>`                 | ``Color(0.1, 0.07, 0.034, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_coefficient<class_PhysicalSkyMaterial_property_mie_coefficient>`           | ``0.005``                        |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`mie_color<class_PhysicalSkyMaterial_property_mie_color>`                       | ``Color(0.69, 0.729, 0.812, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_eccentricity<class_PhysicalSkyMaterial_property_mie_eccentricity>`         | ``0.8``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`night_sky<class_PhysicalSkyMaterial_property_night_sky>`                       |                                  |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`rayleigh_coefficient<class_PhysicalSkyMaterial_property_rayleigh_coefficient>` | ``2.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`rayleigh_color<class_PhysicalSkyMaterial_property_rayleigh_color>`             | ``Color(0.3, 0.405, 0.6, 1)``    |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_disk_scale<class_PhysicalSkyMaterial_property_sun_disk_scale>`             | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`turbidity<class_PhysicalSkyMaterial_property_turbidity>`                       | ``10.0``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_PhysicalSkyMaterial_property_use_debanding>`               | ``true``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicalSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

天空整體亮度的乘數。數值越高，天空就越亮。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_ground_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_color** = ``Color(0.1, 0.07, 0.034, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_ground_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_color**\ (\ )

調變天空下半部分的 :ref:`Color<class_Color>`\ ，這部分代表地面。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_coefficient** = ``0.005`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_mie_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_coefficient**\ (\ )

控制天空中\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 的強度。米氏散射是光與較大的粒子（例如水）碰撞的結果。在地球上，米氏散射的結果是太陽和地平線周圍的顏色發白。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **mie_color** = ``Color(0.69, 0.729, 0.812, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_color>`

.. rst-class:: classref-property-setget

- |void| **set_mie_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_mie_color**\ (\ )

控制天空中\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 效果的 :ref:`Color<class_Color>`\ 。雖然在物理上並不準確，但可以創造出看上去像的外星球的天空。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_eccentricity:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_eccentricity** = ``0.8`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_eccentricity>`

.. rst-class:: classref-property-setget

- |void| **set_mie_eccentricity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_eccentricity**\ (\ )

控制\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 的方向。值為 ``1`` 表示當光照到粒子時會直接穿過。值為\ ``-1`` 表示所有的光都是向後散射的。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_night_sky:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **night_sky** :ref:`🔗<class_PhysicalSkyMaterial_property_night_sky>`

.. rst-class:: classref-property-setget

- |void| **set_night_sky**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_night_sky**\ (\ )

用於夜空的 :ref:`Texture2D<class_Texture2D>`\ 。會新增到天空中，所以足夠亮的話在白天也可能會看到。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **rayleigh_coefficient** = ``2.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rayleigh_coefficient**\ (\ )

控制\ `瑞利散射 <https://zh.wikipedia.org/zh/%E7%91%9E%E5%88%A9%E6%95%A3%E5%B0%84>`__\ 的強度。瑞利散射是光與較小粒子碰撞的結果，是天空呈藍色的原因。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **rayleigh_color** = ``Color(0.3, 0.405, 0.6, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_color>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_rayleigh_color**\ (\ )

控制\ `瑞利散射 <https://zh.wikipedia.org/zh/%E7%91%9E%E5%88%A9%E6%95%A3%E5%B0%84>`__\ 的 :ref:`Color<class_Color>`\ 。雖然在物理上並不準確，但可以創造出看上去像的外星球的天空。例如，將其設為紅色 :ref:`Color<class_Color>`\ ，可以得到火星大氣的外觀，日落時為藍色。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_sun_disk_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_disk_scale** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_sun_disk_scale>`

.. rst-class:: classref-property-setget

- |void| **set_sun_disk_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_disk_scale**\ (\ )

設定太陽圓盤的大小。預設值基於從地球對太陽的感知大小。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_turbidity:

.. rst-class:: classref-property

:ref:`float<class_float>` **turbidity** = ``10.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_turbidity>`

.. rst-class:: classref-property-setget

- |void| **set_turbidity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_turbidity**\ (\ )

設定大氣的厚度。高濁度會產生霧狀外觀的大氣，而低濁度會產生更清晰的大氣。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_PhysicalSkyMaterial_property_use_debanding>`

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
