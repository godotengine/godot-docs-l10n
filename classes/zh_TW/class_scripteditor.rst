:github_url: hide

.. _class_ScriptEditor:

ScriptEditor
============

**繼承：** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 編輯器的腳本編輯器。

.. rst-class:: classref-introduction-group

說明
----

Godot 編輯器的腳本編輯器。

\ **注意：**\ 這個類不應該被直接產生實體。請使用 :ref:`EditorInterface.get_script_editor()<class_EditorInterface_method_get_script_editor>` 來存取這個單例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`clear_docs_from_script<class_ScriptEditor_method_clear_docs_from_script>`\ (\ script\: :ref:`Script<class_Script>`\ )                                                             |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                        | :ref:`close_file<class_ScriptEditor_method_close_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                       |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                            | :ref:`get_breakpoints<class_ScriptEditor_method_get_breakpoints>`\ (\ )                                                                                                                 |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptEditorBase<class_ScriptEditorBase>`                              | :ref:`get_current_editor<class_ScriptEditor_method_get_current_editor>`\ (\ ) |const|                                                                                                   |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                                  | :ref:`get_current_script<class_ScriptEditor_method_get_current_script>`\ (\ )                                                                                                           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] | :ref:`get_open_script_editors<class_ScriptEditor_method_get_open_script_editors>`\ (\ ) |const|                                                                                         |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\]                     | :ref:`get_open_scripts<class_ScriptEditor_method_get_open_scripts>`\ (\ ) |const|                                                                                                       |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                            | :ref:`get_unsaved_files<class_ScriptEditor_method_get_unsaved_files>`\ (\ ) |const|                                                                                                     |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`goto_help<class_ScriptEditor_method_goto_help>`\ (\ topic\: :ref:`String<class_String>`\ )                                                                                        |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`goto_line<class_ScriptEditor_method_goto_line>`\ (\ line_number\: :ref:`int<class_int>`\ )                                                                                        |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`open_script_create_dialog<class_ScriptEditor_method_open_script_create_dialog>`\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ )           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`register_syntax_highlighter<class_ScriptEditor_method_register_syntax_highlighter>`\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ )     |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`reload_open_files<class_ScriptEditor_method_reload_open_files>`\ (\ )                                                                                                             |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`save_all_scripts<class_ScriptEditor_method_save_all_scripts>`\ (\ )                                                                                                               |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`unregister_syntax_highlighter<class_ScriptEditor_method_unregister_syntax_highlighter>`\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`update_docs_from_script<class_ScriptEditor_method_update_docs_from_script>`\ (\ script\: :ref:`Script<class_Script>`\ )                                                           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ScriptEditor_signal_editor_script_changed:

.. rst-class:: classref-signal

**editor_script_changed**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_editor_script_changed>`

當使用者更改動態指令碼時發出。參數是新啟動的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_signal_script_close:

.. rst-class:: classref-signal

**script_close**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_script_close>`

當編輯器即將關閉動態指令碼時發出。參數是將要關閉的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ScriptEditor_method_clear_docs_from_script:

.. rst-class:: classref-method

|void| **clear_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_clear_docs_from_script>`

移除 ``script`` 腳本的文件。

\ **注意：**\ 每當腳本發生更改時都應呼叫該方法，從而保持打開文件的狀態為最新。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_close_file>`

關閉給定 ``path`` 路徑處的檔案，並丟棄任何未儲存的更改。

操作成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，如果未找到該檔案，則回傳 :ref:`@GlobalScope.ERR_FILE_NOT_FOUND<class_@GlobalScope_constant_ERR_FILE_NOT_FOUND>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_breakpoints:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_breakpoints**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_breakpoints>`

回傳斷點陣列。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_editor:

.. rst-class:: classref-method

:ref:`ScriptEditorBase<class_ScriptEditorBase>` **get_current_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_current_editor>`

返回使用者目前正在編輯的 :ref:`ScriptEditorBase<class_ScriptEditorBase>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_current_script**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_current_script>`

返回目前在編輯器中處於活動狀態的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_script_editors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] **get_open_script_editors**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_script_editors>`

