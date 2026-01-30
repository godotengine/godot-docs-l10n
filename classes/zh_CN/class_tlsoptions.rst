:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

客户端与服务器的 TLS 配置。

.. rst-class:: classref-introduction-group

描述
----

TLSOptions 是对 :ref:`StreamPeerTLS<class_StreamPeerTLS>` 和 :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` 类中配置选项的抽象。

无法直接实例化这个类的对象，应改用静态方法 :ref:`client()<class_TLSOptions_method_client>`\ 、\ :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` 或 :ref:`server()<class_TLSOptions_method_server>`\ 。


.. tabs::

 .. code-tab:: gdscript

    # 创建 TLS 客户端配置，使用自定义 CA 信任链。
    var client_trusted_cas = load("res://my_trusted_cas.crt")
    var client_tls_options = TLSOptions.client(client_trusted_cas)

    # 创建 TLS 服务器配置。
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

方法说明
--------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

创建 TLS 客户端配置，验证证书及其通用名称（完整域名）。

你可以指定自定义的证书颁发机构信任链 ``trusted_chain``\ （如果为 ``null`` 则使用默认 CA 列表）。如果你希望证书拥有服务器 FQDN 之外的通用名称，还可以提供通用名称覆盖 ``common_name_override``\ 。

\ **注意：**\ 在 Web 平台上，TLS 验证始终强制使用 Web 浏览器的 CA 列表。这是一种安全特性。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

创建\ **不安全**\ 的 TLS 客户端配置，证书验证为可选项。你可以选择提供有效的信任链 ``trusted_chain``\ ，但永远不会对证书的通用名称进行检查。这种配置\ **不推荐**\ 用于测试之外的用途。

\ **注意：**\ 在 Web 平台上，TLS 验证始终强制使用 Web 浏览器的 CA 列表。这是一种安全特性。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

返回使用 :ref:`client()<class_TLSOptions_method_client>` 创建时指定的通用名（域名）覆盖项。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

返回使用 :ref:`server()<class_TLSOptions_method_server>` 创建时指定的 :ref:`X509Certificate<class_X509Certificate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

返回使用 :ref:`server()<class_TLSOptions_method_server>` 创建时指定的 :ref:`CryptoKey<class_CryptoKey>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

返回使用 :ref:`client()<class_TLSOptions_method_client>` 或 :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` 创建时使用的 CA :ref:`X509Certificate<class_X509Certificate>` 链。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

如果是通过 :ref:`server()<class_TLSOptions_method_server>` 创建的则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

如果是通过 :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` 创建的则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

使用提供的密钥 ``key`` 和证书 ``certificate`` 创建 TLS 服务器配置。

\ **注意：**\ ``certificate`` 中应当包含签名 CA 的完整证书链（可以使用通用文本编辑器连接证书文件）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
