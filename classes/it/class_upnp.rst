:github_url: hide

.. _class_UPNP:

UPNP
====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Funzioni di Universal Plug and Play (UPnP) per il rilevamento dei dispositivi di rete, l'interrogazione e il port forwarding.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe può essere utilizzata per individuare :ref:`UPNPDevice<class_UPNPDevice>` compatibili sulla rete locale ed eseguire comandi su di essi, come per gestire la mappatura delle porte (per inoltrare le porte/NAT traversal) e per richiedere l'indirizzo IP della rete locale e remota. Nota che i metodi su questa classe sono sincroni e bloccano il thread che li chiama.

Per inoltrare una porta specifica (qui ``7777``, nota che sia :ref:`discover()<class_UPNP_method_discover>` sia :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` possono restituire errori che dovrebbero essere verificati):

::

    var upnp = UPNP.new()
    upnp.discover()
    upnp.add_port_mapping(7777)

Per chiudere una porta specifica (ad esempio dopo aver finito di usarla):

::

    upnp.delete_port_mapping(port)

\ **Nota:** L'individuazione UPnP blocca il thread attuale. Per eseguire l'individuazione senza bloccare il thread principale, utilizza un :ref:`Thread<class_Thread>` in questo modo:

::

    # Emesso quando la configurazione della mappatura delle porte UPnP viene completata (a prescindere dal successo o dal fallimento).
    signal upnp_completed(error)

    # Sostituiscilo con il numero di porta del tuo server, tra 1024 e 65535.
    const SERVER_PORT = 3928
    var thread = null

    func _upnp_setup(server_port):
        #Le richieste UPNP richiedono un po' di tempo.
        var upnp = UPNP.new()
        var err = upnp.discover()

        if err != UPNP.UPNP_RESULT_SUCCESS:
            push_error(str(err))
            upnp_completed.emit(OK)
            return

        if upnp.get_gateway() and upnp.get_gateway().is_valid_gateway():
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "UDP")
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "TCP")
            upnp_completed.emit(UPNP.UPNP_RESULT_SUCCESS)

    func _ready():
        thread = Thread.new()
        thread.start(_upnp_setup.bind(SERVER_PORT))

    func _exit_tree():
        # Attendi la fine del thread qui, per gestire l'uscita dal gioco mentre il thread è in esecuzione.
        thread.wait_to_finish()

\ **Terminologia:** Nel contesto della rete UPnP, "gateway" (o "dispositivo gateway Internet", abbreviato IGD) si riferisce ai dispositivi di rete che consentono ai computer nella rete locale di accedere a Internet ("rete WAN"). Questi gateway sono spesso chiamati anche "router".

\ **Insidie:**\ 

- Come spiegato in precedenza, queste chiamate sono bloccanti e non dovrebbero essere eseguite sul thread principale, soprattutto perché possono bloccarsi per più secondi alla volta. Usa altri thread!

- La rete è fisica e disordinata. I pacchetti si perdono durante il transito o sono filtrati, gli indirizzi, le porte libere e le mappature assegnate cambiano e i dispositivi possono abbandonare o unirsi alla rete in qualsiasi momento. Tieni questo presente, sii diligente quando verifichi e gestisci gli errori e gestiscili con grazia se puoi: aggiungi un'interfaccia utente di errore chiara, timeout e gestione dei nuovi tentativi.

- Le mappature delle porte possono cambiare (ed essere rimosse) in qualsiasi momento e l'indirizzo IP remoto/esterno del gateway può cambiare allo stesso modo. Dovresti considerare di ri-interrogare l'IP esterno e provare ad aggiornare periodicamente la mappatura delle porte (ad esempio, ogni 5 minuti e in caso di guasti di rete).

- Non tutti i dispositivi supportano UPnP e alcuni utenti disabilitano il supporto UPnP. Devi gestire questo aspetto (ad esempio documentando e richiedendo all'utente di inoltrare manualmente le porte o aggiungendo metodi alternativi di attraversamento NAT, come un server di relay/mirror o NAT hole punching, STUN/TURN, ecc.).

- Considera cosa succede in caso di conflitti di mappatura. Forse più utenti sulla stessa rete vorrebbero giocare al tuo gioco allo stesso tempo, o forse un'altra applicazione utilizza la stessa porta. Rendi la porta configurabile e scegli automaticamente una porta in modo ottimale (riprovando con una porta diversa in caso di guasto).

\ **Ulteriori approfondimenti:** Se vuoi saperne di più su UPnP (e in particolare su Internet Gateway Device (IGD) e Port Control Protocol (PCP)), `Wikipedia <https://it.wikipedia.org/wiki/Universal_Plug_and_Play>`__ è un buon punto di partenza, le specifiche possono essere trovate su `Open Connectivity Foundation <https://openconnectivity.org/developer/specifications/upnp-resources/upnp/>`__ e l'implementazione di Godot è basata sul `client MiniUPnP <https://github.com/miniupnp/miniupnp>`__.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`discover_ipv6<class_UPNP_property_discover_ipv6>`                 | ``false`` |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`discover_local_port<class_UPNP_property_discover_local_port>`     | ``0``     |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`discover_multicast_if<class_UPNP_property_discover_multicast_if>` | ``""``    |
   +-----------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_device<class_UPNP_method_add_device>`\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`add_port_mapping<class_UPNP_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_devices<class_UPNP_method_clear_devices>`\ (\ )                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`delete_port_mapping<class_UPNP_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`discover<class_UPNP_method_discover>`\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ )                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_device<class_UPNP_method_get_device>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_device_count<class_UPNP_method_get_device_count>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_gateway<class_UPNP_method_get_gateway>`\ (\ ) |const|                                                                                                                                                                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`query_external_address<class_UPNP_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`remove_device<class_UPNP_method_remove_device>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_device<class_UPNP_method_set_device>`\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_UPNP_UPNPResult:

