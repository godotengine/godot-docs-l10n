:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**继承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

面光源，如霓虹灯管或屏幕。

.. rst-class:: classref-introduction-group

描述
----

面光源是一种 :ref:`Light3D<class_Light3D>` 节点，它会在二维区域（矩形区域）上发射光线。光线会随着距离衰减。可以通过更改能量、\ :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>` 和 :ref:`area_range<class_AreaLight3D_property_area_range>` 来配置这种衰减。

光线沿该节点全局基的 -Z 方向发射。对于未旋转的光源，这意味着光线向前发射，照亮 3D 模型的正面（参见 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ ）。

面光源可以使用 PCSS 投射柔和阴影，可以通过调整大小参数来控制阴影效果。阴影贴图从光源中心绘制。

\ **注意：**\ 面光源在移动端和兼容渲染器中的支持有限。在移动端渲染器中，半影的大小不会像 PCSS 那样变化。在兼容渲染器中，面光源无法投射阴影。

\ **警告：**\ 如果投射阴影的物体细分级别不足，且距离面光源非常近，则面光源投射的阴影可能看起来不正确。这与 :ref:`OmniLight3D<class_OmniLight3D>` 的双抛物面阴影模式的限制相同。

\ **性能：**\ 与全向光和聚光灯相比，面光源对 GPU 的要求更高。在 Forward+ 中，一旦视锥体中存在一个面光源，\ *所有*\ 渲染对象都会产生额外的 GPU 成本（由于集群照明的特性）。建议仅在电影级画面或面向高端设备时使用。

.. rst-class:: classref-introduction-group

教程
----

- `3D 灯光与阴影 <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

控制面光源的距离衰减函数。

值为 ``0.0`` 将在大部分范围内保持恒定亮度，但将平滑地衰减范围边缘的光线。对于物理上准确的灯光，请使用值 ``2.0``\ ，因为它会产生正确的平方反比衰减。

\ **注意：**\ 将衰减设置为 ``2.0`` 或更高可能会导致远处的物体接收到的光线最少，即使在范围内也是如此。例如，在 ``4096`` 的范围内，\ ``100`` 单位处的物体会衰减 ``0.0001`` 倍。默认亮度为 ``1``\ ，光线在该距离处不可见。

\ **注意：**\ 使用负值或高于 ``10.0`` 的值可能会导致意外结果。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

定义灯光的能量是否会按其表面积进行归一化（即除以表面积）。如果设为 ``true``\ ，改变灯光的大小不会影响其总能量输出，也不会剧烈改变场景的整体亮度。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

该区域在米为单位下的范围。它决定了从该区域的任意一点出发，还能发射光线的最大距离。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

该面的范围（宽度和高度），单位为米。

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

An optional texture to use as a light source. Changing the texture at runtime might impact performance, as it needs to be drawn to the area light atlas with filtered mipmaps.

If no texture is assigned, the area light emits uniform light across its surface.

\ **Note:** Area light textures are only supported in the Forward+ and Mobile rendering methods, not Compatibility. To reduce the performance impact of switching textures at runtime, make sure each dimension of an area texture is either a multiple of 128 pixels, or a power of two. This removes the need for a scaling pass, which slows down texture changes. The textures don't necessarily have to be square to be optimal. Examples of optimal texture sizes include 32×64, 128×128, and 256×384.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
