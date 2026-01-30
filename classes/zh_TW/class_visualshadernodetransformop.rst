:github_url: hide

.. _class_VisualShaderNodeTransformOp:

VisualShaderNodeTransformOp
===========================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中使用的 :ref:`Transform3D<class_Transform3D>` 運算子。

.. rst-class:: classref-introduction-group

說明
----

Applies :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` to two transform (4×4 matrices) inputs.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` | :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeTransformOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformOp_Operator>`

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB** = ``0``

將變換 ``a`` 乘以變換 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA** = ``1``

將變換 ``b`` 乘以變換 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB_COMP** = ``2``

對變換 ``a`` 與變換 ``b`` 進行分量明智的乘法。

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA_COMP** = ``3``

對變換 ``b`` 與變換 ``a`` 進行分量明智的乘法。

.. _class_VisualShaderNodeTransformOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_ADD** = ``4``

將兩個變換相加。

.. _class_VisualShaderNodeTransformOp_constant_OP_A_MINUS_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_MINUS_B** = ``5``

從變換 ``b`` 中減去變換 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_B_MINUS_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_MINUS_A** = ``6``

從變換 ``a`` 中減去變換 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_A_DIV_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_DIV_B** = ``7``

將變換 ``a`` 除以變換 ``b``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_B_DIV_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_DIV_A** = ``8``

將變換 ``b`` 除以變換 ``a``\ 。

.. _class_VisualShaderNodeTransformOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_MAX** = ``9``

代表 :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeTransformOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **get_operator**\ (\ )

The type of the operation to be performed on the transforms.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
