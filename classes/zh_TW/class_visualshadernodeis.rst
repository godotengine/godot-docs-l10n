:github_url: hide

.. _class_VisualShaderNodeIs:

VisualShaderNodeIs
==================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

布林比較運算子，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

返回 ``INF``\ 或\ ``NaN``\ 與標量參數之間比較的布林值結果。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIs_Function>` | :ref:`function<class_VisualShaderNodeIs_property_function>` | ``0`` |
   +---------------------------------------------------+-------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeIs_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIs_Function>`

.. _class_VisualShaderNodeIs_constant_FUNC_IS_INF:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_INF** = ``0``

與 ``INF``\ （無窮大）比較。

.. _class_VisualShaderNodeIs_constant_FUNC_IS_NAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_NAN** = ``1``

Comparison with ``NaN`` (Not a Number; indicates invalid numeric results, such as division by zero).

.. _class_VisualShaderNodeIs_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_MAX** = ``2``

代表 :ref:`Function<enum_VisualShaderNodeIs_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeIs_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIs_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeIs_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIs_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIs_Function>` **get_function**\ (\ )

The comparison function.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
