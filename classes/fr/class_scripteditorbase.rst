:github_url: hide

.. _class_ScriptEditorBase:

ScriptEditorBase
================

**Hérite de :** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Base editor for editing scripts in the :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Description
-----------

Base editor for editing scripts in the :ref:`ScriptEditor<class_ScriptEditor>`. This does not include documentation items.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Signaux
--------------

.. _class_ScriptEditorBase_signal_edited_script_changed:

.. rst-class:: classref-signal

**edited_script_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_edited_script_changed>`

**Obsolète :** This signal should only be used internally.

Émis après la validation du script.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_help:

.. rst-class:: classref-signal

**go_to_help**\ (\ what\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_help>`

**Obsolète :** This signal should only be used internally. See :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

Emitted when the user requests a specific documentation page.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_method:

.. rst-class:: classref-signal

**go_to_method**\ (\ script\: :ref:`Object<class_Object>`, method\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_method>`

**Obsolète :** This signal should only be used internally.

Emitted when the user requests to view a specific method of a script, similar to :ref:`request_open_script_at_line<class_ScriptEditorBase_signal_request_open_script_at_line>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_name_changed:

.. rst-class:: classref-signal

**name_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_name_changed>`

**Obsolète :** This signal should only be used internally.

Emitted after script validation or when the edited resource has changed.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_replace_in_files_requested:

.. rst-class:: classref-signal

**replace_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_replace_in_files_requested>`

**Obsolète :** This signal should only be used internally.

Emitted when the user request to find and replace text in the file system.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_help:

.. rst-class:: classref-signal

**request_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_help>`

**Obsolète :** This signal should only be used internally.

Émis lorsque l'utilisateur demande une aide contextuelle.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_open_script_at_line:

.. rst-class:: classref-signal

**request_open_script_at_line**\ (\ script\: :ref:`Object<class_Object>`, line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_open_script_at_line>`

**Obsolète :** This signal should only be used internally. See :ref:`EditorInterface.edit_script()<class_EditorInterface_method_edit_script>` instead.

Émis lorsque l'utilisateur demande de voir une ligne spécifique d'un script, semblable à :ref:`go_to_method<class_ScriptEditorBase_signal_go_to_method>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_history:

.. rst-class:: classref-signal

**request_save_history**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_history>`

**Obsolète :** This signal should only be used internally.

Emitted when the editor requests to save a new history navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_previous_state:

.. rst-class:: classref-signal

**request_save_previous_state**\ (\ state\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_previous_state>`

**Obsolète :** This signal should only be used internally.

Emitted when the editor requests an update to its navigation point.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_search_in_files_requested:

.. rst-class:: classref-signal

**search_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_search_in_files_requested>`

**Obsolète :** This signal should only be used internally.

Émis lorsque l'utilisateur demande à rechercher du texte dans le système de fichiers.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ScriptEditorBase_method_add_syntax_highlighter:

.. rst-class:: classref-method

|void| **add_syntax_highlighter**\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditorBase_method_add_syntax_highlighter>`

Adds an :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` to the open script.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_method_get_base_editor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_base_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditorBase_method_get_base_editor>`

Returns the underlying :ref:`Control<class_Control>` used for editing scripts. For text scripts, this is a :ref:`CodeEdit<class_CodeEdit>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
