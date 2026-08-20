:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

Interfaccia API multigiocatore di alto livello.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base per implementazioni dell'API multigiocatore di alto livello. Vedi anche :ref:`MultiplayerPeer<class_MultiplayerPeer>`.

Come predefinito, :ref:`SceneTree<class_SceneTree>` ha un riferimento a un'implementazione di questa classe e la usa per fornire capacità multigiocatore (ad esempio RPC) in tutta la scena.

È possibile sovrascrivere l'istanza MultiplayerAPI usata da rami specifici dell'albero chiamando il metodo :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`, consentendo effettivamente di eseguire sia il client sia il server nella stessa scena.

È anche possibile estendere o sostituire l'implementazione predefinita tramite scripting o estensioni native. Vedi :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` per i dettagli sulle estensioni, :ref:`SceneMultiplayer<class_SceneMultiplayer>` per i dettagli sull'implementazione predefinita.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`     | :ref:`create_default_interface<class_MultiplayerAPI_method_create_default_interface>`\ (\ ) |static|                                                                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`get_default_interface<class_MultiplayerAPI_method_get_default_interface>`\ (\ ) |static|                                                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_peers<class_MultiplayerAPI_method_get_peers>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_sender_id<class_MultiplayerAPI_method_get_remote_sender_id>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_unique_id<class_MultiplayerAPI_method_get_unique_id>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has_multiplayer_peer<class_MultiplayerAPI_method_has_multiplayer_peer>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_server<class_MultiplayerAPI_method_is_server>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_add<class_MultiplayerAPI_method_object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                                |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_remove<class_MultiplayerAPI_method_object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`poll<class_MultiplayerAPI_method_poll>`\ (\ )                                                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`rpc<class_MultiplayerAPI_method_rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_default_interface<class_MultiplayerAPI_method_set_default_interface>`\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static|                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

Emesso quando il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si è connesso correttamente a un server. Emesso solo sui client.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

Emesso quando il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI non riesce a stabilire una connessione a un server. Emesso solo sui client.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

Emesso quando il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si connette a un nuovo peer. ID è l'ID peer del nuovo peer. I client vengono avvisati quando altri client si connettono allo stesso server. Quando si connette a un server, un client riceve questo segnale anche per il server (con ID pari a 1).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

Emesso quando il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si disconnette da un peer. I client vengono avvisati quando altri client si disconnettono dallo stesso server.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

Emesso quando il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI si disconnette dal server. Emesso solo sui client.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

Utilizzato con :ref:`Node.rpc_config()<class_Node_method_rpc_config>` per disabilitare un metodo o una proprietà per tutte le chiamate RPC, rendendolo non disponibile. Predefinito per tutti i metodi.

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

Utilizzato con :ref:`Node.rpc_config()<class_Node_method_rpc_config>` per impostare un metodo in modo che sia richiamabile da remoto da qualsiasi peer. Analogo all'annotazione ``@rpc("any_peer")``. Le chiamate sono accettate da tutti i peer remoti, a prescindere che siano l'autorità del nodo.

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

Utilizzato con :ref:`Node.rpc_config()<class_Node_method_rpc_config>` per impostare un metodo in modo che sia richiamabile da remoto solo dall'autorità multigiocatore attuale (che è predefinita al server). Analogo all'annotazione ``@rpc("authority")``. Vedi :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

L'oggetto peer per gestire il sistema RPC (abilitando effettivamente la connessione rete quando impostato). A seconda del peer stesso, la MultiplayerAPI diventerà un server di rete (verifica con :ref:`is_server()<class_MultiplayerAPI_method_is_server>`) e imposterà la modalità di rete del nodo radice su autorità, oppure diventerà un peer client normale. Tutti i nodi figlio sono impostati per ereditare la modalità di rete come predefinito. La gestione degli eventi correlati alla rete (connessione, disconnessione, nuovi client) è eseguita tramite la connessione ai segnali della MultiplayerAPI.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

Restituisce una nuova istanza di MultiplayerAPI predefinita.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

