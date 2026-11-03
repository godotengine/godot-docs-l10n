:github_url: hide

.. _class_GPUParticlesCollision3D:

GPUParticlesCollision3D
=======================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`GPUParticlesCollisionBox3D<class_GPUParticlesCollisionBox3D>`, :ref:`GPUParticlesCollisionHeightField3D<class_GPUParticlesCollisionHeightField3D>`, :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, :ref:`GPUParticlesCollisionSphere3D<class_GPUParticlesCollisionSphere3D>`

影響 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點的 3D 粒子碰撞形狀的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

粒子碰撞形狀可用於使粒子停止或對其反彈。

粒子碰撞形狀是即時的，在遊戲過程中可以移動、旋轉和縮放。與吸引器不同，碰撞形狀的非均勻縮放\ *不*\ 受支援。

粒子碰撞形狀可以通過隱藏而暫時停用。

\ **注意：**\ 在 :ref:`GPUParticles3D<class_GPUParticles3D>` 的處理材質上，\ :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 必須是 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`\ ，才能使碰撞生效。

\ **注意：**\ 粒子碰撞只影響 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影響 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

\ **注意：**\ 由正在移動的碰撞器推動的粒子不會被插值，這可能會導致可見的卡頓。這可以通過將 :ref:`GPUParticles3D.fixed_fps<class_GPUParticles3D_property_fixed_fps>` 設定為 ``0`` 或一個符合或超過目標畫面播放速率的值來緩解。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>` | :ref:`cull_mask<class_GPUParticlesCollision3D_property_cull_mask>` | ``4294967295`` |
   +-----------------------+--------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GPUParticlesCollision3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesCollision3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

將受碰撞形狀影響的粒子渲染層（\ :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ）。預設情況下，所有 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 設定為 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` 的粒子都將受到碰撞形狀的影響。

相應地設定粒子節點後，可以取消選中特定層，防止某些粒子受到碰撞體的影響。例如，如果你將碰撞體用作法術效果的一部分但不希望碰撞體影響同一位置的不相關天氣粒子，則可以使用該選項。

通過在 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點上設定 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>`\ ，也可以在每個處理程序材質的基礎上停用粒子碰撞。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
