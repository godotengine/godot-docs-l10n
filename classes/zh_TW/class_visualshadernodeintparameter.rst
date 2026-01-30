:github_url: hide

.. _class_VisualShaderNodeIntParameter:

VisualShaderNodeIntParameter
============================

**繼承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`int<class_int>` 型別著色器參數（uniform）的視覺化著色器節點。

.. rst-class:: classref-introduction-group

說明
----

:ref:`int<class_int>` 型別的 :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>`\ 。可以自訂能夠接受的值的範圍。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`default_value<class_VisualShaderNodeIntParameter_property_default_value>`                 | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` | ``false``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`   | :ref:`enum_names<class_VisualShaderNodeIntParameter_property_enum_names>`                       | ``PackedStringArray()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` | :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>`                                   | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`max<class_VisualShaderNodeIntParameter_property_max>`                                     | ``100``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`min<class_VisualShaderNodeIntParameter_property_min>`                                     | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`step<class_VisualShaderNodeIntParameter_property_step>`                                   | ``1``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeIntParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeIntParameter_Hint>`

.. _class_VisualShaderNodeIntParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_NONE** = ``0``

參數的取值沒有約束。

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE** = ``1``

參數的取值必須在指定的 :ref:`min<class_VisualShaderNodeIntParameter_property_min>`/:ref:`max<class_VisualShaderNodeIntParameter_property_max>` 範圍內。

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE_STEP** = ``2``

參數的取值必須在指定的範圍內，值與值之間的步長為給定的 :ref:`step<class_VisualShaderNodeIntParameter_property_step>`\ 。

.. _class_VisualShaderNodeIntParameter_constant_HINT_ENUM:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_ENUM** = ``3``

The parameter uses an enum to associate preset values to names in the editor.

.. _class_VisualShaderNodeIntParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_MAX** = ``4``

代表 :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

這個參數的預設值，外部沒有設值時使用。必須啟用 :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>`\ ；否則預設為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

如果為 ``true``\ ，則該節點有自訂預設值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_enum_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **enum_names** = ``PackedStringArray()`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_enum_names>`

.. rst-class:: classref-property-setget

- |void| **set_enum_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_enum_names**\ (\ )

The names used for the enum select in the editor. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` must be :ref:`HINT_ENUM<class_VisualShaderNodeIntParameter_constant_HINT_ENUM>` for this to take effect.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **get_hint**\ (\ )

該節點的範圍提示。請用它來自訂有效的參數範圍。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **max** = ``100`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max**\ (\ )

這個參數所能接受的最大值。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必須為 :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才會生效。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **min** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min**\ (\ )

這個參數所能接受的最小值。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必須為 :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才會生效。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_step:

.. rst-class:: classref-property

:ref:`int<class_int>` **step** = ``1`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_step**\ (\ )

參數值之間的步長。迫使參數成為給定值的倍數。\ :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` 必須為 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` 才能生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
