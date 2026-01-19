:github_url: hide

.. _class_X509Certificate:

X509Certificate
===============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

X509 憑證（例如用於 TLS）。

.. rst-class:: classref-introduction-group

說明
----

X509Certificate 類代表 X509 憑證。憑證可以像其他的 :ref:`Resource<class_Resource>` 資源一樣載入和保存。

可以用作 :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` 中的伺服器憑證（搭配正確的 :ref:`CryptoKey<class_CryptoKey>`\ ），也可以用於指定通過 :ref:`StreamPeerTLS.connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>` 連接到 TLS 伺服器時應該接受的唯一憑證。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`SSL 憑證 <../tutorials/networking/ssl_certificates>`

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

方法說明
--------

.. _class_X509Certificate_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load>`

從路徑 ``path`` 載入憑證（“\*.crt”檔案）。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load_from_string>`

從給定的字串 ``string`` 載入憑證。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_save>`

將憑證保存到給定的路徑 ``path``\ （應該是“\*.crt”檔案）。

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ ) :ref:`🔗<class_X509Certificate_method_save_to_string>`

返回憑證的字串表示，如果憑證無效則返回空字串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
