:github_url: hide

.. _class_EditorFeatureProfile:

EditorFeatureProfile
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

編輯器功能配置，可用於禁用特定功能。

.. rst-class:: classref-introduction-group

說明
----

編輯器功能配置可以用來禁用 Godot 編輯器的特定功能。當禁用時，這些功能將不會出現在編輯器中，從而使編輯器不那麼混亂。這個設定使編輯器更簡潔，在團隊中工作時。例如，遊戲美術和關卡設計師可以使用禁用腳本編輯器的功能配置，以避免意外地對他們不應該編輯的檔進行更改。

要視覺化地管理編輯器功能配置，請使用編輯器視窗頂部的\ **編輯器 >管理功能配置...**\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_feature_name<class_EditorFeatureProfile_method_get_feature_name>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ )                                                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_disabled<class_EditorFeatureProfile_method_is_class_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_editor_disabled<class_EditorFeatureProfile_method_is_class_editor_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_property_disabled<class_EditorFeatureProfile_method_is_class_property_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                            |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_feature_disabled<class_EditorFeatureProfile_method_is_feature_disabled>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const|                                                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_file<class_EditorFeatureProfile_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                          |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save_to_file<class_EditorFeatureProfile_method_save_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class<class_EditorFeatureProfile_method_set_disable_class>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_editor<class_EditorFeatureProfile_method_set_disable_class_editor>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_property<class_EditorFeatureProfile_method_set_disable_class_property>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_feature<class_EditorFeatureProfile_method_set_disable_feature>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ )                                                    |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorFeatureProfile_Feature:

.. rst-class:: classref-enumeration

enum **Feature**: :ref:`🔗<enum_EditorFeatureProfile_Feature>`

.. _class_EditorFeatureProfile_constant_FEATURE_3D:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_3D** = ``0``

3D 編輯器。如果禁用此功能，3D 編輯器將不顯示，但 3D 節點仍將顯示在“建立新 Node”對話方塊中。

.. _class_EditorFeatureProfile_constant_FEATURE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCRIPT** = ``1``

腳本分頁，它包含腳本編輯器和類引用流覽器。如果該功能被禁用，腳本分頁將不會顯示。

.. _class_EditorFeatureProfile_constant_FEATURE_ASSET_LIB:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_ASSET_LIB** = ``2``

The Asset Store tab. If this feature is disabled, the Asset Store tab won't display.

.. _class_EditorFeatureProfile_constant_FEATURE_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCENE_TREE** = ``3``

場景樹編輯。如果禁用此功能，場景樹面板仍將可見，但將是唯讀的。

.. _class_EditorFeatureProfile_constant_FEATURE_NODE_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_NODE_DOCK** = ``4``

**已棄用：** Replaced by the Signals and Groups docks.

節點面板。如果此功能被禁用，訊號和組將不可見，也不能從編輯器中修改。

.. _class_EditorFeatureProfile_constant_FEATURE_FILESYSTEM_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_FILESYSTEM_DOCK** = ``5``

檔案系統面板。如果禁用此功能，則檔案系統面板將不可見。

.. _class_EditorFeatureProfile_constant_FEATURE_IMPORT_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_IMPORT_DOCK** = ``6``

匯入面板。如果禁用此功能，則匯入面板將不可見。

.. _class_EditorFeatureProfile_constant_FEATURE_HISTORY_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_HISTORY_DOCK** = ``7``

歷史面板。如果禁用此功能，則歷史面板將不可見。

.. _class_EditorFeatureProfile_constant_FEATURE_GAME:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GAME** = ``8``

The Game tab, which allows embedding the game window and selecting nodes by clicking inside of it. If this feature is disabled, the Game tab won't display.

.. _class_EditorFeatureProfile_constant_FEATURE_SIGNALS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SIGNALS_DOCK** = ``9``

The Signals dock. If this feature is disabled, signals won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_GROUPS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GROUPS_DOCK** = ``10``

The Groups dock. If this feature is disabled, groups won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_MAX** = ``11``

代表 :ref:`Feature<enum_EditorFeatureProfile_Feature>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorFeatureProfile_method_get_feature_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_feature_name**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_get_feature_name>`

返回指定功能 ``feature`` 的人類可讀名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_disabled>`

如果 ``class_name`` 指定的類被禁用，則返回 ``true``\ 。被禁用時，該類不會出現在“建立 Node”對話方塊中。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_editor_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_editor_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_editor_disabled>`

如果對於由 ``class_name`` 指定的類別的編輯已停用，則回傳 ``true``\ 。停用時，該類別仍會顯示在新增節點對話框中，但選取繼承該類別的節點時，屬性檢視器將會是唯讀。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_property_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_property_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_property_disabled>`

如果 ``property`` 在由 ``class_name`` 指定的類別中被停用，則回傳 ``true``\ 。當屬性被停用時，在選取繼承由 ``class_name`` 指定的類別的節點時，它將不會出現在屬性檢視器中。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_feature_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_feature_disabled**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_feature_disabled>`

如果 ``feature`` 被禁用，則返回 ``true``\ 。當一個功能被禁用時，它將從編輯器中完全消失。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_load_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_load_from_file>`

從檔案載入編輯器功能設定檔。該檔案必須遵循使用功能設定檔管理員的 **Export** 按鈕或 :ref:`save_to_file()<class_EditorFeatureProfile_method_save_to_file>` 方法取得的 JSON 格式。

\ **注意：** 透過使用者介面建立的功能設定檔從 ``feature_profiles`` 目錄加載，作為副檔名為 ``.profile`` 的檔案。可以使用\ :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`\ 找到編輯器設定資料夾。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_save_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_save_to_file>`

將編輯器功能設定檔儲存到JSON 格式的檔案。然後可以使用功能設定檔管理器的\ **Import** 按鈕或\ :ref:`load_from_file()<class_EditorFeatureProfile_method_load_from_file>` 方法匯入它。

\ **注意：** 透過使用者介面建立的功能設定檔會以副檔名為 ``.profile`` 的檔案保存在 ``feature_profiles`` 目錄中。可以使用\ :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`\ 找到編輯器設定資料夾。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class:

.. rst-class:: classref-method

|void| **set_disable_class**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class>`

如果 ``disable`` 為 ``true``\ ，則禁用 ``class_name`` 指定的類。禁用後，該類不會出現在“建立新 Node”對話方塊中。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_editor:

.. rst-class:: classref-method

|void| **set_disable_class_editor**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_editor>`

If ``disable`` is ``true``, disables editing for the class specified by ``class_name``. When disabled, the class will still appear in the Create New Node dialog but the Inspector will be read-only when selecting a node that extends the class.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_property:

.. rst-class:: classref-method

|void| **set_disable_class_property**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_property>`

如果 ``disable`` 為 ``true``\ ，則停用由 ``class_name`` 指定之類別中 ``property`` 的編輯功能。當一個屬性被停用時，在選取繼承自由 ``class_name`` 指定之類別的節點時，它將不會出現在屬性檢視器中。

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_feature:

.. rst-class:: classref-method

|void| **set_disable_feature**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_feature>`

如果 ``disable`` 為 ``true``\ ，則禁用 ``feature`` 中指定的編輯器功能。當一個功能被禁用時，它將從編輯器中完全消失。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
