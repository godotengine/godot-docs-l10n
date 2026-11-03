:github_url: hide

.. _class_OpenXRInteractionProfile:

OpenXRInteractionProfile
========================

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於 OpenXR 的建議綁定對象。

.. rst-class:: classref-introduction-group

說明
----

此物件儲存用於一個互動配置的建議綁定。互動配置定義了一個被追蹤的 XR 裝置（例如一個 XR 控制器）的中繼資料。

有關更多資訊，請參閱\ `《OpenXR 規範中的互動配置資訊》 <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles>`__\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`binding_modifiers<class_OpenXRInteractionProfile_property_binding_modifiers>`               | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`bindings<class_OpenXRInteractionProfile_property_bindings>`                                 | ``[]`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`interaction_profile_path<class_OpenXRInteractionProfile_property_interaction_profile_path>` | ``""`` |
   +-----------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`                 | :ref:`get_binding<class_OpenXRInteractionProfile_method_get_binding>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_count<class_OpenXRInteractionProfile_method_get_binding_count>`\ (\ ) |const|                                      |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRInteractionProfile_method_get_binding_modifier>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_binding_modifier_count<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`\ (\ ) |const|                    |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRInteractionProfile_property_binding_modifiers:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **binding_modifiers** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_binding_modifiers>`

.. rst-class:: classref-property-setget

- |void| **set_binding_modifiers**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_binding_modifiers**\ (\ )

用於該互動設定的綁定修改器。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_bindings:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **bindings** = ``[]`` :ref:`🔗<class_OpenXRInteractionProfile_property_bindings>`

.. rst-class:: classref-property-setget

- |void| **set_bindings**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_bindings**\ (\ )

用於該互動配置的動作綁定。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_property_interaction_profile_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **interaction_profile_path** = ``""`` :ref:`🔗<class_OpenXRInteractionProfile_property_interaction_profile_path>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profile_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_interaction_profile_path**\ (\ )

標識該 XR 裝置的互動配置路徑。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRInteractionProfile_method_get_binding:

.. rst-class:: classref-method

:ref:`OpenXRIPBinding<class_OpenXRIPBinding>` **get_binding**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding>`

檢索在該索引處的綁定。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_count>`

取得該互動配置中的綁定數量。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **get_binding_modifier**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier>`

取得位於該索引的 :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfile_method_get_binding_modifier_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_binding_modifier_count**\ (\ ) |const| :ref:`🔗<class_OpenXRInteractionProfile_method_get_binding_modifier_count>`

取得互動設定中綁定修改器的數量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
