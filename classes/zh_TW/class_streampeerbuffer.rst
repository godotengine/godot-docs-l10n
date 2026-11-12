:github_url: hide

.. _class_StreamPeerBuffer:

StreamPeerBuffer
================

**繼承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於處理二進位資料流的流對等體。

.. rst-class:: classref-introduction-group

說明
----

使用位元組陣列作為流的資料緩衝區流對等體。該物件可用於處理來自網路會話的二進位資料。要處理保存在檔中的二進位資料，可以直接使用 :ref:`FileAccess<class_FileAccess>`\ 。

\ **StreamPeerBuffer** 物件會保存一個內部指標，是距離該緩衝區開頭的位元組偏移量。Get 和 put 操作都在該指標處進行，並會將其進行對應的移動。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data_array<class_StreamPeerBuffer_property_data_array>` | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_StreamPeerBuffer_method_clear>`\ (\ )                                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerBuffer<class_StreamPeerBuffer>` | :ref:`duplicate<class_StreamPeerBuffer_method_duplicate>`\ (\ ) |const|                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_position<class_StreamPeerBuffer_method_get_position>`\ (\ ) |const|           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_size<class_StreamPeerBuffer_method_get_size>`\ (\ ) |const|                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`resize<class_StreamPeerBuffer_method_resize>`\ (\ size\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`seek<class_StreamPeerBuffer_method_seek>`\ (\ position\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_StreamPeerBuffer_property_data_array:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data_array** = ``PackedByteArray()`` :ref:`🔗<class_StreamPeerBuffer_property_data_array>`

.. rst-class:: classref-property-setget

- |void| **set_data_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data_array**\ (\ )

內部的資料緩衝。設定該值會重設指針。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_StreamPeerBuffer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerBuffer_method_clear>`

清除 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 並重設指針。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_duplicate:

.. rst-class:: classref-method

:ref:`StreamPeerBuffer<class_StreamPeerBuffer>` **duplicate**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_duplicate>`

返回新的 **StreamPeerBuffer**\ ，具有相同的 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 內容。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_position:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_position**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_position>`

返回目前的指針位置。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_size**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_size>`

返回 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 的大小。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_resize>`

調整 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 的大小。\ *不會*\ 更新指針。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_seek>`

將指標移動到指定的位置。\ ``position`` 必須是 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 的有效索引。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
