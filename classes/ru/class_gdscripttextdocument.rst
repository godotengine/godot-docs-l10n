:github_url: hide

.. _class_GDScriptTextDocument:

GDScriptTextDocument
====================

**Устарело:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Функциональность языкового сервера, связанная с документацией.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет функциональность языкового сервера, связанную с документами.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_GDScriptTextDocument_method_codeLens:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **codeLens**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_codeLens>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_colorPresentation:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **colorPresentation**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_colorPresentation>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_completion:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **completion**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_completion>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_declaration:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **declaration**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_declaration>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_definition:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **definition**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_definition>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didChange:

.. rst-class:: classref-method

|void| **didChange**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didChange>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didClose:

.. rst-class:: classref-method

|void| **didClose**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didClose>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didOpen:

.. rst-class:: classref-method

|void| **didOpen**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didOpen>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_didSave:

.. rst-class:: classref-method

|void| **didSave**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_didSave>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentLink:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentLink**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentLink>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_documentSymbol:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **documentSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_documentSymbol>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_foldingRange:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **foldingRange**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_foldingRange>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_hover:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **hover**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_hover>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_nativeSymbol:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **nativeSymbol**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_nativeSymbol>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_prepareRename:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **prepareRename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_prepareRename>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_references:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **references**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_references>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_rename:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **rename**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_rename>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_resolve:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **resolve**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_resolve>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_show_native_symbol_in_editor:

.. rst-class:: classref-method

|void| **show_native_symbol_in_editor**\ (\ symbol_id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_show_native_symbol_in_editor>`

**Устарело:** Use :ref:`ScriptEditor.goto_help()<class_ScriptEditor_method_goto_help>` instead.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_signatureHelp:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **signatureHelp**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_signatureHelp>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptTextDocument_method_willSaveWaitUntil:

.. rst-class:: classref-method

|void| **willSaveWaitUntil**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptTextDocument_method_willSaveWaitUntil>`

**Устарело:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
