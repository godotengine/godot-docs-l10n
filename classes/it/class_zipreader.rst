:github_url: hide

.. _class_ZIPReader:

ZIPReader
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Consente di leggere il contenuto di un file ZIP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe implementa un lettore che può estrarre il contenuto di singoli file all'interno di un archivio ZIP. Vedere anche :ref:`ZIPPacker<class_ZIPPacker>`.

::

    # Leggi un singolo file da un archivio ZIP.
    func read_zip_file():
        var reader = ZIPReader.new()
        var err = reader.open("user://archive.zip")
        if err != OK:
            return PackedByteArray()
        var res = reader.read_file("hello.txt")
        reader.close()
        return res

    # Estrai tutti i file da un archivio ZIP, preservando le cartelle contenute in esso.
    # Funziona come la funzionalità "Estrai tutto" della maggior parte dei gestori di archivi.
    func extract_all_from_zip():
        var reader = ZIPReader.new()
        reader.open("res://archive.zip")

        # Cartella di destinazione per i file estratti (questa cartella deve esistere prima dell'estrazione).
        # Non tutti gli archivi ZIP mettono tutto in un'unica cartella radice,
        # il che significa che potrebbero essere creati diversi file/cartelle in `root_dir` dopo l'estrazione.
        var root_dir = DirAccess.open("user://")

        var files = reader.get_files()
        for file_path in files:
            # Se la voce attuale è una cartella.
            if file_path.ends_with("/"):
                root_dir.make_dir_recursive(file_path)
                continue

            # Scrivi il contenuto dei file, creando automaticamente le cartelle se necessario.
            # Non tutti gli archivi ZIP sono rigorosamente ordinati, quindi è necessario farlo nel caso
            # in cui la voce del file venga prima della voce della cartella.
            root_dir.make_dir_recursive(root_dir.get_current_dir().path_join(file_path).get_base_dir())
            var file = FileAccess.open(root_dir.get_current_dir().path_join(file_path), FileAccess.WRITE)
            var buffer = reader.read_file(file_path)
            file.store_buffer(buffer)

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`close<class_ZIPReader_method_close>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_ZIPReader_method_file_exists>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_compression_level<class_ZIPReader_method_get_compression_level>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_ZIPReader_method_get_files>`\ (\ )                                                                                                              |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`open<class_ZIPReader_method_open>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_file<class_ZIPReader_method_read_file>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                         |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ZIPReader_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPReader_method_close>`

Chiude le risorse sottostanti utilizzate da questa istanza.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_file_exists>`

Restituisce ``true`` se il file esiste nell'archivio zip caricato.

Deve essere chiamato dopo :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_compression_level:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_compression_level**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_get_compression_level>`

Restituisce il livello di compressione del file nell'archivio zip caricato. Restituisce ``-1`` se il file non esiste o si verifica qualunque altro errore. Deve essere chiamato dopo :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_ZIPReader_method_get_files>`

Restituisce la lista dei nomi di tutti i file nell'archivio caricato.

Deve essere chiamato dopo :ref:`open()<class_ZIPReader_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPReader_method_open>`

Apre l'archivio zip al percorso ``path`` e legge il suo indice di file.

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_read_file:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_file**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_read_file>`

Carica in memoria l'intero contenuto di un file nell'archivio zip caricato e lo restituisce.

Deve essere chiamato dopo :ref:`open()<class_ZIPReader_method_open>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
