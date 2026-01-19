:github_url: hide

.. _class_PhysicalSkyMaterial:

PhysicalSkyMaterial
===================

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通过一组物理属性定义 :ref:`Sky<class_Sky>` 资源的天空的材质。

.. rst-class:: classref-introduction-group

描述
----

该 **PhysicalSkyMaterial** 使用 Preetham 解析日光模型，根据物理属性绘制一个天空。这会产生比 :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>` 更加逼真的天空，但速度稍慢且灵活性较差。

该 **PhysicalSkyMaterial** 仅支持一个太阳。太阳的颜色、能量和方向，取自场景树中的第一个 :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ 。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_PhysicalSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

天空整体亮度的乘数。数值越高，天空就越亮。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_ground_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_color** = ``Color(0.1, 0.07, 0.034, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_ground_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_color**\ (\ )

调制天空下半部分的 :ref:`Color<class_Color>`\ ，这部分代表地面。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_coefficient** = ``0.005`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_mie_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_coefficient**\ (\ )

控制天空中\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 的强度。米氏散射是光与较大的粒子（例如水）碰撞的结果。在地球上，米氏散射的结果是太阳和地平线周围的颜色发白。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **mie_color** = ``Color(0.69, 0.729, 0.812, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_color>`

.. rst-class:: classref-property-setget

- |void| **set_mie_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_mie_color**\ (\ )

控制天空中\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 效果的 :ref:`Color<class_Color>`\ 。虽然在物理上并不准确，但可以创造出看上去像的外星球的天空。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_eccentricity:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_eccentricity** = ``0.8`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_eccentricity>`

.. rst-class:: classref-property-setget

- |void| **set_mie_eccentricity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_eccentricity**\ (\ )

控制\ `米氏散射 <https://zh.wikipedia.org/wiki/%E7%B1%B3%E6%B0%8F%E6%95%A3%E5%B0%84>`__\ 的方向。值为 ``1`` 表示当光照到粒子时会直接穿过。值为\ ``-1`` 表示所有的光都是向后散射的。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_night_sky:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **night_sky** :ref:`🔗<class_PhysicalSkyMaterial_property_night_sky>`

.. rst-class:: classref-property-setget

- |void| **set_night_sky**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_night_sky**\ (\ )

用于夜空的 :ref:`Texture2D<class_Texture2D>`\ 。会添加到天空中，所以足够亮的话在白天也可能会看到。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **rayleigh_coefficient** = ``2.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rayleigh_coefficient**\ (\ )

控制\ `瑞利散射 <https://zh.wikipedia.org/zh/%E7%91%9E%E5%88%A9%E6%95%A3%E5%B0%84>`__\ 的强度。瑞利散射是光与较小粒子碰撞的结果，是天空呈蓝色的原因。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **rayleigh_color** = ``Color(0.3, 0.405, 0.6, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_color>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_rayleigh_color**\ (\ )

控制\ `瑞利散射 <https://zh.wikipedia.org/zh/%E7%91%9E%E5%88%A9%E6%95%A3%E5%B0%84>`__\ 的 :ref:`Color<class_Color>`\ 。虽然在物理上并不准确，但可以创造出看上去像的外星球的天空。例如，将其设为红色 :ref:`Color<class_Color>`\ ，可以得到火星大气的外观，日落时为蓝色。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_sun_disk_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_disk_scale** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_sun_disk_scale>`

.. rst-class:: classref-property-setget

- |void| **set_sun_disk_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_disk_scale**\ (\ )

设置太阳圆盘的大小。默认值基于从地球对太阳的感知大小。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_turbidity:

.. rst-class:: classref-property

:ref:`float<class_float>` **turbidity** = ``10.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_turbidity>`

.. rst-class:: classref-property-setget

- |void| **set_turbidity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_turbidity**\ (\ )

设置大气的厚度。高浊度会产生雾状外观的大气，而低浊度会产生更清晰的大气。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_PhysicalSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

如果为 ``true``\ ，则启用去色带。去色带会增加少量噪点，这有助于减少天空中颜色的平滑变化而出现的色带。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
