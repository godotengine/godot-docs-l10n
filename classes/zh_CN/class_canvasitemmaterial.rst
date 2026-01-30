:github_url: hide

.. _class_CanvasItemMaterial:

CanvasItemMaterial
==================

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`CanvasItem<class_CanvasItem>`\ 的材质。

.. rst-class:: classref-introduction-group

描述
----

**CanvasItemMaterial**\ 提供了一种修改与CanvasItem相关联的纹理的方法。他们专注于描述纹理的混合和照明行为。使用\ :ref:`ShaderMaterial<class_ShaderMaterial>`\ 可以更全面地自定义材质与\ :ref:`CanvasItem<class_CanvasItem>`\ 的交互。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` | :ref:`blend_mode<class_CanvasItemMaterial_property_blend_mode>`                           | ``0``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` | :ref:`light_mode<class_CanvasItemMaterial_property_light_mode>`                           | ``0``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                               | :ref:`particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>` |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>`         |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                               | :ref:`particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` |           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>`         | ``false`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_CanvasItemMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_CanvasItemMaterial_BlendMode>`

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

混合混合模式。假设颜色与 Alpha 值（不透明度）无关。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

添加混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

减去混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

正片叠底混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_PREMULT_ALPHA** = ``4``

混合混合模式。假定颜色已预先乘以 Alpha 值（不透明度）。

.. rst-class:: classref-item-separator

----

.. _enum_CanvasItemMaterial_LightMode:

.. rst-class:: classref-enumeration

enum **LightMode**: :ref:`🔗<enum_CanvasItemMaterial_LightMode>`

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_NORMAL** = ``0``

使用光敏和非光敏材料属性渲染材质。

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_UNSHADED:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_UNSHADED** = ``1``

将材质渲染成没有光的样子。

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_LIGHT_ONLY** = ``2``

将材质渲染成只有光的样子。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CanvasItemMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **get_blend_mode**\ (\ )

将材质的渲染应用于基础纹理的方式。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_light_mode:

.. rst-class:: classref-property

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **light_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_light_mode>`

.. rst-class:: classref-property-setget

- |void| **set_light_mode**\ (\ value\: :ref:`LightMode<enum_CanvasItemMaterial_LightMode>`\ )
- :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **get_light_mode**\ (\ )

材质对照明的反应方式。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_h_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_h_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_h_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_h_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_h_frames**\ (\ )

:ref:`GPUParticles2D<class_GPUParticles2D>` 或 :ref:`CPUParticles2D<class_CPUParticles2D>` 指定给 :ref:`Texture2D<class_Texture2D>` 的精灵表中拥有的列数。

\ **注意：**\ 该属性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` 为 ``true`` 时，才会在编辑器中被使用和可见。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_anim_loop** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_loop>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_anim_loop**\ (\ )

如果为 ``true``\ ，粒子动画将循环播放。

\ **注意：**\ 该属性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>`\ 为 ``true`` 时，才会在编辑器中被使用和可见。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_v_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_v_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_v_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_v_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_v_frames**\ (\ )

:ref:`GPUParticles2D<class_GPUParticles2D>` 或 :ref:`CPUParticles2D<class_CPUParticles2D>` 指定给 :ref:`Texture2D<class_Texture2D>` 的精灵表中拥有的行数。

\ **注意：**\ 该属性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` 为 ``true`` 时，才会在编辑器中被使用和可见。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_animation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_animation** = ``false`` :ref:`🔗<class_CanvasItemMaterial_property_particles_animation>`

.. rst-class:: classref-property-setget

- |void| **set_particles_animation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_animation**\ (\ )

如果 ``true`` ，在分配给 :ref:`GPUParticles2D<class_GPUParticles2D>` 和 :ref:`CPUParticles2D<class_CPUParticles2D>` 节点时，启用基于精灵表的动画功能。\ :ref:`ParticleProcessMaterial.anim_speed_max<class_ParticleProcessMaterial_property_anim_speed_max>` 或 :ref:`CPUParticles2D.anim_speed_max<class_CPUParticles2D_property_anim_speed_max>` 也应该设置为正值，才能播放动画。

这个属性（以及其他依赖它的 ``particles_anim_*`` 属性）对其他类型的节点没有影响。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
