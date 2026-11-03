:github_url: hide

.. _class_VisualShaderNodeCompare:

VisualShaderNodeCompare
=======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

視覺化著色器圖內常見型別的比較函式。

.. rst-class:: classref-introduction-group

說明
----

通過 :ref:`function<class_VisualShaderNodeCompare_property_function>` 比較 ``a`` 和 ``b`` 的 :ref:`type<class_VisualShaderNodeCompare_property_type>`\ 。返回一個布林標量。在著色器程式碼中轉換成 ``if`` 指令。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_VisualShaderNodeCompare_ComparisonType:

.. rst-class:: classref-enumeration

enum **ComparisonType**: :ref:`🔗<enum_VisualShaderNodeCompare_ComparisonType>`

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR** = ``0``

浮點標量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_INT** = ``1``

整數標量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_UINT** = ``2``

不帶正負號的整數標量。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_2D** = ``3``

2D 向量型別。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_3D** = ``4``

3D向量型別。

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_4D** = ``5``

4D 向量型別。

.. _class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_BOOLEAN** = ``6``

布林型別。

.. _class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_TRANSFORM** = ``7``

變換型別，即 ``mat4``\ 。

.. _class_VisualShaderNodeCompare_constant_CTYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_MAX** = ``8``

代表 :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeCompare_Function>`

.. _class_VisualShaderNodeCompare_constant_FUNC_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_EQUAL** = ``0``

相等比較（\ ``a == b``\ ）。

.. _class_VisualShaderNodeCompare_constant_FUNC_NOT_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_NOT_EQUAL** = ``1``

不等比較（\ ``a != b``\ ）。

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN** = ``2``

大於比較（\ ``a > b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 設定為 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，則無法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN_EQUAL** = ``3``

大於或等於的比較（\ ``a >= b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 設定為 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，則無法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN** = ``4``

小於比較（\ ``a < b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 設定為 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，則無法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN_EQUAL** = ``5``

小於或等於的比較（\ ``a <= b``\ ）。如果 :ref:`type<class_VisualShaderNodeCompare_property_type>` 設定為 :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` 或 :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`\ ，則無法使用。

.. _class_VisualShaderNodeCompare_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_MAX** = ``6``

代表 :ref:`Function<enum_VisualShaderNodeCompare_Function>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Condition:

.. rst-class:: classref-enumeration

enum **Condition**: :ref:`🔗<enum_VisualShaderNodeCompare_Condition>`

.. _class_VisualShaderNodeCompare_constant_COND_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ALL** = ``0``

如果向量中的所有分量都滿足比較條件，則結果為 ``true``\ 。

.. _class_VisualShaderNodeCompare_constant_COND_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ANY** = ``1``

如果向量中的任何一個分量滿足比較條件，則結果為 ``true``\ 。

.. _class_VisualShaderNodeCompare_constant_COND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_MAX** = ``2``

代表 :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeCompare_property_condition:

.. rst-class:: classref-property

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **condition** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_condition>`

.. rst-class:: classref-property-setget

- |void| **set_condition**\ (\ value\: :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`\ )
- :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **get_condition**\ (\ )

:ref:`type<class_VisualShaderNodeCompare_property_type>` 被設定為 :ref:`CTYPE_VECTOR_3D<class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D>` 時套用的額外條件。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeCompare_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeCompare_Function>` **get_function**\ (\ )

比較函式。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_type:

.. rst-class:: classref-property

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **type** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_comparison_type**\ (\ value\: :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`\ )
- :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **get_comparison_type**\ (\ )

在比較中要使用的型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
