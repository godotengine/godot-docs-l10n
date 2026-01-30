:github_url: hide

.. _class_StreamPeerTLS:

StreamPeerTLS
=============

**繼承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

處理 TLS 連接的流對等體。

.. rst-class:: classref-introduction-group

說明
----

處理 TLS 連接的流對等體。此物件可用於連接到 TLS 伺服器或接受單個 TLS 使用者端連接。

\ **注意：**\ 當匯出到 Android 時，確保在匯出專案或使用一鍵部署之前，在 Android 匯出預設中啟用 ``INTERNET`` 許可權。否則，任何形式的網路通信都會被 Android 阻止。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`TLS 憑證 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`accept_stream<class_StreamPeerTLS_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_stream<class_StreamPeerTLS_method_connect_to_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_stream<class_StreamPeerTLS_method_disconnect_from_stream>`\ (\ )                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTLS_Status>` | :ref:`get_status<class_StreamPeerTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeer<class_StreamPeer>`      | :ref:`get_stream<class_StreamPeerTLS_method_get_stream>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`poll<class_StreamPeerTLS_method_poll>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_StreamPeerTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTLS_Status>`

.. _class_StreamPeerTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_DISCONNECTED** = ``0``

狀態，表示 **StreamPeerTLS** 已斷開連接。

.. _class_StreamPeerTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_HANDSHAKING** = ``1``

狀態，表示 **StreamPeerTLS** 處於握手階段。

.. _class_StreamPeerTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_CONNECTED** = ``2``

狀態，表示 **StreamPeerTLS** 已連接至主機。

.. _class_StreamPeerTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR** = ``3``

狀態，表示 **StreamPeerTLS** 處於出錯狀態。

.. _class_StreamPeerTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

錯誤狀態，表示主機的 TLS 憑證功能變數名稱與請求驗證的功能變數名稱不配對。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_StreamPeerTLS_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_StreamPeerTLS_method_accept_stream>`

以伺服器的身份接受對等體連接，使用給定的伺服器選項 ``server_options``\ 。見 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_connect_to_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_StreamPeerTLS_method_connect_to_stream>`

使用底層 :ref:`StreamPeer<class_StreamPeer>` ``stream`` 連接到對等體，並對遠端憑證是否由給定的 ``common_name`` 簽章進行驗證。傳入 ``client_options`` 可以自訂信任的憑證授權，也可以禁用通用名稱驗證。見 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_disconnect_from_stream:

.. rst-class:: classref-method

|void| **disconnect_from_stream**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_disconnect_from_stream>`

與主機斷開連接。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_status>`

Returns the status of the connection.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_stream:

.. rst-class:: classref-method

:ref:`StreamPeer<class_StreamPeer>` **get_stream**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_stream>`

返回底層 :ref:`StreamPeer<class_StreamPeer>` 連接，在 :ref:`accept_stream()<class_StreamPeerTLS_method_accept_stream>` 或 :ref:`connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_poll>`

輪詢連接以檢查傳入的位元組。在 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` 之前呼叫它以使其正常工作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
