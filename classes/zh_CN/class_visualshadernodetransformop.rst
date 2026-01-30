:github_url: hide

.. _class_VisualShaderNodeTransformOp:

VisualShaderNodeTransformOp
===========================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中使用的 :ref:`Transform3D<class_Transform3D>` 运算符。

.. rst-class:: classref-introduction-group

描述
----

对两个变换（4×4 矩阵）输入应用 :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` | :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeTransformOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformOp_Operator>`

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB** = ``0``

将变换 ``a`` 乘以变换 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA** = ``1``

将变换 ``b`` 乘以变换 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB_COMP** = ``2``

对变换 ``a`` 与变换 ``b`` 进行分量明智的乘法。

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA_COMP** = ``3``

对变换 ``b`` 与变换 ``a`` 进行分量明智的乘法。

.. _class_VisualShaderNodeTransformOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_ADD** = ``4``

将两个变换相加。

.. _class_VisualShaderNodeTransformOp_constant_OP_A_MINUS_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_MINUS_B** = ``5``

从变换 ``b`` 中减去变换 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_B_MINUS_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_MINUS_A** = ``6``

从变换 ``a`` 中减去变换 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_A_DIV_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_DIV_B** = ``7``

将变换 ``a`` 除以变换 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_B_DIV_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_DIV_A** = ``8``

将变换 ``b`` 除以变换 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_MAX** = ``9``

代表 :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeTransformOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **get_operator**\ (\ )

要对变换执行的运算的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
