:github_url: hide

.. _class_Crypto:

Crypto
======

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供对高阶加密功能的访问。

.. rst-class:: classref-introduction-group

描述
----

Crypto 类提供对高阶加密功能的访问。

目前，包括非对称密钥的加密/解密和签名/验证、生成加密安全随机字节、RSA 密钥、HMAC 摘要以及自签名的 :ref:`X509Certificate<class_X509Certificate>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()

    # 生成新的 RSA 密钥。
    var key = crypto.generate_rsa(4096)

    # 使用给定的密钥生成新的自签名证书。
    var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")

    # 将密钥和证书保存在用户文件夹中。
    key.save("user://generated.key")
    cert.save("user://generated.crt")

    # 加密
    var data = "Some data"
    var encrypted = crypto.encrypt(key, data.to_utf8_buffer())

    # 解密
    var decrypted = crypto.decrypt(key, encrypted)

    # 签名
    var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)

    # 验证
    var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)

    # 校验
    assert(verified)
    assert(data.to_utf8_buffer() == decrypted)

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    Crypto crypto = new Crypto();

    // 生成新的 RSA 密钥。
    CryptoKey key = crypto.GenerateRsa(4096);

    // 使用给定的密钥生成新的自签名证书。
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

    // 将密钥和证书保存在用户文件夹中。
    key.Save("user://generated.key");
    cert.Save("user://generated.crt");

    // 加密
    string data = "Some data";
    byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer());

    // 解密
    byte[] decrypted = crypto.Decrypt(key, encrypted);

    // 签名
    byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key);

    // 验证
    bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key);

    // 校验
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

方法说明
--------

.. _class_Crypto_method_constant_time_compare:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **constant_time_compare**\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_constant_time_compare>`

比较两个 :ref:`PackedByteArray<class_PackedByteArray>` 是否相等，不会泄漏时序信息，能够防止时序攻击。

详见\ `这篇博文 <https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_decrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **decrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_decrypt>`

用提供的私钥 ``key`` 解密给定的密文 ``ciphertext``\ 。

\ **注意：**\ 所接受的密文的最大尺寸受到密钥大小的限制。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_encrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **encrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_encrypt>`

用提供的公钥 ``key`` 加密给定的明文 ``plaintext``\ 。

\ **注意：**\ 所接受的明文的最大尺寸受到密钥大小的限制。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_random_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_random_bytes**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_random_bytes>`

生成具有给定大小 ``size`` 的加密安全随机字节的 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_rsa:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **generate_rsa**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_rsa>`

生成可用于创建自签名证书并传递给 :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` 的 RSA :ref:`CryptoKey<class_CryptoKey>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_self_signed_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **generate_self_signed_certificate**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) :ref:`🔗<class_Crypto_method_generate_self_signed_certificate>`

根据给定的 :ref:`CryptoKey<class_CryptoKey>` 和 ``issuer_name`` 生成自签名的 :ref:`X509Certificate<class_X509Certificate>`\ 。证书有效性将由 ``not_before`` 和 ``not_after``\ （第一个有效日期和最后一个有效日期）定义。\ ``issuer_name`` 必须至少包含“CN=”（通用名称，即域名）、“O=”（组织，即你的公司名称）、“C=”（国家，即 2 个字母的该组织所在的国家/地区的 ISO-3166 代码）。

生成 RSA 密钥和 X509 自签名证书的小示例。


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()
    # 生成 4096 比特 RSA 密钥。
    var key = crypto.generate_rsa(4096)
    # 使用给定的密钥生成自签名证书。
    var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")

 .. code-tab:: csharp

    var crypto = new Crypto();
    // 生成 4096 比特 RSA 密钥。
    CryptoKey key = crypto.GenerateRsa(4096);
    // 使用给定的密钥生成自签名证书。
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");



.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_hmac_digest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **hmac_digest**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_hmac_digest>`

使用密钥 ``key`` 生成 ``msg`` 的 `HMAC <https://zh.wikipedia.org/wiki/HMAC>`__ 摘要。\ ``hash_type`` 参数是用于内部和外部哈希的哈希算法。

目前仅支持 :ref:`HashingContext.HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` 和 :ref:`HashingContext.HASH_SHA1<class_HashingContext_constant_HASH_SHA1>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_sign:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **sign**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_sign>`

使用提供的私钥 ``key`` 对类型为 ``hash_type`` 的给定 ``hash`` 进行签名。

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_verify:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **verify**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_verify>`

使用提供的公钥 ``key`` 验证类型为 ``hash_type`` 的给定签名 ``signature``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
