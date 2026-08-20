:github_url: hide

.. _class_HashingContext:

HashingContext
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce funzionalità per calcolare hash crittografici pezzo per pezzo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe HashingContext fornisce un'interfaccia per il calcolare gli hash crittografici attraverso più iterazioni. Utile per calcolare gli hash di file grandi (in modo da non doverli caricare tutti in memoria), flussi di rete e flussi di dati in generale (in modo da non dover contenere alcun buffer).

L'enumerazione :ref:`HashType<enum_HashingContext_HashType>` mostra gli algoritmi di hashing supportati.


.. tabs::

 .. code-tab:: gdscript

    const CHUNK_SIZE = 1024

    func hash_file(path):
        # Controlla che il file esista.
        if not FileAccess.file_exists(path):
            return
        #Avvia un contesto SHA-256.
        var ctx = HashingContext.new()
        ctx.start(HashingContext.HASH_SHA256)
        # Apre il file su cui calcolare l'hash.
        var file = FileAccess.open(path, FileAccess.READ)
        # Aggiorna il contesto dopo aver letto ogni blocco.
        while file.get_position() < file.get_length():
            var remaining = file.get_length() - file.get_position()
            ctx.update(file.get_buffer(min(remaining, CHUNK_SIZE)))
        # Ottieni l'hash calcolato.
        var res = ctx.finish()
        # Stampa il risultato come stringa esadecimale e array.
        printt(res.hex_encode(), Array(res))

 .. code-tab:: csharp

    public const int ChunkSize = 1024;

    public void HashFile(string path)
    {
        // Controlla che il file esista.
        if (!FileAccess.FileExists(path))
        {
            return;
        }
        // Avvia un contesto SHA-256.
        var ctx = new HashingContext();
        ctx.Start(HashingContext.HashType.Sha256);
        // Apre il file su cui calcolare l'hash.
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        // Aggiorna il contesto dopo aver letto ogni blocco.
        while (file.GetPosition() < file.GetLength())
        {
            int remaining = (int)(file.GetLength() - file.GetPosition());
            ctx.Update(file.GetBuffer(Mathf.Min(remaining, ChunkSize)));
        }
        // Ottieni l'hash calcolato.
        byte[] res = ctx.Finish();
        // Stampa il risultato come stringa esadecimale e array.
        GD.PrintT(res.HexEncode(), (Variant)res);
    }



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HashingContext_method_finish>`\ (\ )                                                        |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HashingContext_method_start>`\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ )    |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HashingContext_method_update>`\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_HashingContext_HashType:

.. rst-class:: classref-enumeration

enum **HashType**: :ref:`🔗<enum_HashingContext_HashType>`

.. _class_HashingContext_constant_HASH_MD5:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_MD5** = ``0``

Algoritmo di hashing: MD5.

.. _class_HashingContext_constant_HASH_SHA1:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA1** = ``1``

Algoritmo di hashing: SHA-1.

.. _class_HashingContext_constant_HASH_SHA256:

.. rst-class:: classref-enumeration-constant

:ref:`HashType<enum_HashingContext_HashType>` **HASH_SHA256** = ``2``

Algoritmo di hashing: SHA-256.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_HashingContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HashingContext_method_finish>`

Chiude il contesto attuale e restituisce l'hash calcolato.

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ type\: :ref:`HashType<enum_HashingContext_HashType>`\ ) :ref:`🔗<class_HashingContext_method_start>`

Avvia un nuovo calcolo di hash di tipo ``type`` (ad esempio :ref:`HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` per avviare il calcolo di un SHA-256).

.. rst-class:: classref-item-separator

----

.. _class_HashingContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ chunk\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HashingContext_method_update>`

Aggiorna il calcolo con il ``chunk`` di dati specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