.. rst-class:: classref-enumeration

enum **UPNPResult**: :ref:`🔗<enum_UPNP_UPNPResult>`

.. _class_UPNP_constant_UPNP_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SUCCESS** = ``0``

Il comando o il rilevamento di UPNP è andato a buon fine.

.. _class_UPNP_constant_UPNP_RESULT_NOT_AUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NOT_AUTHORIZED** = ``1``

Non autorizzato a utilizzare il comando su :ref:`UPNPDevice<class_UPNPDevice>`. Può essere restituito quando l'utente ha disabilitato UPNP sul proprio router.

.. _class_UPNP_constant_UPNP_RESULT_PORT_MAPPING_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_PORT_MAPPING_NOT_FOUND** = ``2``

Non è stata trovata alcuna mappatura di porte per la porta specificata, la combinazione di protocolli sul :ref:`UPNPDevice<class_UPNPDevice>` specificato.

.. _class_UPNP_constant_UPNP_RESULT_INCONSISTENT_PARAMETERS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INCONSISTENT_PARAMETERS** = ``3``

Parametri inconsistenti.

.. _class_UPNP_constant_UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY** = ``4``

Nessuna voce di questo tipo nell'array. Può essere restituito se una determinata combinazione di porta e protocollo non viene trovata su un :ref:`UPNPDevice<class_UPNPDevice>`.

.. _class_UPNP_constant_UPNP_RESULT_ACTION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ACTION_FAILED** = ``5``

L'azione non è riuscita.

.. _class_UPNP_constant_UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED** = ``6``

L':ref:`UPNPDevice<class_UPNPDevice>` non consente valori jolly per l'indirizzo IP sorgente.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED** = ``7``

L':ref:`UPNPDevice<class_UPNPDevice>` non consente valori jolly per la porta esterna.

.. _class_UPNP_constant_UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED** = ``8``

L':ref:`UPNPDevice<class_UPNPDevice>` non consente valori jolly per la porta interna.

.. _class_UPNP_constant_UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD** = ``9``

Il valore dell'host remoto deve essere un carattere jolly.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD** = ``10``

Il valore della porta esterna deve essere un carattere jolly.

.. _class_UPNP_constant_UPNP_RESULT_NO_PORT_MAPS_AVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_PORT_MAPS_AVAILABLE** = ``11``

Non sono disponibili mappe di porte. Potrebbe anche essere restituito se la funzionalità di mappatura di porte non è disponibile.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM** = ``12``

In conflitto con un altro meccanismo. Può essere restituito al posto di :ref:`UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING<class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING>` se una mappatura di porte è in conflitto con una esistente.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING** = ``13``

In conflitto con una mappatura di porte esistente.

.. _class_UPNP_constant_UPNP_RESULT_SAME_PORT_VALUES_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SAME_PORT_VALUES_REQUIRED** = ``14``

