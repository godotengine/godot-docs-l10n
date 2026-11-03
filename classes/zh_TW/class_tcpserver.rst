:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**繼承：** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

TCP 伺服器。

.. rst-class:: classref-introduction-group

說明
----

TCP 伺服器。監聽埠上的連接，並在獲得傳入連接時返回 :ref:`StreamPeerTCP<class_StreamPeerTCP>`\ 。

\ **注意：**\ 匯出到安卓時，在匯出專案或使用一鍵部署之前，請務必在安卓匯出預設中開啟 ``INTERNET`` 許可權。否則 Android 會阻止任何形式的網路通信。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_TCPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_TCPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerTCP<class_StreamPeerTCP>` | :ref:`take_connection<class_TCPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

返回該伺服器正在監聽的本地埠。

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

在 ``port`` 上監聽與 ``bind_address`` 綁定的位址。

如果 ``bind_address`` 被設定為 ``"*"``\ （預設），該伺服器將監聽所有可用位址（包括 IPv4 和 IPv6）。

如果 ``bind_address`` 被設定為 ``"0.0.0.0"``\ （用於 IPv4）或 ``"::"``\ （用於 IPv6），該伺服器將監聽所有符合該 IP 型別的可用位址。

如果 ``bind_address`` 被設定為任何有效的位址（如 ``"192.168.1.101"``\ 、\ ``"::1"`` 等），該伺服器將只在具有該位址的介面上監聽（如果不存在具有該位址的介面則失敗）。

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

如果連接可用，則返回帶有該連接的 StreamPeerTCP。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
