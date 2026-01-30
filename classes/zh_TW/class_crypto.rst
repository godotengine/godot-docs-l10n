:github_url: hide

.. _class_Crypto:

Crypto
======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供對高階加密功能的存取。

.. rst-class:: classref-introduction-group

說明
----

The Crypto class provides access to advanced cryptographic functionalities.

Currently, this includes asymmetric key encryption/decryption, signing/verification, and generating cryptographically secure random bytes, RSA keys, HMAC digests, and self-signed :ref:`X509Certificate<class_X509Certificate>`\ s.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()

    # Generate new RSA key.
    var key = crypto.generate_rsa(4096)

    # Generate new self-signed certificate with the given key.
    var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")

    # Save key and certificate in the user folder.
    key.save("user://generated.key")
    cert.save("user://generated.crt")

    # Encryption
    var data = "Some data"
    var encrypted = crypto.encrypt(key, data.to_utf8_buffer())

    # Decryption
    var decrypted = crypto.decrypt(key, encrypted)

    # Signing
    var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)

    # Verifying
    var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)

    # Checks
    assert(verified)
    assert(data.to_utf8_buffer() == decrypted)

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    Crypto crypto = new Crypto();

    // Generate new RSA key.
    CryptoKey key = crypto.GenerateRsa(4096);

    // Generate new self-signed certificate with the given key.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

    // Save key and certificate in the user folder.
    key.Save("user://generated.key");
    cert.Save("user://generated.crt");

    // Encryption
    string data = "Some data";
    byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer());

    // Decryption
    byte[] decrypted = crypto.Decrypt(key, encrypted);

    // Signing
    byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key);

    // Verifying
    bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key);

    // Checks
    Debug.Assert(verified);
    Debug.Assert(data.ToUtf8Buffer() == decrypted);



.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_Crypto_method_constant_time_compare:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **constant_time_compare**\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_constant_time_compare>`

比較兩個 :ref:`PackedByteArray<class_PackedByteArray>` 是否相等，不會洩漏時序資訊，能夠防止時序攻擊。

詳情見\ `這篇博文 <https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_decrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **decrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_decrypt>`

用提供的私密金鑰 ``key`` 解密給定的密文 ``ciphertext``\ 。

\ **注意：**\ 所接受的密文的最大尺寸受到金鑰大小的限制。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_encrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **encrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_encrypt>`

用提供的公開金鑰 ``key`` 加密給定的明文 ``plaintext``\ 。

\ **注意：**\ 所接受的明文的最大尺寸受到金鑰大小的限制。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_random_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_random_bytes**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_random_bytes>`

生成具有給定大小 ``size`` 的加密安全隨機位元組的 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_rsa:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **generate_rsa**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_rsa>`

生成可用於建立自簽章憑證並傳遞給 :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` 的 RSA :ref:`CryptoKey<class_CryptoKey>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_self_signed_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **generate_self_signed_certificate**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) :ref:`🔗<class_Crypto_method_generate_self_signed_certificate>`

Generates a self-signed :ref:`X509Certificate<class_X509Certificate>` from the given :ref:`CryptoKey<class_CryptoKey>` and ``issuer_name``. The certificate validity will be defined by ``not_before`` and ``not_after`` (first valid date and last valid date). The ``issuer_name`` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).

A small example to generate an RSA key and an X509 self-signed certificate.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()
    # Generate 4096 bits RSA key.
    var key = crypto.generate_rsa(4096)
    # Generate self-signed certificate using the given key.
    var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")

 .. code-tab:: csharp

    var crypto = new Crypto();
    // Generate 4096 bits RSA key.
    CryptoKey key = crypto.GenerateRsa(4096);
    // Generate self-signed certificate using the given key.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");



.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_hmac_digest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **hmac_digest**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_hmac_digest>`

使用金鑰 ``key`` 生成 ``msg`` 的 `HMAC <https://zh.wikipedia.org/wiki/HMAC>`__ 摘要。\ ``hash_type`` 參數是用於內部和外部雜湊的雜湊算法。

目前僅支援 :ref:`HashingContext.HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` 和 :ref:`HashingContext.HASH_SHA1<class_HashingContext_constant_HASH_SHA1>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_sign:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **sign**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_sign>`

使用提供的私密金鑰 ``key`` 對型別為 ``hash_type`` 的給定 ``hash`` 進行簽章。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_verify:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **verify**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_verify>`

使用提供的公開金鑰 ``key`` 驗證型別為 ``hash_type`` 的給定簽章 ``signature``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
