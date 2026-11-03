:github_url: hide

.. _class_EditorScenePostImportPlugin:

EditorScenePostImportPlugin
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於控制和修改匯入場景的過程的外掛程式。

.. rst-class:: classref-introduction-group

說明
----

這種外掛程式型別的存在是為了修改匯入場景的處理，允許在處理的每個階段更改內容以及新增匯入器選項。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_import_options<class_EditorScenePostImportPlugin_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_get_internal_import_options<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`\ (\ category\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                                                                                                                                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_update_view_required<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_internal_option_visibility<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`_get_option_visibility<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_internal_process<class_EditorScenePostImportPlugin_private_method__internal_process>`\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual|                                                                                                                                                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_post_process<class_EditorScenePostImportPlugin_private_method__post_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`_pre_process<class_EditorScenePostImportPlugin_private_method__pre_process>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual|                                                                                                                                                                                                                                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option<class_EditorScenePostImportPlugin_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_import_option_advanced<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_option_value<class_EditorScenePostImportPlugin_method_get_option_value>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                         |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorScenePostImportPlugin_InternalImportCategory:

.. rst-class:: classref-enumeration

enum **InternalImportCategory**: :ref:`🔗<enum_EditorScenePostImportPlugin_InternalImportCategory>`

.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_NODE** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MESH** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MATERIAL:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MATERIAL** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorScenePostImportPlugin_constant_INTERNAL_IMPORT_CATEGORY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`InternalImportCategory<enum_EditorScenePostImportPlugin_InternalImportCategory>` **INTERNAL_IMPORT_CATEGORY_MAX** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorScenePostImportPlugin_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_import_options>`

覆蓋以新增常規匯入選項。這些將出現在編輯器的主匯入停靠面板中。通過 :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>` 新增選項。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_import_options:

.. rst-class:: classref-method

|void| **_get_internal_import_options**\ (\ category\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>`

覆蓋以新增內部匯入選項。這些將出現在 3D 場景匯入對話框中。通過 :ref:`add_import_option()<class_EditorScenePostImportPlugin_method_add_import_option>` 和 :ref:`add_import_option_advanced()<class_EditorScenePostImportPlugin_method_add_import_option_advanced>` 新增選項。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_update_view_required**\ (\ category\: :ref:`int<class_int>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_update_view_required>`

回傳在選項已更改時是否需要更新匯入對話框的 3D 檢視，若更新則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_internal_option_visibility**\ (\ category\: :ref:`int<class_int>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_internal_option_visibility>`

顯示給定的選項應回傳 ``true``\ ，隱藏給定的選項應回傳 ``false``\ ，忽略應回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__get_option_visibility>`

顯示給定的選項應回傳 ``true``\ ，隱藏給定的選項應回傳 ``false``\ ，忽略應回傳 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__internal_process:

.. rst-class:: classref-method

|void| **_internal_process**\ (\ category\: :ref:`int<class_int>`, base_node\: :ref:`Node<class_Node>`, node\: :ref:`Node<class_Node>`, resource\: :ref:`Resource<class_Resource>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__internal_process>`

處理給定類別的特定節點或資源。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__post_process:

.. rst-class:: classref-method

|void| **_post_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__post_process>`

對場景進行後期處理。該方法會在最終場景設定完成後呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_private_method__pre_process:

.. rst-class:: classref-method

|void| **_pre_process**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImportPlugin_private_method__pre_process>`

對場景進行預處理。場景格式載入器載入場景後會立即呼叫該函式，此時尚未進行任何更改。

預處理可用於調整 ``"nodes"``\ 、\ ``"meshes"``\ 、\ ``"animations"``\ 、\ ``"materials"`` 等內部匯入選項，這些欄位位於 ``get_option_value("_subresources")`` 中。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option>`

新增特定的匯入選項（僅限名稱和預設值）。該函式只能從 :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` 和 :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>` 被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorScenePostImportPlugin_method_add_import_option_advanced>`

新增特定的匯入選項。該函式只能從 :ref:`_get_import_options()<class_EditorScenePostImportPlugin_private_method__get_import_options>` 和 :ref:`_get_internal_import_options()<class_EditorScenePostImportPlugin_private_method__get_internal_import_options>` 被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImportPlugin_method_get_option_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option_value**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorScenePostImportPlugin_method_get_option_value>`

查詢選項的值。該函式只能從查詢可見性的函式或處理函式中被呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
