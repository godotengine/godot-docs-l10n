:github_url: hide

.. _class_VisualShaderNodeTransformVecMult:

VisualShaderNodeTransformVecMult
================================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中，将 :ref:`Transform3D<class_Transform3D>` 与 :ref:`Vector3<class_Vector3>` 相乘。

.. rst-class:: classref-introduction-group

描述
----

对一个变换（4×4 矩阵）和一个向量进行乘法运算，支持不同的乘法运算符。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` | :ref:`operator<class_VisualShaderNodeTransformVecMult_property_operator>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeTransformVecMult_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformVecMult_Operator>`

.. _class_VisualShaderNodeTransformVecMult_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_AxB** = ``0``

将变换 ``a`` 乘以向量 ``b``\ 。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_BxA** = ``1``

将向量 ``b`` 乘以变换 ``a``\ 。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_AxB** = ``2``

将变换 ``a`` 乘以向量 ``b``\ ，跳过变换的最后一行和一列。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_BxA** = ``3``

将向量 ``b`` 乘以变换 ``a``\ ，跳过变换的最后一行和一列。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_MAX** = ``4``

代表 :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeTransformVecMult_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformVecMult_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **get_operator**\ (\ )

要执行的乘法类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
