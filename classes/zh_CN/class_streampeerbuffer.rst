:github_url: hide

.. _class_StreamPeerBuffer:

StreamPeerBuffer
================

**继承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于处理二进制数据流的流对等端。

.. rst-class:: classref-introduction-group

描述
----

使用字节数组作为流的数据缓冲区流对等端。该对象可用于处理来自网络会话的二进制数据。要处理保存在文件中的二进制数据，可以直接使用 :ref:`FileAccess<class_FileAccess>`\ 。

\ **StreamPeerBuffer** 对象会保存一个内部指针，是距离该缓冲区开头的字节偏移量。Get 和 put 操作都在该指针处进行，并会将其进行对应的移动。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_StreamPeerBuffer_property_data_array:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data_array** = ``PackedByteArray()`` :ref:`🔗<class_StreamPeerBuffer_property_data_array>`

.. rst-class:: classref-property-setget

- |void| **set_data_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data_array**\ (\ )

内部的数据缓冲。设置该值会重置指针。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StreamPeerBuffer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerBuffer_method_clear>`

清除 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 并重置指针。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_duplicate:

.. rst-class:: classref-method

:ref:`StreamPeerBuffer<class_StreamPeerBuffer>` **duplicate**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_duplicate>`

返回新的 **StreamPeerBuffer**\ ，具有相同的 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 内容。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_position:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_position**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_position>`

返回当前的指针位置。

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

调整 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 的大小。\ *不会*\ 更新指针。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_seek>`

将指针移动到指定的位置。\ ``position`` 必须是 :ref:`data_array<class_StreamPeerBuffer_property_data_array>` 的有效索引。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
