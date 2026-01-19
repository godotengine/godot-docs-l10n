:github_url: hide

.. _class_VisualShaderNodeTransformFunc:

VisualShaderNodeTransformFunc
=============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，計算 :ref:`Transform3D<class_Transform3D>` 函式。

.. rst-class:: classref-introduction-group

說明
----

計算提供的 :ref:`Transform3D<class_Transform3D>` 的逆或轉置函式。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` | :ref:`function<class_VisualShaderNodeTransformFunc_property_function>` | ``0`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeTransformFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeTransformFunc_Function>`

.. _class_VisualShaderNodeTransformFunc_constant_FUNC_INVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` **FUNC_INVERSE** = ``0``

對 :ref:`Transform3D<class_Transform3D>` 矩陣執行逆運算。

.. _class_VisualShaderNodeTransformFunc_constant_FUNC_TRANSPOSE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` **FUNC_TRANSPOSE** = ``1``

對 :ref:`Transform3D<class_Transform3D>` 矩陣執行轉置運算。

.. _class_VisualShaderNodeTransformFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` **FUNC_MAX** = ``2``

代表 :ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeTransformFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeTransformFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeTransformFunc_Function>` **get_function**\ (\ )

The function to be computed.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
