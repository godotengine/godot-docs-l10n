:github_url: hide

.. _class_EditorFileSystem:

EditorFileSystem
================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il file system delle risorse, così come lo vede l'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto contiene informazioni su tutte le risorse nel filesystem, i loro tipi, ecc.

\ **Nota:** Questa classe non dovrebbe essere istanziata direttamente. Invece, accedi al singleton usando :ref:`EditorInterface.get_resource_filesystem()<class_EditorInterface_method_get_resource_filesystem>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_type<class_EditorFileSystem_method_get_file_type>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem<class_EditorFileSystem_method_get_filesystem>`\ (\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem_path<class_EditorFileSystem_method_get_filesystem_path>`\ (\ path\: :ref:`String<class_String>`\ )              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_scanning_progress<class_EditorFileSystem_method_get_scanning_progress>`\ (\ ) |const|                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_importing<class_EditorFileSystem_method_is_importing>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_scanning<class_EditorFileSystem_method_is_scanning>`\ (\ ) |const|                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`reimport_files<class_EditorFileSystem_method_reimport_files>`\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan<class_EditorFileSystem_method_scan>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan_sources<class_EditorFileSystem_method_scan_sources>`\ (\ )                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`update_file<class_EditorFileSystem_method_update_file>`\ (\ path\: :ref:`String<class_String>`\ )                              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorFileSystem_signal_filesystem_changed:

.. rst-class:: classref-signal

**filesystem_changed**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_filesystem_changed>`

Emesso se il file system è cambiato.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimported:

.. rst-class:: classref-signal

**resources_reimported**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimported>`

Emesso se una risorsa è reimportata.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimporting:

.. rst-class:: classref-signal

**resources_reimporting**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimporting>`

Emesso prima che una risorsa sia reimportata.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reload:

.. rst-class:: classref-signal

**resources_reload**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reload>`

Emesso se almeno una risorsa viene ricaricata durante la scansione del file system.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_script_classes_updated:

.. rst-class:: classref-signal

**script_classes_updated**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_script_classes_updated>`

Emesso quando viene aggiornato l'elenco delle classi globali di script.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_sources_changed:

.. rst-class:: classref-signal

**sources_changed**\ (\ exist\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFileSystem_signal_sources_changed>`

Emesso se è cambiata la sorgente di un file importato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorFileSystem_method_get_file_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_type**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_file_type>`

Restituisce il tipo di risorsa del file, specificato il percorso completo. Ciò restituisce una stringa come ``"Resource"`` o ``"GDScript"``, *non* un'estensione di file come ``".gd"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem>`

Ottiene l'oggetto della cartella radice.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem_path:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem_path>`

Restituisce una vista nel filesystem al percorso ``path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_scanning_progress:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_scanning_progress**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_scanning_progress>`

Restituisce il progresso della scansione da 0 a 1 se la scansione del File system è in corso.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_importing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_importing**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_importing>`

Returns ``true`` if resources are currently being imported.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_scanning:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scanning**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_scanning>`

Restituisce ``true`` se il filesystem è in scansionamento.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_reimport_files:

.. rst-class:: classref-method

|void| **reimport_files**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_method_reimport_files>`

Reimporta un insieme di file. Chiamalo se questi file o i loro file ``.import`` sono stati modificati direttamente da uno script o da un programma esterno.

Se il tipo di file è cambiato o il file è stato appena creato, usa :ref:`update_file()<class_EditorFileSystem_method_update_file>` o :ref:`scan()<class_EditorFileSystem_method_scan>`.

\ **Nota:** Questa funzione è bloccante, finché l'importazione non viene completata. Tuttavia, l'iterazione del ciclo principale, inclusi i timer e :ref:`Node._process()<class_Node_private_method__process>`, sarà effettuata durante il processo di importazione a causa degli aggiornamenti della barra di avanzamento. Evita le chiamate a :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` o :ref:`scan()<class_EditorFileSystem_method_scan>` mentre è in corso un'importazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan:

.. rst-class:: classref-method

|void| **scan**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan>`

Scansiona il file system per eventuali modifiche.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan_sources:

.. rst-class:: classref-method

|void| **scan_sources**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan_sources>`

Verifica se la sorgente di una qualsiasi risorsa importata è cambiata.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_update_file:

.. rst-class:: classref-method

|void| **update_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_update_file>`

Aggiunge un file in una cartella esistente o pianifica l'aggiornamento delle informazioni del file al riavvio dell'editor. Può essere utilizzato per aggiornare i file di testo salvati da un programma esterno.

Questo non importerà il file. Per reimportare, chiama i metodi :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` o :ref:`scan()<class_EditorFileSystem_method_scan>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
