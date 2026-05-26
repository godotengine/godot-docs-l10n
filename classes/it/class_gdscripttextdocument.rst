:github_url: hide

.. _class_GDScriptTextDocument:

GDScriptTextDocument
====================

**Deprecato:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Document related language server functionality.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Provides language server functionality related to documents.

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_GDScriptTextDocument_method_codeLens:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **codeLens**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_codeLens>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_colorPresentation:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **colorPresentation**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_colorPresentation>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_completion:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **completion**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_completion>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_declaration:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **declaration**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_declaration>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_definition:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **definition**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_definition>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didChange:

.. rst-class:: classref-method

|void| **didChange**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didChange>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didClose:

.. rst-class:: classref-method

|void| **didClose**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didClose>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didOpen:

.. rst-class:: classref-method

|void| **didOpen**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didOpen>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didSave:

.. rst-class:: classref-method

|void| **didSave**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didSave>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentLink:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentLink**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentLink>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentSymbol:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentSymbol>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_foldingRange:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **foldingRange**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_foldingRange>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_hover:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **hover**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_hover>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_nativeSymbol:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **nativeSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_nativeSymbol>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_prepareRename:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **prepareRename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_prepareRename>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_references:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **references**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_references>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_rename:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **rename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_rename>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_resolve:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **resolve**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_resolve>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_show_native_symbol_in_editor:

.. rst-class:: classref-method

|void| **show_native_symbol_in_editor**\ (\ symbol_id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_show_native_symbol_in_editor>`

**Deprecato:** Use :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_signatureHelp:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **signatureHelp**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_signatureHelp>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_willSaveWaitUntil:

.. rst-class:: classref-method

|void| **willSaveWaitUntil**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_willSaveWaitUntil>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
