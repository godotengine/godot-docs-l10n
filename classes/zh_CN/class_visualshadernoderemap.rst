:github_url: hide

.. _class_VisualShaderNodeRemap:

VisualShaderNodeRemap
=====================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

remap 函数的可视化着色器节点。

.. rst-class:: classref-introduction-group

描述
----

Remap 函数将输入范围变换到输出范围。例如你可以将 ``0..1`` 里的值变到 ``-2..2`` 里。详见 :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` | :ref:`op_type<class_VisualShaderNodeRemap_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeRemap_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeRemap_OpType>`

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_SCALAR** = ``0``

浮点数标量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

2D 向量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

``value`` 端口使用 2D 向量类型，而 ``input min``\ 、\ ``input max``\ 、\ ``output min``\ 、\ ``output max`` 端口使用浮点数标量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

3D向量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

``value`` 端口使用 3D 向量类型，而 ``input min``\ 、\ ``input max``\ 、\ ``output min``\ 、\ ``output max`` 端口使用浮点数标量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

4D 向量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

``value`` 端口使用 4D 向量类型，而 ``input min``\ 、\ ``input max``\ 、\ ``output min``\ 、\ ``output max`` 端口使用浮点数标量类型。

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_MAX** = ``7``

代表 :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeRemap_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeRemap_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **get_op_type**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
