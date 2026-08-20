:github_url: hide

.. _class_OfflineMultiplayerPeer:

OfflineMultiplayerPeer
======================

**Eredita:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`MultiplayerPeer<class_MultiplayerPeer>` che è sempre connesso e funge da server.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è il :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` predefinito per :ref:`Node.multiplayer<class_Node_property_multiplayer>`. Imita il comportamento di un server senza peer connessi.

Ciò significa che il :ref:`SceneTree<class_SceneTree>` agirà come autorità multigiocatore per impostazione predefinita. Le chiamate a :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>` restituiranno ``true`` e le chiamate a :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>` restituiranno :ref:`MultiplayerPeer.TARGET_PEER_SERVER<class_MultiplayerPeer_constant_TARGET_PEER_SERVER>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
