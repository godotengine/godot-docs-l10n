:github_url: hide

.. _class_StreamPeer:

StreamPeer
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`StreamPeerBuffer<class_StreamPeerBuffer>`, :ref:`StreamPeerExtension<class_StreamPeerExtension>`, :ref:`StreamPeerGZIP<class_StreamPeerGZIP>`, :ref:`StreamPeerSocket<class_StreamPeerSocket>`, :ref:`StreamPeerTLS<class_StreamPeerTLS>`

Classe base astratta per interagire con i flussi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

StreamPeer è una classe base astratta usata principalmente per i protocolli basati sui flussi (come TCP). Fornisce un'API per inviare e ricevere i dati tramite i flussi, come dati grezzi o stringhe.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`big_endian<class_StreamPeer_property_big_endian>` | ``false`` |
   +-------------------------+---------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_8<class_StreamPeer_method_get_8>`\ (\ )                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_16<class_StreamPeer_method_get_16>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_32<class_StreamPeer_method_get_32>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_64<class_StreamPeer_method_get_64>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_available_bytes<class_StreamPeer_method_get_available_bytes>`\ (\ ) |const|                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_data<class_StreamPeer_method_get_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_double<class_StreamPeer_method_get_double>`\ (\ )                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_float<class_StreamPeer_method_get_float>`\ (\ )                                                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_half<class_StreamPeer_method_get_half>`\ (\ )                                                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_partial_data<class_StreamPeer_method_get_partial_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_string<class_StreamPeer_method_get_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u8<class_StreamPeer_method_get_u8>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u16<class_StreamPeer_method_get_u16>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u32<class_StreamPeer_method_get_u32>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u64<class_StreamPeer_method_get_u64>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_utf8_string<class_StreamPeer_method_get_utf8_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`get_var<class_StreamPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_8<class_StreamPeer_method_put_8>`\ (\ value\: :ref:`int<class_int>`\ )                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_16<class_StreamPeer_method_put_16>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_32<class_StreamPeer_method_put_32>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_64<class_StreamPeer_method_put_64>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`put_data<class_StreamPeer_method_put_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_double<class_StreamPeer_method_put_double>`\ (\ value\: :ref:`float<class_float>`\ )                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_float<class_StreamPeer_method_put_float>`\ (\ value\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_half<class_StreamPeer_method_put_half>`\ (\ value\: :ref:`float<class_float>`\ )                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`put_partial_data<class_StreamPeer_method_put_partial_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_string<class_StreamPeer_method_put_string>`\ (\ value\: :ref:`String<class_String>`\ )                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u8<class_StreamPeer_method_put_u8>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u16<class_StreamPeer_method_put_u16>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u32<class_StreamPeer_method_put_u32>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u64<class_StreamPeer_method_put_u64>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_utf8_string<class_StreamPeer_method_put_utf8_string>`\ (\ value\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_var<class_StreamPeer_method_put_var>`\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StreamPeer_property_big_endian:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **big_endian** = ``false`` :ref:`🔗<class_StreamPeer_property_big_endian>`

.. rst-class:: classref-property-setget

- |void| **set_big_endian**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_big_endian_enabled**\ (\ )

Se ``true``, questo **StreamPeer** utilizzerà il formato big-endian per la codifica e la decodifica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeer_method_get_8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_8>`

Ottiene un byte con segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_16>`

Ottiene un valore a 16-bit con segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_32>`

Ottiene un valore a 32-bit con segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_64>`

Ottiene un valore a 64-bit con segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_bytes**\ (\ ) |const| :ref:`🔗<class_StreamPeer_method_get_available_bytes>`

Restituisce il numero di byte che questo **StreamPeer** ha a disposizione.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_data>`

Restituisce un blocco di dati con i byte ricevuti, come un :ref:`Array<class_Array>` contenente due elementi: una costante di :ref:`Error<enum_@GlobalScope_Error>` e un :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` è il numero di byte da ricevere. Se non sono disponibili abbastanza byte, la funzione si bloccherà finché non verrà ricevuta la quantità desiderata.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_double:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_double**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_double>`

Ottiene un float a doppia precisione dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_float>`

Ottiene un float a singola precisione dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_half:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_half**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_half>`

Ottiene un float a mezza precisione dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_partial_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_partial_data>`

Restituisce un blocco di dati con i byte ricevuti, come un :ref:`Array<class_Array>` contenente due elementi: una costante di :ref:`Error<enum_@GlobalScope_Error>` e un :ref:`PackedByteArray<class_PackedByteArray>`. ``bytes`` è il numero di byte da ricevere. Se non sono disponibili abbastanza byte, la funzione restituirà quanti ne sono stati effettivamente ricevuti.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_string>`

Ottiene una stringa ASCII con lunghezza in byte ``bytes`` dal flusso. Se ``bytes`` è negativo (predefinito), la lunghezza verrà letta dal flusso attraverso il processo inverso di :ref:`put_string()<class_StreamPeer_method_put_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u8>`

Ottiene un byte senza segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u16>`

Ottiene un valore a 16 bit senza segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u32>`

Ottiene un valore a 32 bit senza segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u64>`

Ottiene un valore a 64 bit senza segno dal flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_utf8_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_utf8_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_utf8_string>`

Ottiene una stringa UTF-8 con lunghezza in byte ``bytes`` dal flusso (ciò decodifica la stringa inviata in UTF-8). Se ``bytes`` è negativo (predefinito), la lunghezza verrà letta dal flusso attraverso il processo inverso di :ref:`put_utf8_string()<class_StreamPeer_method_put_utf8_string>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_get_var>`

Ottiene un valore Variant dal flusso. Se ``allow_objects`` è ``true``, è permesso decodificare gli oggetti.

Internamente, questo utilizza lo stesso meccanismo di decodifica del metodo :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Attenzione:** Un oggetto deserializzato può contenere codice che verrà eseguito. Non usare questa opzione se l'oggetto serializzato arriva da fonti sconosciute per evitare eventuali rischi di sicurezza come l'esecuzione di codice remoto.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_8:

.. rst-class:: classref-method

|void| **put_8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_8>`

Inserisce un byte con segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_16:

.. rst-class:: classref-method

|void| **put_16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_16>`

Inserisce un valore a 16 bit con segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_32:

.. rst-class:: classref-method

|void| **put_32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_32>`

Inserisce un valore a 32 bit con segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_64:

.. rst-class:: classref-method

|void| **put_64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_64>`

Inserisce un valore a 64 bit con segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_data>`

Invia un blocco di dati attraverso la connessione, bloccando se necessario fino al completamento dell'invio dei dati. Questa funzione restituisce un codice :ref:`Error<enum_@GlobalScope_Error>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_double:

.. rst-class:: classref-method

|void| **put_double**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_double>`

Inserisce un float a doppia precisione nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_float:

.. rst-class:: classref-method

|void| **put_float**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_float>`

Inserisce un float a singola precisione nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_half:

.. rst-class:: classref-method

|void| **put_half**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_half>`

Inserisce un float a mezza precisione nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **put_partial_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_partial_data>`

Invia un blocco di dati attraverso la connessione. Se non è stato possibile inviare tutti i dati in una volta, solo una parte di essi verrà inviata. Questa funzione restituisce due valori, un codice :ref:`Error<enum_@GlobalScope_Error>` e un intero, che descrivono quanti dati sono stati effettivamente inviati.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_string:

.. rst-class:: classref-method

|void| **put_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_string>`

Inserisce una stringa ASCII terminata da zero nel flusso, preceduta da un intero senza segno a 32 bit che rappresenta la dimensione della stringa.

\ **Nota:** Per inserire una stringa ASCII senza anteporre la sua dimensione, è possibile usare :ref:`put_data()<class_StreamPeer_method_put_data>`:


.. tabs::

 .. code-tab:: gdscript

    put_data("Ciao mondo".to_ascii_buffer())

 .. code-tab:: csharp

    PutData("Ciao Mondo".ToAsciiBuffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u8:

.. rst-class:: classref-method

|void| **put_u8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u8>`

Inserisce un byte senza segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u16:

.. rst-class:: classref-method

|void| **put_u16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u16>`

Inserisce un valore a 16 bit senza segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u32:

.. rst-class:: classref-method

|void| **put_u32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u32>`

Inserisce un valore a 32 bit senza segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u64:

.. rst-class:: classref-method

|void| **put_u64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u64>`

Inserisce un valore a 64 bit senza segno nel flusso.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_utf8_string:

.. rst-class:: classref-method

|void| **put_utf8_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_utf8_string>`

Inserisce una stringa UTF-8 terminata da zero nel flusso, preceduta da un intero senza segno a 32 bit che rappresenta la dimensione della stringa.

\ **Nota:** Per inserire una stringa UTF-8 senza anteporre la sua dimensione, è possibile usare :ref:`put_data()<class_StreamPeer_method_put_data>`:


.. tabs::

 .. code-tab:: gdscript

    put_data("Ciao mondo".to_utf8_buffer())

 .. code-tab:: csharp

    PutData("Ciao Mondo".ToUtf8Buffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_var:

.. rst-class:: classref-method

|void| **put_var**\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_put_var>`

Inserisce un valore Variant nel flusso. Se ``full_objects`` è ``true``, è consentito codificare le istanze di oggetti (e può potenzialmente includere codice).

Internamente, questo metodo utilizza lo stesso meccanismo di codifica del metodo :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
