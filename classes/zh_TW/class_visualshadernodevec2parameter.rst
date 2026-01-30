:github_url: hide

.. _class_VisualShaderNodeVec2Parameter:

VisualShaderNodeVec2Parameter
=============================

**繼承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

視覺化著色器圖中使用的 :ref:`Vector2<class_Vector2>` 參數。

.. rst-class:: classref-introduction-group

說明
----

翻譯為著色器語言中的 ``uniform vec2``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`default_value<class_VisualShaderNodeVec2Parameter_property_default_value>`                 | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`default_value_enabled<class_VisualShaderNodeVec2Parameter_property_default_value_enabled>` | ``false``         |
   +-------------------------------+--------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeVec2Parameter_property_default_value:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **default_value** = ``Vector2(0, 0)`` :ref:`🔗<class_VisualShaderNodeVec2Parameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_default_value**\ (\ )

該著色器內部分配的預設值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVec2Parameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeVec2Parameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

啟用 :ref:`default_value<class_VisualShaderNodeVec2Parameter_property_default_value>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
