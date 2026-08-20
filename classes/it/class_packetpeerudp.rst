:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**Eredita:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Peer di pacchetto UDP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Peer di un pacchetto UDP. Può essere utilizzato per inviare e ricevere pacchetti UDP grezzi e :ref:`Variant<class_Variant>`.

\ **Esempio:** Invia un pacchetto:

::

    var peer = PacketPeerUDP.new()

    # Facoltativamente, è possibile selezionare la porta locale utilizzata per inviare il pacchetto.
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("ciao".to_utf8_buffer())

\ **Esempio:** Ascolta per i pacchetti:

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("Messaggio ricevuto: ", packet_string)

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_PacketPeerUDP_method_bind>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`close<class_PacketPeerUDP_method_close>`\ (\ )                                                                                                                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_PacketPeerUDP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                          |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_PacketPeerUDP_method_get_local_port>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_packet_ip<class_PacketPeerUDP_method_get_packet_ip>`\ (\ ) |const|                                                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_packet_port<class_PacketPeerUDP_method_get_packet_port>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_bound<class_PacketPeerUDP_method_is_bound>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_socket_connected<class_PacketPeerUDP_method_is_socket_connected>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`join_multicast_group<class_PacketPeerUDP_method_join_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`leave_multicast_group<class_PacketPeerUDP_method_leave_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_broadcast_enabled<class_PacketPeerUDP_method_set_broadcast_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`set_dest_address<class_PacketPeerUDP_method_set_dest_address>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait<class_PacketPeerUDP_method_wait>`\ (\ )                                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

Associa questo **PacketPeerUDP** alla porta ``port`` e all'indirizzo ``bind_address`` specificati con una dimensione del buffer ``recv_buf_size``, consentendogli di ricevere i pacchetti in arrivo.

Se ``bind_address`` è impostato su ``"*"`` (predefinito), il peer sarà associato a tutti gli indirizzi disponibili (sia IPv4 sia IPv6).

Se ``bind_address`` è impostato su ``"0.0.0.0"`` (per IPv4) o ``"::"`` (per IPv6), il peer sarà associato a tutti gli indirizzi disponibili che corrispondono a quel tipo di IP.

Se ``bind_address`` è impostato su un indirizzo valido (ad esempio ``"192.168.1.101"``, ``"::1"``, ecc.), il peer sarà associato solo all'interfaccia con quell'indirizzo (o fallirà se nessuna interfaccia esiste con l'indirizzo specificato).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

Chiude il socket UDP sottostante del **PacketPeerUDP**.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

La chiamata a questo metodo collega questo peer UDP all'indirizzo ``host`` e porta ``port`` specificati. UDP è in realtà senza connessione, quindi questa opzione significa solo che i pacchetti in arrivo da indirizzi diversi sono automaticamente scartati e che i pacchetti in uscita sono sempre inviati all'indirizzo connesso (le chiamate future a :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>` non sono consentite). Questo metodo non invia dati al peer remoto, per farlo, usa :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` o :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` come al solito. Vedi anche :ref:`UDPServer<class_UDPServer>`.

\ **Nota:** Connettersi al peer remoto non protegge da attacchi dannosi come IP spoofing, ecc. Considera di usare una tecnica di crittografia come TLS o DTLS se ritieni che la tua applicazione stia trasferendo informazioni sensibili.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

Restituisce la porta locale a cui questo peer è associato.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

Restituisce l'IP del peer remoto che ha inviato l'ultimo pacchetto (il quale è stato ricevuto con :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` o :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

Restituisce la porta del peer remoto che ha inviato l'ultimo pacchetto (il quale è stato ricevuto con :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` o :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

Restituisce se questo **PacketPeerUDP** è associato a un indirizzo e può ricevere pacchetti.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

Restituisce ``true`` se il socket UDP è aperto ed è stato connesso a un indirizzo remoto. Vedi :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

Si unisce al gruppo multicast specificato da ``multicast_address`` attraverso l'interfaccia identificata da ``interface_name``.

È possibile unirsi allo stesso gruppo multicast con più interfacce. Utilizza :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>` per sapere quali sono disponibili.

\ **Nota:** Alcuni dispositivi Android potrebbero richiedere l'autorizzazione ``CHANGE_WIFI_MULTICAST_STATE`` affinché il multicast funzioni.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

Rimuove l'interfaccia identificata da ``interface_name`` dal gruppo multicast specificato da ``multicast_address``.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

Abilita o disabilita l'invio di pacchetti in broadcast (ad esempio ``set_dest_address("255.255.255.255", 4343)``. Questa opzione è disabilitata per impostazione predefinita.

\ **Nota:** Alcuni dispositivi Android potrebbero richiedere l'autorizzazione ``CHANGE_WIFI_MULTICAST_STATE`` e che questa opzione sia abilitata anche per ricevere pacchetti in broadcast.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

Imposta l'indirizzo e la porta di destinazione per l'invio di pacchetti e variabili. Un nome host sarà risolto tramite DNS, se necessario.

\ **Nota:** :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>` deve essere abilitato prima di inviare pacchetti a un indirizzo broadcast (ad esempio ``255.255.255.255``).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

Attende che un pacchetto arrivi all'indirizzo associato. Vedi :ref:`bind()<class_PacketPeerUDP_method_bind>`.

\ **Nota:** Non è possibile interrompere :ref:`wait()<class_PacketPeerUDP_method_wait>` una volta che è stato chiamato. Ciò può essere aggirato permettendo all'altra parte di inviare uno specifico pacchetto "letale" come questo:


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # Server
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # Client
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // Server
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // Client
    while (socket.Wait() == OK)
    {
        string data = socket.GetPacket().GetStringFromASCII();
        if (data == "Time to stop")
        {
            return;
        }
    }



.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
