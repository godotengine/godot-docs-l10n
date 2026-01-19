:github_url: hide

.. _class_X509Certificate:

X509Certificate
===============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

X509 证书（例如用于 TLS）。

.. rst-class:: classref-introduction-group

描述
----

X509Certificate 类代表 X509 证书。证书可以像其他的 :ref:`Resource<class_Resource>` 资源一样加载和保存。

可以用作 :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` 中的服务器证书（搭配正确的 :ref:`CryptoKey<class_CryptoKey>`\ ），也可以用于指定通过 :ref:`StreamPeerTLS.connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>` 连接到 TLS 服务器时应该接受的唯一证书。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`SSL 证书 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_X509Certificate_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_X509Certificate_method_load_from_string>`\ (\ string\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_X509Certificate_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_X509Certificate_method_save_to_string>`\ (\ )                                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_X509Certificate_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load>`

从路径 ``path`` 加载证书（“\*.crt”文件）。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load_from_string>`

从给定的字符串 ``string`` 加载证书。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_save>`

将证书保存到给定的路径 ``path``\ （应该是“\*.crt”文件）。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ ) :ref:`🔗<class_X509Certificate_method_save_to_string>`

返回证书的字符串表示，如果证书无效则返回空字符串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
