:github_url: hide

.. _class_UPNPDevice:

UPNPDevice
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Dispositivo Universal Plug and Play (UPnP).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Dispositivo Universal Plug and Play (UPnP). Vedi :ref:`UPNP<class_UPNP>` per le funzioni di utilità e rilevamento UPnP. Fornisce accesso di basso livello ai comandi di controllo UPNP. Consente di gestire le mappature di porte (port forwarding) e di interrogare le informazioni di rete del dispositivo (come indirizzo IP locale ed esterno e stato). Si noti che i metodi su questa classe sono sincroni e bloccano il thread chiamante.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`description_url<class_UPNPDevice_property_description_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_control_url<class_UPNPDevice_property_igd_control_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_our_addr<class_UPNPDevice_property_igd_our_addr>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_service_type<class_UPNPDevice_property_igd_service_type>` | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` | :ref:`igd_status<class_UPNPDevice_property_igd_status>`             | ``9``  |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`service_type<class_UPNPDevice_property_service_type>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`add_port_mapping<class_UPNPDevice_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`delete_port_mapping<class_UPNPDevice_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_gateway<class_UPNPDevice_method_is_valid_gateway>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`query_external_address<class_UPNPDevice_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_UPNPDevice_IGDStatus:

.. rst-class:: classref-enumeration

enum **IGDStatus**: :ref:`🔗<enum_UPNPDevice_IGDStatus>`

.. _class_UPNPDevice_constant_IGD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_OK** = ``0``

OK.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_ERROR** = ``1``

Errore HTTP.

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_EMPTY:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_EMPTY** = ``2``

Risposta HTTP vuota.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_URLS:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_URLS** = ``3``

**Deprecato:** This value is no longer used.

la risposta restituita non conteneva un URL.

.. _class_UPNPDevice_constant_IGD_STATUS_NO_IGD:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_IGD** = ``4``

Non è un IGD valido.

.. _class_UPNPDevice_constant_IGD_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_DISCONNECTED** = ``5``

Disconnesso.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_DEVICE:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_DEVICE** = ``6``

Dispositivo sconosciuto.

.. _class_UPNPDevice_constant_IGD_STATUS_INVALID_CONTROL:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_INVALID_CONTROL** = ``7``

Controllo non valido.

.. _class_UPNPDevice_constant_IGD_STATUS_MALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_MALLOC_ERROR** = ``8``

**Deprecato:** This value is no longer used.

Errore di allocazione di memoria.

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_ERROR** = ``9``

Errore sconosciuto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_UPNPDevice_property_description_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **description_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_description_url>`

.. rst-class:: classref-property-setget

- |void| **set_description_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description_url**\ (\ )

URL della descrizione del dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_control_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_control_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_control_url>`

.. rst-class:: classref-property-setget

- |void| **set_igd_control_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_control_url**\ (\ )

URL di controllo IDG.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_our_addr:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_our_addr** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_our_addr>`

.. rst-class:: classref-property-setget

- |void| **set_igd_our_addr**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_our_addr**\ (\ )

Indirizzo della macchina locale nella rete che la connette a questo **UPNPDevice**.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_igd_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_service_type**\ (\ )

Tipo di servizio IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_status:

.. rst-class:: classref-property

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **igd_status** = ``9`` :ref:`🔗<class_UPNPDevice_property_igd_status>`

.. rst-class:: classref-property-setget

- |void| **set_igd_status**\ (\ value\: :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>`\ )
- :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **get_igd_status**\ (\ )

Stato del IGD.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_service_type**\ (\ )

Tipo di servizio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UPNPDevice_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNPDevice_method_add_port_mapping>`

Aggiunge una mappatura di porte per inoltrare la porta esterna specificata su questo **UPNPDevice** per il protocollo specificato alla macchina locale. Vedi :ref:`UPNP.add_port_mapping()<class_UPNP_method_add_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNPDevice_method_delete_port_mapping>`

Elimina la mappatura di porte identificata dalla combinazione di porta e protocollo specificata su questo dispositivo. Vedi :ref:`UPNP.delete_port_mapping()<class_UPNP_method_delete_port_mapping>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_is_valid_gateway:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_gateway**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_is_valid_gateway>`

Restituisce ``true`` se questo è un IGD (InternetGatewayDevice) valido che potenzialmente supporta il port forwarding.

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_query_external_address>`

Restituisce l'indirizzo IP esterno di questo **UPNPDevice** o una stringa vuota.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
