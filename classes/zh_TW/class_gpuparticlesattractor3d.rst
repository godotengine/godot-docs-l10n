:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

分隔線的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

粒子吸引器可以將粒子朝吸引器的原點吸，也可以將粒子推離吸引器的原點。

粒子吸引器是即時進行的，可以在遊戲過程中進行移動、旋轉、縮放。與碰撞形狀不同，吸引器支援不均勻的縮放。

臨時停用吸引器的方法是將其隱藏，也可以將 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 設定為 ``0.0``\ 。

\ **注意：**\ 粒子吸引器只會影響 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影響 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`attenuation<class_GPUParticlesAttractor3D_property_attenuation>`       | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`     | :ref:`cull_mask<class_GPUParticlesAttractor3D_property_cull_mask>`           | ``4294967295`` |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` | ``0.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`strength<class_GPUParticlesAttractor3D_property_strength>`             | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

粒子吸引器的衰減。較高的值會導致粒子在靠近吸引器的原點時逐漸被推動。零值或負值將導致粒子一接觸吸引器的邊緣就會被快速推動。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

將受吸引器影響的粒子渲染層（\ :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ）。預設情況下，所有粒子都受吸引子器影響。

相應地配置粒子節點後，可以取消勾選特定層，以防止某些粒子受到吸引器的影響。例如，如果將吸引器用作法術效果的一部分，但不希望吸引器影響同一位置的不相關天氣粒子，則可以使用該屬性。

通過在 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點上設定 :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>`\ ，也可以在每個程序材質的基上停用粒子吸引。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

調整吸引器的方向。在 ``0.0`` 處，吸引器完全沒有方向性：它會將粒子吸引到其中心。在 ``1.0`` 中，吸引器是完全定向的：粒子將始終被推向區域 -Z（如果 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 為負數，則推向 +Z）。

\ **注意：**\ 如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 大於 ``0.0``\ ，則可以通過旋轉 **GPUParticlesAttractor3D** 節點，來改變粒子推送的方向。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

如果 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 為負，則粒子將被反向推動。如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 為 ``0.0``\ ，則粒子將被推\ *離*\ 吸引器的原點，如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 大於 ``0.0``\ ，則粒子將被推向區域 +Z。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
