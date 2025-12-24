:github_url: hide

.. _class_OfflineMultiplayerPeer:

OfflineMultiplayerPeer
======================

**繼承：** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

始終連接並用作伺服器的 :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ 。

.. rst-class:: classref-introduction-group

說明
----

這是 :ref:`Node.multiplayer<class_Node_property_multiplayer>` 的預設 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ 。會模仿未連接任何對等體的伺服器的行為。

這意味著 :ref:`SceneTree<class_SceneTree>` 會預設作為多人遊戲控制方。呼叫 :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>` 會返回 ``true``\ ，呼叫 :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>` 會返回 :ref:`MultiplayerPeer.TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
