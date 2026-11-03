:github_url: hide

.. _class_VisualShaderNodeSwitch:

VisualShaderNodeSwitch
======================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

視覺化著色器中使用的選擇器函式。

.. rst-class:: classref-introduction-group

說明
----

如果提供的布林值為 ``true`` 或 ``false``\ ，則回傳 :ref:`op_type<class_VisualShaderNodeSwitch_property_op_type>` 型別的一個關聯值。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` | :ref:`op_type<class_VisualShaderNodeSwitch_property_op_type>` | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeSwitch_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeSwitch_OpType>`

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_FLOAT** = ``0``

浮點標量。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_INT** = ``1``

整數標量。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_UINT** = ``2``

不帶正負號的整數標量。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_2D** = ``3``

2D 向量型別。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_3D** = ``4``

3D向量型別。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

4D 向量型別。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_BOOLEAN** = ``6``

布林型別。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_TRANSFORM** = ``7``

變換型別。

.. _class_VisualShaderNodeSwitch_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **OP_TYPE_MAX** = ``8``

代表 :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeSwitch_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeSwitch_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeSwitch_OpType>` **get_op_type**\ (\ )

運算元和返回值的型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
