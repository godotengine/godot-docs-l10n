:github_url: hide

.. _class_StreamPeerGZIP:

StreamPeerGZIP
==============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

能夠處理 GZIP 和 deflate 壓縮/解壓縮的流對等體。

.. rst-class:: classref-introduction-group

說明
----

這個類能夠使用 GZIP/deflate 對資料進行流式壓縮或解壓縮。壓縮或解壓縮經過網路發送的檔時尤其有用，不必事先分配記憶體。

使用 :ref:`start_compression()<class_StreamPeerGZIP_method_start_compression>`\ （或 :ref:`start_decompression()<class_StreamPeerGZIP_method_start_decompression>`\ ）開啟流之後，在這個流上呼叫 :ref:`StreamPeer.put_partial_data()<class_StreamPeer_method_put_partial_data>` 會對資料進行壓縮（或解壓縮）並寫入內部緩衝區。呼叫 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` 會返回內部緩衝區中待處理的位元組數，\ :ref:`StreamPeer.get_partial_data()<class_StreamPeer_method_get_partial_data>` 會從中獲取壓縮後（或解壓後）的位元組。流結束後，你必須呼叫 :ref:`finish()<class_StreamPeerGZIP_method_finish>` 來確保正確清空內部緩衝區（請務必最後再呼叫一次 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>`\ ，檢查此時是否還有需要讀取的資料）。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear<class_StreamPeerGZIP_method_clear>`\ (\ )                                                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`finish<class_StreamPeerGZIP_method_finish>`\ (\ )                                                                                                                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_compression<class_StreamPeerGZIP_method_start_compression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_decompression<class_StreamPeerGZIP_method_start_decompression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_StreamPeerGZIP_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_clear>`

清空該流，重設內部狀態。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_finish:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **finish**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_finish>`

Finalizes the stream, compressing any buffered chunk left.

You must call it only when you are compressing.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_compression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_compression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_compression>`

開始壓縮模式的流，緩衝區大小為 ``buffer_size``\ ，如果 ``use_deflate`` 為 ``true`` 則使用 deflate 而不是 GZIP。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_decompression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_decompression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_decompression>`

開始解壓模式的流，緩衝區大小為 ``buffer_size``\ ，如果 ``use_deflate`` 為 ``true`` 則使用 deflate 而不是 GZIP。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
