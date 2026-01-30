:github_url: hide

.. _class_CompositorEffect:

CompositorEffect
================

**实验性：** The implementation may change as more of the rendering internals are exposed over time.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于创建自定义渲染效果的资源。

.. rst-class:: classref-introduction-group

描述
----

这种资源定义的是自定义渲染效果，可以通过视口的 :ref:`Environment<class_Environment>` 应用到 :ref:`Viewport<class_Viewport>` 上。可以实现在渲染管道的给定阶段进行渲染期间调用的回调，并允许插入其他阶段。请注意，该回调是在渲染线程上执行的。CompositorEffect 是抽象基类，实现特定的渲染逻辑必须对该类进行扩展。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`合成器 <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_color<class_CompositorEffect_property_access_resolved_color>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_depth<class_CompositorEffect_property_access_resolved_depth>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` | :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`enabled<class_CompositorEffect_property_enabled>`                                 |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_motion_vectors<class_CompositorEffect_property_needs_motion_vectors>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_normal_roughness<class_CompositorEffect_property_needs_normal_roughness>`   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_separate_specular<class_CompositorEffect_property_needs_separate_specular>` |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_render_callback<class_CompositorEffect_private_method__render_callback>`\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_CompositorEffect_EffectCallbackType:

.. rst-class:: classref-enumeration

enum **EffectCallbackType**: :ref:`🔗<enum_CompositorEffect_EffectCallbackType>`

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_OPAQUE** = ``0``

回调在不透明渲染阶段之前调用，但在深度前置阶段之后（如果适用）。

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_OPAQUE** = ``1``

回调在不透明渲染阶段之后调用，但在渲染天空之前。

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_SKY** = ``2``

回调在渲染天空之后调用，但在创建后台缓冲之前（如果启用，则在次表面散射和/或屏幕空间反射之前）。

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT** = ``3``

回调在透明渲染阶段之前调用，但在渲染天空和创建后台缓冲区之后。

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_TRANSPARENT** = ``4``

回调在透明渲染阶段之后调用，但在内置后期效果和输出到渲染目标之前。

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_MAX** = ``5``

代表 :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CompositorEffect_property_access_resolved_color:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_color** :ref:`🔗<class_CompositorEffect_property_access_resolved_color>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_color**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_color**\ (\ )

如果为 ``true`` 并且启用了 MSAA，则会在执行该效果之前触发颜色缓冲的解析。

\ **注意：**\ 要在 :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` 中访问解析后的缓冲，请使用：

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var color_buffer = render_scene_buffers.get_texture("render_buffers", "color")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_access_resolved_depth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_depth** :ref:`🔗<class_CompositorEffect_property_access_resolved_depth>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_depth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_depth**\ (\ )

如果为 ``true`` 并且启用了 MSAA，则会在执行该效果之前触发深度缓冲的解析。

\ **注意：**\ 要在 :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` 中访问解析后的缓冲，请使用：

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var depth_buffer = render_scene_buffers.get_texture("render_buffers", "depth")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_effect_callback_type:

.. rst-class:: classref-property

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **effect_callback_type** :ref:`🔗<class_CompositorEffect_property_effect_callback_type>`

.. rst-class:: classref-property-setget

- |void| **set_effect_callback_type**\ (\ value\: :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>`\ )
- :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **get_effect_callback_type**\ (\ )

实现的效果类型，决定在渲染的哪个阶段调用回调。

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** :ref:`🔗<class_CompositorEffect_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

如果为 ``true``\ ，则该渲染效果会应用到所有相关视口。

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_motion_vectors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_motion_vectors** :ref:`🔗<class_CompositorEffect_property_needs_motion_vectors>`

.. rst-class:: classref-property-setget

- |void| **set_needs_motion_vectors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_motion_vectors**\ (\ )

如果为 ``true``\ ，则会在不透明渲染状态下触发运动向量的计算。

\ **注意：**\ 要在 :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` 中访问运动向量缓冲，请使用：

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var motion_buffer = render_scene_buffers.get_velocity_texture()

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_normal_roughness:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_normal_roughness** :ref:`🔗<class_CompositorEffect_property_needs_normal_roughness>`

.. rst-class:: classref-property-setget

- |void| **set_needs_normal_roughness**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_normal_roughness**\ (\ )

如果为 ``true``\ ，则会在深度预阶段中输出法线和粗糙度数据，仅适用于 Forward+ 渲染器。

\ **注意：**\ 在 :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` 中访问粗糙度缓冲：

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var roughness_buffer = render_scene_buffers.get_texture("forward_clustered", "normal_roughness")

原始的法线和粗糙度缓冲使用优化格式存储，与空间着色器中的格式不同。对缓冲采样时必须应用转换函数。请使用从\ `这里 <https://github.com/godotengine/godot/blob/da5f39889f155658cef7f7ec3cc1abb94e17d815/servers/rendering/renderer_rd/shaders/forward_clustered/scene_forward_clustered_inc.glsl#L334-L341>`__\ 复制的函数：

::

    vec4 normal_roughness_compatibility(vec4 p_normal_roughness) {
        float roughness = p_normal_roughness.w;
        if (roughness > 0.5) {
            roughness = 1.0 - roughness;
        }
        roughness /= (127.0 / 255.0);
        return vec4(normalize(p_normal_roughness.xyz * 2.0 - 1.0) * 0.5 + 0.5, roughness);
    }

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_separate_specular:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_separate_specular** :ref:`🔗<class_CompositorEffect_property_needs_separate_specular>`

.. rst-class:: classref-property-setget

- |void| **set_needs_separate_specular**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_separate_specular**\ (\ )

如果为 ``true``\ ，则会触发镜面反射数据渲染至独立缓冲，在应用效果后进行混合，仅适用于 Forward+ 渲染器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CompositorEffect_private_method__render_callback:

.. rst-class:: classref-method

|void| **_render_callback**\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| :ref:`🔗<class_CompositorEffect_private_method__render_callback>`

请使用自定义的渲染代码实现该方法。\ ``effect_callback_type`` 应当与 :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>` 中指定的效果回调类型一致。可以通过 ``render_data`` 访问渲染状态，这个状态只有在渲染时有效，不应该存储。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
