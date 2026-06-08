:github_url: hide

.. _class_ScriptEditorBase:

ScriptEditorBase
================

**Успадковує:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Базовий редактор для редагування сценаріїв :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий редактор для редагування сценаріїв :ref:`ScriptEditor<class_ScriptEditor>`. Це не містить елементів документації.

.. rst-class:: classref-reftable-group

Методи
------------

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

Сигнали
--------------

.. _class_ScriptEditorBase_signal_edited_script_changed:

.. rst-class:: classref-signal

**edited_script_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_edited_script_changed>`

Випробувано після перевірки сценарію.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_help:

.. rst-class:: classref-signal

**go_to_help**\ (\ what\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_help>`

Випробувано, коли користувач запитує конкретну сторінку документації.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_method:

.. rst-class:: classref-signal

**go_to_method**\ (\ script\: :ref:`Object<class_Object>`, method\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_method>`

Увімкнено, коли запит користувача для перегляду певного методу скрипту, аналогічного :ref:`request_open_script_at_line<class_ScriptEditorBase_signal_request_open_script_at_line>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_name_changed:

.. rst-class:: classref-signal

**name_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_name_changed>`

Увімкнено після перевірки сценаріїв або коли змінився редагований ресурс.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_replace_in_files_requested:

.. rst-class:: classref-signal

**replace_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_replace_in_files_requested>`

Випробувано, коли запит користувача знайти і замінити текст у файловій системі.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_help:

.. rst-class:: classref-signal

**request_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_help>`

Увімкнено, коли користувач запитує контекстну допомогу.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_open_script_at_line:

.. rst-class:: classref-signal

**request_open_script_at_line**\ (\ script\: :ref:`Object<class_Object>`, line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_open_script_at_line>`

Увімкнено, коли запит користувача для перегляду певного рядка скрипта, схожого на :ref:`go_to_method<class_ScriptEditorBase_signal_go_to_method>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_history:

.. rst-class:: classref-signal

**request_save_history**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_history>`

Увімкніть, коли контекстний запис користувача та пункт знаходиться в одному скрипті.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_previous_state:

.. rst-class:: classref-signal

**request_save_previous_state**\ (\ state\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_previous_state>`

Увімкнено, коли користувач змінює поточний скрипт або переміщує догляд за 10 або більше стовпчиків в одному скрипті.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_search_in_files_requested:

.. rst-class:: classref-signal

**search_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_search_in_files_requested>`

Увімкніть запит користувача для пошуку тексту в файловій системі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ScriptEditorBase_method_add_syntax_highlighter:

.. rst-class:: classref-method

|void| **add_syntax_highlighter**\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditorBase_method_add_syntax_highlighter>`

Додає :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` до відкритого скрипту.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_method_get_base_editor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_base_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditorBase_method_get_base_editor>`

Повертає основу :ref:`Control<class_Control>` для редагування сценаріїв. Для текстових сценаріїв це :ref:`CodeEdit<class_CodeEdit>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
