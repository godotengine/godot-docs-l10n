:github_url: hide

.. _class_ENetMultiplayerPeer:

ENetMultiplayerPeer
===================

**Eredita:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un'implementazione MultiplayerPeer che utilizza la libreria `ENet <http://enet.bespin.org/index.html>`__.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'implementazione di MultiplayerPeer che dovrebbe essere passata a :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` dopo essere stata inizializzata come client, server o mesh. Gli eventi possono quindi essere gestiti connettendosi ai segnali :ref:`MultiplayerAPI<class_MultiplayerAPI>`. Vedi :ref:`ENetConnection<class_ENetConnection>` per maggiori informazioni sul wrapper della libreria ENet.

\ **Nota:** ENet utilizza solo UDP, non TCP. Quando si inoltra la porta del server per rendere il server accessibile su Internet pubblico, è necessario inoltrare la porta del server solo in UDP. È possibile utilizzare la classe :ref:`UPNP<class_UPNP>` per tentare di inoltrare automaticamente la porta del server all'avvio del server.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`API Multigiocatore di alto livello <../tutorials/networking/high_level_multiplayer>`

- `Documentazione dell'API sul sito web di ENet <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------+
   | :ref:`ENetConnection<class_ENetConnection>` | :ref:`host<class_ENetMultiplayerPeer_property_host>` |
   +---------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`add_mesh_peer<class_ENetMultiplayerPeer_method_add_mesh_peer>`\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ )                                                                                                                                                         |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_client<class_ENetMultiplayerPeer_method_create_client>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_mesh<class_ENetMultiplayerPeer_method_create_mesh>`\ (\ unique_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                               |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_server<class_ENetMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                       |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>` | :ref:`get_peer<class_ENetMultiplayerPeer_method_get_peer>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                    |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bind_ip<class_ENetMultiplayerPeer_method_set_bind_ip>`\ (\ ip\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ENetMultiplayerPeer_property_host:

.. rst-class:: classref-property

:ref:`ENetConnection<class_ENetConnection>` **host** :ref:`🔗<class_ENetMultiplayerPeer_property_host>`

.. rst-class:: classref-property-setget

- :ref:`ENetConnection<class_ENetConnection>` **get_host**\ (\ )

L':ref:`ENetConnection<class_ENetConnection>` sottostante creato dopo :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>` e :ref:`create_server()<class_ENetMultiplayerPeer_method_create_server>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ENetMultiplayerPeer_method_add_mesh_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_mesh_peer**\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_add_mesh_peer>`

Aggiunge un nuovo peer remoto con il ``peer_id`` connesso all'``host``.

\ **Nota:** L'``host`` deve avere esattamente un peer nello stato :ref:`ENetPacketPeer.STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>`.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_client>`

Crea un client che si connette a un server all'indirizzo ``address`` usando la porta ``port``. L'indirizzo specificato deve essere un nome di dominio completamente qualificato (ad esempio ``"www.example.com"``) o un indirizzo IP in formato IPv4 o IPv6 (ad esempio ``"192.168.1.1"``). ``port`` è la porta su cui il server è in ascolto. Il parametro ``channel_count`` può essere usato per specificare il numero di canali ENet assegnati per la connessione. I parametri ``in_bandwidth`` e ``out_bandwidth`` possono essere usati per limitare la larghezza di banda in entrata e in uscita al numero specificato di byte al secondo. Il valore predefinito 0 indica una larghezza di banda illimitata. Nota che ENet eliminerà strategicamente i pacchetti su lati specifici di una connessione tra peer per garantire che la larghezza di banda del peer non sia superata. I parametri di larghezza di banda definiscono anche la dimensione della finestra di una connessione che limita la quantità di pacchetti affidabili che possono essere in transito in un determinato momento. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se è stato creato un client, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` se questa istanza di ENetMultiplayerPeer ha già una connessione aperta (nel qual caso è necessario chiamare prima :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`), o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` se il client non può essere creato. Se ``local_port`` è specificato, il client ascolterà anche la porta specificata, il che è utile per alcune tecniche di attraversamento NAT.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ unique_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_mesh>`

Inizializza questo :ref:`MultiplayerPeer<class_MultiplayerPeer>` in modalità mesh. ``unique_id`` verrà utilizzato come ID univoco della rete peer locale una volta assegnato come :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`. Nella configurazione mesh sarà necessario impostare manualmente ogni nuovo peer utilizzando :ref:`ENetConnection<class_ENetConnection>` prima di chiamare :ref:`add_mesh_peer()<class_ENetMultiplayerPeer_method_add_mesh_peer>`. Sebbene questa tecnica sia più avanzata, consente maggiore controllo sul processo di connessione (ad esempio quando si ha a che fare con NAT punch-through) e una migliore distribuzione del carico di rete (che altrimenti sarebbe più faticoso per il server).

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_server>`

Crea un server che ascolta le connessioni tramite la porta ``port``. La porta deve essere una porta disponibile e inutilizzata tra 0 e 65535. Nota che le porte inferiori a 1024 sono privilegiate e potrebbero richiedere autorizzazioni elevate a seconda della piattaforma. Per cambiare l'interfaccia su cui ascolta il server, usa :ref:`set_bind_ip()<class_ENetMultiplayerPeer_method_set_bind_ip>`. L'IP predefinito è il carattere jolly ``"*"``, che ascolta su tutte le interfacce disponibili. ``max_clients`` è il numero massimo di client consentiti contemporaneamente, può essere usato qualsiasi numero fino a 4095, anche se il numero raggiungibile di client simultanei potrebbe essere molto inferiore e dipendere dall'applicazione. Per ulteriori dettagli sui parametri della larghezza di banda, vedi :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>`. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se è stato creato un server, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` se questa istanza di ENetMultiplayerPeer ha già una connessione aperta (nel qual caso è necessario chiamare prima :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`) o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` se non è stato possibile creare il server.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **get_peer**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ENetMultiplayerPeer_method_get_peer>`

Restituisce il :ref:`ENetPacketPeer<class_ENetPacketPeer>` associato all'``id`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_set_bind_ip:

.. rst-class:: classref-method

|void| **set_bind_ip**\ (\ ip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_set_bind_ip>`

L'indirizzo IP utilizzato durante la creazione di un server. Questo è impostato sul carattere jolly ``"*"`` per impostazione predefinita, che si collega a tutte le interfacce disponibili. L'IP specificato deve essere nel formato IPv4 o IPv6, ad esempio: ``"192.168.1.1"``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
