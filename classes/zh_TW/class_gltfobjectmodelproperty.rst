:github_url: hide

.. _class_GLTFObjectModelProperty:

GLTFObjectModelProperty
=======================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述如何存取 glTF 物件模型中定義的屬性。

.. rst-class:: classref-introduction-group

說明
----

GLTFObjectModelProperty 定義了 glTF 物件模型中的屬性和 Godot 場景樹中 NodePath 之間的映射，可以用來使用 ``KHR_animation_pointer`` 擴充對屬性進行動畫，也可以通過與引擎無關的腳本（例如 ``KHR_interactivity`` 擴充定義的行為圖）來存取這些屬性。

glTF 屬性由 :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 中儲存的 JSON 指針標識，對應的 Godot 屬性則由 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 定義。大多數情況下，\ :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 和 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 都只會有一個元素，不過部分情況下一個 glTF JSON 指針也會對應多個 Godot 屬性，一個 Godot 屬性也可能對應多個 glTF JSON 指針，還可能會存在多對多的關係。

可以使用 :ref:`Expression<class_Expression>` 物件定義資料之間的轉換，例如可能 glTF 中定義夾角時使用弧度而 Godot 則使用角度。\ :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 屬性定義的是 glTF 檔案中所儲存資料的型別，該型別由物件模型定義，可能的取值見 :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `GLTF 物件模型 <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc>`__

- `KHR_animation_pointer GLTF 擴充 <https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`gltf_to_godot_expression<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`godot_to_gltf_expression<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`                       | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                   | :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`                             | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`   | :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`               | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`                            | :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>`                         | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_node_path<class_GLTFObjectModelProperty_method_append_node_path>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_path_to_property<class_GLTFObjectModelProperty_method_append_path_to_property>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ )                                          |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` | :ref:`get_accessor_type<class_GLTFObjectModelProperty_method_get_accessor_type>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_json_pointers<class_GLTFObjectModelProperty_method_has_json_pointers>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_node_paths<class_GLTFObjectModelProperty_method_has_node_paths>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_types<class_GLTFObjectModelProperty_method_set_types>`\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GLTFObjectModelProperty_GLTFObjectModelType:

.. rst-class:: classref-enumeration

enum **GLTFObjectModelType**: :ref:`🔗<enum_GLTFObjectModelProperty_GLTFObjectModelType>`

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_UNKNOWN** = ``0``

未知或未設定的物件模型型別。如果將物件模型型別設定為該值，則仍需確定真實型別。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_BOOL** = ``1``

物件模型型別“bool”。在 glTF JSON 中表示為布林值，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“SCALAR”。在存取器中編碼時 ``0`` 表示 ``false``\ ，任何其他值都表示 ``true``\ 。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT** = ``2``

物件模型型別“float”。在 glTF JSON 中表示為數字，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“SCALAR”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY** = ``3``

物件模型型別“float\[\]”。在 glTF JSON 中表示為數字陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“SCALAR”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2** = ``4``

物件模型型別“float2”。在 glTF JSON 中表示為兩個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“VEC2”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3** = ``5``

物件模型型別“float3”。在 glTF JSON 中表示為三個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“VEC3”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4** = ``6``

物件模型型別“float4”。在 glTF JSON 中表示為四個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“VEC4”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2X2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2X2** = ``7``

物件模型型別“float2x2”。在 glTF JSON 中表示為四個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“MAT2”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3X3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3X3** = ``8``

物件模型型別“float3x3”。在 glTF JSON 中表示為九個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“MAT3”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4X4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4X4** = ``9``

物件模型型別“float4x4”。在 glTF JSON 中表示為十六個數字的陣列，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“MAT4”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_INT** = ``10``

物件模型型別“int”。在 glTF JSON 中表示為數字，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中編碼為“SCALAR”。取值範圍僅限於有符號整數。\ ``KHR_interactivity`` 僅支援 32 位元整數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFObjectModelProperty_property_gltf_to_godot_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **gltf_to_godot_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>`

.. rst-class:: classref-property-setget

- |void| **set_gltf_to_godot_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_gltf_to_godot_expression**\ (\ )

如果設定了該 :ref:`Expression<class_Expression>`\ ，則會用來將 glTF 物件模型中的屬性值轉換為 Godot 屬性所需的值。適用於 glTF 物件模型使用不同的單位系統，以及資料需要以某種方式進行轉換的場合。如果為 ``null``\ ，則會原樣複製屬性值。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_godot_to_gltf_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **godot_to_gltf_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>`

