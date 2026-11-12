:github_url: hide

.. _class_ScriptEditorBase:

ScriptEditorBase
================

**继承：** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于在 :ref:`ScriptEditor<class_ScriptEditor>` 中编辑脚本的基础编辑器。

.. rst-class:: classref-introduction-group

描述
----

用于在 :ref:`ScriptEditor<class_ScriptEditor>` 中编辑脚本的基础编辑器。不包含文档项目。

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

信号
----

.. _class_ScriptEditorBase_signal_edited_script_changed:

.. rst-class:: classref-signal

**edited_script_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_edited_script_changed>`

**已弃用：** This signal should only be used internally.

校验脚本后发出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_help:

.. rst-class:: classref-signal

**go_to_help**\ (\ what\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_help>`

**已弃用：** This signal should only be used internally. See :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

用户请求特定的文档页面时发出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_method:

.. rst-class:: classref-signal

**go_to_method**\ (\ script\: :ref:`Object<class_Object>`, method\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_method>`

**已弃用：** This signal should only be used internally.

用户请求查看脚本中的指定方法时发出，类似于 :ref:`request_open_script_at_line<class_ScriptEditorBase_signal_request_open_script_at_line>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_name_changed:

.. rst-class:: classref-signal

**name_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_name_changed>`

**已弃用：** This signal should only be used internally.

校验脚本后，或者所编辑资源发生更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_replace_in_files_requested:

.. rst-class:: classref-signal

**replace_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_replace_in_files_requested>`

**已弃用：** This signal should only be used internally.

用户请求在文件系统中查找与替换文本时发出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_help:

.. rst-class:: classref-signal

**request_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_help>`

**已弃用：** This signal should only be used internally.

用户请求上下文帮助时发出。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_open_script_at_line:

.. rst-class:: classref-signal

**request_open_script_at_line**\ (\ script\: :ref:`Object<class_Object>`, line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_open_script_at_line>`

**已弃用：** This signal should only be used internally. See :ref:`EditorInterface.edit_script()<class_EditorInterface_method_edit_script>` instead.

用户请求查看脚本中的指定行时发出，类似于 :ref:`go_to_method<class_ScriptEditorBase_signal_go_to_method>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_history:

.. rst-class:: classref-signal

**request_save_history**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_history>`

**已弃用：** This signal should only be used internally.

Emitted when the editor requests to save a new history navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_previous_state:

.. rst-class:: classref-signal

**request_save_previous_state**\ (\ state\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_previous_state>`

**已弃用：** This signal should only be used internally.

Emitted when the editor requests an update to its navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_search_in_files_requested:

.. rst-class:: classref-signal

**search_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_search_in_files_requested>`

**已弃用：** This signal should only be used internally.

用户请求在文件系统中搜索文本时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ScriptEditorBase_method_add_syntax_highlighter:

.. rst-class:: classref-method

|void| **add_syntax_highlighter**\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditorBase_method_add_syntax_highlighter>`

为打开的脚本添加 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_method_get_base_editor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_base_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditorBase_method_get_base_editor>`

返回用于编辑脚本的底层 :ref:`Control<class_Control>`\ 。文本脚本对应 :ref:`CodeEdit<class_CodeEdit>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
