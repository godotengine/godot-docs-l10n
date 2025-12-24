:github_url: hide

.. _class_GPUParticlesAttractorVectorField3D:

GPUParticlesAttractorVectorField3D
==================================

**继承：** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

盒形吸引器，其中定义了不同的方向和强度，会影响来自 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的粒子。

.. rst-class:: classref-introduction-group

描述
----

盒形吸引器，其中定义了不同的方向和强度，会影响来自 :ref:`GPUParticles3D<class_GPUParticles3D>` 节点的粒子。

与 :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>` 不同，\ **GPUParticlesAttractorVectorField3D** 使用 :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` 来影响盒子内的吸引力强度。可用于创建复杂的吸引场景，其中粒子根据其位置向不同方向移动。这对于沙尘暴等天气影响很有用。

粒子吸引器是实时工作的，可以在游戏过程中进行移动、旋转、缩放。与碰撞形状不同，吸引器还支持不统一的缩放。

\ **注意：**\ 粒子吸引器只会影响 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，不影响 :ref:`CPUParticles3D<class_CPUParticles3D>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>`       | ``Vector3(2, 2, 2)`` |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`texture<class_GPUParticlesAttractorVectorField3D_property_texture>` |                      |
   +-----------------------------------+---------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticlesAttractorVectorField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

向量场盒子的尺寸，使用 3D 单位。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractorVectorField3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **texture** :ref:`🔗<class_GPUParticlesAttractorVectorField3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_texture**\ (\ )

要使用的 3D 纹理。会在纹理像素之间进行线性插值。

\ **注意：**\ 为了获得更好的性能，3D 纹理的分辨率应该反映该吸引器的 :ref:`size<class_GPUParticlesAttractorVectorField3D_property_size>`\ 。由于粒子吸引力通常是低频数据，因此可以将纹理保持在较低分辨率，例如 64×64×64。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
