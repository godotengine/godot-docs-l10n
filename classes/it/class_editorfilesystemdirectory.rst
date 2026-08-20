:github_url: hide

.. _class_EditorFileSystemDirectory:

EditorFileSystemDirectory
=========================

**Eredita:** :ref:`Object<class_Object>`

Una cartella per il file system delle risorse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una variazione più generalizzata e di basso livello del concetto di cartella.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_dir_index<class_EditorFileSystemDirectory_method_find_dir_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_file_index<class_EditorFileSystemDirectory_method_find_file_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                      |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file<class_EditorFileSystemDirectory_method_get_file>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_file_count<class_EditorFileSystemDirectory_method_get_file_count>`\ (\ ) |const|                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_file_import_is_valid<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_path<class_EditorFileSystemDirectory_method_get_file_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_extends<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`\ (\ idx\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_name<class_EditorFileSystemDirectory_method_get_file_script_class_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|       |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`get_file_type<class_EditorFileSystemDirectory_method_get_file_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_name<class_EditorFileSystemDirectory_method_get_name>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_parent<class_EditorFileSystemDirectory_method_get_parent>`\ (\ )                                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_path<class_EditorFileSystemDirectory_method_get_path>`\ (\ ) |const|                                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_subdir<class_EditorFileSystemDirectory_method_get_subdir>`\ (\ idx\: :ref:`int<class_int>`\ )                                               |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_subdir_count<class_EditorFileSystemDirectory_method_get_subdir_count>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorFileSystemDirectory_method_find_dir_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_dir_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_dir_index>`

Restituisce l'indice della cartella con il nome ``name`` o ``-1`` se non trovato.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_find_file_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_file_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_file_index>`

Restituisce l'indice del file con il nome ``name`` o ``-1`` se non trovato.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file>`

Restituisce il nome del file all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_file_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_count>`

Restituisce il numero di file in questa cartella.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_import_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_file_import_is_valid**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`

Restituisce ``true`` se il file all'indice ``idx`` è stato importato correttamente.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_path>`

Restituisce il percorso del file all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_extends:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_extends**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`

Restituisce la classe base della classe di script definita nel file all'indice ``idx``. Se il file non definisce una classe di script attraverso la sintassi ``class_name``, verrà restituita una stringa vuota.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_name>`

Restituisce il nome della classe di script definita nel file all'indice ``idx``. Se il file non definisce una classe di script attraverso la sintassi ``class_name``, verrà restituita una stringa vuota.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_file_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_type>`

Restituisce il tipo di risorsa del file all'indice ``idx``. Restituisce una stringa come ``"Resource"`` o ``"GDScript"``, *non* un'estensione di file come ``".gd"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_name>`

Restituisce il nome di questa cartella.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_parent:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_parent**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_parent>`

Restituisce la cartella padre per questa cartella o ``null`` se viene chiamato su una cartella in ``res://`` o ``user://``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_path>`

Restituisce il percorso di questa cartella.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_subdir**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir>`

Restituisce la sottocartella all'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subdir_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir_count>`

Restituisce il numero di sottocartelle in questa cartella.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
