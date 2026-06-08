:github_url: hide

.. _class_ScriptEditor:

ScriptEditor
============

**Успадковує:** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Автор сценарію Godot.

.. rst-class:: classref-introduction-group

Опис
--------

Автор сценарію Godot.

\ **Примітка:** Цей клас не повинен бути миттєвим. Замість, доступ до Єдиного редактора :ref:`EditorInterface.get_script_editor()<class_EditorInterface_method_get_script_editor>`.

.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_ScriptEditor_signal_editor_script_changed:

.. rst-class:: classref-signal

**editor_script_changed**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_editor_script_changed>`

Виникає, коли користувач змінює активний скрипт. Аргумент – це щойно активований скрипт. :ref:`Script<class_Script>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_signal_script_close:

.. rst-class:: classref-signal

**script_close**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_script_close>`

Викликається, коли редактор збирається закрити активний скрипт. Аргумент — це :ref:`Script<class_Script>`, який буде закрито.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ScriptEditor_method_clear_docs_from_script:

.. rst-class:: classref-method

|void| **clear_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_clear_docs_from_script>`

Видаляє документацію для заданого ``script``.

\ **Примітка:** Цю функцію слід викликати щоразу, коли скрипт змінюється, щоб підтримувати стан відкритої документації в актуальному стані.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_close_file>`

Закриває файл за вказаним ``path``, відкидаючи всі незбережені зміни.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або :ref:`@GlobalScope.ERR_FILE_NOT_FOUND<class_@GlobalScope_constant_ERR_FILE_NOT_FOUND>`, якщо файл не знайдено.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_breakpoints:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_breakpoints**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_breakpoints>`

Повертає масив точок зупину.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_editor:

.. rst-class:: classref-method

:ref:`ScriptEditorBase<class_ScriptEditorBase>` **get_current_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_current_editor>`

Повернення об'єкта ``scriptEditorBase``, що користувач наразі редагування.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_current_script**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_current_script>`

Повернутися до :ref:`Script<class_Script>`, який наразі працює у редакторі.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_script_editors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] **get_open_script_editors**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_script_editors>`

Повертає масив з усіма об'єктами :ref:`ScriptEditorBase<class_ScriptEditorBase>`, які в даний час відкриті в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_scripts:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\] **get_open_scripts**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_scripts>`

Повертає масив з усіма об'єктами :ref:`Script<class_Script>`, які в даний час відкриті в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_unsaved_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_unsaved_files**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_unsaved_files>`

Повертає масив шляхів до файлів скриптів, які містять незбережені зміни та відкриті в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_help:

.. rst-class:: classref-method

|void| **goto_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_help>`

Відкриває довідку для заданої теми. ``topic`` — це закодований рядок, який керує елементом класу, методу, константи, сигналу, анотації, властивості або теми. 

Підтримувані формати ``topic`` включають ``class_name:class``, ``class_method:class:method``, ``class_constant:class:constant``, ``class_signal:class:signal``, ``class_annotation:class:@annotation``, ``class_property:class:property`` і ``class_theme_item:class:item``, де ``class`` — назва класу, ``method`` — назва методу, ``constant`` — назва константи, ``signal`` — назва сигналу, ``annotation`` — анотація name, ``property`` – це ім’я властивості, а ``item`` – це елемент теми. 

\ ``кодовий блок`` 

# Показує довідку для класу Node. 

class_name:вузол 

# Показує довідку для глобальної функції min. 

# Глобальні об’єкти доступні в просторі імен `@GlobalScope`, показаному тут. 

class_method:@GlobalScope:мін 

# Показує довідку для get_viewport у класі Node. 

class_method:Node:get_viewport 

# Показує довідку для константи введення MOUSE_BUTTON_MIDDLE. 

class_constant:Input:MOUSE_BUTTON_MIDDLE 

# Показує довідку для натиснутого сигналу BaseButton. 

class_signal:BaseButton:натиснуто 

# Показує видиму довідку для властивості CanvasItem. 

class_property:CanvasItem:видимий 

# Показує довідку для експорту анотації GDScript. 

# Анотації мають мати префікс символу `@` в дескрипторі, як показано тут. 

class_annotation:@GDScript:@export 

# Показує довідку для елемента теми GraphNode під назвою panel_selected. 

class_theme_item:GraphNode:panel_selected 


::


.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_line:

.. rst-class:: classref-method

|void| **goto_line**\ (\ line_number\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_line>`

Перейти до вказаної лінії в поточному скрипті.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_open_script_create_dialog:

.. rst-class:: classref-method

|void| **open_script_create_dialog**\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_open_script_create_dialog>`

Відкриває діалогове вікно створення скрипта. Скрипт розширюватиме ``base_name``. Розширення файлу можна пропустити з ``base_path``. Його буде додано на основі вибраної мови скриптів.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_register_syntax_highlighter:

.. rst-class:: classref-method

|void| **register_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_register_syntax_highlighter>`

Реєструє :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` у редакторі, :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` буде доступний для всіх відкритих скриптів.

\ **Примітка:** Не застосовується до скриптів, які вже відкриті.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_reload_open_files:

.. rst-class:: classref-method

|void| **reload_open_files**\ (\ ) :ref:`🔗<class_ScriptEditor_method_reload_open_files>`

Перезавантажує всі поточні відкриті файли. Цю функцію слід використовувати, коли зміна відкритих файлів відбувається поза межами редактора скриптів. Користувачеві може бути запропоновано вирішити конфлікти файлів; див. :ref:`EditorSettings.text_editor/behavior/files/auto_reload_scripts_on_external_change<class_EditorSettings_property_text_editor/behavior/files/auto_reload_scripts_on_external_change>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_save_all_scripts:

.. rst-class:: classref-method

|void| **save_all_scripts**\ (\ ) :ref:`🔗<class_ScriptEditor_method_save_all_scripts>`

Збереже всі відкриті скрипти.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_unregister_syntax_highlighter:

.. rst-class:: classref-method

|void| **unregister_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_unregister_syntax_highlighter>`

Видаляє :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` з реєстру редактора.

\ **Примітка:** :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` залишиться в застосуванні вже відкритих скриптів.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_update_docs_from_script:

.. rst-class:: classref-method

|void| **update_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_update_docs_from_script>`

Оновлює документацію для заданого ``script``.

\ **Примітка:** Цю функцію слід викликати щоразу, коли скрипт змінюється, щоб підтримувати стан відкритої документації в актуальному стані.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
