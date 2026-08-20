:github_url: hide

.. _class_Crypto:

Crypto
======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce accesso a funzionalità crittografiche avanzate.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe Crypto fornisce accesso a funzionalità crittografiche avanzate.

Attualmente, ciò include crittografia/decrittografia a chiave asimmetrica, firma/verifica e generazione di byte casuali crittograficamente sicuri, chiavi RSA, digest HMAC e :ref:`X509Certificate<class_X509Certificate>` autofirmati.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()

    # Genera una nuova chiave RSA.
    var key = crypto.generate_rsa(4096)

    # Genera un nuovo certificato autofirmato con la chiave specificata.
    var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")

    # Salva la chiave e il certificato nella cartella utente.
    key.save("user://generated.key")
    cert.save("user://generated.crt")

    # Crittografia
    var data = "Some data"
    var encrypted = crypto.encrypt(key, data.to_utf8_buffer())

    # Decrittografia
    var decrypted = crypto.decrypt(key, encrypted)

    # Firma
    var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)

    # Verifica
    var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)

    # Test
    assert(verified)
    assert(data.to_utf8_buffer() == decrypted)

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    Crypto crypto = new Crypto();

    // Genera una nuova chiave RSA.
    CryptoKey key = crypto.GenerateRsa(4096);

    // Genera un nuovo certificato autofirmato con la chiave specificata.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

    // Salva la chiave e il certificato nella cartella utente.
    key.Save("user://generated.key");
    cert.Save("user://generated.crt");

    // Crittografia
    string data = "Some data";
    byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer());

    // Decrittografia
    byte[] decrypted = crypto.Decrypt(key, encrypted);

    // Firma
    byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key);

    // Verifica
    bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key);

    // Test
    Debug.Assert(verified);
    Debug.Assert(data.ToUtf8Buffer() == decrypted);



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`constant_time_compare<class_Crypto_method_constant_time_compare>`\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                       |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`decrypt<class_Crypto_method_decrypt>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`encrypt<class_Crypto_method_encrypt>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                                                  |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`generate_random_bytes<class_Crypto_method_generate_random_bytes>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                            |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`generate_rsa<class_Crypto_method_generate_rsa>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`generate_self_signed_certificate<class_Crypto_method_generate_self_signed_certificate>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`hmac_digest<class_Crypto_method_hmac_digest>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`sign<class_Crypto_method_sign>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ )                                                                                                                                                  |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`verify<class_Crypto_method_verify>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ )                                                                                   |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Crypto_method_constant_time_compare:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **constant_time_compare**\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_constant_time_compare>`

Confronta due :ref:`PackedByteArray<class_PackedByteArray>` per verificarne l'uguaglianza senza divulgare informazioni sul tempo, in modo da prevenire attacchi temporali.

Consulta `questo post su un blog <https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy>`__ per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_decrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **decrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_decrypt>`

Decritta il testo cifrato ``ciphertext`` con la chiave privata ``key``.

\ **Nota:** La dimensione massima del testo cifrato accettato è limitata dalla dimensione della chiave.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_encrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **encrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_encrypt>`

Crittografa il testo semplice ``plaintext`` con la chiave publica ``key``.

\ **Nota:** La dimensione massima del testo semplice accettato è limitata dalla dimensione della chiave.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_random_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_random_bytes**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_random_bytes>`

Genera un :ref:`PackedByteArray<class_PackedByteArray>` di byte casuali crittograficamente sicuri con la dimensione ``size``.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_rsa:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **generate_rsa**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_rsa>`

Genera un :ref:`CryptoKey<class_CryptoKey>` RSA che può essere utilizzato per creare certificati autofirmati e passato a :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_self_signed_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **generate_self_signed_certificate**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) :ref:`🔗<class_Crypto_method_generate_self_signed_certificate>`

Genera un :ref:`X509Certificate<class_X509Certificate>` autofirmato dal :ref:`CryptoKey<class_CryptoKey>` e il mittente ``issuer_name`` forniti. La validità del certificato sarà definita da ``not_before`` e ``not_after`` (prima data valida e ultima data valida). ``issuer_name`` deve contenere almeno "CN=" (nome comune, ovvero il nome di dominio), "O=" (organizzazione, ovvero il nome della tua azienda), "C=" (paese, ovvero il codice ISO-3166 a 2 lettere del paese in cui ha sede l'organizzazione).

Un piccolo esempio per generare una chiave RSA e un certificato autofirmato X509.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()
    # Genera una chiave RSA a 4096 bit.
    var key = crypto.generate_rsa(4096)
    # Genera un certificato autofirmato utilizzando la chiave fornita.
    var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")

 .. code-tab:: csharp

    var crypto = new Crypto();
    // Genera una chiave RSA da 4096 bit.
    CryptoKey key = crypto.GenerateRsa(4096);
    // Genera un certificato autofirmato utilizzando la chiave specificata.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");



.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_hmac_digest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **hmac_digest**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_hmac_digest>`

Genera un digest `HMAC <https://en.wikipedia.org/wiki/HMAC>`__ del messaggo ``msg`` usando la chiave ``key``. Il parametro ``hash_type`` è l'algoritmo di hashing usato per gli hash interni ed esterni.

Attualmente, sono supportati solo :ref:`HashingContext.HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` e :ref:`HashingContext.HASH_SHA1<class_HashingContext_constant_HASH_SHA1>`.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_sign:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **sign**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_sign>`

Firma un determinato ``hash`` di tipo ``hash_type`` con la chiave privata ``key`` fornita.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_verify:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **verify**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_verify>`

Verifica che una determinata firma ``signature`` per l'``hash`` di tipo ``hash_type`` sia compatibile con la chiave pubblica ``key`` fornita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
