:github_url: hide

.. _class_VisualShaderNodeParticleEmitter:

VisualShaderNodeParticleEmitter
===============================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShaderNodeParticleBoxEmitter<class_VisualShaderNodeParticleBoxEmitter>`, :ref:`VisualShaderNodeParticleMeshEmitter<class_VisualShaderNodeParticleMeshEmitter>`, :ref:`VisualShaderNodeParticleRingEmitter<class_VisualShaderNodeParticleRingEmitter>`, :ref:`VisualShaderNodeParticleSphereEmitter<class_VisualShaderNodeParticleSphereEmitter>`

粒子发射器的基类。

.. rst-class:: classref-introduction-group

描述
----

粒子发射器节点可被用于粒子着色器的“开始”步骤，它们定义粒子的起始位置。将它们连接到位置输出端口。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`mode_2d<class_VisualShaderNodeParticleEmitter_property_mode_2d>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeParticleEmitter_property_mode_2d:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_2d** = ``false`` :ref:`🔗<class_VisualShaderNodeParticleEmitter_property_mode_2d>`

.. rst-class:: classref-property-setget

- |void| **set_mode_2d**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_2d**\ (\ )

如果为 ``true``\ ，则此发射器的结果将被投影到 2D 空间。默认情况下为 ``false``\ ，适用于 3D 空间。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
