:github_url: hide

.. _class_VisualShaderNodeVectorFunc:

VisualShaderNodeVectorFunc
==========================

**繼承：** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中使用的向量函式。

.. rst-class:: classref-introduction-group

說明
----

視覺化著色器節點，能夠使用向量執行不同的函式。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` | :ref:`function<class_VisualShaderNodeVectorFunc_property_function>` | ``0`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeVectorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeVectorFunc_Function>`

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NORMALIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NORMALIZE** = ``0``

將向量正規化，使其長度為\ ``1``\ ，但指向相同的方向。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SATURATE** = ``1``

限制\ ``0.0``\ 和\ ``1.0``\ 之間的值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NEGATE** = ``2``

返回參數的相反值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RECIPROCAL** = ``3``

返回 ``1/vector``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ABS** = ``4``

返回參數的絕對值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOS** = ``5``

返回參數的反餘弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOSH** = ``6``

返回參數的反雙曲餘弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASIN** = ``7``

返回參數的反正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASINH** = ``8``

返回參數的反雙曲正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATAN** = ``9``

返回參數的反正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATANH** = ``10``

返回參數的反雙曲正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_CEIL** = ``11``

搜尋最接近的大於或等於參數的整數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COS** = ``12``

返回參數的餘弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COSH** = ``13``

返回參數的雙曲餘弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_DEGREES** = ``14``

將以弧度為單位的量轉換為度。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP** = ``15``

以 e 為底的指數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP2** = ``16``

以 2 為底的指數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FLOOR** = ``17``

搜尋小於或等於參數的最近整數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FRACT** = ``18``

計算參數的小數部分。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_INVERSE_SQRT** = ``19``

返回參數的平方根的倒數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG** = ``20``

自然對數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG2** = ``21``

以 2 為底的對數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RADIANS** = ``22``

將度數轉換為弧度。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUND** = ``23``

搜尋參數最近的整數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUNDEVEN** = ``24``

搜尋參數最近的偶數。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIGN** = ``25``

提取參數的符號，即如果參數是負的，返回 ``-1``\ ，如果是正的，返回 ``1``\ ，否則返回 ``0``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIN** = ``26``

返回參數的正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SINH** = ``27``

返回參數的雙曲正弦值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SQRT** = ``28``

返回參數的平方根。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TAN** = ``29``

返回參數的正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TANH** = ``30``

返回參數的雙曲正切值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TRUNC** = ``31``

返回一個等於與參數最接近的整數的值，該值的絕對值不大於參數的絕對值。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ONEMINUS** = ``32``

返回 ``1.0 - vector``\ 。

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_MAX** = ``33``

代表 :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeVectorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **get_function**\ (\ )

The function to be performed.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