I valori delle porte esterne e interne devono essere gli stessi.

.. _class_UPNP_constant_UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED** = ``15``

Sono supportati solo i lease permanenti. Non usare il parametro ``duration`` quando si aggiungono le mappature delle porte.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_GATEWAY** = ``16``

Gateway non valida.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PORT** = ``17``

Porta non valida.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PROTOCOL:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PROTOCOL** = ``18``

Protocollo non valido.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_DURATION:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_DURATION** = ``19``

Durata non valida.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_ARGS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_ARGS** = ``20``

Argomenti non validi.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_RESPONSE** = ``21``

Risposta non valida.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PARAM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PARAM** = ``22``

Parametro non valido.

.. _class_UPNP_constant_UPNP_RESULT_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_HTTP_ERROR** = ``23``

Errore HTTP.

.. _class_UPNP_constant_UPNP_RESULT_SOCKET_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SOCKET_ERROR** = ``24``

Errore di socket.

.. _class_UPNP_constant_UPNP_RESULT_MEM_ALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_MEM_ALLOC_ERROR** = ``25``

Errore di allocazione di memoria.

.. _class_UPNP_constant_UPNP_RESULT_NO_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_GATEWAY** = ``26``

Nessun gateway disponibile. Potresti dover chiamare prima :ref:`discover()<class_UPNP_method_discover>` oppure il rilevamento non ha rilevato alcun IGD (InternetGatewayDevice) valido.

.. _class_UPNP_constant_UPNP_RESULT_NO_DEVICES:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_DEVICES** = ``27``

Nessun dispositivo disponibile. Potresti dover chiamare prima :ref:`discover()<class_UPNP_method_discover>` oppure il rilevamento non ha rilevato alcun :ref:`UPNPDevice<class_UPNPDevice>` valido.

.. _class_UPNP_constant_UPNP_RESULT_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_UNKNOWN_ERROR** = ``28``

Errore sconosciuto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_UPNP_property_discover_ipv6:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discover_ipv6** = ``false`` :ref:`🔗<class_UPNP_property_discover_ipv6>`

.. rst-class:: classref-property-setget

- |void| **set_discover_ipv6**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_discover_ipv6**\ (\ )

Se ``true``, l'IPv6 è utilizzato per il rilevamento dei :ref:`UPNPDevice<class_UPNPDevice>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_local_port:

.. rst-class:: classref-property

:ref:`int<class_int>` **discover_local_port** = ``0`` :ref:`🔗<class_UPNP_property_discover_local_port>`

.. rst-class:: classref-property-setget

- |void| **set_discover_local_port**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_discover_local_port**\ (\ )

Se ``0``, la porta locale da usare per la scoperta è scelta automaticamente dal sistema. Se ``1``, la scoperta sarà fatta dalla porta sorgente 1900 (la stessa della porta di destinazione). Altrimenti, il valore sarà usato come porta.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_multicast_if:

.. rst-class:: classref-property

:ref:`String<class_String>` **discover_multicast_if** = ``""`` :ref:`🔗<class_UPNP_property_discover_multicast_if>`

.. rst-class:: classref-property-setget

- |void| **set_discover_multicast_if**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_discover_multicast_if**\ (\ )

Interfaccia multicast da usare per la rilevazione. Utilizza l'interfaccia multicast predefinita se vuota.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UPNP_method_add_device:

.. rst-class:: classref-method

|void| **add_device**\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_add_device>`

Aggiunge il dispositivo :ref:`UPNPDevice<class_UPNPDevice>` specificato alla lista dei dispositivi rilevati.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNP_method_add_port_mapping>`

