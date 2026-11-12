:github_url: hide

.. _class_StreamPeerTLS:

StreamPeerTLS
=============

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un pair de flux qui gère des connexions TLS.

.. rst-class:: classref-introduction-group

Description
-----------

A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Certificats TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`accept_stream<class_StreamPeerTLS_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_stream<class_StreamPeerTLS_method_connect_to_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_stream<class_StreamPeerTLS_method_disconnect_from_stream>`\ (\ )                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTLS_Status>` | :ref:`get_status<class_StreamPeerTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeer<class_StreamPeer>`      | :ref:`get_stream<class_StreamPeerTLS_method_get_stream>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`poll<class_StreamPeerTLS_method_poll>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_StreamPeerTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTLS_Status>`

.. _class_StreamPeerTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Un statut représentant un **StreamPeerTLS** qui est déconnecté.

.. _class_StreamPeerTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Un status représentant un **StreamPeerTLS** durant la poignée de main.

.. _class_StreamPeerTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_CONNECTED** = ``2``

A status representing a **StreamPeerTLS** that is connected to a host.

.. _class_StreamPeerTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR** = ``3``

Un statut représentant un **StreamPeerTLS** dans un état d'erreur.

.. _class_StreamPeerTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

An error status that shows a mismatch in the TLS certificate domain presented by the host and the domain requested for validation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerTLS_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_StreamPeerTLS_method_accept_stream>`

Accepte une connexion de pair en tant que serveur en utilisant ``server_options``. Voir :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_connect_to_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_StreamPeerTLS_method_connect_to_stream>`

Connects to a peer using an underlying :ref:`StreamPeer<class_StreamPeer>` ``stream`` and verifying the remote certificate is correctly signed for the given ``common_name``. You can pass the optional ``client_options`` parameter to customize the trusted certification authorities, or disable the common name verification. See :ref:`TLSOptions.client()<class_TLSOptions_method_client>` and :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_disconnect_from_stream:

.. rst-class:: classref-method

|void| **disconnect_from_stream**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_disconnect_from_stream>`

Se déconnecte de l'hôte.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_status>`

Renvoie le statut de la connexion.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_stream:

.. rst-class:: classref-method

:ref:`StreamPeer<class_StreamPeer>` **get_stream**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_stream>`

Returns the underlying :ref:`StreamPeer<class_StreamPeer>` connection, used in :ref:`accept_stream()<class_StreamPeerTLS_method_accept_stream>` or :ref:`connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_poll>`

Sonde la connexion pour vérifier les octets entrants. Appelez ceci avant :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` pour que ça puisse fonctionner correctement.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
