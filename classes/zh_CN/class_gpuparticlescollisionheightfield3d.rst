:github_url: hide

.. _class_GPUParticlesCollisionHeightField3D:

GPUParticlesCollisionHeightField3D
==================================

**继承：** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的实时高度图形状 3D 粒子碰撞形状。

.. rst-class:: classref-introduction-group

描述
----

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的实时高度图形状的 3D 粒子碰撞形状。

高度图形状允许有效地表示凸面和凹面对象与单个“地板”（例如地形）的碰撞。它不如 :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>` 灵活，但不需要烘焙步骤。

也可以在移动时、相机移动时、甚至连续时，实时重新生成 **GPUParticlesCollisionHeightField3D**\ 。这对雨雪等天气效果、以及具有高度动态几何体的游戏来说，\ **GPUParticlesCollisionHeightField3D** 是一个不错的选择。但是，该类有限制，因为高度图无法表示悬垂（例如室内或洞穴）。

\ **注意：**\ 在 :ref:`GPUParticles3D<class_GPUParticles3D>` 的处理材质上，\ :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必须为 ``true``\ ，才能使碰撞生效。

\ **注意：**\ 粒子碰撞只影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` | ``false``            |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                 | :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`           | ``1048575``          |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>`                       | ``2``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>`                                   | ``Vector3(2, 2, 2)`` |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` | :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>`                     | ``0``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GPUParticlesCollisionHeightField3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_Resolution>`

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_256** = ``0``

生成 256×256 的高度图。适用于小规模场景，或没有远景粒子的较大场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_512** = ``1``

生成 512×512 的高度图。适用于中等规模的场景，或没有远景粒子的较大场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_1024:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_1024** = ``2``

生成 1024×1024 的高度图。适用于具有远景粒子的大型场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_2048:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_2048** = ``3``

生成 2048×2048 的高度图。适用于具有远景粒子的非常大的场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_4096:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_4096** = ``4``

生成 4096×4096 的高度图。适用于具有远景粒子的巨大场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_8192:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_8192** = ``5``

生成 8192×8192 的高度图。适用于具有远景粒子的巨大场景。

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_MAX** = ``6``

代表 :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticlesCollisionHeightField3D_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_WHEN_MOVED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_WHEN_MOVED** = ``0``

仅在 **GPUParticlesCollisionHeightField3D** 节点移动时，或者当 :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` 为 ``true`` 且相机移动时，更新高度图。可以通过向任意方向稍微移动 **GPUParticlesCollisionHeightField3D** 或者调用 :ref:`RenderingServer.particles_collision_height_field_update()<class_RenderingServer_method_particles_collision_height_field_update>` 来强制更新。

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_ALWAYS** = ``1``

每帧更新高度图。这具有显著的性能成本。只有当粒子可以碰撞的几何体在游戏过程中发生显著变化时，才应使用该更新选项。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_camera_enabled** = ``false`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_camera_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_follow_camera_enabled**\ (\ )

如果为 ``true``\ ，则 **GPUParticlesCollisionHeightField3D** 将在全局空间中跟随当前相机。\ **GPUParticlesCollisionHeightField3D** 不需要是该 :ref:`Camera3D<class_Camera3D>` 节点的子节点也能工作。

跟随相机会有性能成本，因为它会在相机移动时强制更新高度图。如果 :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` 为 ``true``\ ，请考虑降低 :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>` 以提高性能。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_heightfield_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **heightfield_mask** = ``1048575`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`

.. rst-class:: classref-property-setget

- |void| **set_heightfield_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_heightfield_mask**\ (\ )

更新高度图时要考虑的可视层。高度图碰撞更新中只会包含 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 与 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` 匹配的 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 。默认情况下，更新高度图碰撞时会考虑全部 20 个用户可见层。

\ **注意：**\ 由于 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` 总共能够存储 32 个层，还有 12 个层是仅限引擎内部使用的，未在编辑器中暴露。通过脚本设置 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` 就可以开关这些保留的层，适用于编辑器插件。

脚本中可以使用 :ref:`get_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>` 和 :ref:`set_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>` 更方便地调整 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **get_resolution**\ (\ )

更高的分辨率可以更准确地表示大场景中的小细节，但会降低性能。如果 :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>` 为 :ref:`UPDATE_MODE_ALWAYS<class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS>`\ ，请考虑使用可能的最低分辨率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

碰撞高度图的 3D 单位大小。为了提高高度图质量，\ :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>` 应被设置得尽可能小，同时覆盖需要的场景部分。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`\ )
- :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **get_update_mode**\ (\ )

生成的高度图的更新策略。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`

如果启用了 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` 中的指定层，则返回 ``true``\ ，给定的 ``layer_number`` 在 ``1`` 到 ``20`` 之间，包括端点。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value:

.. rst-class:: classref-method

|void| **set_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`

根据 ``value`` 启用或禁用 :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` 中的指定层，给定的 ``layer_number`` 在 ``1`` 到 ``20`` 之间，包括端点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
