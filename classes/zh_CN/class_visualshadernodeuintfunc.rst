:github_url: hide

.. _class_VisualShaderNodeUIntFunc:

VisualShaderNodeUIntFunc
========================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

无符号标量整数函数，在可视化着色器图中使用。

.. rst-class:: classref-introduction-group

描述
----

接受一个无符号整数标量（\ ``x``\ ）到输入端口，并根据 :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` 对其进行转换。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` | :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeUIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUIntFunc_Function>`

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_NEGATE** = ``0``

使用 ``-(x)``\ ，对 ``x`` 求反。

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_BITWISE_NOT** = ``1``

返回对该整数进行按位 ``NOT`` 运算的结果。在 Godot 着色器语言中会被翻译为 ``~a``\ 。

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_MAX** = ``2``

代表 :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeUIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **get_function**\ (\ )

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
