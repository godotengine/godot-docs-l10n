:github_url: hide

.. _class_VisualShaderNodeUIntParameter:

VisualShaderNodeUIntParameter
=============================

**繼承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

無符號 :ref:`int<class_int>` 型別著色器參數（uniform）的視覺化著色器節點。

.. rst-class:: classref-introduction-group

說明
----

無符號 :ref:`int<class_int>` 型別的 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`\ 。還可以對值的可接受範圍進行自定義。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`default_value<class_VisualShaderNodeUIntParameter_property_default_value>`                 | ``0``     |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeUIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

這個參數的預設值，外部沒有設值時使用。必須啟用 :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>`\ ；否則預設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeUIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

如果為 ``true``\ ，則該節點有自訂預設值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
