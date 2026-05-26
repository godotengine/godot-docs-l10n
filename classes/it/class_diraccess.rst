:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce metodi per gestire le cartelle e il loro contenuto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe serve per gestire le cartelle (directory) e il loro contenuto, anche al di fuori della cartella del progetto.

\ **DirAccess** non può essere istanziato direttamente. Invece viene creato con un metodo statico che accetta un percorso per il quale verrà aperto.

La maggior parte dei metodi ha un'alternativa statica che si può utilizzare senza creare un **DirAccess**. I metodi statici supportano solo percorsi assoluti (inclusi ``res://`` e ``user://``).

::

    # Standard
    var dir = DirAccess.open("user://levels")
    dir.make_dir("world1")
    # Statico
    DirAccess.make_dir_absolute("user://levels/world1")

\ **Nota:** L'accesso alle cartelle del progetto ("res://") una volta esportate potrebbe comportarsi in modo imprevisto poiché alcuni file vengono convertiti in formati specifici del motore e i loro file sorgente originali potrebbero non essere presenti nel pacchetto PCK previsto. Per questo motivo, per accedere alle risorse in un progetto esportato, si consiglia di utilizzare :ref:`ResourceLoader<class_ResourceLoader>` anziché :ref:`FileAccess<class_FileAccess>`.

Ecco un esempio su come interare i file di una directory:


.. tabs::

 .. code-tab:: gdscript

    func dir_contents(path):
        var dir = DirAccess.open(path)
        if dir:
            dir.list_dir_begin()
            var file_name = dir.get_next()
            while file_name != "":
                if dir.current_is_dir():
                    print("Cartelle trovata: " + file_name)
                else:
                    print("File trovato: " + file_name)
                file_name = dir.get_next()
        else:
            print("Si è verificato un errore cercando di accedere al percorso.")

 .. code-tab:: csharp

    public void DirContents(string path)
    {
        using var dir = DirAccess.Open(path);
        if (dir != null)
        {
            dir.ListDirBegin();
            string fileName = dir.GetNext();
            while (fileName != "")
            {
                if (dir.CurrentIsDir())
                {
                    GD.Print($"Cartella trovata: {fileName}");
                }
                else
                {
                    GD.Print($"File trovato: {fileName}");
                }
                fileName = dir.GetNext();
            }
        }
        else
        {
            GD.Print("Si è verificato un errore cercando di accedere al percorso.");
        }
    }



Tieni presente che i nomi dei file potrebbero cambiare o essere rimappati dopo l'esportazione. Se vuoi vedere l'elenco effettivo dei file di risorse così come appare nell'editor, usa invece :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Il File system <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`change_dir<class_DirAccess_method_change_dir>`\ (\ to_dir\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy<class_DirAccess_method_copy>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ )                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy_absolute<class_DirAccess_method_copy_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`create_link<class_DirAccess_method_create_link>`\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`create_temp<class_DirAccess_method_create_temp>`\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static|                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`current_is_dir<class_DirAccess_method_current_is_dir>`\ (\ ) |const|                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists<class_DirAccess_method_dir_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists_absolute<class_DirAccess_method_dir_exists_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_DirAccess_method_file_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_current_dir<class_DirAccess_method_get_current_dir>`\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const|                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_current_drive<class_DirAccess_method_get_current_drive>`\ (\ )                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories<class_DirAccess_method_get_directories>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories_at<class_DirAccess_method_get_directories_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_drive_count<class_DirAccess_method_get_drive_count>`\ (\ ) |static|                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_label<class_DirAccess_method_get_drive_label>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_name<class_DirAccess_method_get_drive_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_DirAccess_method_get_files>`\ (\ )                                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files_at<class_DirAccess_method_get_files_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filesystem_type<class_DirAccess_method_get_filesystem_type>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_next<class_DirAccess_method_get_next>`\ (\ )                                                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`get_open_error<class_DirAccess_method_get_open_error>`\ (\ ) |static|                                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_space_left<class_DirAccess_method_get_space_left>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_bundle<class_DirAccess_method_is_bundle>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_case_sensitive<class_DirAccess_method_is_case_sensitive>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_equivalent<class_DirAccess_method_is_equivalent>`\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_link<class_DirAccess_method_is_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`list_dir_begin<class_DirAccess_method_list_dir_begin>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`list_dir_end<class_DirAccess_method_list_dir_end>`\ (\ )                                                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir<class_DirAccess_method_make_dir>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_absolute<class_DirAccess_method_make_dir_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive<class_DirAccess_method_make_dir_recursive>`\ (\ path\: :ref:`String<class_String>`\ )                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive_absolute<class_DirAccess_method_make_dir_recursive_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`open<class_DirAccess_method_open>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`read_link<class_DirAccess_method_read_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove<class_DirAccess_method_remove>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove_absolute<class_DirAccess_method_remove_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename<class_DirAccess_method_rename>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ )                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename_absolute<class_DirAccess_method_rename_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

