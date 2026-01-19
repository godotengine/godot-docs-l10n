:github_url: hide

.. _class_VisualShaderNodeFloatParameter:

VisualShaderNodeFloatParameter
==============================

**繼承：** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

標量浮點數參數，在視覺化著色器圖中使用。

.. rst-class:: classref-introduction-group

說明
----

翻譯為著色器語言中的 ``uniform float``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`                 | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`default_value_enabled<class_VisualShaderNodeFloatParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` | :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>`                                   | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`                                     | ``1.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`min<class_VisualShaderNodeFloatParameter_property_min>`                                     | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`                                   | ``0.1``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeFloatParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeFloatParameter_Hint>`

.. _class_VisualShaderNodeFloatParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_NONE** = ``0``

不使用提示。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE** = ``1``

標量值的範圍提示，會將可能的輸入限制在 :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` 和 :ref:`max<class_VisualShaderNodeFloatParameter_property_max>` 之間。會被翻譯為著色器程式碼中的 ``hint_range(min, max)``\ 。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE_STEP** = ``2``

標量值的範圍提示，帶步長，會將可能的輸入限制在 :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` 和 :ref:`max<class_VisualShaderNodeFloatParameter_property_max>` 之間，步長（差異量）為 :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`\ 。會被翻譯為著色器程式碼中的 ``hint_range(min, max, step)``\ 。

.. _class_VisualShaderNodeFloatParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_MAX** = ``3``

代表 :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeFloatParameter_property_default_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **default_value** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_default_value**\ (\ )

該著色器內部分配的預設值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

啟用 :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **get_hint**\ (\ )

對 uniform 套用的提示，控制通過屬性檢視器所能設定的值。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **max** = ``1.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

範圍提示的最小值。會在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 為 :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 時使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **min** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

範圍提示的最大值。會在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 為 :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` 或 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 時使用。

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.1`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

帶步長（差異量）的範圍提示的步長值。會在 :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` 為 :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>` 時使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
