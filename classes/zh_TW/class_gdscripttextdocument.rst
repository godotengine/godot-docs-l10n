:github_url: hide

.. _class_GDScriptTextDocument:

GDScriptTextDocument
====================

**已棄用：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Document related language server functionality.

.. rst-class:: classref-introduction-group

說明
----

Provides language server functionality related to documents.

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_GDScriptTextDocument_method_codeLens:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **codeLens**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_codeLens>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_colorPresentation:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **colorPresentation**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_colorPresentation>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_completion:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **completion**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_completion>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_declaration:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **declaration**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_declaration>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_definition:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **definition**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_definition>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didChange:

.. rst-class:: classref-method

|void| **didChange**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didChange>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didClose:

.. rst-class:: classref-method

|void| **didClose**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didClose>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didOpen:

.. rst-class:: classref-method

|void| **didOpen**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didOpen>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didSave:

.. rst-class:: classref-method

|void| **didSave**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didSave>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentLink:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentLink**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentLink>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentSymbol:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentSymbol>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_foldingRange:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **foldingRange**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_foldingRange>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_hover:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **hover**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_hover>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_nativeSymbol:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **nativeSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_nativeSymbol>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_prepareRename:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **prepareRename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_prepareRename>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_references:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **references**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_references>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_rename:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **rename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_rename>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_resolve:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **resolve**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_resolve>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_show_native_symbol_in_editor:

.. rst-class:: classref-method

|void| **show_native_symbol_in_editor**\ (\ symbol_id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_show_native_symbol_in_editor>`

**已棄用：** Use :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_signatureHelp:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **signatureHelp**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_signatureHelp>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_willSaveWaitUntil:

.. rst-class:: classref-method

|void| **willSaveWaitUntil**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_willSaveWaitUntil>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
