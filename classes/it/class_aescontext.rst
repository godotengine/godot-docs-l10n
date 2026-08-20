:github_url: hide

.. _class_AESContext:

AESContext
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce l'accesso alla crittografia/decrittazione AES dei dati grezzi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe contiene le informazioni di contesto necessarie per le operazioni di crittografia e decrittazione con AES (Advanced Encryption Standard). Entrambe le modalità AES-ECB e AES-CBC sono supportate.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var aes = AESContext.new()

    func _ready():
        var key = "My secret key!!!" # La chiave deve essere 16 o 32 byte.
        var data = "My secret text!!" # La dimensione dei dati deve essere un multiplo di 16 byte, imbottisci se necessario.
        # Cripta ECB
        aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8_buffer())
        var encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Decripta ECB
        aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8_buffer())
        var decrypted = aes.update(encrypted)
        aes.finish()
        # Verifica ECB
        assert(decrypted == data.to_utf8_buffer())

        var iv = "My secret iv!!!!" # IV deve essere esattamente 16 byte.
        # Cripta CBC
        aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        encrypted = aes.update(data.to_utf8_buffer())
        aes.finish()
        # Decripta CBC
        aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8_buffer(), iv.to_utf8_buffer())
        decrypted = aes.update(encrypted)
        aes.finish()
        # Verifica CBC
        assert(decrypted == data.to_utf8_buffer())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
    {
        private AesContext _aes = new AesContext();

        public override void _Ready()
        {
            string key = "My secret key!!!"; // La chiave deve essere 16 o 32 byte.
            string data = "My secret text!!"; // La dimensione dei dati deve essere un multiplo di 16 byte, imbottisci se necessario.
            // Cripta ECB
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer());
            byte[] encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Decripta ECB
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer());
            byte[] decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Verifica CBC
            Debug.Assert(decrypted == data.ToUtf8Buffer());

            string iv = "My secret iv!!!!"; // IV deve essere esattamente 16 byte.
            // Cripta CBC
            _aes.Start(AesContext.Mode.EcbEncrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            encrypted = _aes.Update(data.ToUtf8Buffer());
            _aes.Finish();
            // Decripta CBC
            _aes.Start(AesContext.Mode.EcbDecrypt, key.ToUtf8Buffer(), iv.ToUtf8Buffer());
            decrypted = _aes.Update(encrypted);
            _aes.Finish();
            // Verifica CBC
            Debug.Assert(decrypted == data.ToUtf8Buffer());
        }
    }



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`finish<class_AESContext_method_finish>`\ (\ )                                                                                                                                                                      |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_iv_state<class_AESContext_method_get_iv_state>`\ (\ )                                                                                                                                                          |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_AESContext_method_start>`\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`update<class_AESContext_method_update>`\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AESContext_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AESContext_Mode>`

.. _class_AESContext_constant_MODE_ECB_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_ENCRYPT** = ``0``

Modalità di crittografia di codebook elettronico AES.

.. _class_AESContext_constant_MODE_ECB_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_DECRYPT** = ``1``

Modalità di decrittazione di codebook elettronico AES.

.. _class_AESContext_constant_MODE_CBC_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_ENCRYPT** = ``2``

Modalità di crittografia AES in blocchi cifrati concatenati.

.. _class_AESContext_constant_MODE_CBC_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_DECRYPT** = ``3``

Modalità di decrittazione AES in blocchi cifrati concatenati.

.. _class_AESContext_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_MAX** = ``4``

Valore massimo dell'enumerazione di modalità.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AESContext_method_finish:

.. rst-class:: classref-method

|void| **finish**\ (\ ) :ref:`🔗<class_AESContext_method_finish>`

Chiudere questo contesto AES in modo che possa essere ricominciato. Vedi :ref:`start()<class_AESContext_method_start>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_get_iv_state:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_iv_state**\ (\ ) :ref:`🔗<class_AESContext_method_get_iv_state>`

Ottiene lo stato IV attuale per questo contesto (IV viene aggiornato quando viene chiamato :ref:`update()<class_AESContext_method_update>`). Normalmente non hai bisogno di questa funzione.

\ **Nota:** Questa funzione ha senso solo quando il contesto è iniziato con :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` o :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_AESContext_method_start>`

Avvia il contesto AES nella modalità ``mode`` fornita. Una chiave (``key``) di 16 o 32 byte deve essere sempre fornita, mentre un ``iv`` (vettore di inizializzazione) di esattamente 16 byte è necessario solo quando ``mode`` è :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` o :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_update:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **update**\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_AESContext_method_update>`

Eseguire l'operazione desiderata per questo contesto AES. Ritornerà un :ref:`PackedByteArray<class_PackedByteArray>` contenente il risultato della crittografia (o decrittazione) del ``src`` fornito. Vedi :ref:`start()<class_AESContext_method_start>` per le modalità di funzionamento.

\ **Nota:** La dimensione di ``src`` deve essere un multiplo di 16. Applica un po' di imbottitura se necessario.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
