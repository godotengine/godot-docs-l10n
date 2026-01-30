:github_url: hide

.. _class_CompositorEffect:

CompositorEffect
================

**實驗性：** The implementation may change as more of the rendering internals are exposed over time.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

This resource allows for creating a custom rendering effect.

.. rst-class:: classref-introduction-group

說明
----

This resource defines a custom rendering effect that can be applied to :ref:`Viewport<class_Viewport>`\ s through the viewports' :ref:`Environment<class_Environment>`. You can implement a callback that is called during rendering at a given stage of the rendering pipeline and allows you to insert additional passes. Note that this callback happens on the rendering thread. CompositorEffect is an abstract base class and must be extended to implement specific rendering logic.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`The Compositor <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_CompositorEffect_EffectCallbackType:

.. rst-class:: classref-enumeration

enum **EffectCallbackType**: :ref:`🔗<enum_CompositorEffect_EffectCallbackType>`

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_OPAQUE** = ``0``

The callback is called before our opaque rendering pass, but after depth prepass (if applicable).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_OPAQUE** = ``1``

The callback is called after our opaque rendering pass, but before our sky is rendered.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_SKY** = ``2``

The callback is called after our sky is rendered, but before our back buffers are created (and if enabled, before subsurface scattering and/or screen space reflections).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT** = ``3``

The callback is called before our transparent rendering pass, but after our sky is rendered and we've created our back buffers.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_TRANSPARENT** = ``4``

The callback is called after our transparent rendering pass, but before any built-in post-processing effects and output to our render target.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_MAX** = ``5``

Represents the size of the :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CompositorEffect_property_access_resolved_color:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_color** :ref:`🔗<class_CompositorEffect_property_access_resolved_color>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_color**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_color**\ (\ )

If ``true`` and MSAA is enabled, this will trigger a color buffer resolve before the effect is run.

\ **Note:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, to access the resolved buffer use:

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

If ``true`` and MSAA is enabled, this will trigger a depth buffer resolve before the effect is run.

\ **Note:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, to access the resolved buffer use:

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

The type of effect that is implemented, determines at what stage of rendering the callback is called.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** :ref:`🔗<class_CompositorEffect_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

If ``true`` this rendering effect is applied to any viewport it is added to.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_motion_vectors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_motion_vectors** :ref:`🔗<class_CompositorEffect_property_needs_motion_vectors>`

.. rst-class:: classref-property-setget

- |void| **set_needs_motion_vectors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_motion_vectors**\ (\ )

If ``true`` this triggers motion vectors being calculated during the opaque render state.

\ **Note:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, to access the motion vector buffer use:

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

If ``true`` this triggers normal and roughness data to be output during our depth pre-pass, only applicable for the Forward+ renderer.

\ **Note:** In :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>`, to access the roughness buffer use:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var roughness_buffer = render_scene_buffers.get_texture("forward_clustered", "normal_roughness")

The raw normal and roughness buffer is stored in an optimized format, different than the one available in Spatial shaders. When sampling the buffer, a conversion function must be applied. Use this function, copied from `here <https://github.com/godotengine/godot/blob/da5f39889f155658cef7f7ec3cc1abb94e17d815/servers/rendering/renderer_rd/shaders/forward_clustered/scene_forward_clustered_inc.glsl#L334-L341>`__:

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

If ``true`` this triggers specular data being rendered to a separate buffer and combined after effects have been applied, only applicable for the Forward+ renderer.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CompositorEffect_private_method__render_callback:

.. rst-class:: classref-method

|void| **_render_callback**\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| :ref:`🔗<class_CompositorEffect_private_method__render_callback>`

Implement this function with your custom rendering code. ``effect_callback_type`` should always match the effect callback type you've specified in :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`. ``render_data`` provides access to the rendering state, it is only valid during rendering and should not be stored.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
