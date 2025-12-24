:github_url: hide

.. _class_StreamPeer:

StreamPeer
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`StreamPeerBuffer<class_StreamPeerBuffer>`, :ref:`StreamPeerExtension<class_StreamPeerExtension>`, :ref:`StreamPeerGZIP<class_StreamPeerGZIP>`, :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerTLS<class_StreamPeerTLS>`

与流交互的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

StreamPeer 是一种抽象基类，常用于流式协议（例如 TCP）。它提供了通过流发送数据的 API，将数据作为原始数据或字符串处理。

\ **注意：**\ 导出到安卓时，在导出项目或使用一键部署之前，请务必在安卓导出预设中，开启 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`big_endian<class_StreamPeer_property_big_endian>` | ``false`` |
   +-------------------------+---------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_8<class_StreamPeer_method_get_8>`\ (\ )                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_16<class_StreamPeer_method_get_16>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_32<class_StreamPeer_method_get_32>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_64<class_StreamPeer_method_get_64>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_available_bytes<class_StreamPeer_method_get_available_bytes>`\ (\ ) |const|                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_data<class_StreamPeer_method_get_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_double<class_StreamPeer_method_get_double>`\ (\ )                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_float<class_StreamPeer_method_get_float>`\ (\ )                                                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_half<class_StreamPeer_method_get_half>`\ (\ )                                                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`get_partial_data<class_StreamPeer_method_get_partial_data>`\ (\ bytes\: :ref:`int<class_int>`\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_string<class_StreamPeer_method_get_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u8<class_StreamPeer_method_get_u8>`\ (\ )                                                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u16<class_StreamPeer_method_get_u16>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u32<class_StreamPeer_method_get_u32>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_u64<class_StreamPeer_method_get_u64>`\ (\ )                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_utf8_string<class_StreamPeer_method_get_utf8_string>`\ (\ bytes\: :ref:`int<class_int>` = -1\ )                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`get_var<class_StreamPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_8<class_StreamPeer_method_put_8>`\ (\ value\: :ref:`int<class_int>`\ )                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_16<class_StreamPeer_method_put_16>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_32<class_StreamPeer_method_put_32>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_64<class_StreamPeer_method_put_64>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`put_data<class_StreamPeer_method_put_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_double<class_StreamPeer_method_put_double>`\ (\ value\: :ref:`float<class_float>`\ )                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_float<class_StreamPeer_method_put_float>`\ (\ value\: :ref:`float<class_float>`\ )                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_half<class_StreamPeer_method_put_half>`\ (\ value\: :ref:`float<class_float>`\ )                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`put_partial_data<class_StreamPeer_method_put_partial_data>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_string<class_StreamPeer_method_put_string>`\ (\ value\: :ref:`String<class_String>`\ )                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u8<class_StreamPeer_method_put_u8>`\ (\ value\: :ref:`int<class_int>`\ )                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u16<class_StreamPeer_method_put_u16>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u32<class_StreamPeer_method_put_u32>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_u64<class_StreamPeer_method_put_u64>`\ (\ value\: :ref:`int<class_int>`\ )                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_utf8_string<class_StreamPeer_method_put_utf8_string>`\ (\ value\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`put_var<class_StreamPeer_method_put_var>`\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_StreamPeer_property_big_endian:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **big_endian** = ``false`` :ref:`🔗<class_StreamPeer_property_big_endian>`

.. rst-class:: classref-property-setget

- |void| **set_big_endian**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_big_endian_enabled**\ (\ )

为 ``true`` 时，该 **StreamPeer** 进行编解码时会使用大端格式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StreamPeer_method_get_8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_8>`

从流中获取有符号字节。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_16>`

从流中获取有符号 16 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_32>`

从流中获取有符号 32 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_64>`

从流中获取有符号 64 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_bytes**\ (\ ) |const| :ref:`🔗<class_StreamPeer_method_get_available_bytes>`

返回该 **StreamPeer** 可用的字节数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_data>`

返回接收到的块数据。可以使用 ``bytes`` 参数设置所需接收的字节数。如果可用的字节数不足，函数会阻塞至接收到所需字节数为止。该函数返回两个值，一个 :ref:`Error<enum_@GlobalScope_Error>` 错误码以及一个数据数组。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_double:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_double**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_double>`

从流中获取一个双精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_float>`

从流中获取一个单精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_half:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_half**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_half>`

从流中获取一个半精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_partial_data**\ (\ bytes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_get_partial_data>`

返回接收到的字节数据块。要接收的字节数可以在 ``bytes`` 参数中请求。如果没有足够的字节数可用，该函数会返回实际接收到的数量。该函数返回两个值：\ :ref:`Error<enum_@GlobalScope_Error>` 错误码和数据数组。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_string>`

从流中获取一个字节长度为 ``bytes`` 的 ASCII 字符串。如果 ``bytes`` 为负（默认），会按照 :ref:`put_string()<class_StreamPeer_method_put_string>` 的逆向操作从流中读取长度。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u8:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u8**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u8>`

从流中获取一个无符号字节。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u16:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u16**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u16>`

从流中获取一个无符号 16 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u32:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u32**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u32>`

从流中获取一个无符号 32 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_u64:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_u64**\ (\ ) :ref:`🔗<class_StreamPeer_method_get_u64>`

从流中获取一个无符号 64 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_utf8_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_utf8_string**\ (\ bytes\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_StreamPeer_method_get_utf8_string>`

从流中获取一个字节长度为 ``bytes`` 的 UTF-8 字符串（将发送的字符串解码为 UTF-8）。如果 ``bytes`` 为负（默认），会按照 :ref:`put_utf8_string()<class_StreamPeer_method_put_utf8_string>` 的逆向操作从流中读取长度。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_get_var>`

从流中获取一个 Variant。如果 ``allow_objects`` 为 ``true``\ ，则会允许解码出对象。

内部实现时，使用的解码机制与 :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>` 方法相同。

\ **警告：**\ 反序列化的对象可能包含会被执行的代码。如果序列化的对象来自不可信的来源，请勿使用该选项，以免造成远程代码执行等安全威胁。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_8:

.. rst-class:: classref-method

|void| **put_8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_8>`

向流中放入一个有符号字节。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_16:

.. rst-class:: classref-method

|void| **put_16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_16>`

向流中放入一个有符号 16 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_32:

.. rst-class:: classref-method

|void| **put_32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_32>`

向流中放入一个有符号 32 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_64:

.. rst-class:: classref-method

|void| **put_64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_64>`

向流中放入一个有符号 64 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_data>`

通过连接发送块数据，数据完成发送前会阻塞。该函数返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_double:

.. rst-class:: classref-method

|void| **put_double**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_double>`

向流中放入一个双精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_float:

.. rst-class:: classref-method

|void| **put_float**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_float>`

向流中放入一个单精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_half:

.. rst-class:: classref-method

|void| **put_half**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StreamPeer_method_put_half>`

向流中放入一个半精度浮点数。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_partial_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **put_partial_data**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_StreamPeer_method_put_partial_data>`

通过连接发送数据。如果数据无法一次性发完，则仅会发送部分数据。该函数返回两个值，一个 :ref:`Error<enum_@GlobalScope_Error>` 错误码以及一个整数，表示实际发送的数据量。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_string:

.. rst-class:: classref-method

|void| **put_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_string>`

向流中放入一个以零结尾的 ASCII 字符串，会前置一个表示其大小的 32 位无符号整数。

\ **注意：**\ 如果要放置 ASCII 字符串，而不前置大小，可以使用 :ref:`put_data()<class_StreamPeer_method_put_data>`\ ：


.. tabs::

 .. code-tab:: gdscript

    put_data("Hello world".to_ascii_buffer())

 .. code-tab:: csharp

    PutData("Hello World".ToAsciiBuffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u8:

.. rst-class:: classref-method

|void| **put_u8**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u8>`

向流中放入一个无符号字节。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u16:

.. rst-class:: classref-method

|void| **put_u16**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u16>`

向流中放入一个无符号 16 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u32:

.. rst-class:: classref-method

|void| **put_u32**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u32>`

向流中放入一个无符号 32 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_u64:

.. rst-class:: classref-method

|void| **put_u64**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeer_method_put_u64>`

向流中放入一个无符号 64 位值。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_utf8_string:

.. rst-class:: classref-method

|void| **put_utf8_string**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeer_method_put_utf8_string>`

向流中放入一个以零结尾的 UTF-8 字符串，前置一个表示其大小的 32 位无符号整数。

\ **注意：**\ 如果要放置 UTF-8 字符串，而不前置其大小，可以使用 :ref:`put_data()<class_StreamPeer_method_put_data>`\ ：


.. tabs::

 .. code-tab:: gdscript

    put_data("Hello world".to_utf8_buffer())

 .. code-tab:: csharp

    PutData("Hello World".ToUtf8Buffer());



.. rst-class:: classref-item-separator

----

.. _class_StreamPeer_method_put_var:

.. rst-class:: classref-method

|void| **put_var**\ (\ value\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_StreamPeer_method_put_var>`

向流中放入一个 Variant。如果 ``full_objects`` 为 ``true``\ ，则会允许将对象编码（其中可能包含代码）。

内部实现时，使用的编码机制与 :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` 方法相同。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
