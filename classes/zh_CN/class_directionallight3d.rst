:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight3D:

DirectionalLight3D
==================

**继承：** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

来自远处的平行光，如太阳光。

.. rst-class:: classref-introduction-group

描述
----

平行光是一种 :ref:`Light3D<class_Light3D>` 节点，它可以模拟覆盖整个场景的无限数量的平行光线。它用于距离场景较远的强光，以模拟日光或月光。

光线沿节点全局基的 -Z 方向发射。对于未旋转的光源，这意味着光线向前发射，照亮 3D 模型的正面（参见 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ ）。节点的位置会被忽略；只有基被用于确定光线方向。

.. rst-class:: classref-introduction-group

教程
----

- `3D 灯光与阴影 <../tutorials/3d/lights_and_shadows.html#directional-light>`__

- :doc:`伪造全局光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`directional_shadow_blend_splits<class_DirectionalLight3D_property_directional_shadow_blend_splits>` | ``false`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`     | ``0.8``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` | ``100.0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` | :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>`                 | ``2``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` | ``20.0``  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`           | ``0.1``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`           | ``0.2``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`           | ``0.5``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`       | :ref:`sky_mode<class_DirectionalLight3D_property_sky_mode>`                                               | ``0``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_DirectionalLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_DirectionalLight3D_ShadowMode>`

.. _class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_ORTHOGONAL** = ``0``

从正交的角度渲染整个场景的阴影图。这是最快的定向阴影模式。可能会导致近距离物体的阴影更模糊。

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_2_SPLITS** = ``1``

将视锥体分成2个区域，每个区域都有自己的阴影贴图。这种阴影模式是 :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` 和 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 在性能上的折衷。

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_4_SPLITS** = ``2``

将视锥体分成 4 个区域，每个区域都有自己的阴影贴图。这是最慢的定向阴影模式。

.. rst-class:: classref-item-separator

----

.. _enum_DirectionalLight3D_SkyMode:

.. rst-class:: classref-enumeration

enum **SkyMode**: :ref:`🔗<enum_DirectionalLight3D_SkyMode>`

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_AND_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_AND_SKY** = ``0``

使灯光在场景照明和天空渲染中都可见。

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_ONLY** = ``1``

使灯光仅在场景照明中可见（包括直接照明和全局照明）。使用此模式时，天空着色器看不到此灯光。

.. _class_DirectionalLight3D_constant_SKY_MODE_SKY_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_SKY_ONLY** = ``2``

使灯光仅对天空着色器可见。使用此模式时，灯光不会将灯光投射到场景中（通过直接照明或通过全局照明），但可以通过天空着色器访问。例如，当你想要控制天空效果而不照亮场景时（例如，在夜间循环期间），这可能很有用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_DirectionalLight3D_property_directional_shadow_blend_splits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional_shadow_blend_splits** = ``false`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_blend_splits>`

.. rst-class:: classref-property-setget

- |void| **set_blend_splits**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blend_splits_enabled**\ (\ )

如果为 ``true``\ ，会牺牲阴影的细节，换取分割区域之间更平滑的过渡。启用阴影混合分割同时也会带来一些性能消耗。当 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 为 :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` 时会被忽略。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_fade_start:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_fade_start** = ``0.8`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_fade_start>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

阴影开始消失时，\ :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 的比例。在 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 处，阴影会消失。默认值是平滑淡化和远处阴影可见性之间的平衡。如果相机移动较快且 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 较低，请考虑将 :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 降低到 ``0.8`` 以下，以使阴影过渡不那么明显。另一方面，如果调整了 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 来覆盖整个场景，可以将 :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 设置为 ``1.0``\ ，以防止阴影在远处逐渐淡化（它将会突然切断 ）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_max_distance** = ``100.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

阴影分割的最大距离。将这个值增大会让定向阴影在更远处可见，代价是整体的阴影细节降低和性能（因为渲染定向阴影时需要包含更多的物体）。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **directional_shadow_mode** = ``2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

灯光的阴影渲染算法。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_pancake_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_pancake_size** = ``20.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_pancake_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

设置定向阴影压平区域的大小。压平区域会偏移阴影相机视锥体的起点，为阴影提供更高的有效深度分辨率。但是，较大的压平区大小会导致靠近视锥体边缘的大型物体的阴影出现伪影。减少压平区大小会有所帮助。将大小设置为 ``0`` 会关闭该压平效果。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_1:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_1** = ``0.1`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_1>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

相机到阴影分割 1 的距离。相对于 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。只有当 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 为 :ref:`SHADOW_PARALLEL_2_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS>` 或 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 时才使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_2:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_2** = ``0.2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_2>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

从阴影分割 1 到阴影分割 2 的距离。相对于 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。仅在 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 为 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 时使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_3:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_3** = ``0.5`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_3>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

从阴影分割 2 到阴影分割 3 的距离。相对于 :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`\ 。只有当 :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` 为 :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` 时才使用。

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_sky_mode:

.. rst-class:: classref-property

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **sky_mode** = ``0`` :ref:`🔗<class_DirectionalLight3D_property_sky_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sky_mode**\ (\ value\: :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`\ )
- :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **get_sky_mode**\ (\ )

设置该 **DirectionalLight3D** 是仅在天空中可见，仅在场景中可见，还是在天空和场景中均可见。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
