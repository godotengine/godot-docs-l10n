:github_url: hide

.. _class_VisualShaderNodeTransformVecMult:

VisualShaderNodeTransformVecMult
================================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，將 :ref:`Transform3D<class_Transform3D>` 與 :ref:`Vector3<class_Vector3>` 相乘。

.. rst-class:: classref-introduction-group

說明
----

A multiplication operation on a transform (4×4 matrix) and a vector, with support for different multiplication operators.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` | :ref:`operator<class_VisualShaderNodeTransformVecMult_property_operator>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeTransformVecMult_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformVecMult_Operator>`

.. _class_VisualShaderNodeTransformVecMult_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_AxB** = ``0``

將變換 ``a`` 乘以向量 ``b``\ 。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_BxA** = ``1``

將向量 ``b`` 乘以變換 ``a``\ 。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_AxB** = ``2``

將變換 ``a`` 乘以向量 ``b``\ ，跳過變換的最後一行和一列。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_BxA** = ``3``

將向量 ``b`` 乘以變換 ``a``\ ，跳過變換的最後一行和一列。

.. _class_VisualShaderNodeTransformVecMult_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_MAX** = ``4``

代表 :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeTransformVecMult_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformVecMult_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **get_operator**\ (\ )

The multiplication type to be performed.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
