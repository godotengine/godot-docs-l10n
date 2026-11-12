:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

L'interface de connexion par pair via WebRTC.

.. rst-class:: classref-introduction-group

Description
-----------

A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain, and monitor the connection.

Setting up a WebRTC connection between two peers may not seem a trivial task, but it can be broken down into 3 main steps:

- The peer that wants to initiate the connection (\ ``A`` from now on) creates an offer and sends it to the other peer (\ ``B`` from now on).

- ``B`` receives the offer, generates an answer, and sends it to ``A``.

- ``A`` and ``B`` then generate and exchange ICE candidates with each other.

After these steps, the connection should be established. Refer to the linked tutorials for details.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Documentation WebRTC <../tutorials/networking/webrtc>`

- :doc:`API multijoueur de haut niveau <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Signaux
--------------

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

Emitted when a new in-band channel is received, i.e. when the channel was created with ``negotiated: false`` (default).

The object will be an instance of :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. You must keep a reference of it or it will be closed automatically. See :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

Emitted when a new ICE candidate has been created. The three parameters are meant to be passed to the remote peer over the signaling server.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

Emitted after a successful call to :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` or :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` (when it generates an answer). The parameters are meant to be passed to :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` on this object, and sent to the remote peer over the signaling server.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

La connexion est nouvelle, les canaux de données et une offre peut être créée dans cet état.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

Le pair se connecte, ICE est en cours, aucun des transports n’a échoué.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

Le pair est connecté, tous les transports ICE sont connectés.

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

Au moins un transport ICE est déconnecté.

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

Un ou plusieurs des transports ICE ont échoué.

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

La connexion par les pairs est fermée (après avoir appelé :ref:`close()<class_WebRTCPeerConnection_method_close>` par exemple).

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

La connexion de pair a tout juste été créée et n'a pour le moment fait aucun réseau.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

L'agent ICE est en train de récolter des candidats pour la connexion.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

The ICE agent has finished gathering candidates. If something happens that requires collecting new candidates, such as a new interface being added or the addition of a new ICE server, the state will revert to gathering to gather those candidates.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

There is no ongoing exchange of offer and answer underway. This may mean that the **WebRTCPeerConnection** is new (:ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`) or that negotiation is complete and a connection has been established (:ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`).

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

The local peer has called :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`, passing in SDP representing an offer (usually created by calling :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>`), and the offer has been applied successfully.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

The remote peer has created an offer and used the signaling server to deliver it to the local peer, which has set the offer as the remote description by calling :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

The offer sent by the remote peer has been applied and an answer has been created and applied by calling :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`. This provisional answer describes the supported media formats and so forth, but may not have a complete set of ICE candidates included. Further candidates will be delivered separately later.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

A provisional answer has been received and successfully applied in response to an offer previously sent and established by calling :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

La **WebRTCPeerConnection** a été fermée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

Ajoute un candidat de glace généré par un pair distant (et reçu sur le serveur de signalisation). Voir :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

Ferme la connexion de ce pair et tous les canaux de données lui étant associés.

\ **Note :** Vous ne pouvez pas réutiliser cet objet pour une nouvelle connexion sans appeler :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

Returns a new :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` (or ``null`` on failure) with given ``label`` and optionally configured via the ``options`` dictionary. This method can only be called when the connection is in state :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

There are two ways to create a working data channel: either call :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` on only one of the peer and listen to :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>` on the other, or call :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` on both peers, with the same values, and the ``"negotiated"`` option set to ``true``.

Valid ``options`` are:

::

    {
        "negotiated": true, # When set to true (default off), means the channel is negotiated out of band. "id" must be set too. "data_channel_received" will not be called.
        "id": 1, # When "negotiated" is true this value must also be set to the same value on both peer.

        # Only one of maxRetransmits and maxPacketLifeTime can be specified, not both. They make the channel unreliable (but also better at real time).
        "maxRetransmits": 1, # Specify the maximum number of attempt the peer will make to retransmits packets if they are not acknowledged.
        "maxPacketLifeTime": 100, # Specify the maximum amount of time before giving up retransmitions of unacknowledged packets (in milliseconds).
        "ordered": true, # When in unreliable mode (i.e. either "maxRetransmits" or "maxPacketLifeTime" is set), "ordered" (true by default) specify if packet ordering is to be enforced.

        "protocol": "my-custom-protocol", # A custom sub-protocol string for this channel.
    }

\ **Note:** You must keep a reference to channels created this way, or it will be closed.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

Crée une nouvelle offre SDP pour démarrer une connexion WebRTC avec un pair distant. Au moins un :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` doit avoir été créé avant d’appeler cette méthode.

Si cette fonction renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` sera appelé lorsque la session est prête à être envoyée.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

Returns the connection state.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

Returns the ICE :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` of the connection. This lets you detect, for example, when collection of ICE candidates has finished.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

Returns the signaling state on the local end of the connection while connecting or reconnecting to another peer.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

Ré-initialise la connexion de ce pair, fermant n'importe quelle précédente connexion active, et retourne à l'état :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`. Un dictionnaire d'options de ``configuration`` peut être passé pour configurer la connexion du pair.

Les options de ``configuration`` valides sont :

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # Un ou plusieurs serveurs STUN.
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # Un ou plusieurs serveurs TURN.
                "username": "un_nom_utilisateur", # Le nom d'utilisateur facultatif pour le serveur TURN.
                "credential": "un_mot_de_passe", # Le mot de passe facultatif pour le serveur TURN.
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

Appelez cette méthode fréquemment (par ex. dans :ref:`Node._process()<class_Node_private_method__process>` ou :ref:`Node._physics_process()<class_Node_private_method__physics_process>`) pour recevoir correctement les signaux.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

Sets the ``extension_class`` as the default :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>` returned when creating a new **WebRTCPeerConnection**.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

Sets the SDP description of the local peer. This should be called in response to :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>`.

After calling this function the peer will start emitting :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>` (unless an :ref:`Error<enum_@GlobalScope_Error>` different from :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` is returned).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

Sets the SDP description of the remote peer. This should be called with the values generated by a remote peer and received over the signaling server.

If ``type`` is ``"offer"`` the peer will emit :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` with the appropriate answer.

If ``type`` is ``"answer"`` the peer will start emitting :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