Se ``true``, i file nascosti sono inclusi quando si naviga nella cartella.

Influisce su :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`, :ref:`get_directories()<class_DirAccess_method_get_directories>`, e :ref:`get_files()<class_DirAccess_method_get_files>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

Se ``true``, ``.`` e ``..`` sono inclusi durante la navigazione nella cartella.

Influisce su :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` e :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

Cambia la directory attualmente aperta in quella passata come argomento. L'argomento può essere relativo alla directory attuale (ad esempio ``newdir`` o ``../newdir``), o un percorso assoluto (ad esempio ``/tmp/newdir`` o ``res://somedir/newdir``).

Restituisce una delle costanti di :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

\ **Nota:** La nuova directory deve essere nella stessa ambito, ad esempio quando una directory è aperta all'interno di ``res://``, non è possibile cambiarla in directory ``user://``. Se è necessario aprire una directory in un altro ambito di accesso, usa :ref:`open()<class_DirAccess_method_open>` per creare una nuova istanza.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

Copia il file da ``from`` nella destinazione ``to``. Entrambi gli argomenti devono essere percorsi a file, relativi o assoluti. Se il file di destinazione esiste e non è protetto da accesso, verrà sovrascritto.

Se ``chmod_flags`` è diverso da ``-1``, i permessi Unix per il percorso di destinazione verranno impostati sul valore fornito, se disponibile sul sistema operativo corrente.

Restituisce una delle costanti di :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

Versione statica di :ref:`copy()<class_DirAccess_method_copy>`. Supporta solo i percorsi assoluti.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

Crea un collegamento simbolico tra file o cartelle.

\ **Nota:** Su Windows, questo metodo funziona solo se l'applicazione è in esecuzione con privilegi elevati o se è abilitata la modalità sviluppatore.

\ **Nota:** Questo metodo è implementato su macOS, Linux, e Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

Crea una cartella temporanea. Questa cartella sarà liberata quando il **DirAccess** restituito viene liberato.

Se ``prefix`` non è vuoto, verrà prefissato al nome della cartella, separato da ``-``.

Se ``keep`` è ``true``, la cartella non viene eliminata quando il **DirAccess** restituito viene liberato.

Restituisce ``null`` se l'apertura della cartella non avviene con successo. È possibile usare :ref:`get_open_error()<class_DirAccess_method_get_open_error>` per controllare l'errore che si è verificato.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

Restituisce se l'elemento attuale elaborato con l'ultima chiamata a :ref:`get_next()<class_DirAccess_method_get_next>` è una cartella (``.`` e ``..`` sono considerate cartelle).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

Restituisce se la cartella di destinazione esiste. L'argomento può essere relativo alla cartella attuale o un percorso assoluto.

\ **Nota:** Il :ref:`bool<class_bool>` restituito nell'editor e dopo l'esportazione quando utilizzato su un percorso nella directory ``res://`` potrebbe essere diverso. Alcuni file vengono convertiti in formati specifici del motore quando esportati, modificando potenzialmente la struttura della cartella.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

Versione statica di :ref:`dir_exists()<class_DirAccess_method_dir_exists>`. Supporta solo percorsi assoluti.

\ **Nota:** Il :ref:`bool<class_bool>` restituito nell'editor e dopo l'esportazione quando utilizzato su un percorso nella directory ``res://`` potrebbe essere diverso. Alcuni file vengono convertiti in formati specifici del motore quando esportati, modificando potenzialmente la struttura della cartella.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

Restituisce se il file di destinazione esiste. L'argomento può essere relativo alla cartella attuale oppure un percorso assoluto.

Per un equivalente statico, usa :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`.

