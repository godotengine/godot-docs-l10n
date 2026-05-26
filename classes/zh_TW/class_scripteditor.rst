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

Removes the documentation for the given ``script``.

\ **Note:** This should be called whenever the script is changed to keep the open documentation state up to date.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_close_file>`

Closes the file at the given ``path``, discarding any unsaved changes.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success or :ref:`@GlobalScope.ERR_FILE_NOT_FOUND<class_@GlobalScope_constant_ERR_FILE_NOT_FOUND>` if the file is not found.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_breakpoints:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_breakpoints**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_breakpoints>`

Returns array of breakpoints.

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

Returns an array of file paths of scripts with unsaved changes open in the editor.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_help:

.. rst-class:: classref-method

|void| **goto_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_help>`

Opens help for the given topic. The ``topic`` is an encoded string that controls which class, method, constant, signal, annotation, property, or theme item should be focused.

The supported ``topic`` formats include ``class_name:class``, ``class_method:class:method``, ``class_constant:class:constant``, ``class_signal:class:signal``, ``class_annotation:class:@annotation``, ``class_property:class:property``, and ``class_theme_item:class:item``, where ``class`` is the class name, ``method`` is the method name, ``constant`` is the constant name, ``signal`` is the signal name, ``annotation`` is the annotation name, ``property`` is the property name, and ``item`` is the theme item.

::

    # Shows help for the Node class.
    class_name:Node
    # Shows help for the global min function.
    # Global objects are accessible in the `@GlobalScope` namespace, shown here.
    class_method:@GlobalScope:min
    # Shows help for get_viewport in the Node class.
    class_method:Node:get_viewport
    # Shows help for the Input constant MOUSE_BUTTON_MIDDLE.
    class_constant:Input:MOUSE_BUTTON_MIDDLE
    # Shows help for the BaseButton signal pressed.
    class_signal:BaseButton:pressed
    # Shows help for the CanvasItem property visible.
    class_property:CanvasItem:visible
    # Shows help for the GDScript annotation export.
    # Annotations should be prefixed with the `@` symbol in the descriptor, as shown here.
    class_annotation:@GDScript:@export
    # Shows help for the GraphNode theme item named panel_selected.
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

打開建立腳本對話方塊。腳本將擴充 ``base_name``\ 。檔副檔名可以從 ``base_path`` 中省略，會根據所選擇的指令碼語言新增。

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

Reloads all currently opened files. This should be used when opened files are changed outside of the script editor. The user may be prompted to resolve file conflicts, see :ref:`EditorSettings.text_editor/behavior/files/auto_reload_scripts_on_external_change<class_EditorSettings_property_text_editor/behavior/files/auto_reload_scripts_on_external_change>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_save_all_scripts:

.. rst-class:: classref-method

|void| **save_all_scripts**\ (\ ) :ref:`🔗<class_ScriptEditor_method_save_all_scripts>`

Saves all open scripts.

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

Updates the documentation for the given ``script``.

\ **Note:** This should be called whenever the script is changed to keep the open documentation state up to date.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
