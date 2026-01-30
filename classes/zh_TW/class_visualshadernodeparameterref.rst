:github_url: hide

.. _class_VisualShaderNodeParameterRef:

VisualShaderNodeParameterRef
============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

對現有 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` 的引用。

.. rst-class:: classref-introduction-group

說明
----

建立對 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` 的引用，可以讓你在不同的著色器或著色階段輕松地重複使用這個參數。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`parameter_name<class_VisualShaderNodeParameterRef_property_parameter_name>` | ``"[None]"`` |
   +-----------------------------+-----------------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParameterRef_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeParameterRef_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

這個引用所指向的參數的名稱。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
