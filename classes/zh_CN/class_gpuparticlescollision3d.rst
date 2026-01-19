:github_url: hide

.. _class_GPUParticlesCollision3D:

GPUParticlesCollision3D
=======================

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`GPUParticlesCollisionBox3D<class_GPUParticlesCollisionBox3D>`, :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, :ref:`GPUParticlesCollisionSphere3D<class_GPUParticlesCollisionSphere3D>`

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的 3D 粒子碰撞形状的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

粒子碰撞形状可用于使粒子停止或对其反弹。

粒子碰撞形状是实时工作的，在游戏过程中可以移动、旋转和缩放。与吸引器不同，碰撞形状的非均匀缩放\ *不*\ 受支持。

粒子碰撞形状可以通过隐藏而暂时禁用。

\ **注意：**\ 在 :ref:`GPUParticles3D<class_GPUParticles3D>` 的处理材质上，\ :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必须是 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`\ ，才能使碰撞生效。

\ **注意：**\ 粒子碰撞只影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

\ **注意：**\ 由正在移动的碰撞器推动的粒子不会被插值，这可能会导致可见的卡顿。这可以通过将 :ref:`GPUParticles3D.fixed_fps<class_GPUParticles3D_property_fixed_fps>` 设置为 ``0`` 或一个符合或超过目标帧速率的值来缓解。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`cull_mask<class_GPUParticlesCollision3D_property_cull_mask>` | ``4294967295`` |
   +-----------------------+--------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticlesCollision3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollision3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

将受碰撞形状影响的粒子渲染层（\ :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ）。默认情况下，所有 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 设置为 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` 的粒子都将受到碰撞形状的影响。

相应地配置粒子节点后，可以取消选中特定层，防止某些粒子受到碰撞体的影响。例如，如果你将碰撞体用作法术效果的一部分但不希望碰撞体影响同一位置的不相关天气粒子，则可以使用该选项。

通过在 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点上设置 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>`\ ，也可以在每个进程材质的基础上禁用粒子碰撞。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
