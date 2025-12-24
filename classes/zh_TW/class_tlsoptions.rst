:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用者端與伺服器的 TLS 配置。

.. rst-class:: classref-introduction-group

說明
----

TLSOptions 是對 :ref:`StreamPeerTLS<class_StreamPeerTLS>` 和 :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` 類中配置選項的抽象。

無法直接產生實體這個類的物件，應改用靜態方法 :ref:`client()<class_TLSOptions_method_client>`\ 、\ :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` 或 :ref:`server()<class_TLSOptions_method_server>`\ 。


.. tabs::

 .. code-tab:: gdscript

    # 建立 TLS 使用者端配置，使用自訂 CA 信任鏈。
    var client_trusted_cas = load("res://my_trusted_cas.crt")
    var client_tls_options = TLSOptions.client(client_trusted_cas)

    # 建立 TLS 伺服器配置。
    var server_certs = load("res://my_server_cas.crt")
    var server_key = load("res://my_server_key.key")
    var server_tls_options = TLSOptions.server(server_key, server_certs)



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client<class_TLSOptions_method_client>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client_unsafe<class_TLSOptions_method_client_unsafe>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static|                                            |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_common_name_override<class_TLSOptions_method_get_common_name_override>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_own_certificate<class_TLSOptions_method_get_own_certificate>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`get_private_key<class_TLSOptions_method_get_private_key>`\ (\ ) |const|                                                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_trusted_ca_chain<class_TLSOptions_method_get_trusted_ca_chain>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_server<class_TLSOptions_method_is_server>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_unsafe_client<class_TLSOptions_method_is_unsafe_client>`\ (\ ) |const|                                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`server<class_TLSOptions_method_server>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static|                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

Creates a TLS client configuration which validates certificates and their common names (fully qualified domain names).

You can specify a custom ``trusted_chain`` of certification authorities (the default CA list will be used if ``null``), and optionally provide a ``common_name_override`` if you expect the certificate to have a common name other than the server FQDN.

\ **Note:** On the Web platform, TLS verification is always enforced against the CA list of the web browser. This is considered a security feature.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

建立\ **不安全**\ 的 TLS 使用者端配置，憑證驗證為可選項。你可以選擇提供有效的信任鏈 ``trusted_chain``\ ，但永遠不會對憑證的通用名稱進行檢查。這種配置\ **不推薦**\ 用於測試之外的用途。

\ **注意：**\ 在 Web 平臺上，TLS 驗證始終強制使用 Web 流覽器的 CA 列表。這是一種安全功能。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

Returns the common name (domain name) override specified when creating with :ref:`client()<class_TLSOptions_method_client>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

Returns the :ref:`X509Certificate<class_X509Certificate>` specified when creating with :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

Returns the :ref:`CryptoKey<class_CryptoKey>` specified when creating with :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

Returns the CA :ref:`X509Certificate<class_X509Certificate>` chain specified when creating with :ref:`client()<class_TLSOptions_method_client>` or :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

Returns ``true`` if created with :ref:`server()<class_TLSOptions_method_server>`, ``false`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

Returns ``true`` if created with :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, ``false`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

使用提供的金鑰 ``key`` 和憑證 ``certificate`` 建立 TLS 伺服器配置。

\ **注意：**\ ``certificate`` 中應當包含簽章 CA 的完整憑證連結（可以使用通用文字編輯器連接憑證檔）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