Aggiunge una mappatura per inoltrare la ``port`` esterna (tra 1 e 65535, sebbene si consiglia di utilizzare la porta 1024 o superiore) sul gateway predefinito (vedi :ref:`get_gateway()<class_UPNP_method_get_gateway>`) alla porta ``port_internal`` sulla macchina locale per il protocollo ``proto`` (sia ``"TCP"`` sia ``"UDP"``, con UDP come predefinito). Se una mappatura delle porte per la combinazione di porta e protocollo specificata esiste già su quel dispositivo gateway, questo metodo tenta di sovrascriverla. Se ciò non è desiderato, è possibile recuperare manualmente il gateway con :ref:`get_gateway()<class_UPNP_method_get_gateway>` e chiamare :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` su di esso, se presente. Si noti che l'inoltro di una porta nota (inferiore a 1024) con UPnP potrebbe non riuscire a seconda del dispositivo.

A seconda del dispositivo gateway, se esiste già una mappatura per quella porta, verrà aggiornata o rifiuterà questo comando a causa di tale conflitto, soprattutto se la mappatura esistente per quella porta non è stata creata tramite UPnP o punta a un indirizzo di rete (o dispositivo) diverso da questo.

Se ``port_internal`` è ``0`` (il valore predefinito), lo stesso numero di porta viene utilizzato sia per la porta esterna sia per la porta interna (il valore di ``port``).

La descrizione (``desc``) viene mostrata in alcune interfacce utente di gestione dei router e può essere utilizzata per indicare quale applicazione ha aggiunto la mappatura.

La durata del lease della mappatura può essere limitata specificando ``duration`` in secondi. Il valore predefinito di ``0`` significa nessuna durata, ovvero un lease permanente e in particolare alcuni dispositivi supportano solo questi lease permanenti. Si noti che, permanente o meno, questa è solo una richiesta e il gateway può comunque decidere in qualsiasi momento di rimuovere la mappatura (che di solito avviene al riavvio del gateway, quando cambia il suo indirizzo IP esterno o su alcuni modelli quando rileva che una mappatura di porta è diventata inattiva, ovvero non ha avuto traffico per diversi minuti). Se non è ``0`` (permanente), l'intervallo consentito in base alle specifiche è compreso tra ``120`` (2 minuti) e ``86400`` secondi (24 ore).

Vedi :ref:`UPNPResult<enum_UPNP_UPNPResult>` per i valori restituiti possibili.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_clear_devices:

.. rst-class:: classref-method

|void| **clear_devices**\ (\ ) :ref:`🔗<class_UPNP_method_clear_devices>`

Svuota la lista dei dispositivi rilevati.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNP_method_delete_port_mapping>`

Elimina la mappatura di porta per la combinazione di porta e protocollo specificata sul gateway predefinito (vedi :ref:`get_gateway()<class_UPNP_method_get_gateway>`), se ne esiste uno. ``port`` deve essere una porta valida compresa tra 1 e 65535, ``proto`` può essere ``"TCP"`` o ``"UDP"``. Potrebbe essere rifiutato per le mappature che puntano a indirizzi diversi da questo, per porte note (inferiori a 1024) o per le mappature non aggiunte tramite UPnP. Vedi :ref:`UPNPResult<enum_UPNP_UPNPResult>` per i valori restituiti possibili.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_discover:

.. rst-class:: classref-method

:ref:`int<class_int>` **discover**\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ ) :ref:`🔗<class_UPNP_method_discover>`

Individua i :ref:`UPNPDevice<class_UPNPDevice>` locali. Cancella la lista dei dispositivi individuati in precedenza.

Filtra per dispositivi di tipo IGD (InternetGatewayDevice) come predefinito, poiché gestiscono l'inoltro delle porte. ``timeout`` è il tempo di attesa delle risposte in millisecondi. ``ttl`` è il tempo di vita ("time-to-live"); specificalo solo se sai cosa stai facendo.

Vedi :ref:`UPNPResult<enum_UPNP_UPNPResult>` per i valori possibili restituiti.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_device**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_UPNP_method_get_device>`

Restituisce l':ref:`UPNPDevice<class_UPNPDevice>` all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_device_count**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_device_count>`

Restituisce il numero di :ref:`UPNPDevice<class_UPNPDevice>` rilevati.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_gateway:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_gateway**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_gateway>`

Restituisce il gateway predefinito. Questo è il primo :ref:`UPNPDevice<class_UPNPDevice>` rilevato che è anche un IGD (InternetGatewayDevice) valido.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNP_method_query_external_address>`

Restituisce l'indirizzo :ref:`IP<class_IP>` esterno del gateway predefinito (vedi :ref:`get_gateway()<class_UPNP_method_get_gateway>`) come sotto forma di stringa. Restituisce una stringa vuota in caso di errore.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_remove_device:

.. rst-class:: classref-method

|void| **remove_device**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UPNP_method_remove_device>`

Rimuove il dispositivo all'indice ``index`` dalla lista dei dispositivi rilevati.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_set_device:

.. rst-class:: classref-method

|void| **set_device**\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_set_device>`

Imposta il dispositivo all'indice ``index`` dalla lista dei dispositivi rilevati a ``device``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
