:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

與 WebRTC 對等體連接的介面。

.. rst-class:: classref-introduction-group

說明
----

本機電腦和遠端對等端之間的 WebRTC 連接。提供一個介面來連接、維護和監控連接。

在兩個對等端之間建立 WebRTC 連接看上去可能不是一項簡單的任務，但它可以分解為 3 個主要步驟。

- 想要啟動連接的對等端（以下簡稱 ``A``\ ）建立一個提交，並將其發送給另一個對等端（以下簡稱 ``B``\ ）。

- ``B`` 收到要約，生成回答，並將其發送給 ``A``\ 。

- ``A`` 和 ``B`` 然後生成並相互交換 ICE 候選。

在這些步驟之後，連接應該就建立起來了。有關詳細資訊，請參閱連結的教學。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`WebRTC 文件 <../tutorials/networking/webrtc>`

- :doc:`進階多人遊戲 <../tutorials/networking/high_level_multiplayer>`

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

訊號
----

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

當收到一個新的帶內通道時發出，即在通道是用\ ``negotiated: false``\ （預設）。

該物件將是\ :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ 的一個實例。你必須保持它的引用，否則它將被自動關閉。參閱\ :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

當新的 ICE 候選者被建立時觸發。這三個參數是為了通過訊號伺服器傳遞給遠端對等體。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

在成功呼叫 :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` 或 :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` 後觸發，當它產生一個應答時。這些參數是為了傳遞給這個物件上的 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`\ ，並通過訊號伺服器發送給遠端對等體。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

連接是新的，資料通道和提交可以在這種狀態下建立。

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

對等體正在連接，ICE 正在進行中，沒有任何傳輸失敗。

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

對等體已連接，所有的 ICE 傳輸都已連接。

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

至少有一個 ICE 傳輸被斷開連接。

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

一個或更多的 ICE 傳輸失敗。

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

對等連接已關閉，例如在呼叫 :ref:`close()<class_WebRTCPeerConnection_method_close>` 後。

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

對等體連接剛剛建立，還沒有做任何連網工作。

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

ICE 代理正在收集候選連接。

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

ICE 代理已完成候選連接的收集。如果發生了需要收集新候選的情況，例如新新增了介面、新新增了 ICE 伺服器，則會返回收集狀態，進行候選項的收集。

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

沒有正在進行的要約和答覆的交換。這可能意味著 **WebRTCPeerConnection** 是新的（\ :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`\ ），或者協商已完成並且連接已經建立（\ :ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`\ ）。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

本地對等體已呼叫 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`\ ，正在傳入代表邀約的 SDP（通常由呼叫 :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` 建立），邀約已成功套用。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

遠端對等體已建立邀約，並將其使用訊號伺服器傳遞給了本地對等體，本地對等體已調用 :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` 將邀約設定為遠端描述。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

已套用遠端對等體發送的邀約，已建立恢復並呼叫了 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` 進行套用。這個臨時應答描述了支援的媒體格式等資訊，但可能不包含完整的 ICE 候選項。後續會單獨發送更多候選項。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

已經接收到初步回應，並已成功地套用到之前通過呼叫 :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` 發送並建立的邀請中。

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

該 **WebRTCPeerConnection** 已關閉連接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

新增一個由遠端對等體產生的凍結候選，並通過信令伺服器接收。請參閱\ :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

關閉對等體連接和與之相關的所有資料通道。

\ **注意：**\ 你不能為一個新的連接重複使用這個物件，除非你呼叫 :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

返回新的 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ，或在失敗時返回 ``null``\ ，具有給定的 ``label``\ ，並通過 ``options`` 字典進行配置。這個方法只有在連接處於 :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 狀態時才能被呼叫。

有兩種方法來建立工作資料通道：要麼只在其中一個對等體上呼叫 :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ，並在另一個對等體上監聽\ :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>`\ ，要麼在兩個對等體上呼叫 :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`\ ，數值相同，並將 ``"negotiated"`` 選項設定為 ``true``\ 。

有效的 ``options`` 是：

::

    {
        "negotiated": true, # 當設定為 "true"時，預設關閉，意味著該通道是在頻帶外協商的。"id"也必須被設定。"data_channel_received" 將不會被呼叫。
        "id":1, # 當 "negotiated"為真時，這個值也必須被設定為兩個對等體的相同值。

        # 只能指定maxRetransmits和maxPacketLifeTime中的一個，不能同時指定。它們會使通道變得不可靠，但在即時性方面會更好。
        "maxRetransmits":1, # 指定對等體在封包未被確認時嘗試重傳的最大次數。
        "maxPacketLifeTime":100, # 指定放棄重傳未被確認的封包之前的最大時間，以毫秒為單位。
        "ordered": true, # 當處於不可靠模式時，即 "maxRetransmits "或 "maxPacketLifetime "被設定，"ordered"指定是否要強制執行封包排序，預設為true。

        "protocol":"my-custom-protocol", # 這個通道的自訂子協定字串。
    }

\ **注意：**\ 你必須保持對以這種方式建立的通道的引用，否則它將被關閉。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

建立一個新的 SDP 提交，以開始與遠端對等體的 WebRTC 連接。在呼叫此方法之前，至少要建立一個 :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ 。

如果這個函式返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，當會話準備好被發送時，\ :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 將被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

回傳連接狀態。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

返回連接的 ICE :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`\ 。你可以據此來偵測，例如，ICE 候選項的收集是否完成。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

連接或重新連接到另一個對等端時，回傳連接本機端的信令狀態。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

重新初始化這個對等體連接，關閉任何先前活動的連接，並回到 :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` 狀態。傳入配置選項字典 ``configuration`` 能夠對該對等體連接進行配置。

有效的 ``configuration`` 選項有：

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # 若干 STUN 伺服器。
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # 若干 TURN 伺服器。
                "username": "a_username", # TURN 伺服器的使用者名，選填。
                "credential": "a_password", # TURN 伺服器的密碼，選填。
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

經常呼叫這個方法以正確接收訊號，例如在 :ref:`Node._process()<class_Node_private_method__process>` 或 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

將 ``extension_class`` 設定為建立新 **WebRTCPeerConnection** 時返回的預設 :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

設定本地對等體的 SDP 描述。這應是在回應 :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 時呼叫的。

呼叫此函式後，對等體將開始發出 :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ ，除非返回與 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 不同的 :ref:`Error<enum_@GlobalScope_Error>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

設定遠端對等體的 SDP 描述。套用遠端對等體產生的值來呼叫，並通過訊號伺服器接收。

如果 ``type`` 為 ``"offer"``\ ，對等體將發出 :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` 並給出適當的應答。

如果 ``type`` 為 ``"answer"``\ ，對等體將開始發出 :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
