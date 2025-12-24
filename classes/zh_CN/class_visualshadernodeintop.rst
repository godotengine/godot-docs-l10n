:github_url: hide

.. _class_VisualShaderNodeIntOp:

VisualShaderNodeIntOp
=====================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

整数标量运算符，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

将 :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` 应用于两个整数输入：\ ``a`` 和 ``b``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` | :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` | ``0`` |
   +------------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeIntOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeIntOp_Operator>`

.. _class_VisualShaderNodeIntOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ADD** = ``0``

使用 ``a + b`` 将两个数字相加。

.. _class_VisualShaderNodeIntOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_SUB** = ``1``

使用 ``a - b`` 将两个数字相减。

.. _class_VisualShaderNodeIntOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MUL** = ``2``

使用 ``a * b`` 将两个数字相乘。

.. _class_VisualShaderNodeIntOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_DIV** = ``3``

使用 ``a / b`` 将两个数字相除。

.. _class_VisualShaderNodeIntOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MOD** = ``4``

使用 ``a % b`` 计算两个数字的余数。

.. _class_VisualShaderNodeIntOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MAX** = ``5``

返回两个数中的较大者。在 Godot 着色器语言中，会被翻译为 ``max(a, b)``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MIN** = ``6``

返回两个数字中的较小者。在 Godot 着色器语言中会被翻译为 ``min(a, b)``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_AND:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_AND** = ``7``

返回对该整数进行按位与 ``AND`` 运算的结果。在 Godot 着色器语言中会被翻译为 ``a & b``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_OR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_OR** = ``8``

返回对该整数进行按位或 ``OR`` 运算的结果。在 Godot 着色器语言中会被翻译为 ``a | b``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_XOR** = ``9``

返回对该整数进行按位异或 ``XOR`` 运算的结果。在 Godot 着色器语言中会被翻译为 ``a ^ b``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_LEFT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_LEFT_SHIFT** = ``10``

返回对该整数进行按位左移运算的结果。在 Godot 着色器语言中会被翻译为 ``a << b``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_RIGHT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_RIGHT_SHIFT** = ``11``

返回对该整数进行按位右移运算的结果。在 Godot 着色器语言中会被翻译为 ``a >> b``\ 。

.. _class_VisualShaderNodeIntOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ENUM_SIZE** = ``12``

代表 :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeIntOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeIntOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **get_operator**\ (\ )

要应用于输入的运算符。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
