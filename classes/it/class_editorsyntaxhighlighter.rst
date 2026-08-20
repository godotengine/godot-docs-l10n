:github_url: hide

.. _class_EditorSyntaxHighlighter:

EditorSyntaxHighlighter
=======================

**Eredita:** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`GDScriptSyntaxHighlighter<class_GDScriptSyntaxHighlighter>`

Classe di base per :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` utilizzata dallo :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base da cui si estendono tutti i :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` utilizzati dallo :ref:`ScriptEditor<class_ScriptEditor>`.

Aggiungi un evidenziatore di sintassi a un singolo script chiamando :ref:`ScriptEditorBase.add_syntax_highlighter()<class_ScriptEditorBase_method_add_syntax_highlighter>`. Per applicarlo a tutti gli script all'apertura, chiama :ref:`ScriptEditor.register_syntax_highlighter()<class_ScriptEditor_method_register_syntax_highlighter>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` | :ref:`_create<class_EditorSyntaxHighlighter_private_method__create>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_name<class_EditorSyntaxHighlighter_private_method__get_name>`\ (\ ) |virtual| |const|                               |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_supported_languages<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`\ (\ ) |virtual| |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorSyntaxHighlighter_private_method__create:

.. rst-class:: classref-method

:ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` **_create**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__create>`

Metodo virtuale che si può sovrascrivere per restituire una nuova istanza dell'evidenziatore di sintassi.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_name>`

Metodo virtuale che si può sovrascrivere per restituire il nome dell'evidenziatore di sintassi.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_supported_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_languages**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`

Metodo virtuale che si può sovrascrivere per restituire i nomi dei linguaggi supportati.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