\ **Nota:** Molti tipi di risorse sono importati (ad esempio texture o file audio) e la loro risorsa sorgente non sarà inclusa nel gioco esportato, poiché solo la versione importata è utilizzata. Vedi :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>` per un approccio alternativo che tenga conto della rimappatura delle risorse.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

Restituisce il percorso assoluto alla cartella attualmente aperta (ad esempio ``res://folder`` o ``C:\tmp\folder``).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

Restituisce l'indice dell'unità della cartella attualmente aperta. Vedi :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>` per convertire l'indice restituito nel nome dell'unità.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

Restituisce un :ref:`PackedStringArray<class_PackedStringArray>` contenente i nomi dei file del contenuto della cartella, esclusi i file. L'array è ordinato alfabeticamente.

Influenzato da :ref:`include_hidden<class_DirAccess_property_include_hidden>` e :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Nota:** Le cartelle restituite nell'editor e dopo l'esportazione nella cartella ``res://`` potrebbero essere diversi poiché alcuni file vengono convertiti in formati specifici del motore durante l'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

Restituisce un :ref:`PackedStringArray<class_PackedStringArray>` contenente i nomi dei file del contenuto della cartella, esclusi i file, nel percorso ``path`` specificato. L'array è ordinato alfabeticamente.

Usa :ref:`get_directories()<class_DirAccess_method_get_directories>` se si desidera più controllo su cosa viene incluso.

\ **Nota:** Le cartelle restituite nell'editor e dopo l'esportazione nella cartella ``res://`` potrebbero essere diversi poiché alcuni file vengono convertiti in formati specifici del motore durante l'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

Su Windows, restituisce il numero di unità (partizioni) montate sul file system attuale.

Su macOS e Android, restituisce il numero di volumi montati.

Su Linux, restituisce il numero di volumi montati e segnalibri GTK 3.

Su altre piattaforme, il metodo restituisce 0.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

On Windows, returns the label of the drive (partition) passed as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

On Windows, returns the name of the drive (partition) passed as an argument (e.g. ``C:``).

On macOS, returns the path to the mounted volume passed as an argument.

On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.

On Android (API level 30+), returns the path to the mounted volume as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

Restituisce un :ref:`PackedStringArray<class_PackedStringArray>` contenente i nomi file del contenuto della cartella, escluse le cartelle. L'array è ordinato alfabeticamente.

Influenzato da :ref:`include_hidden<class_DirAccess_property_include_hidden>`.

\ **Nota:** Quando utilizzato su un percorso ``res://`` in un progetto esportato, sono restituiti solo i file effettivamente inclusi nel PCK al livello di cartella specificato. In pratica, ciò significa che poiché le risorse importate sono archiviate in una cartella di livello superiore ``.godot/``, sono restituiti solo i percorsi ai file ``*.gd`` e ``*.import`` (oltre ad alcuni file come ``project.godot`` o ``project.binary`` e l'icona del progetto). In un progetto esportato, l'elenco dei file restituiti varierà anche a seconda che :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

Restituisce un :ref:`PackedStringArray<class_PackedStringArray>` contenente i nomi file del contenuto della cartella, escluse le cartelle, al percorso ``path`` specificato. L'array è ordinato alfabeticamente.

Usa :ref:`get_files()<class_DirAccess_method_get_files>` se si desidera più controllo su cosa viene incluso.

\ **Nota:** Quando utilizzato su un percorso ``res://`` in un progetto esportato, sono restituiti solo i file effettivamente inclusi nel PCK al livello di cartella specificato. In pratica, ciò significa che poiché le risorse importate sono archiviate in una cartella di livello superiore ``.godot/``, sono restituiti solo i percorsi ai file ``*.gd`` e ``*.import`` (oltre a qualche altro file come ``project.godot`` o ``project.binary`` e l'icona del progetto). In un progetto esportato, l'elenco dei file restituiti varierà anche a seconda di :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

Restituisce il nome del tipo di file system del disco della cartella attuale. I valori restituiti sono stringhe maiuscole come ``NTFS``, ``FAT32``, ``EXFAT``, ``APFS``, ``EXT4``, ``BTRFS`` e così via.

\ **Nota:** Questo metodo è implementato su macOS, Linux, Windows e per il file system virtuale dei PCK.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

Restituisce l'elemento successivo (file o cartella) nella cartella attuale.

