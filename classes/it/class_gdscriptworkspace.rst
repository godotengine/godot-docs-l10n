:github_url: hide

.. _class_GDScriptWorkspace:

GDScriptWorkspace
=================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Workspace related language server functionality.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Provides language server functionality related to the workspace.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_new_signal<class_GDScriptWorkspace_method_apply_new_signal>`\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`didDeleteFiles<class_GDScriptWorkspace_method_didDeleteFiles>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`generate_script_api<class_GDScriptWorkspace_method_generate_script_api>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_path<class_GDScriptWorkspace_method_get_file_path>`\ (\ uri\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_uri<class_GDScriptWorkspace_method_get_file_uri>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_local_script<class_GDScriptWorkspace_method_parse_local_script>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_script<class_GDScriptWorkspace_method_parse_script>`\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ )                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`publish_diagnostics<class_GDScriptWorkspace_method_publish_diagnostics>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GDScriptWorkspace_method_apply_new_signal:

.. rst-class:: classref-method

|void| **apply_new_signal**\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_apply_new_signal>`

**Deprecato:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_didDeleteFiles:

.. rst-class:: classref-method

|void| **didDeleteFiles**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_didDeleteFiles>`

**Deprecato:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_generate_script_api:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **generate_script_api**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_generate_script_api>`

Returns the interface of the script in a machine-readable format.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ uri\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_get_file_path>`

Converts a URI to a file path.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_uri:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_uri**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDScriptWorkspace_method_get_file_uri>`

Converts a file path to a URI.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_local_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_local_script**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_local_script>`

**Deprecato:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_script**\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_script>`

**Deprecato:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_publish_diagnostics:

.. rst-class:: classref-method

|void| **publish_diagnostics**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_publish_diagnostics>`

**Deprecato:** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
