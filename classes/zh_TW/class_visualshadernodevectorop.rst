:github_url: hide

.. _class_VisualShaderNodeVectorOp:

VisualShaderNodeVectorOp
========================

**繼承：** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中使用的向量運算子。

.. rst-class:: classref-introduction-group

說明
----

用於使用向量運算子的視覺化著色器節點。對向量\ ``a``\ 和向量\ ``b``\ 進行操作。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` | :ref:`operator<class_VisualShaderNodeVectorOp_property_operator>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeVectorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeVectorOp_Operator>`

.. _class_VisualShaderNodeVectorOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ADD** = ``0``

將兩個向量相加。

.. _class_VisualShaderNodeVectorOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_SUB** = ``1``

從一個向量中減去一個向量。

.. _class_VisualShaderNodeVectorOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MUL** = ``2``

將兩個向量相乘。

.. _class_VisualShaderNodeVectorOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_DIV** = ``3``

將向量除以向量。

.. _class_VisualShaderNodeVectorOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MOD** = ``4``

返回兩個向量的餘數。

.. _class_VisualShaderNodeVectorOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_POW** = ``5``

返回第一個參數的值提高到第二個參數的冪，對於向量的每個分量。

.. _class_VisualShaderNodeVectorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MAX** = ``6``

對於向量的每個分量，返回兩個值中的較大值。

.. _class_VisualShaderNodeVectorOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MIN** = ``7``

對於向量的每個分量，返回兩個數值中的較小者。

.. _class_VisualShaderNodeVectorOp_constant_OP_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_CROSS** = ``8``

計算兩個向量的外積。

.. _class_VisualShaderNodeVectorOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ATAN2** = ``9``

返回參數的反正切值。

.. _class_VisualShaderNodeVectorOp_constant_OP_REFLECT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_REFLECT** = ``10``

返回指向反射方向的向量。\ ``a`` 是入射向量，\ ``b`` 是法向量。

.. _class_VisualShaderNodeVectorOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_STEP** = ``11``

向量步長運算子。如果\ ``a``\ 小於\ ``b``\ ，返回 ``0.0``\ ，否則返回 ``1.0``\ 。

.. _class_VisualShaderNodeVectorOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ENUM_SIZE** = ``12``

代表 :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeVectorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **get_operator**\ (\ )

要使用的運算符。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
