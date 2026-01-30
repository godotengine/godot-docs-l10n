:github_url: hide

.. _class_GPUParticlesCollisionBox3D:

GPUParticlesCollisionBox3D
==========================

**继承：** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的盒形 3D 粒子碰撞形状。

.. rst-class:: classref-introduction-group

描述
----

影响 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的盒形 3D 粒子碰撞形状。

粒子碰撞形状是实时工作的，可以在游戏过程中进行移动、旋转、缩放。与吸引器不同，碰撞形状的非均匀缩放\ *不*\ 被支持。

\ **注意：**\ :ref:`GPUParticles3D<class_GPUParticles3D>` 的处理材质上的 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必须为 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`\ ，碰撞才能发挥作用。

\ **注意：**\ 粒子碰撞只会影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_GPUParticlesCollisionBox3D_property_size>` | ``Vector3(2, 2, 2)`` |
   +-------------------------------+-------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticlesCollisionBox3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionBox3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

碰撞框的范围，使用 3D 单位。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
