:github_url: hide

.. _class_HMACContext:

HMACContext
===========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Utilizzato per creare un HMAC per un messaggio tramite una chiave.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe HMACContext è utile per casi d'uso HMAC avanzati, come lo streaming del messaggio, poiché supporta la creazione del messaggio nel corso del tempo anziché fornirlo tutto in una volta.


.. tabs::

 .. code-tab:: gdscript

    extends Node
    var ctx = HMACContext.new()

    func _ready():
        var key = "supersecret".to_utf8_buffer()
        var err = ctx.start(HashingContext.HASH_SHA256, key)
        assert(err == OK)
        var msg1 = "this is ".to_utf8_buffer()
        var msg2 = "super duper secret".to_utf8_buffer()
        err = ctx.update(msg1)
        assert(err == OK)
        err = ctx.update(msg2)
        assert(err == OK)
        var hmac = ctx.finish()
        print(hmac.hex_encode())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MyNode : Node
    {
        private HmacContext _ctx = new HmacContext();

        public override void _Ready()
        {
            byte[] key = "supersecret".ToUtf8Buffer();
            Error err = _ctx.Start(HashingContext.HashType.Sha256, key);
            Debug.Assert(err == Error.Ok);
            byte[] msg1 = "this is ".ToUtf8Buffer();
            byte[] msg2 = "super duper secret".ToUtf8Buffer();
            err = _ctx.Update(msg1);
            Debug.Assert(err == Error.Ok);
            err = _ctx.Update(msg2);
            Debug.Assert(err == Error.Ok);
            byte[] hmac = _ctx.Finish();
            GD.Print(hmac.HexEncode());
        }
    }



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`finish<class_HMACContext_method_finish>`\ (\ )                                                                                                               |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_HMACContext_method_start>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`update<class_HMACContext_method_update>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_HMACContext_method_finish:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **finish**\ (\ ) :ref:`🔗<class_HMACContext_method_finish>`

Restituisce l'HMAC risultante. Se l'HMAC fallisce, viene restituito un :ref:`PackedByteArray<class_PackedByteArray>` vuoto.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_start>`

Inizializza HMACContext. Questo metodo non può essere chiamato di nuovo sullo stesso HMACContext finché :ref:`finish()<class_HMACContext_method_finish>` non è stato chiamato.

.. rst-class:: classref-item-separator

----

.. _class_HMACContext_method_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **update**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_HMACContext_method_update>`

Aggiorna il messaggio da sottoporre a HMAC. Può essere chiamato più volte prima che sia chiamato :ref:`finish()<class_HMACContext_method_finish>` per aggiungere ``data`` al messaggio, ma non può essere chiamato finché :ref:`start()<class_HMACContext_method_start>` non è chiamato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
