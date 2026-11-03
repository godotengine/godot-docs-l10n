:github_url: hide

.. _class_SocketServer:

SocketServer
============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`TCPServer<class_TCPServer>`, :ref:`UDSServer<class_UDSServer>`

基於套接字的伺服器的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

套接字伺服器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_connection_available<class_SocketServer_method_is_connection_available>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_listening<class_SocketServer_method_is_listening>`\ (\ ) |const|                       |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`stop<class_SocketServer_method_stop>`\ (\ )                                               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerSocket<class_StreamPeerSocket>` | :ref:`take_socket_connection<class_SocketServer_method_take_socket_connection>`\ (\ )           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SocketServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_connection_available>`

如果有連接可供取得，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_listening>`

如果伺服器目前正在偵聽連接，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SocketServer_method_stop>`

停止監聽。

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_take_socket_connection:

.. rst-class:: classref-method

:ref:`StreamPeerSocket<class_StreamPeerSocket>` **take_socket_connection**\ (\ ) :ref:`🔗<class_SocketServer_method_take_socket_connection>`

如果連接可用，則回傳帶有該連接的 StreamPeerSocket。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
