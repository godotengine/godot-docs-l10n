:github_url: hide

.. _class_VisualShaderNodeParticleRandomness:

VisualShaderNodeParticleRandomness
==================================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于随机化粒子值的可视化着色器节点。

.. rst-class:: classref-introduction-group

描述
----

输出给定类型的伪随机值的随机节点，会根据指定的最大最小值生成。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` | :ref:`op_type<class_VisualShaderNodeParticleRandomness_property_op_type>` | ``0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeParticleRandomness_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeParticleRandomness_OpType>`

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_SCALAR** = ``0``

浮点标量。

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

2D 向量类型。

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

3D向量类型。

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

4D 向量类型。

.. _class_VisualShaderNodeParticleRandomness_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **OP_TYPE_MAX** = ``4``

代表 :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeParticleRandomness_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleRandomness_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeParticleRandomness_OpType>` **get_op_type**\ (\ )

操作数和返回值的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
