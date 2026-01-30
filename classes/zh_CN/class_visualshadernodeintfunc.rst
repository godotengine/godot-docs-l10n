:github_url: hide

.. _class_VisualShaderNodeIntFunc:

VisualShaderNodeIntFunc
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

标量整数函数，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

在输入端口接受一个整数标量（\ ``x``\ ）并根据 :ref:`function<class_VisualShaderNodeIntFunc_property_function>` 对其进行变换。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` | :ref:`function<class_VisualShaderNodeIntFunc_property_function>` | ``2`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIntFunc_Function>`

.. _class_VisualShaderNodeIntFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_ABS** = ``0``

返回参数的绝对值。在 Godot 着色器语言中，会被翻译为 ``abs(x)``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_NEGATE** = ``1``

使用 ``-(x)``\ ，对 ``x`` 求反。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_SIGN** = ``2``

提取参数的符号。在 Godot 着色器语言中，会被翻译为 ``sign(x)``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_BITWISE_NOT** = ``3``

返回对该整数进行按位 ``NOT`` 运算的结果。在 Godot 着色器语言中会被翻译为 ``~a``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_MAX** = ``4``

代表 :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **function** = ``2`` :ref:`🔗<class_VisualShaderNodeIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **get_function**\ (\ )

要应用于该标量的函数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