.. rst-class:: classref-property-setget

- |void| **set_godot_to_gltf_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_godot_to_gltf_expression**\ (\ )

如果設定了該 :ref:`Expression<class_Expression>`\ ，則會用來將 Godot 屬性中的屬性值轉換為 glTF 物件模型所需的值。適用於 glTF 物件模型使用不同的單位系統，以及資料需要以某種方式進行轉換的場合。如果為 ``null``\ ，則會原樣複製屬性值。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_json_pointers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **json_pointers** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_json_pointers>`

.. rst-class:: classref-property-setget

- |void| **set_json_pointers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **get_json_pointers**\ (\ )

用於在 glTF 物件模型中標識屬性的 glTF 物件模型 JSON 指針。大多數情況下該陣列中只有一個元素，但某些特定情況可能需要多個指針。這些元素本身也是陣列，表示將 JSON 指針拆分成元件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_node_paths:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **node_paths** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_node_paths>`

.. rst-class:: classref-property-setget

- |void| **set_node_paths**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_node_paths**\ (\ )

指向 Godot 場景樹中一個或多個屬性的 :ref:`NodePath<class_NodePath>` 陣列。匯入時由 :ref:`GLTFDocument<class_GLTFDocument>` 或 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類設定。簡單情況可以使用 :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` 將屬性新增到該陣列中。

大多數情況下 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 只會有一個元素，但在某些情況下，單個 glTF JSON 指針可能映射到多個 Godot 屬性。例如多個 glTF 節點上使用的同一個 :ref:`GLTFCamera<class_GLTFCamera>` 或 :ref:`GLTFLight<class_GLTFLight>` 會表示為多個 Godot 節點。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_object_model_type:

.. rst-class:: classref-property

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **object_model_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_object_model_type>`

.. rst-class:: classref-property-setget

- |void| **set_object_model_type**\ (\ value\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ )
- :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **get_object_model_type**\ (\ )

根據物件模型定義，儲存在 glTF 檔案中的資料型別。這是可用存取器型別的超集，決定了存取器型別。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_variant_type:

.. rst-class:: classref-property

:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **variant_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_variant_type>`

.. rst-class:: classref-property-setget

- |void| **set_variant_type**\ (\ value\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )
- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **get_variant_type**\ (\ )

儲存在 Godot 屬性中的資料型別。這是 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 指向的屬性型別。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFObjectModelProperty_method_append_node_path:

.. rst-class:: classref-method

|void| **append_node_path**\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_node_path>`

將一個 :ref:`NodePath<class_NodePath>` 附加到 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`\ 。\ :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 類可以用它來定義如何將 glTF 物件模型屬性映射到一個或或多個 Godot 屬性。簡單情況建議使用 :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>`\ 。請記得再呼叫一次 :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>`\ （順序無關緊要）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_append_path_to_property:

.. rst-class:: classref-method

|void| **append_path_to_property**\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_path_to_property>`

對 :ref:`append_node_path()<class_GLTFObjectModelProperty_method_append_node_path>` 的高階封裝，能夠處理最常見的情況。它會使用 ``node_path`` 作為基礎構造一個新的 :ref:`NodePath<class_NodePath>`\ ，並將 ``prop_name`` 附加到子路徑上。請確保再呼叫一次 :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>`\ （順序無關緊要）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_get_accessor_type:

.. rst-class:: classref-method

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_get_accessor_type>`

與該屬性的 :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 關聯的 GLTF 存取器型別。可能的值見 :ref:`GLTFAccessor.accessor_type<class_GLTFAccessor_property_accessor_type>`\ ，物件模型型別與存取器型別之間的映射見 :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_json_pointers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_json_pointers**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_json_pointers>`

如果 :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 非空則回傳 ``true``\ 。用於在匯出過程中確定 **GLTFObjectModelProperty** 是否能夠處理將 Godot 屬性轉換為 glTF 物件模型屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_node_paths:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_paths**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_node_paths>`

如果 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 非空則回傳 ``true``\ 。用於在匯入過程中確定 **GLTFObjectModelProperty** 是否能夠處理將 glTF 物件模型屬性轉換為 Godot 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_set_types:

.. rst-class:: classref-method

|void| **set_types**\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_set_types>`

設定 :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>` 和 :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 屬性。這是用來同時設定這兩個屬性的便捷方法，因為兩者幾乎都是一起確定的。該方法只應該呼叫一次。再次使用相同的值呼叫沒有效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
