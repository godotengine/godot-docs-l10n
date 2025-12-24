:github_url: hide

.. _class_VisualShaderNodeMix:

VisualShaderNodeMix
===================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在視覺化著色器圖中，在兩個值之間進行線性插值。

.. rst-class:: classref-introduction-group

說明
----

翻譯為著色器語言中的 ``mix(a, b, weight)``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeMix_OpType>` | :ref:`op_type<class_VisualShaderNodeMix_property_op_type>` | ``0`` |
   +------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeMix_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeMix_OpType>`

.. _class_VisualShaderNodeMix_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_SCALAR** = ``0``

浮點標量。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

2D 向量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

``a`` 和 ``b`` 埠使用 2D 向量型別。\ ``weight`` 端口使用標量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

3D向量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

``a`` 和 ``b`` 埠使用 3D 向量型別。\ ``weight`` 端口使用標量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

4D 向量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

``a`` 和 ``b`` 埠使用 4D 向量型別。\ ``weight`` 端口使用標量型別。

.. _class_VisualShaderNodeMix_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_MAX** = ``7``

代表 :ref:`OpType<enum_VisualShaderNodeMix_OpType>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeMix_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeMix_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeMix_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeMix_OpType>` **get_op_type**\ (\ )

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
