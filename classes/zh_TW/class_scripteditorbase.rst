:github_url: hide

.. _class_ScriptEditorBase:

ScriptEditorBase
================

**繼承：** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於在 :ref:`ScriptEditor<class_ScriptEditor>` 中編輯腳本的基礎編輯器。

.. rst-class:: classref-introduction-group

說明
----

用於在 :ref:`ScriptEditor<class_ScriptEditor>` 中編輯腳本的基礎編輯器。不包含文件專案。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_syntax_highlighter<class_ScriptEditorBase_method_add_syntax_highlighter>`\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`get_base_editor<class_ScriptEditorBase_method_get_base_editor>`\ (\ ) |const|                                                                                    |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ScriptEditorBase_signal_edited_script_changed:

.. rst-class:: classref-signal

**edited_script_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_edited_script_changed>`

**已棄用：** This signal should only be used internally.

校驗腳本後發出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_help:

.. rst-class:: classref-signal

**go_to_help**\ (\ what\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_help>`

**已棄用：** This signal should only be used internally. See :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

使用者請求特定的文件頁面時發出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_method:

.. rst-class:: classref-signal

**go_to_method**\ (\ script\: :ref:`Object<class_Object>`, method\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_method>`

**已棄用：** This signal should only be used internally.

使用者請求查看腳本中的指定方法時發出，類似於 :ref:`request_open_script_at_line<class_ScriptEditorBase_signal_request_open_script_at_line>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_name_changed:

.. rst-class:: classref-signal

**name_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_name_changed>`

**已棄用：** This signal should only be used internally.

校驗腳本後，或者所編輯資源發生更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_replace_in_files_requested:

.. rst-class:: classref-signal

**replace_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_replace_in_files_requested>`

**已棄用：** This signal should only be used internally.

使用者請求在檔案系統中搜尋與替換文字時發出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_help:

.. rst-class:: classref-signal

**request_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_help>`

**已棄用：** This signal should only be used internally.

使用者請求本文幫助時發出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_open_script_at_line:

.. rst-class:: classref-signal

**request_open_script_at_line**\ (\ script\: :ref:`Object<class_Object>`, line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_open_script_at_line>`

**已棄用：** This signal should only be used internally. See :ref:`EditorInterface.edit_script()<class_EditorInterface_method_edit_script>` instead.

使用者請求查看腳本中的指定行時發出，類似於 :ref:`go_to_method<class_ScriptEditorBase_signal_go_to_method>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_history:

.. rst-class:: classref-signal

**request_save_history**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_history>`

**已棄用：** This signal should only be used internally.

Emitted when the editor requests to save a new history navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_previous_state:

.. rst-class:: classref-signal

**request_save_previous_state**\ (\ state\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_previous_state>`

**已棄用：** This signal should only be used internally.

Emitted when the editor requests an update to its navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_search_in_files_requested:

.. rst-class:: classref-signal

**search_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_search_in_files_requested>`

**已棄用：** This signal should only be used internally.

使用者請求在檔案系統中搜尋文字時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ScriptEditorBase_method_add_syntax_highlighter:

.. rst-class:: classref-method

|void| **add_syntax_highlighter**\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditorBase_method_add_syntax_highlighter>`

為打開的腳本新增 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_method_get_base_editor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_base_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditorBase_method_get_base_editor>`

返回用於編輯腳本的底層 :ref:`Control<class_Control>`\ 。文字腳本對應 :ref:`CodeEdit<class_CodeEdit>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
