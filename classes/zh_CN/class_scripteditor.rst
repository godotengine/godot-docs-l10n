:github_url: hide

.. _class_ScriptEditor:

ScriptEditor
============

**继承：** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 编辑器的脚本编辑器。

.. rst-class:: classref-introduction-group

描述
----

Godot 编辑器的脚本编辑器。

\ **注意：**\ 这个类不应该被直接实例化。请使用 :ref:`EditorInterface.get_script_editor()<class_EditorInterface_method_get_script_editor>` 来访问这个单例。

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

信号
----

.. _class_ScriptEditor_signal_editor_script_changed:

.. rst-class:: classref-signal

**editor_script_changed**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_editor_script_changed>`

当用户更改活动脚本时发出。参数是新激活的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_signal_script_close:

.. rst-class:: classref-signal

**script_close**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_script_close>`

当编辑器即将关闭活动脚本时发出。参数是将要关闭的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ScriptEditor_method_clear_docs_from_script:

.. rst-class:: classref-method

|void| **clear_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_clear_docs_from_script>`

移除 ``script`` 脚本的文档。

\ **注意：**\ 每当脚本发生更改时都应调用该方法，从而保持打开文档的状态为最新。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_close_file>`

关闭给定 ``path`` 路径处的文件，并丢弃任何未保存的更改。

操作成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，如果未找到该文件，则返回 :ref:`@GlobalScope.ERR_FILE_NOT_FOUND<class_@GlobalScope_constant_ERR_FILE_NOT_FOUND>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_breakpoints:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_breakpoints**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_breakpoints>`

返回断点数组。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_editor:

.. rst-class:: classref-method

:ref:`ScriptEditorBase<class_ScriptEditorBase>` **get_current_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_current_editor>`

返回用户当前正在编辑的 :ref:`ScriptEditorBase<class_ScriptEditorBase>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_current_script**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_current_script>`

返回当前在编辑器中处于活动状态的 :ref:`Script<class_Script>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_script_editors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] **get_open_script_editors**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_script_editors>`

返回一个数组，其中包含当前在编辑器中打开的所有 :ref:`ScriptEditorBase<class_ScriptEditorBase>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_scripts:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\] **get_open_scripts**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_scripts>`

返回一个包含当前在编辑器中打开的所有 :ref:`Script<class_Script>` 对象的数组。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_unsaved_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_unsaved_files**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_unsaved_files>`

返回一个数组，包含当前在编辑器中打开且有未保存更改的脚本的文件路径。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_help:

.. rst-class:: classref-method

|void| **goto_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_help>`

打开指定主题的帮助。\ ``topic`` 是一个编码字符串，用于控制哪个类、方法、常量、信号、注解、属性或主题项应该被关注。

支持的 ``topic`` 格式包括 ``class_name:class``\ 、\ ``class_method:class:method``\ 、\ ``class_constant:class:constant``\ 、\ ``class_signal:class:signal``\ 、\ ``class_annotation:class:@annotation``\ 、\ ``class_property:class:property`` 和 ``class_theme_item:class:item``\ ，其中 ``class`` 为类名，\ ``method`` 为方法名，\ ``constant`` 为常量名，\ ``signal`` 为信号名，\ ``annotation`` 为注解名，\ ``property`` 为属性名，\ ``item`` 为主题项。

::

    # 显示 Node 类的帮助。
    class_name:Node
    # 显示全局 min 函数的帮助。
    # 全局对象可在 `@GlobalScope` 命名空间中访问，如下所示。
    class_method:@GlobalScope:min
    # 显示 Node 类中 get_viewport 的帮助。
    class_method:Node:get_viewport
    # 显示输入常量 MOUSE_BUTTON_MIDDLE 的帮助。
    class_constant:Input:MOUSE_BUTTON_MIDDLE
    # 显示 BaseButton 信号 pressed 的帮助。
    class_signal:BaseButton:pressed
    # 显示 CanvasItem 属性 visible 的帮助。
    class_property:CanvasItem:visible
    # 显示 GDScript 注解 export 的帮助。
    # 注解应在描述符中以 `@` 符号为前缀，如下所示。
    class_annotation:@GDScript:@export
    # 显示名为 panel_selected 的 GraphNode 主题项的帮助。
    class_theme_item:GraphNode:panel_selected

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_line:

.. rst-class:: classref-method

|void| **goto_line**\ (\ line_number\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_line>`

转到当前脚本中的指定行。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_open_script_create_dialog:

.. rst-class:: classref-method

|void| **open_script_create_dialog**\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_open_script_create_dialog>`

打开创建脚本对话框。脚本将扩展 ``base_name``\ 。文件扩展名可以从 ``base_path`` 中省略，会根据所选择的脚本语言添加。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_register_syntax_highlighter:

.. rst-class:: classref-method

|void| **register_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_register_syntax_highlighter>`

向编辑器注册该 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ，打开的所有脚本都可以使用这个 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

\ **注意：**\ 不适用于已经打开的脚本。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_reload_open_files:

.. rst-class:: classref-method

|void| **reload_open_files**\ (\ ) :ref:`🔗<class_ScriptEditor_method_reload_open_files>`

重新加载所有当前打开的文件。当在脚本编辑器外部修改了已打开的文件时，应使用此功能。系统可能会提示用户解决文件冲突，请参阅 :ref:`EditorSettings.text_editor/behavior/files/auto_reload_scripts_on_external_change<class_EditorSettings_property_text_editor/behavior/files/auto_reload_scripts_on_external_change>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_save_all_scripts:

.. rst-class:: classref-method

|void| **save_all_scripts**\ (\ ) :ref:`🔗<class_ScriptEditor_method_save_all_scripts>`

保存所有已打开的脚本。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_unregister_syntax_highlighter:

.. rst-class:: classref-method

|void| **unregister_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_unregister_syntax_highlighter>`

从编辑器注销该 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

\ **注意：**\ 已经打开的脚本仍然适用该 :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_update_docs_from_script:

.. rst-class:: classref-method

|void| **update_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_update_docs_from_script>`

为 ``script`` 脚本更新文档。

\ **注意：**\ 每当脚本发生更改时都应调用该方法，从而保持打开文档的状态为最新。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
