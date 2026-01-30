:github_url: hide

.. _class_VisualShaderNodeDerivativeFunc:

VisualShaderNodeDerivativeFunc
==============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，計算導數。

.. rst-class:: classref-introduction-group

說明
----

此節點僅在\ ``Fragment``\ 和\ ``Light``\ 視覺化著色器中可用。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_VisualShaderNodeDerivativeFunc_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_OpType>`

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_SCALAR** = ``0``

浮點標量。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

2D 向量型別。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

3D向量型別。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

4D 向量型別。

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_MAX** = ``4``

代表 :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Function>`

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_SUM:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_SUM** = ``0``

``x`` 和 ``y`` 的絕對導數之和。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_X:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_X** = ``1``

在 ``x`` 中使用局部差分的導數。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_Y** = ``2``

在 ``y`` 中使用局部差分的導數。

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_MAX** = ``3``

代表 :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Precision:

.. rst-class:: classref-enumeration

enum **Precision**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Precision>`

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_NONE** = ``0``

未指定精度，GPU 驅動可以自行選用精度等級。這是預設選項，等價於在文字著色器中使用 ``dFdx()`` 或 ``dFdy()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_COARSE** = ``1``

將使用目前片段的鄰居（可能不包括目前片段）計算導數。這往往比使用 :ref:`PRECISION_FINE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE>` 更快，但在需要更高精度時可能不適合。這相當於在文字著色器中使用 ``dFdxCoarse()`` 或 ``dFdyCoarse()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_FINE** = ``2``

將使用目前片段及其直接鄰居計算導數。這往往比使用 :ref:`PRECISION_COARSE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE>` 慢，但當需要更高的精度時可能是必需的。這相當於在文字著色器中使用 ``dFdxFine()`` 或 ``dFdyFine()``\ 。

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_MAX** = ``3``

代表 :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeDerivativeFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **get_function**\ (\ )

A derivative function type.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **get_op_type**\ (\ )

運算元和返回值的型別。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_precision:

.. rst-class:: classref-property

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **precision** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_precision>`

.. rst-class:: classref-property-setget

- |void| **set_precision**\ (\ value\: :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`\ )
- :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **get_precision**\ (\ )

Sets the level of precision to use for the derivative function. When using the Compatibility renderer, this setting has no effect.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