返回一個陣列，其中包含目前在編輯器中打開的所有 :ref:`ScriptEditorBase<class_ScriptEditorBase>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_scripts:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\] **get_open_scripts**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_scripts>`

返回一個包含目前在編輯器中打開的所有 :ref:`Script<class_Script>` 物件的陣列。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_unsaved_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_unsaved_files**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_unsaved_files>`

回傳一個陣列，包含目前在編輯器中打開且有未儲存更改的腳本的檔案路徑。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_help:

.. rst-class:: classref-method

|void| **goto_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_help>`

打開指定主題的協助。\ ``topic`` 是一個編碼字串，用於控制哪個類、方法、常數、訊號、注解、屬性或主題項應該被關注。

支援的 ``topic`` 格式包括 ``class_name:class``\ 、\ ``class_method:class:method``\ 、\ ``class_constant:class:constant``\ 、\ ``class_signal:class:signal``\ 、\ ``class_annotation:class:@annotation``\ 、\ ``class_property:class:property`` 和 ``class_theme_item:class:item``\ ，其中 ``class`` 為類別名稱，\ ``method`` 為方法名，\ ``constant`` 為常數名，\ ``signal`` 為訊號名，\ ``annotation`` 為注解名，\ ``property`` 為屬性名，\ ``item`` 為主題項。

::

    # 顯示 Node 類的協助。
    class_name:Node
    # 顯示全域 min 函式的協助。
    # 全域物件可在 `@GlobalScope` 命名空間中存取，如下所示。
    class_method:@GlobalScope:min
    # 顯示 Node 類中 get_viewport 的協助。
    class_method:Node:get_viewport
    # 顯示輸入常數 MOUSE_BUTTON_MIDDLE 的協助。
    class_constant:Input:MOUSE_BUTTON_MIDDLE
    # 顯示 BaseButton 訊號 pressed 的協助。
    class_signal:BaseButton:pressed
    # 顯示 CanvasItem 屬性 visible 的協助。
    class_property:CanvasItem:visible
    # 顯示 GDScript 注解 export 的協助。
    # 注解應在描述符中以 `@` 符號為前綴，如下所示。
    class_annotation:@GDScript:@export
    # 顯示名為 panel_selected 的 GraphNode 主題項的協助。
    class_theme_item:GraphNode:panel_selected

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_line:

.. rst-class:: classref-method

|void| **goto_line**\ (\ line_number\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_line>`

轉到目前腳本中的指定行。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_open_script_create_dialog:

.. rst-class:: classref-method

|void| **open_script_create_dialog**\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_open_script_create_dialog>`

打開建立腳本對話框。腳本將擴充 ``base_name``\ 。檔副檔名可以從 ``base_path`` 中省略，會根據所選擇的指令碼語言新增。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_register_syntax_highlighter:

.. rst-class:: classref-method

|void| **register_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_register_syntax_highlighter>`

向編輯器註冊該 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ，打開的所有腳本都可以使用這個 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

\ **注意：**\ 不適用於已經打開的腳本。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_reload_open_files:

.. rst-class:: classref-method

|void| **reload_open_files**\ (\ ) :ref:`🔗<class_ScriptEditor_method_reload_open_files>`

重新載入所有目前打開的檔案。當在腳本編輯器外部修改了已打開的檔案時，應使用此功能。系統可能會提示使用者解決檔案衝突，請參閱 :ref:`EditorSettings.text_editor/behavior/files/auto_reload_scripts_on_external_change<class_EditorSettings_property_text_editor/behavior/files/auto_reload_scripts_on_external_change>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_save_all_scripts:

.. rst-class:: classref-method

|void| **save_all_scripts**\ (\ ) :ref:`🔗<class_ScriptEditor_method_save_all_scripts>`

儲存所有已打開的腳本。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_unregister_syntax_highlighter:

.. rst-class:: classref-method

|void| **unregister_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_unregister_syntax_highlighter>`

從編輯器註銷該 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

\ **注意：**\ 已經打開的腳本仍然適用該 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_update_docs_from_script:

.. rst-class:: classref-method

|void| **update_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_update_docs_from_script>`

為 ``script`` 腳本更新文件。

\ **注意：**\ 每當腳本發生更改時都應呼叫該方法，從而保持打開文件的狀態為最新。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
