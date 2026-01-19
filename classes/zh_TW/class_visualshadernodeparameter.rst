:github_url: hide

.. _class_VisualShaderNodeParameter:

VisualShaderNodeParameter
=========================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShaderNodeBooleanParameter<class_VisualShaderNodeBooleanParameter>`, :ref:`VisualShaderNodeColorParameter<class_VisualShaderNodeColorParameter>`, :ref:`VisualShaderNodeFloatParameter<class_VisualShaderNodeFloatParameter>`, :ref:`VisualShaderNodeIntParameter<class_VisualShaderNodeIntParameter>`, :ref:`VisualShaderNodeTextureParameter<class_VisualShaderNodeTextureParameter>`, :ref:`VisualShaderNodeTransformParameter<class_VisualShaderNodeTransformParameter>`, :ref:`VisualShaderNodeUIntParameter<class_VisualShaderNodeUIntParameter>`, :ref:`VisualShaderNodeVec2Parameter<class_VisualShaderNodeVec2Parameter>`, :ref:`VisualShaderNodeVec3Parameter<class_VisualShaderNodeVec3Parameter>`, :ref:`VisualShaderNodeVec4Parameter<class_VisualShaderNodeVec4Parameter>`

視覺化著色器圖中，參數的基礎型別。

.. rst-class:: classref-introduction-group

說明
----

參數代表著色器中的一個變數，是由外部設定的，即從 :ref:`ShaderMaterial<class_ShaderMaterial>` 中設定。參數在 :ref:`ShaderMaterial<class_ShaderMaterial>` 中以屬性的形式暴露，可以從屬性檢視器或腳本中分配。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`parameter_name<class_VisualShaderNodeParameter_property_parameter_name>` | ``""`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` | :ref:`qualifier<class_VisualShaderNodeParameter_property_qualifier>`           | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeParameter_Qualifier:

.. rst-class:: classref-enumeration

enum **Qualifier**: :ref:`🔗<enum_VisualShaderNodeParameter_Qualifier>`

.. _class_VisualShaderNodeParameter_constant_QUAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_NONE** = ``0``

該參數綁定至使用此著色器的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. _class_VisualShaderNodeParameter_constant_QUAL_GLOBAL:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_GLOBAL** = ``1``

該參數使用“專案設定”中定義的全域值。

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE** = ``2``

該參數綁定至節點，該節點附加了使用此著色器的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE_INDEX** = ``3``

The parameter will be tied to the node with attached :ref:`ShaderMaterial<class_ShaderMaterial>` using this shader. Enables setting a :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` property.

.. _class_VisualShaderNodeParameter_constant_QUAL_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_MAX** = ``4``

代表 :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParameter_property_instance_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_instance_index>`

.. rst-class:: classref-property-setget

- |void| **set_instance_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_index**\ (\ )

The index within 0-15 range, which is used to avoid clashes when shader used on multiple materials.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``""`` :ref:`🔗<class_VisualShaderNodeParameter_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

參數的名稱，該參數可以通過該名稱作為 :ref:`ShaderMaterial<class_ShaderMaterial>` 的屬性存取。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_qualifier:

.. rst-class:: classref-property

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **qualifier** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_qualifier>`

.. rst-class:: classref-property-setget

- |void| **set_qualifier**\ (\ value\: :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`\ )
- :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **get_qualifier**\ (\ )

定義該參數的作用域。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
