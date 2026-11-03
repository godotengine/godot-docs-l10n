:github_url: hide

.. _class_VisualShaderNodeFloatFunc:

VisualShaderNodeFloatFunc
=========================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中使用的浮點數標量函式。

.. rst-class:: classref-introduction-group

說明
----

在輸入埠接受一個浮點數標量（\ ``x``\ ）並根據 :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` 對其進行變換。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+--------+
   | :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` | :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` | ``13`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeFloatFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeFloatFunc_Function>`

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIN** = ``0``

返回參數的正弦值。在 Godot 著色器語言中，會被翻譯為 ``sin(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COS** = ``1``

返回參數的餘弦值。在 Godot 著色器語言中，會被翻譯為 ``cos(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TAN** = ``2``

返回參數的正切值。在 Godot 著色器語言中，會被翻譯為 ``tan(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASIN** = ``3``

返回參數的反正弦值。在 Godot 著色器語言中，會被翻譯為 ``asin(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOS** = ``4``

返回參數的反餘弦值。在 Godot 著色器語言中，會被翻譯為 ``acos(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATAN** = ``5``

返回參數的反正切值。在 Godot 著色器語言中，會被翻譯為 ``atan(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SINH** = ``6``

返回參數的雙曲正弦值。在 Godot 著色器語言中，會被翻譯為 ``sinh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COSH** = ``7``

返回參數的雙曲餘弦值。在 Godot 著色器語言中，會被翻譯為 ``cosh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TANH** = ``8``

返回參數的雙曲正切值。在 Godot 著色器語言中，會被翻譯為 ``tanh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG** = ``9``

返回參數的自然對數。在 Godot 著色器語言中，會被翻譯為 ``log(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP** = ``10``

返回該參數的自然指數。在 Godot 著色器語言中，會被翻譯為 ``exp(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SQRT** = ``11``

返回參數的平方根。在 Godot 著色器語言中，會被翻譯為 ``sqrt(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ABS** = ``12``

返回參數的絕對值。在 Godot 著色器語言中，會被翻譯為 ``abs(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIGN** = ``13``

提取參數的符號。在 Godot 著色器語言中，會被翻譯為 ``sign(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FLOOR** = ``14``

搜尋小於或等於參數的最接近的整數。在 Godot 著色器語言中，會被翻譯為 ``floor(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUND** = ``15``

搜尋最接近參數的整數。在 Godot 著色器語言中，會被翻譯為 ``round(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_CEIL** = ``16``

搜尋大於或等於參數的最接近的整數。在 Godot 著色器語言中，會被翻譯為 ``ceil(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FRACT** = ``17``

計算參數的小數部分。在 Godot 著色器語言中，會被翻譯為 ``fract(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SATURATE** = ``18``

使用 ``min(max(x, 0.0), 1.0)`` 將值鉗制在 ``0.0`` 和 ``1.0`` 之間。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_NEGATE** = ``19``

使用 ``-(x)``\ ，對 ``x`` 求反。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOSH** = ``20``

返回參數的反雙曲餘弦值。在 Godot 著色器語言中，會被翻譯為 ``acosh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASINH** = ``21``

返回參數的反雙曲正弦值。在 Godot 著色器語言中，會被翻譯為 ``asinh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATANH** = ``22``

返回參數的反雙曲正切值。在 Godot 著色器語言中，會被翻譯為 ``atanh(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_DEGREES** = ``23``

將弧度數轉換為度數。在 Godot 著色器語言中，會被翻譯為 ``degrees(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP2** = ``24``

返回 2 的參數次冪。在 Godot 著色器語言中，會被翻譯為 ``exp2(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_INVERSE_SQRT** = ``25``

返回參數平方根的倒數。在 Godot 著色器語言中，會被翻譯為 ``inversesqrt(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG2** = ``26``

返回參數的以 2 為底的對數。在 Godot 著色器語言中，會被翻譯為 ``log2(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RADIANS** = ``27``

將度數轉換為弧度。在 Godot 著色器語言中，會被翻譯為 ``radians(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RECIPROCAL** = ``28``

求 1 除以 ``x`` 得到的倒數（即 ``1 / x``\ ）。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUNDEVEN** = ``29``

搜尋最接近參數的偶數。在 Godot 著色器語言中，會被翻譯為 ``roundEven(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TRUNC** = ``30``

返回與 ``x`` 的最接近整數的值，其絕對值不大於 ``x`` 絕對值。在 Godot 著色器語言中，會被翻譯為 ``trunc(x)``\ 。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ONEMINUS** = ``31``

從 1 中減去標量 ``x``\ （即 ``1 - x``\ ）。

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_MAX** = ``32``

代表 :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeFloatFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **function** = ``13`` :ref:`🔗<class_VisualShaderNodeFloatFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **get_function**\ (\ )

要套用至該標量的函式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
