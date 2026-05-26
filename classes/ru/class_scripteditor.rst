:github_url: hide

.. _class_ScriptEditor:

ScriptEditor
============

**Наследует:** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Редактор скриптов редактора Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

Редактор скриптов редактора Godot.

\ **Примечание:** Этот класс не следует инстанцировать напрямую. Вместо этого получите доступ к синглтону с помощью :ref:`EditorInterface.get_script_editor()<class_EditorInterface_method_get_script_editor>`.

.. rst-class:: classref-reftable-group

Методы
------------

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

Сигналы
--------------

.. _class_ScriptEditor_signal_editor_script_changed:

.. rst-class:: classref-signal

**editor_script_changed**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_editor_script_changed>`

Выдается, когда пользователь изменил активный скрипт. Аргумент — недавно активированный :ref:`Script<class_Script>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_signal_script_close:

.. rst-class:: classref-signal

**script_close**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_script_close>`

Выдается, когда редактор собирается закрыть активный скрипт. Аргумент — :ref:`Script<class_Script>`, который будет закрыт.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ScriptEditor_method_clear_docs_from_script:

.. rst-class:: classref-method

|void| **clear_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_clear_docs_from_script>`

Удаляет документацию для указанного ``script``.

\ **Примечание:** Этот вызов следует выполнять при каждом изменении скрипта, чтобы поддерживать состояние открытой документации в актуальном состоянии.

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

Возвращает массив точек останова.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_editor:

.. rst-class:: classref-method

:ref:`ScriptEditorBase<class_ScriptEditorBase>` **get_current_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_current_editor>`

Возвращает объект :ref:`ScriptEditorBase<class_ScriptEditorBase>`, который пользователь в данный момент редактирует.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_current_script**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_current_script>`

Возвращает :ref:`Script<class_Script>`, который в данный момент активен в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_script_editors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] **get_open_script_editors**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_script_editors>`

Возвращает массив со всеми объектами :ref:`ScriptEditorBase<class_ScriptEditorBase>`, которые в данный момент открыты в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_scripts:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\] **get_open_scripts**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_scripts>`

Возвращает массив со всеми объектами :ref:`Script<class_Script>`, которые в данный момент открыты в редакторе.

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

Открывает справку по заданной теме. ``topic`` — это закодированная строка, которая управляет тем, какой класс, метод, константа, сигнал, аннотация, свойство или элемент темы должны быть в фокусе.

Поддерживаемые форматы ``topic`` включают ``class_name:class``, ``class_method:class:method``, ``class_constant:class:constant``, ``class_signal:class:signal``, ``class_annotation:class:@annotation``, ``class_property:class:property`` и ``class_theme_item:class:item``, где ``class`` — имя класса, ``method`` — имя метода, ``constant`` — имя константы, ``signal`` — имя сигнала, ``annotation`` — имя аннотации, ``property`` — имя свойства, а ``item`` — элемент темы.

::

    # Показывает справку по классу Node.
    class_name:Node
    # Показывает справку по глобальной функции min.
    # Глобальные объекты доступны в пространстве имен `@GlobalScope`, показанном здесь.
    class_method:@GlobalScope:min
    # Показывает справку по get_viewport в классе Node.
    class_method:Node:get_viewport
    # Показывает справку по константе ввода MOUSE_BUTTON_MIDDLE.
    class_constant:Input:MOUSE_BUTTON_MIDDLE
    # Показывает справку по нажатому сигналу BaseButton.
    class_signal:BaseButton:pressed
    # Показывает справку по свойству CanvasItem visible.
    class_property:CanvasItem:visible
    # Показывает справку по экспорту аннотаций GDScript.
    # Аннотации должны начинаться с символа `@` в дескрипторе, как показано здесь.
    class_annotation:@GDScript:@export
    # Показывает справку по элементу темы GraphNode с именем panel_selected.
    class_theme_item:GraphNode:panel_selected

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_line:

.. rst-class:: classref-method

|void| **goto_line**\ (\ line_number\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_line>`

Переход к указанной строке текущего скрипта.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_open_script_create_dialog:

.. rst-class:: classref-method

|void| **open_script_create_dialog**\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_open_script_create_dialog>`

Открывает диалог создания скрипта. Скрипт будет расширять ``base_name``. Расширение файла может быть опущено в ``base_path``. Оно будет добавлено на основе выбранного языка скрипта.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_register_syntax_highlighter:

.. rst-class:: classref-method

|void| **register_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_register_syntax_highlighter>`

Регистрирует :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` в редакторе, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` будет доступен во всех открытых скриптах.

\ **Примечание:** Не применяется к уже открытым скриптам.

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

Отменяет регистрацию :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` в редакторе.

\ **Примечание:** :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` по-прежнему будет применяться к скриптам, которые уже открыты.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_update_docs_from_script:

.. rst-class:: classref-method

|void| **update_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_update_docs_from_script>`

Обновляет документацию для указанного ``script``.

\ **Примечание:** Этот вызов следует выполнять при каждом изменении скрипта, чтобы поддерживать открытую документацию в актуальном состоянии.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
