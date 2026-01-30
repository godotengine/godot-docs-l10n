:github_url: hide

.. _class_VisualShaderNodeFloatOp:

VisualShaderNodeFloatOp
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

浮点数标量运算符，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

将 :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` 应用于两个浮点数输入：\ ``a`` 和 ``b``\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` | :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeFloatOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeFloatOp_Operator>`

.. _class_VisualShaderNodeFloatOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ADD** = ``0``

使用 ``a + b`` 将两个数字相加。

.. _class_VisualShaderNodeFloatOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_SUB** = ``1``

使用 ``a - b`` 将两个数字相减。

.. _class_VisualShaderNodeFloatOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MUL** = ``2``

使用 ``a * b`` 将两个数字相乘。

.. _class_VisualShaderNodeFloatOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_DIV** = ``3``

使用 ``a / b`` 将两个数字相除。

.. _class_VisualShaderNodeFloatOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MOD** = ``4``

计算两个数的余数。在 Godot 着色器语言中，会被翻译为 ``mod(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_POW** = ``5``

将 ``a`` 提高到 ``b`` 次幂。在 Godot 着色器语言中，会被翻译为 ``pow(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MAX** = ``6``

返回两个数中的较大者。在 Godot 着色器语言中，会被翻译为 ``max(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MIN** = ``7``

返回两个数中的较小者。在 Godot 着色器语言中，会被翻译为 ``min(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ATAN2** = ``8``

返回参数的反正切值。在 Godot 着色器语言中，会被翻译为 ``atan(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_STEP** = ``9``

通过将 ``b``\ （x）与 ``a``\ （edge）进行比较来生成 step 函数。如果 ``x`` 小于 ``edge`` 则返回 0.0，否则返回 1.0。翻译为 Godot 着色器语言中的 ``step(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ENUM_SIZE** = ``10``

代表 :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeFloatOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **get_operator**\ (\ )

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
