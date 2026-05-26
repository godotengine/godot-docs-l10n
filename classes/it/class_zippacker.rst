:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Consente la creazione di file ZIP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe implementa uno scrittore che permette di memorizzare vari blob in un archivio ZIP. Vedi anche :ref:`ZIPReader<class_ZIPReader>` e :ref:`PCKPacker<class_PCKPacker>`\ 

::

    # Crea un archivio ZIP con un solo file nella sua radice.
    func write_zip_file():
        var writer = ZIPPacker.new()
        var err = writer.open("user://archive.zip")
        if err != OK:
            return err
        writer.start_file("hello.txt")
        writer.write_file("Hello World".to_utf8_buffer())
        writer.close_file()

        writer.close()
        return OK

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_directory<class_ZIPPacker_method_add_directory>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close<class_ZIPPacker_method_close>`\ (\ )                                                                                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close_file<class_ZIPPacker_method_close_file>`\ (\ )                                                                                                                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`open<class_ZIPPacker_method_open>`\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ )                                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_file<class_ZIPPacker_method_start_file>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ )       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`write_file<class_ZIPPacker_method_write_file>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

Crea un nuovo archivio zip sul percorso fornito.

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

Appende un nuovo archivio zip alla fine del file già esistente al percorso fornito.

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

Aggiunge nuovi file all'archivio zip esistente al percorso dato.

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

Comincia un file con il livello di compressione predefinito Deflate (``6``). Questo è un buon compromesso tra velocità e dimensioni del file.

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

Comincia un file senza compressione. Questa è anche nota come modalità di compressione "Archivia" ed è il metodo più veloce per comprimere i file in un archivio ZIP. Si consiglia di utilizzare questa modalità per i file già compressi (come JPEG, PNG, MP3 o Ogg Vorbis).

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

Comincia un file con il livello di compressione Deflate più veloce (``1``). Questo è veloce da comprimere, ma produce file di dimensioni maggiori rispetto a :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La velocità di decompressione non è generalmente influenzata dal livello di compressione scelto.

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

Comincia un file con il miglior livello di compressione Deflate (``9``). Questo è lento da comprimere, ma produce file di dimensioni più piccole di :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La velocità di decompressione non è generalmente influenzata dal livello di compressione scelto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

Il livello di compressione utilizzato quando viene chiamato :ref:`start_file()<class_ZIPPacker_method_start_file>`. Utilizza :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` come riferimento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ZIPPacker_method_add_directory:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_directory**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_add_directory>`

Adds directory to the archive. If ``modified_time`` is set to ``0``, current system time is used.

\ **Note:** Directories are automatically created when :ref:`start_file()<class_ZIPPacker_method_start_file>` is called, use this function before adding files to create directories with custom permissions and modification time.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

Chiude le risorse sottostanti utilizzate da questa istanza.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

Smette di scrivere in un file all'interno dell'archivio.

Fallirà se non c'è un file aperto.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

Apre un file zip per la scrittura sul percorso indicato utilizzando la modalità di scrittura specificata.

Questo deve essere chiamato prima di tutto il resto.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

Starts writing to a file within the archive. Only one file can be written at the same time. If ``modified_time`` is set to ``0``, current system time is used.

Must be called after :ref:`open()<class_ZIPPacker_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

Scrivere i dati ``data`` al file.

Deve essere chiamato dopo :ref:`start_file()<class_ZIPPacker_method_start_file>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
