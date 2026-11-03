:github_url: hide

.. _class_StreamPeerUDS:

StreamPeerUDS
=============

**繼承：** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

處理 UNIX 域套接字 (UDS) 連接的流對等端。

.. rst-class:: classref-introduction-group

說明
----

處理 UNIX 域套接字 (UDS) 連接的流對等端。該物件可用於連接 UDS 伺服器，也可由 UDS 伺服器回傳。Unix 域套接字使用檔案系統命名空間在同一台機器上提供處理程序間通信。

\ **注意：**\ UNIX 域套接字僅在類 UNIX 系統（Linux、macOS 等）上可用，Windows 系統上不受支援。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerUDS_method_bind>`\ (\ path\: :ref:`String<class_String>`\ )                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerUDS_method_connect_to_host>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_path<class_StreamPeerUDS_method_get_connected_path>`\ (\ ) |const|                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_StreamPeerUDS_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_bind>`

打開 UDS 套接字，並將其綁定到指定的套接字路徑。

通常不需要該方法，它僅用於強制後續呼叫 :ref:`connect_to_host()<class_StreamPeerUDS_method_connect_to_host>` 時使用指定的 ``path`` 作為源位址。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_connect_to_host>`

連接到指定的 UNIX 域套接字路徑。成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_get_connected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_path**\ (\ ) |const| :ref:`🔗<class_StreamPeerUDS_method_get_connected_path>`

回傳該對等端的套接字路徑。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
