:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

3D 粒子吸引器的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

粒子吸引器可以将粒子朝吸引器的原点吸，也可以将粒子推离吸引器的原点。

粒子吸引器是实时进行的，可以在游戏过程中进行移动、旋转、缩放。与碰撞形状不同，吸引器支持不统一的缩放。

临时禁用吸引器的方法是将其隐藏，也可以将 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 设置为 ``0.0``\ 。

\ **注意：**\ 粒子吸引器只会影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

粒子吸引器的衰减。较高的值会导致粒子在靠近吸引器的原点时逐渐被推动。零值或负值将导致粒子一接触吸引器的边缘就会被快速推动。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

将受吸引器影响的粒子渲染层（\ :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ ）。默认情况下，所有粒子都受吸引子器影响。

相应地配置粒子节点后，可以取消勾选特定层，以防止某些粒子受到吸引器的影响。例如，如果将吸引器用作法术效果的一部分，但不希望吸引器影响同一位置的不相关天气粒子，则可以使用该属性。

通过在 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点上设置 :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>`\ ，也可以在每个进程材质的基上禁用粒子吸引。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

调整吸引器的方向。在 ``0.0`` 处，吸引器完全没有方向性：它会将粒子吸引到其中心。在 ``1.0`` 中，吸引器是完全定向的：粒子将始终被推向局部 -Z（如果 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 为负数，则推向 +Z）。

\ **注意：**\ 如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 大于 ``0.0``\ ，则可以通过旋转 **GPUParticlesAttractor3D** 节点，来改变粒子推送的方向。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

调整吸引器的强度。如果 :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` 为负，则粒子将被反向推动。如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 为 ``0.0``\ ，则粒子将被推\ *离*\ 吸引器的原点；如果 :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` 大于 ``0.0``\ ，则粒子将被推向局部 +Z。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
