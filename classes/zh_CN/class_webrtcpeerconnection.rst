:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

与 WebRTC 对等体连接的接口。

.. rst-class:: classref-introduction-group

描述
----

本地计算机和远程对等体之间的 WebRTC 连接。提供一个接口来连接、维护和监控连接。

在两个对等体之间建立 WebRTC 连接看上去可能不是一项简单的任务，但它可以分解为 3 个主要步骤。

- 想要启动连接的对等体（\ ``A``\ 从现在开始）创建一个提交，并将其发送给另一个对等体（\ ``B``\ 从现在开始）。

- ``B`` 收到要约，生成和回答，并将其发送给 ``A``\ ）。

- ``A`` 和 ``B`` 然后生成并相互交换 ICE 候选。

在这些步骤之后，连接应该成功建立。继续阅读或查看教程以了解更多信息。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`add_ice_candidate<class_WebRTCPeerConnection_method_add_ice_candidate>`\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`close<class_WebRTCPeerConnection_method_close>`\ (\ )                                                                                                                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`                 | :ref:`create_data_channel<class_WebRTCPeerConnection_method_create_data_channel>`\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ )            |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`create_offer<class_WebRTCPeerConnection_method_create_offer>`\ (\ )                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` | :ref:`get_connection_state<class_WebRTCPeerConnection_method_get_connection_state>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`   | :ref:`get_gathering_state<class_WebRTCPeerConnection_method_get_gathering_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>`   | :ref:`get_signaling_state<class_WebRTCPeerConnection_method_get_signaling_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`initialize<class_WebRTCPeerConnection_method_initialize>`\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ )                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`poll<class_WebRTCPeerConnection_method_poll>`\ (\ )                                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_default_extension<class_WebRTCPeerConnection_method_set_default_extension>`\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static|                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_local_description<class_WebRTCPeerConnection_method_set_local_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                          |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_remote_description<class_WebRTCPeerConnection_method_set_remote_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                        |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

当收到一个新的带内通道时发出，即在通道是用\ ``negotiated: false``\ （默认）。

该对象将是\ :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ 的一个实例。你必须保持它的引用，否则它将被自动关闭。参阅\ :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

当新的 ICE 候选者被创建时触发。这三个参数是为了通过信号服务器传递给远程对等体。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

在成功调用 :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` 或 :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` 后触发，当它产生一个应答时。这些参数是为了传递给这个对象上的 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`\ ，并通过信号服务器发送给远程对等体。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

连接是新的，数据通道和提交可以在这种状态下创建。

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

对等体正在连接，ICE 正在进行中，没有任何传输失败。

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

对等体已连接，所有的 ICE 传输都已连接。

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

至少有一个 ICE 传输被断开连接。

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

一个或更多的 ICE 传输失败。

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

对等连接已关闭，例如在调用 :ref:`close()<class_WebRTCPeerConnection_method_close>` 后。

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

对等体连接刚刚建立，还没有做任何联网工作。

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

ICE 代理正在收集候选连接。

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

ICE 代理已完成候选连接的收集。如果发生了需要收集新候选的情况，例如新添加了接口、新添加了 ICE 服务器，则会返回收集状态，进行候选项的收集。

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

没有正在进行的要约和答复的交换。这可能意味着 **WebRTCPeerConnection** 是新的（\ :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`\ ），或者协商已完成并且连接已经建立（\ :ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`\ ）。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

本地对等体已调用 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`\ ，正在传入代表邀约的 SDP（通常由调用 :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` 创建），邀约已成功应用。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

远程对等体已创建邀约，并将其使用信号服务器传递给了本地对等体，本地对等体已调用 :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` 将邀约设置为远程描述。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

已应用远程对等体发送的邀约，已创建恢复并调用了 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` 进行应用。这个临时应答描述了支持的媒体格式等信息，但可能不包含完整的 ICE 候选项。后续会单独发送更多候选项。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

已经接收到初步回应，并已成功地应用到之前通过调用 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` 发送并建立的邀请中。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

该 **WebRTCPeerConnection** 已关闭连接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

添加一个由远程对等体产生的冻结候选，并通过信令服务器接收。请参阅\ :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

关闭对等体连接和与之相关的所有数据通道。

\ **注意：**\ 你不能为一个新的连接重复使用这个对象，除非你调用 :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

返回新的 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ，或在失败时返回 ``null``\ ，具有给定的 ``label``\ ，并通过 ``options`` 字典进行配置。这个方法只有在连接处于 :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 状态时才能被调用。

有两种方法来创建工作数据通道：要么只在其中一个对等体上调用 :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ，并在另一个对等体上监听\ :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>`\ ，要么在两个对等体上调用 :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ，数值相同，并将 ``"negotiated"`` 选项设置为 ``true``\ 。

有效的 ``options`` 是：

::

    {
        "negotiated": true, # 当设置为 "true"时，默认关闭，意味着该通道是在频带外协商的。"id"也必须被设置。"data_channel_received" 将不会被调用。
        "id":1, # 当 "negotiated"为真时，这个值也必须被设置为两个对等体的相同值。

        # 只能指定maxRetransmits和maxPacketLifeTime中的一个，不能同时指定。它们会使信道变得不可靠，但在实时性方面会更好。
        "maxRetransmits":1, # 指定对等体在数据包未被确认时尝试重传的最大次数。
        "maxPacketLifeTime":100, # 指定放弃重传未被确认的数据包之前的最大时间，以毫秒为单位。
        "ordered": true, # 当处于不可靠模式时，即 "maxRetransmits "或 "maxPacketLifetime "被设置，"ordered"指定是否要强制执行数据包排序，默认为true。

        "protocol":"my-custom-protocol", # 这个通道的自定义子协议字符串。
    }

\ **注意：**\ 你必须保持对以这种方式创建的通道的引用，否则它将被关闭。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

创建一个新的 SDP 提交，以开始与远程对等体的 WebRTC 连接。在调用此方法之前，至少要创建一个 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ 。

如果这个函数返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，当会话准备好被发送时，\ :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 将被调用。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

返回连接状态。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

返回连接的 ICE :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`\ 。你可以据此来检测，例如，ICE 候选项的收集是否完成。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

连接或重新连接到另一个对等体时，返回连接本地端的信令状态。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

重新初始化这个对等体连接，关闭任何先前活动的连接，并回到 :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 状态。传入配置选项字典 ``configuration`` 能够对该对等体连接进行配置。

有效的 ``configuration`` 选项有：

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # 若干 STUN 服务器。
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # 若干 TURN 服务器。
                "username": "a_username", # TURN 服务器的用户名，选填。
                "credential": "a_password", # TURN 服务器的密码，选填。
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

经常调用这个方法以正确接收信号，例如在 :ref:`Node._process()<class_Node_private_method__process>` 或 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

将 ``extension_class`` 设置为创建新 **WebRTCPeerConnection** 时返回的默认 :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

设置本地对等体的 SDP 描述。这应是在响应 :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 时调用的。

调用此函数后，对等体将开始发出 :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ ，除非返回与 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 不同的 :ref:`Error<enum_@GlobalScope_Error>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

设置远程对等体的 SDP 描述。应用远程对等体产生的值来调用，并通过信号服务器接收。

如果 ``type`` 为 ``"offer"``\ ，对等体将发出 :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 并给出适当的应答。

如果 ``type`` 为 ``"answer"``\ ，对等体将开始发出 :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