Viene restituito il nome del file o della cartella (e non il suo percorso completo). Una volta che il flusso è stato elaborato completamente, il metodo restituisce una :ref:`String<class_String>` vuota e chiude automaticamente il flusso (ad esempio, :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` non sarebbe obbligatorio in tal caso).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

Restituisce il risultato dell'ultima chiamata a :ref:`open()<class_DirAccess_method_open>` nel thread attuale.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

Restituisce lo spazio disponibile sul disco della cartella attuale, in byte. Restituisce ``0`` se il metodo specifico della piattaforma per interrogare lo spazio disponibile fallisce.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

Restituisce ``true`` se la cartella è un pacchetto macOS.

\ **Nota:** Questo metodo è implementato solo su macOS.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

Restituisce ``true`` se il file system o la cartella utilizzano nomi di file sensibili alle maiuscole e minuscole.

\ **Nota:** Questo metodo è implementato su macOS, Linux (solo per i file system EXT4 e F2FS) e Windows. Su altre piattaforme, restituisce sempre ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

Restituisce ``true`` se i percorsi ``path_a`` e ``path_b`` risolvono nello stesso oggetto del file system. Restituisce ``false`` altrimenti, anche se i file sono identici bit per bit (ad esempio, copie identiche del file che non sono collegamenti simbolici).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

Restituisce ``true`` se il file o la cartella è un collegamento simbolico, una giunzione di directory o un altro reparse point.

\ **Nota:** Questo metodo è implementato su macOS, Linux, e Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

Inizializza il flusso usato per elencare tutti i file e le cartelle attraverso la funzione :ref:`get_next()<class_DirAccess_method_get_next>`, chiudendo il flusso attualmente aperto se necessario. Una volta elaborato, il flusso dovrebbe essere solitamente chiuso con :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`.

Influenzato da :ref:`include_hidden<class_DirAccess_property_include_hidden>` e :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Nota:** L'ordine dei file e delle cartelle restituito da questo metodo non è deterministico e può variare tra i sistemi operativi. Se desideri un elenco di tutti i file o cartelle in ordine alfabetico, utilizza :ref:`get_files()<class_DirAccess_method_get_files>` o :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

Chiude il flusso aperto attuale con :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` (non importa se è stato completamente elaborato con :ref:`get_next()<class_DirAccess_method_get_next>`).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

Crea una cartella. L'argomento può essere relativo alla cartella attuale o un percorso assoluto. La cartella di destinazione dovrebbe essere posizionata in una cartella già esistente (per creare il percorso completo in modo ricorsivo, vedi :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`).

Restituisce una delle costanti di codice :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

Versione statica di :ref:`make_dir()<class_DirAccess_method_make_dir>`. Supporta solo i percorsi assoluti.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

Crea una cartella di destinazione e tutte le cartelle intermedie necessarie nel suo percorso, chiamando :ref:`make_dir()<class_DirAccess_method_make_dir>` ricorsivamente. L'argomento può essere relativo alla cartella attuale o un percorso assoluto.

Restituisce una delle costanti di codice :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

Versione statica di :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`. Supporta solo i percorsi assoluti.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

Crea un nuovo oggetto **DirAccess** e apre una cartella esistente del file system. Il percorso ``path`` può essere all'interno dell'albero del progetto (``res://folder``), della cartella utente (``user://folder``) o di un percorso assoluto del file system dell'utente (ad esempio ``/tmp/folder`` o ``C:\tmp\folder``).

Restituisce ``null`` se l'apertura della cartella non avviene con successo. È possibile usare :ref:`get_open_error()<class_DirAccess_method_get_open_error>` per controllare l'errore che si è verificato.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

Restituisce la destinazione del collegamento simbolico.

\ **Nota:** Questo metodo è implementato su macOS, Linux e Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

Elimina definitivamente il file di destinazione o una cartella vuota. L'argomento può essere relativo alla cartella attuale o un percorso assoluto. Se la cartella di destinazione non è vuota, l'operazione fallirà.

Se non vuoi eliminare definitivamente il file o la cartella, usa invece :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`.

Restituisce una delle costanti di codice :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

Versione statica di :ref:`remove()<class_DirAccess_method_remove>`. Supporta solo i percorsi assoluti.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

Rinomina (sposta) il file o la cartella ``from`` nella destinazione ``to``. Entrambi gli argomenti devono essere percorsi a file o cartelle, relativi o assoluti. Se il file o la cartella di destinazione esiste e non è protetto da accesso, verrà sovrascritto.

Restituisce una delle costanti di codice :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

Versione statica di :ref:`rename()<class_DirAccess_method_rename>`. Supporta solo i percorsi assoluti.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
