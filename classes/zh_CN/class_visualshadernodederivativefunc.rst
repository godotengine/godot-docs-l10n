:github_url: hide

.. _class_VisualShaderNodeDerivativeFunc:

VisualShaderNodeDerivativeFunc
==============================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中，计算导数。

.. rst-class:: classref-introduction-group

描述
----

此节点仅在\ ``Fragment``\ 和\ ``Light``\ 可视化着色器中可用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`   | :ref:`function<class_VisualShaderNodeDerivativeFunc_property_function>`   | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`       | :ref:`op_type<class_VisualShaderNodeDerivativeFunc_property_op_type>`     | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` | :ref:`precision<class_VisualShaderNodeDerivativeFunc_property_precision>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeDerivativeFunc_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_OpType>`

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_SCALAR** = ``0``

浮点标量。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

2D 向量类型。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

3D向量类型。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

4D 向量类型。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_MAX** = ``4``

代表 :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Function>`

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_SUM:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_SUM** = ``0``

``x`` 和 ``y`` 的绝对导数之和。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_X:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_X** = ``1``

在 ``x`` 中使用局部差分的导数。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_Y** = ``2``

在 ``y`` 中使用局部差分的导数。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_MAX** = ``3``

代表 :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Precision:

.. rst-class:: classref-enumeration

enum **Precision**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Precision>`

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_NONE** = ``0``

未指定精度，GPU 驱动可以自行选用精度等级。这是默认选项，等价于在文本着色器中使用 ``dFdx()`` 或 ``dFdy()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_COARSE** = ``1``

将使用当前片段的邻居（可能不包括当前片段）计算导数。这往往比使用 :ref:`PRECISION_FINE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE>` 更快，但在需要更高精度时可能不适合。这相当于在文本着色器中使用 ``dFdxCoarse()`` 或 ``dFdyCoarse()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_FINE** = ``2``

将使用当前片段及其直接邻居计算导数。这往往比使用 :ref:`PRECISION_COARSE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE>` 慢，但当需要更高的精度时可能是必需的。这相当于在文本着色器中使用 ``dFdxFine()`` 或 ``dFdyFine()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_MAX** = ``3``

代表 :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeDerivativeFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **get_function**\ (\ )

导数函数的类型。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **get_op_type**\ (\ )

操作数和返回值的类型。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_precision:

.. rst-class:: classref-property

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **precision** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_precision>`

.. rst-class:: classref-property-setget

- |void| **set_precision**\ (\ value\: :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`\ )
- :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **get_precision**\ (\ )

设置用于导数函数的精度级别。使用 Compatibility 渲染器时此设置无效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
