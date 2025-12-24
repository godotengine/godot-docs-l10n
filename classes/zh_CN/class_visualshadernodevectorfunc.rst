:github_url: hide

.. _class_VisualShaderNodeVectorFunc:

VisualShaderNodeVectorFunc
==========================

**继承：** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可视化着色器图中使用的向量函数。

.. rst-class:: classref-introduction-group

描述
----

可视化着色器节点，能够使用向量执行不同的函数。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` | :ref:`function<class_VisualShaderNodeVectorFunc_property_function>` | ``0`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeVectorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeVectorFunc_Function>`

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NORMALIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NORMALIZE** = ``0``

将向量归一化，使其长度为\ ``1``\ ，但指向相同的方向。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SATURATE** = ``1``

限制\ ``0.0``\ 和\ ``1.0``\ 之间的值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NEGATE** = ``2``

返回参数的相反值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RECIPROCAL** = ``3``

返回 ``1/vector``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ABS** = ``4``

返回参数的绝对值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOS** = ``5``

返回参数的反余弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOSH** = ``6``

返回参数的反双曲余弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASIN** = ``7``

返回参数的反正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASINH** = ``8``

返回参数的反双曲正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATAN** = ``9``

返回参数的反正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATANH** = ``10``

返回参数的反双曲正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_CEIL** = ``11``

查找最接近的大于或等于参数的整数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COS** = ``12``

返回参数的余弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COSH** = ``13``

返回参数的双曲余弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_DEGREES** = ``14``

将以弧度为单位的量转换为度。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP** = ``15``

以 e 为底的指数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP2** = ``16``

以 2 为底的指数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FLOOR** = ``17``

查找小于或等于参数的最近整数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FRACT** = ``18``

计算参数的小数部分。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_INVERSE_SQRT** = ``19``

返回参数的平方根的倒数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG** = ``20``

自然对数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG2** = ``21``

以 2 为底的对数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RADIANS** = ``22``

将度数转换为弧度。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUND** = ``23``

查找参数最近的整数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUNDEVEN** = ``24``

查找参数最近的偶数。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIGN** = ``25``

提取参数的符号，即如果参数是负的，返回 ``-1``\ ，如果是正的，返回 ``1``\ ，否则返回 ``0``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIN** = ``26``

返回参数的正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SINH** = ``27``

返回参数的双曲正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SQRT** = ``28``

返回参数的平方根。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TAN** = ``29``

返回参数的正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TANH** = ``30``

返回参数的双曲正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TRUNC** = ``31``

返回一个等于与参数最接近的整数的值，该值的绝对值不大于参数的绝对值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ONEMINUS** = ``32``

返回 ``1.0 - vector``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_MAX** = ``33``

代表 :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeVectorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **get_function**\ (\ )

要执行的函数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
