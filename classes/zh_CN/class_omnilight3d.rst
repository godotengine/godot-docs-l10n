:github_url: hide

.. meta::
	:keywords: point

.. _class_OmniLight3D:

OmniLight3D
===========

**继承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

全向光，如灯泡或蜡烛。

.. rst-class:: classref-introduction-group

描述
----

全向光是 :ref:`Light3D<class_Light3D>` 的一类，可以向所有方向发射光。光随距离而衰减，该衰减可以通过修改其能量、半径和衰减参数来配置。

\ **注意：**\ 使用移动渲染方式时，每个网格资源上只能显示 8 个全向灯。尝试在单个网格资源上显示 8 个以上的全向灯，将导致全向灯随着相机移动而闪烁。使用 Compatibility 渲染方式时，默认情况下每个网格资源上只能显示 8 个全向灯，但可以通过调整 :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>` 来增加。

\ **注意：**\ 当使用 Mobile 或 Compatibility 渲染方法时，全向灯只会正确影响可见性 AABB 与该灯光的 AABB 相交的网格。如果使用了着色器将网格进行了变形，超出了 AABB 的范围，则必须将该网格的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` 增大。否则灯光在该网格上可能不可见。

.. rst-class:: classref-introduction-group

教程
----

- `3D 灯光与阴影 <../tutorials/3d/lights_and_shadows.html#omni-light>`__

- :doc:`伪造全局光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

将阴影渲染到双抛物面纹理。比 :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>` 更快，但质量较差。

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

将阴影渲染至立方体贴图。比 :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>` 更慢，但质量更高。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

控制全向灯的距离衰减函数。

值为 ``0.0`` 将在大部分范围内保持恒定亮度，但会平滑地衰减范围边缘的光线。对于物理上准确的灯光，请使用值 ``2.0``\ ，因为它会产生正确的平方反比衰减。

\ **注意：**\ 将衰减设置为 ``2.0`` 或更高可能会导致远处的物体接收到的光线最少，即使在范围内也是如此。例如，在 ``4096`` 的范围内，\ ``100`` 单位处的物体会衰减 ``0.0001`` 倍。默认亮度为 ``1``\ ，光线在该距离处不可见。

\ **注意：**\ 使用负值或高于 ``10.0`` 的值可能会导致意外结果。

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

该灯光的半径。请注意，根据使用的 :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>`\ ，有效照明区域可能看起来更小。无论使用 :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` 为何值，光线永远不会到达该半径之外的任何地方。

\ **注意：**\ :ref:`omni_range<class_OmniLight3D_property_omni_range>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （无论是该灯光的缩放还是其父节点的缩放）的影响。

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
