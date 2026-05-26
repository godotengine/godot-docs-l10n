:github_url: hide

.. _class_WebRTCPeerConnectionExtension:

WebRTCPeerConnectionExtension
=============================

**Hérite de :** :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_add_ice_candidate<class_WebRTCPeerConnectionExtension_private_method__add_ice_candidate>`\ (\ sdp_mid_name\: :ref:`String<class_String>`, sdp_mline_index\: :ref:`int<class_int>`, sdp_name\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_close<class_WebRTCPeerConnectionExtension_private_method__close>`\ (\ ) |virtual| |required|                                                                                                                                                      |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`                 | :ref:`_create_data_channel<class_WebRTCPeerConnectionExtension_private_method__create_data_channel>`\ (\ label\: :ref:`String<class_String>`, config\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                       |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_create_offer<class_WebRTCPeerConnectionExtension_private_method__create_offer>`\ (\ ) |virtual| |required|                                                                                                                                        |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` | :ref:`_get_connection_state<class_WebRTCPeerConnectionExtension_private_method__get_connection_state>`\ (\ ) |virtual| |required| |const|                                                                                                                |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`   | :ref:`_get_gathering_state<class_WebRTCPeerConnectionExtension_private_method__get_gathering_state>`\ (\ ) |virtual| |required| |const|                                                                                                                  |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>`   | :ref:`_get_signaling_state<class_WebRTCPeerConnectionExtension_private_method__get_signaling_state>`\ (\ ) |virtual| |required| |const|                                                                                                                  |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_initialize<class_WebRTCPeerConnectionExtension_private_method__initialize>`\ (\ config\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                                                                              |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_poll<class_WebRTCPeerConnectionExtension_private_method__poll>`\ (\ ) |virtual| |required|                                                                                                                                                        |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_set_local_description<class_WebRTCPeerConnectionExtension_private_method__set_local_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) |virtual| |required|                                               |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`_set_remote_description<class_WebRTCPeerConnectionExtension_private_method__set_remote_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) |virtual| |required|                                             |
   +-------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_WebRTCPeerConnectionExtension_private_method__add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_add_ice_candidate**\ (\ sdp_mid_name\: :ref:`String<class_String>`, sdp_mline_index\: :ref:`int<class_int>`, sdp_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__add_ice_candidate>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__close>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **_create_data_channel**\ (\ label\: :ref:`String<class_String>`, config\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__create_data_channel>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_create_offer**\ (\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__create_offer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **_get_connection_state**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__get_connection_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **_get_gathering_state**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__get_gathering_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **_get_signaling_state**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__get_signaling_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_initialize**\ (\ config\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__initialize>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__poll>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__set_local_description>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnectionExtension_private_method__set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_WebRTCPeerConnectionExtension_private_method__set_remote_description>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
