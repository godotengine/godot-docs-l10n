:github_url: hide

.. _class_GDScriptTextDocument:

GDScriptTextDocument
====================

**Obsolète :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Document related language server functionality.

.. rst-class:: classref-introduction-group

Description
-----------

Provides language server functionality related to documents.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`codeLens<class_GDScriptTextDocument_method_codeLens>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`colorPresentation<class_GDScriptTextDocument_method_colorPresentation>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`completion<class_GDScriptTextDocument_method_completion>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`declaration<class_GDScriptTextDocument_method_declaration>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`definition<class_GDScriptTextDocument_method_definition>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`didChange<class_GDScriptTextDocument_method_didChange>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`didClose<class_GDScriptTextDocument_method_didClose>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`didOpen<class_GDScriptTextDocument_method_didOpen>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`didSave<class_GDScriptTextDocument_method_didSave>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`documentLink<class_GDScriptTextDocument_method_documentLink>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`documentSymbol<class_GDScriptTextDocument_method_documentSymbol>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`foldingRange<class_GDScriptTextDocument_method_foldingRange>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`hover<class_GDScriptTextDocument_method_hover>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`nativeSymbol<class_GDScriptTextDocument_method_nativeSymbol>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`prepareRename<class_GDScriptTextDocument_method_prepareRename>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`references<class_GDScriptTextDocument_method_references>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`rename<class_GDScriptTextDocument_method_rename>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`resolve<class_GDScriptTextDocument_method_resolve>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`show_native_symbol_in_editor<class_GDScriptTextDocument_method_show_native_symbol_in_editor>`\ (\ symbol_id\: :ref:`String<class_String>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`signatureHelp<class_GDScriptTextDocument_method_signatureHelp>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`willSaveWaitUntil<class_GDScriptTextDocument_method_willSaveWaitUntil>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GDScriptTextDocument_method_codeLens:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **codeLens**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_codeLens>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_colorPresentation:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **colorPresentation**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_colorPresentation>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_completion:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **completion**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_completion>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_declaration:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **declaration**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_declaration>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_definition:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **definition**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_definition>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didChange:

.. rst-class:: classref-method

|void| **didChange**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didChange>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didClose:

.. rst-class:: classref-method

|void| **didClose**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didClose>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didOpen:

.. rst-class:: classref-method

|void| **didOpen**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didOpen>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didSave:

.. rst-class:: classref-method

|void| **didSave**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didSave>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentLink:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentLink**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentLink>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentSymbol:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentSymbol>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_foldingRange:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **foldingRange**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_foldingRange>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_hover:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **hover**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_hover>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_nativeSymbol:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **nativeSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_nativeSymbol>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_prepareRename:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **prepareRename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_prepareRename>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_references:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **references**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_references>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_rename:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **rename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_rename>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_resolve:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **resolve**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_resolve>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_show_native_symbol_in_editor:

.. rst-class:: classref-method

|void| **show_native_symbol_in_editor**\ (\ symbol_id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_show_native_symbol_in_editor>`

**Obsolète :** Use :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_signatureHelp:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **signatureHelp**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_signatureHelp>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_willSaveWaitUntil:

.. rst-class:: classref-method

|void| **willSaveWaitUntil**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_willSaveWaitUntil>`

**Obsolète :** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
