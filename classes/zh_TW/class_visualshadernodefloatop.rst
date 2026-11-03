:github_url: hide

.. _class_VisualShaderNodeFloatOp:

VisualShaderNodeFloatOp
=======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

浮點數標量運算子，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

將 :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` 套用於兩個浮點數輸入：\ ``a`` 和 ``b``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` | :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeFloatOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeFloatOp_Operator>`

.. _class_VisualShaderNodeFloatOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ADD** = ``0``

使用 ``a + b`` 將兩個數字相加。

.. _class_VisualShaderNodeFloatOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_SUB** = ``1``

使用 ``a - b`` 將兩個數字相減。

.. _class_VisualShaderNodeFloatOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MUL** = ``2``

使用 ``a * b`` 將兩個數字相乘。

.. _class_VisualShaderNodeFloatOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_DIV** = ``3``

使用 ``a / b`` 將兩個數字相除。

.. _class_VisualShaderNodeFloatOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MOD** = ``4``

計算兩個數的餘數。在 Godot 著色器語言中，會被翻譯為 ``mod(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_POW** = ``5``

將 ``a`` 提高到 ``b`` 次冪。在 Godot 著色器語言中，會被翻譯為 ``pow(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MAX** = ``6``

返回兩個數中的較大者。在 Godot 著色器語言中，會被翻譯為 ``max(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MIN** = ``7``

返回兩個數中的較小者。在 Godot 著色器語言中，會被翻譯為 ``min(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ATAN2** = ``8``

返回參數的反正切值。在 Godot 著色器語言中，會被翻譯為 ``atan(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_STEP** = ``9``

通過將 ``b``\ （x）與 ``a``\ （edge）進行比較來生成 step 函式。如果 ``x`` 小於 ``edge`` 則返回 0.0，否則返回 1.0。翻譯為 Godot 著色器語言中的 ``step(a, b)``\ 。

.. _class_VisualShaderNodeFloatOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ENUM_SIZE** = ``10``

代表 :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeFloatOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **get_operator**\ (\ )

要套用至輸入的運算符。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
