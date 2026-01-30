:github_url: hide

.. _class_VisualShaderNodeIntFunc:

VisualShaderNodeIntFunc
=======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

標量整數函式，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

在輸入埠接受一個整數標量（\ ``x``\ ）並根據 :ref:`function<class_VisualShaderNodeIntFunc_property_function>` 對其進行變換。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` | :ref:`function<class_VisualShaderNodeIntFunc_property_function>` | ``2`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIntFunc_Function>`

.. _class_VisualShaderNodeIntFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_ABS** = ``0``

返回參數的絕對值。在 Godot 著色器語言中，會被翻譯為 ``abs(x)``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_NEGATE** = ``1``

使用 ``-(x)``\ ，對 ``x`` 求反。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_SIGN** = ``2``

提取參數的符號。在 Godot 著色器語言中，會被翻譯為 ``sign(x)``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_BITWISE_NOT** = ``3``

返回對該整數進行按位元 ``NOT`` 運算的結果。在 Godot 著色器語言中會被翻譯為 ``~a``\ 。

.. _class_VisualShaderNodeIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_MAX** = ``4``

代表 :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **function** = ``2`` :ref:`🔗<class_VisualShaderNodeIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **get_function**\ (\ )

A function to be applied to the scalar.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
