:github_url: hide

.. _class_CanvasItemMaterial:

CanvasItemMaterial
==================

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`CanvasItem<class_CanvasItem>`\ 的材質。

.. rst-class:: classref-introduction-group

說明
----

**CanvasItemMaterial**\ 提供了一種修改與CanvasItem相關聯的紋理的方法。他們專注於描述紋理的混合和照明行為。使用\ :ref:`ShaderMaterial<class_ShaderMaterial>`\ 可以更全面地自訂材質與\ :ref:`CanvasItem<class_CanvasItem>`\ 的互動。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_CanvasItemMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_CanvasItemMaterial_BlendMode>`

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

混合混合模式。假設顏色與 Alpha 值（不透明度）無關。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

新增混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

減去混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

正片疊底混合模式。

.. _class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **BLEND_MODE_PREMULT_ALPHA** = ``4``

混合混合模式。假定顏色已預先乘以 Alpha 值（不透明度）。

.. rst-class:: classref-item-separator

----

.. _enum_CanvasItemMaterial_LightMode:

.. rst-class:: classref-enumeration

enum **LightMode**: :ref:`🔗<enum_CanvasItemMaterial_LightMode>`

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_NORMAL** = ``0``

使用光敏和非光敏材料屬性渲染材質。

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_UNSHADED:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_UNSHADED** = ``1``

將材質渲染成沒有光的樣子。

.. _class_CanvasItemMaterial_constant_LIGHT_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **LIGHT_MODE_LIGHT_ONLY** = ``2``

將材質渲染成只有光的樣子。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CanvasItemMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_CanvasItemMaterial_BlendMode>` **get_blend_mode**\ (\ )

將材質的渲染套用於基礎紋理的方式。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_light_mode:

.. rst-class:: classref-property

:ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **light_mode** = ``0`` :ref:`🔗<class_CanvasItemMaterial_property_light_mode>`

.. rst-class:: classref-property-setget

- |void| **set_light_mode**\ (\ value\: :ref:`LightMode<enum_CanvasItemMaterial_LightMode>`\ )
- :ref:`LightMode<enum_CanvasItemMaterial_LightMode>` **get_light_mode**\ (\ )

材質對照明的反應方式。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_h_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_h_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_h_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_h_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_h_frames**\ (\ )

:ref:`GPUParticles2D<class_GPUParticles2D>` 或 :ref:`CPUParticles2D<class_CPUParticles2D>` 指定給 :ref:`Texture2D<class_Texture2D>` 的精靈表中擁有的列數。

\ **注意：**\ 該屬性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` 為 ``true`` 時，才會在編輯器中被使用和可見。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_anim_loop** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_loop>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_anim_loop**\ (\ )

如果為 ``true``\ ，粒子動畫將迴圈播放。

\ **注意：**\ 該屬性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>`\ 為 ``true`` 時，才會在編輯器中被使用和可見。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_anim_v_frames:

.. rst-class:: classref-property

:ref:`int<class_int>` **particles_anim_v_frames** :ref:`🔗<class_CanvasItemMaterial_property_particles_anim_v_frames>`

.. rst-class:: classref-property-setget

- |void| **set_particles_anim_v_frames**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_particles_anim_v_frames**\ (\ )

:ref:`GPUParticles2D<class_GPUParticles2D>` 或 :ref:`CPUParticles2D<class_CPUParticles2D>` 指定給 :ref:`Texture2D<class_Texture2D>` 的精靈表中擁有的行數。

\ **注意：**\ 該屬性只有在 :ref:`particles_animation<class_CanvasItemMaterial_property_particles_animation>` 為 ``true`` 時，才會在編輯器中被使用和可見。

.. rst-class:: classref-item-separator

----

.. _class_CanvasItemMaterial_property_particles_animation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particles_animation** = ``false`` :ref:`🔗<class_CanvasItemMaterial_property_particles_animation>`

.. rst-class:: classref-property-setget

- |void| **set_particles_animation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particles_animation**\ (\ )

如果 ``true`` ，在分配給 :ref:`GPUParticles2D<class_GPUParticles2D>` 和 :ref:`CPUParticles2D<class_CPUParticles2D>` 節點時，啟用基於精靈表的動畫功能。\ :ref:`ParticleProcessMaterial.anim_speed_max<class_ParticleProcessMaterial_property_anim_speed_max>` 或 :ref:`CPUParticles2D.anim_speed_max<class_CPUParticles2D_property_anim_speed_max>` 也應該設定為正值，才能播放動畫。

這個屬性（以及其他依賴它的 ``particles_anim_*`` 屬性）對其他型別的節點沒有影響。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
