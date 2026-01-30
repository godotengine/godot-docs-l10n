:github_url: hide

.. _class_SceneState:

SceneState
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供對場景檔資訊的存取。

.. rst-class:: classref-introduction-group

說明
----

維護一個與場景相關的資源、節點、匯出的和重寫的屬性以及內建腳本的列表。無法從 **SceneState** 修改，只能讀取。可用於在不產生實體 :ref:`PackedScene<class_PackedScene>` 的前提下觀察其中的內容。

這個類不能直接產生實體，它是作為 :ref:`PackedScene.get_state()<class_PackedScene_method_get_state>` 的結果為一個給定的場景檢索的。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`               | :ref:`get_base_scene_state<class_SceneState_method_get_base_scene_state>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`get_connection_binds<class_SceneState_method_get_connection_binds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_count<class_SceneState_method_get_connection_count>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_flags<class_SceneState_method_get_connection_flags>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_method<class_SceneState_method_get_connection_method>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_signal<class_SceneState_method_get_connection_signal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_source<class_SceneState_method_get_connection_source>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_target<class_SceneState_method_get_connection_target>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_unbinds<class_SceneState_method_get_connection_unbinds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_count<class_SceneState_method_get_node_count>`\ (\ ) |const|                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_node_groups<class_SceneState_method_get_node_groups>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_index<class_SceneState_method_get_node_index>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>`             | :ref:`get_node_instance<class_SceneState_method_get_node_instance>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_node_instance_placeholder<class_SceneState_method_get_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_name<class_SceneState_method_get_node_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_owner_path<class_SceneState_method_get_node_owner_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_path<class_SceneState_method_get_node_path>`\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const|         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_property_count<class_SceneState_method_get_node_property_count>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_property_name<class_SceneState_method_get_node_property_name>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const|   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_node_property_value<class_SceneState_method_get_node_property_value>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_type<class_SceneState_method_get_node_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_path<class_SceneState_method_get_path>`\ (\ ) |const|                                                                                              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_node_instance_placeholder<class_SceneState_method_is_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SceneState_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_SceneState_GenEditState>`

.. _class_SceneState_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

如果傳遞給 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ，則會阻止對場景狀態的編輯。

.. _class_SceneState_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

如果傳遞給 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ，則會把繼承的場景資源提供給本地場景。

\ **注意：**\ 僅在編輯器建構中可用。

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

如果傳遞給 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ，則會為本地場景提供本地場景資源。只有主場景應該接收主編輯狀態。

\ **注意：**\ 僅在編輯器建構中可用。

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

如果傳遞給 :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`\ ，則類似於 :ref:`GEN_EDIT_STATE_MAIN<class_SceneState_constant_GEN_EDIT_STATE_MAIN>`\ ，但適用於該場景被產生實體為另一個場景的基底類別的情況。

\ **注意：**\ 僅在編輯器建構中可用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SceneState_method_get_base_scene_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_base_scene_state**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_base_scene_state>`

Returns the **SceneState** of the scene that this scene inherits from, or ``null`` if it doesn't inherit from any scene.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connection_binds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_binds>`

返回 ``idx`` 處訊號的綁定參數列表。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_count>`

返回場景中的訊號連接數。

用於查詢其他 ``get_connection_*`` 方法中的連接中繼資料的 ``idx`` 參數，範圍是 ``[0, get_connection_count() - 1]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_flags**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_flags>`

返回 ``idx`` 處的訊號的連接旗標。見 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_method**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_method>`

返回連接到 ``idx`` 處訊號的方法。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_signal:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_signal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_signal>`

返回索引為 ``idx`` 的訊號的名稱。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_source:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_source**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_source>`

返回擁有 ``idx`` 處訊號的節點路徑，相對於根節點。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_target:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_target**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_target>`

返回到擁有連接到 ``idx`` 處的訊號的方法的節點的路徑，相對於根節點。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_unbinds:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_unbinds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_unbinds>`

返回 ``idx`` 處訊號的解綁參數數量。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_node_count>`

返回場景中節點的數量。

\ ``idx`` 參數用於在其他 ``get_node_*`` 方法中查詢節點資料，範圍為 ``[0, get_node_count() - 1]``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_groups:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_node_groups**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_groups>`

返回與 ``idx`` 處的節點關聯的組名列表。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_index>`

返回該節點的索引，這是它相對於其兄弟節點的位置。這僅在新節點被新增到一個實例化的或繼承的場景，在基礎場景的兄弟節點之間的情況下，才相關並被保存在場景中。儘管名稱如此，但該索引與此處和其他方法中使用的 ``idx`` 參數無關。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_node_instance**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance>`

為 ``idx`` 處的節點返回一個 :ref:`PackedScene<class_PackedScene>`\ （即從該節點開始的整個分支，包括其子節點和資源），如果該節點不是一個實例，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance_placeholder>`

如果 ``idx`` 處的節點是一個 :ref:`InstancePlaceholder<class_InstancePlaceholder>`\ ，則返回所表示的場景檔的路徑。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_name>`

返回索引為 ``idx`` 的節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_owner_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_owner_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_owner_path>`

返回相對於根節點的位於 ``idx`` 處的節點的所有者的路徑。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_path**\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_SceneState_method_get_node_path>`

返回 ``idx`` 處的節點的路徑。

如果 ``for_parent`` 為 ``true``\ ，則返回 ``idx`` 節點的父節點的路徑。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_property_count**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_count>`

返回在 ``idx`` 處的節點的匯出的或覆蓋的屬性數量。

\ ``prop_idx`` 參數介於區間 ``[0, get_node_property_count() - 1]``\ ，用於在其他 ``get_node_property_*`` 方法中查詢節點屬性資料。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_property_name**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_name>`

返回索引為 ``idx`` 的節點中，索引為 ``prop_idx`` 的屬性的名稱。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_property_value**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_value>`

返回索引為 ``idx`` 的節點中，索引為 ``prop_idx`` 的屬性的值。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_type>`

返回索引為 ``idx`` 的節點的型別。

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_path>`

Returns the resource path to the represented :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_is_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_is_node_instance_placeholder>`

如果 ``idx`` 處的節點是一個 :ref:`InstancePlaceholder<class_InstancePlaceholder>`\ ，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
