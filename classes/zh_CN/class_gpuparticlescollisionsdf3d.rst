:github_url: hide

.. _class_GPUParticlesCollisionSDF3D:

GPUParticlesCollisionSDF3D
==========================

**继承：** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的烘焙的带符号距离场 3D 粒子碰撞形状。

.. rst-class:: classref-introduction-group

描述
----

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的烘焙的带符号距离场 3D 粒子碰撞形状。

有符号的距离场（SDF）允许有效地表示任何形状的凸面和凹面对象的近似碰撞形状。它比 :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>` 更灵活，但需要一个烘焙步骤。

\ **烘焙：**\ 可以通过在编辑器中选择 **GPUParticlesCollisionSDF3D** 节点，然后点击 3D 视口顶部的\ **烘焙 SDF**\ ，来烘焙有符号的距离场纹理。\ :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` 内的任何\ *可见* :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，无论它们的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 如何，都将被考虑用于烘焙。

\ **注意：**\ 烘焙 **GPUParticlesCollisionSDF3D** 的 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 只能在编辑器中进行，因为没有公开的烘焙方法可用于导出的游戏项目中。但是，在导出的游戏项目中，仍然可以将预先烘焙的 :ref:`Texture3D<class_Texture3D>` 加载到 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 属性中。

\ **注意：**\ 在 :ref:`GPUParticles3D<class_GPUParticles3D>` 的处理材质上，\ :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必须是 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`\ ，才能使碰撞生效。

\ **注意：**\ 粒子碰撞只影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                         | :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>`   | ``4294967295``       |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` | ``2``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                 | :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>`             | ``Vector3(2, 2, 2)`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>`                             | :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>`       |                      |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                     | :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`   | ``1.0``              |
   +---------------------------------------------------------------+-------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GPUParticlesCollisionSDF3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionSDF3D_Resolution>`

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_16:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_16** = ``0``

烘焙 16×16×16 的有符号距离场。这是最快的选项，但也是最不精确的。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_32:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_32** = ``1``

烘焙 32×32×32 的有符号距离场。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_64:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_64** = ``2``

烘焙 64×64×64 的有符号距离场。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_128:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_128** = ``3``

烘焙 128×128×128 的有符号距离场。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_256** = ``4``

烘焙 256×256×256 的有符号距离场。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_512** = ``5``

烘焙 512×512×512 的有符号距离场。这是最慢的选项，但也是最精确的。

.. _class_GPUParticlesCollisionSDF3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **RESOLUTION_MAX** = ``6``

代表 :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticlesCollisionSDF3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

烘焙粒子碰撞 SDF 时要考虑的可视层。只有其 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 与该 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 匹配的 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，才会被包含在生成的粒子碰撞 SDF 中。默认情况下，粒子碰撞 SDF 烘焙会考虑所有对象。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionSDF3D_Resolution>` **get_resolution**\ (\ )

用于有符号距离场 :ref:`texture<class_GPUParticlesCollisionSDF3D_property_texture>` 的烘焙分辨率。必须再次烘焙纹理，才能使 :ref:`resolution<class_GPUParticlesCollisionSDF3D_property_resolution>` 属性的更改生效。更高的分辨率具有更高的性能成本，并且需要更多的时间来烘焙。更高的分辨率还会产生更大的烘焙纹理，从而增加 VRAM 和存储的空间需求。要提高性能并减少烘焙时间，请为表示碰撞的对象使用尽可能低的分辨率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

碰撞 SDF 的大小，单位为 3D 单位。为了提高 SDF 质量，应在能覆盖需要的场景部分的同时，将 :ref:`size<class_GPUParticlesCollisionSDF3D_property_size>` 设置得尽可能小。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

代表有符号距离场的 3D 纹理。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_property_thickness:

.. rst-class:: classref-property

:ref:`float<class_float>` **thickness** = ``1.0`` :ref:`🔗<class_GPUParticlesCollisionSDF3D_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_thickness**\ (\ )

碰撞形状的厚度。与其他粒子碰撞器不同，\ **GPUParticlesCollisionSDF3D** 实际上内部是空心的。可以增加 :ref:`thickness<class_GPUParticlesCollisionSDF3D_property_thickness>`\ ，以防止粒子在高速运动或者当 **GPUParticlesCollisionSDF3D** 移动时，穿过碰撞形状。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_get_bake_mask_value>`

返回是否启用了 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 的指定层，该层由给定的一个介于 1 和 32 之间的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionSDF3D_method_set_bake_mask_value>`

基于 ``value``\ ，启用或禁用 :ref:`bake_mask<class_GPUParticlesCollisionSDF3D_property_bake_mask>` 中的指定层，该层由给定的一个介于 1 和 32 之间的 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