Restituisce il nome della classe dell'implementazione MultiplayerAPI predefinita. Di solito è ``"SceneMultiplayer"`` quando :ref:`SceneMultiplayer<class_SceneMultiplayer>` è disponibile. Vedi :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

Restituisce gli ID peer di tutti i peer connessi del :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa **MultiplayerAPI**.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

Restituisce l'ID peer del mittente per l'RPC attualmente in esecuzione.

\ **Nota:** Questo metodo restituisce ``0`` quando viene chiamato all'esterno di un RPC. Pertanto, l'ID peer originale potrebbe essere perso quando l'esecuzione del codice viene ritardata (ad esempio con la parola chiave ``await`` di GDScript).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

Restituisce l'ID peer univoco del :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

Restituisce ``true`` se esiste un :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` impostato.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

Restituisce ``true`` se il :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` di questa MultiplayerAPI è valido e in modalità server (in ascolto per le connessioni).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

Notifica alla MultiplayerAPI della nuova configurazione ``configuration`` per l'oggetto ``object``. Questo metodo è utilizzato internamente da :ref:`SceneTree<class_SceneTree>` per configurare il percorso radice per questa MultiplayerAPI (passando ``null`` e un :ref:`NodePath<class_NodePath>` valido come ``configuration``). Questo metodo può essere ulteriormente utilizzato dalle implementazioni MultiplayerAPI per fornire funzionalità aggiuntive, fai riferimento all'implementazione specifica (ad esempio :ref:`SceneMultiplayer<class_SceneMultiplayer>`) per i dettagli su come lo utilizzano.

\ **Nota:** Questo metodo è rilevante soprattutto quando si estende o si sovrascrive il comportamento di MultiplayerAPI tramite :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

Notifica alla MultiplayerAPI di rimuovere la configurazione ``configuration`` per l'oggetto ``object``. Questo metodo è utilizzato internamente da :ref:`SceneTree<class_SceneTree>` per configurare il percorso radice per questa MultiplayerAPI (passando ``null`` e un :ref:`NodePath<class_NodePath>` vuoto come ``configuration``). Questo metodo può essere ulteriormente utilizzato dalle implementazioni MultiplayerAPI per fornire funzionalità aggiuntive, fai riferimento all'implementazione specifica (ad esempio :ref:`SceneMultiplayer<class_SceneMultiplayer>`) per i dettagli su come lo utilizzano.

\ **Nota:** Questo metodo è rilevante soprattutto quando si estende o si sovrascrive il comportamento di MultiplayerAPI tramite :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

Metodo utilizzato per interrogare la MultiplayerAPI. Devi preoccuparti solo di questo se imposti :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` su ``false``. Per impostazione predefinita, :ref:`SceneTree<class_SceneTree>` interrogherà la/le sua/e MultiplayerAPI per te.

\ **Nota:** Questo metodo risulta in chiamate di RPC, quindi verranno eseguite nello stesso contesto di questa funzione (ad esempio ``_process``, ``physics``, :ref:`Thread<class_Thread>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

Invia un RPC al ``peer`` di destinazione. Il metodo specificato da ``method`` verrà chiamato sull'oggetto remoto ``object`` con gli argomenti ``arguments``. L'RPC può anche essere chiamato localmente a seconda dell'implementazione e della configurazione RPC. Vedi :ref:`Node.rpc()<class_Node_method_rpc>` e :ref:`Node.rpc_config()<class_Node_method_rpc_config>`.

\ **Nota:** Preferisci usare :ref:`Node.rpc()<class_Node_method_rpc>`, :ref:`Node.rpc_id()<class_Node_method_rpc_id>` o ``my_method.rpc(peer, arg1, arg2, ...)`` (in GDScript), poiché sono più veloci. Questo metodo è utile soprattutto in combinazione con :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` quando si estendono o si sostituiscono le capacità multigiocatore.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

Imposta la classe dell'implementazione MultiplayerAPI predefinita. Questo metodo può essere utilizzato da moduli ed estensioni per configurare quale implementazione sarà utilizzata da :ref:`SceneTree<class_SceneTree>` all'avvio del motore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
