:github_url: hide

.. _class_VisualShaderNodeCompare:

VisualShaderNodeCompare
=======================

**继承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可视化着色器图内常见类型的比较函数。

.. rst-class:: classref-introduction-group

描述
----

通过 :ref:`function<class_VisualShaderNodeCompare_property_function>` 比较 ``a`` 和 ``b`` 的 :ref:`type<class_VisualShaderNodeCompare_property_type>`\ 。返回一个布尔标量。在着色器代码中转换成 ``if`` 指令。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`           | :ref:`condition<class_VisualShaderNodeCompare_property_condition>` | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeCompare_Function>`             | :ref:`function<class_VisualShaderNodeCompare_property_function>`   | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` | :ref:`type<class_VisualShaderNodeCompare_property_type>`           | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VisualShaderNodeCompare_ComparisonType:

.. rst-class:: classref-enumeration

enum **ComparisonType**: :ref:`🔗<enum_VisualShaderNodeCompare_ComparisonType>`

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR** = ``0``

浮点标量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_INT** = ``1``

整数标量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_UINT** = ``2``

无符号整数标量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_2D** = ``3``

2D 向量类型。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_3D** = ``4``

3D向量类型。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_4D** = ``5``

4D 向量类型。

.. _class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_BOOLEAN** = ``6``

布林类型。

.. _class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_TRANSFORM** = ``7``

变换类型，即 ``mat4``\ 。

.. _class_VisualShaderNodeCompare_constant_CTYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_MAX** = ``8``

代表 :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeCompare_Function>`

.. _class_VisualShaderNodeCompare_constant_FUNC_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_EQUAL** = ``0``

相等比较（\ ``a == b``\ ）。

.. _class_VisualShaderNodeCompare_constant_FUNC_NOT_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_NOT_EQUAL** = ``1``

不等比较（\ ``a != b``\ ）。

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN** = ``2``

大于比较（\ ``a > b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 设置为 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，则无法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN_EQUAL** = ``3``

大于或等于的比较（\ ``a >= b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 设置为 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，则无法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN** = ``4``

小于比较（\ ``a < b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 设置为 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，则无法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN_EQUAL** = ``5``

小于或等于的比较（\ ``a <= b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 设置为 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，则无法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_MAX** = ``6``

代表 :ref:`Function<enum_VisualShaderNodeCompare_Function>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Condition:

.. rst-class:: classref-enumeration

enum **Condition**: :ref:`🔗<enum_VisualShaderNodeCompare_Condition>`

.. _class_VisualShaderNodeCompare_constant_COND_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ALL** = ``0``

如果向量中的所有分量都满足比较条件，则结果为 ``true``\ 。

.. _class_VisualShaderNodeCompare_constant_COND_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ANY** = ``1``

如果向量中的任何一个分量满足比较条件，则结果为 ``true``\ 。

.. _class_VisualShaderNodeCompare_constant_COND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_MAX** = ``2``

代表 :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisualShaderNodeCompare_property_condition:

.. rst-class:: classref-property

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **condition** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_condition>`

.. rst-class:: classref-property-setget

- |void| **set_condition**\ (\ value\: :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`\ )
- :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **get_condition**\ (\ )

:ref:`type<class_VisualShaderNodeCompare_property_type>` 被设置为 :ref:`CTYPE_VECTOR_3D<class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D>` 时应用的额外条件。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeCompare_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeCompare_Function>` **get_function**\ (\ )

比较函数。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_type:

.. rst-class:: classref-property

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **type** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_comparison_type**\ (\ value\: :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`\ )
- :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **get_comparison_type**\ (\ )

在比较中要使用的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
