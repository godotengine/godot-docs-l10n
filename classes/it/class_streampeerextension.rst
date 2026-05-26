:github_url: hide

.. _class_StreamPeerExtension:

StreamPeerExtension
===================

**Eredita:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_available_bytes<class_StreamPeerExtension_private_method__get_available_bytes>`\ (\ ) |virtual| |required| |const|                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_get_data<class_StreamPeerExtension_private_method__get_data>`\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual|                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_get_partial_data<class_StreamPeerExtension_private_method__get_partial_data>`\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_put_data<class_StreamPeerExtension_private_method__put_data>`\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual|                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`_put_partial_data<class_StreamPeerExtension_private_method__put_partial_data>`\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual|     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeerExtension_private_method__get_available_bytes:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_bytes**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_StreamPeerExtension_private_method__get_available_bytes>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__get_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_data**\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__get_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__get_partial_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_partial_data**\ (\ r_buffer\: ``uint8_t*``, r_bytes\: :ref:`int<class_int>`, r_received\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__get_partial_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__put_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_data**\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__put_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerExtension_private_method__put_partial_data:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_partial_data**\ (\ data\: ``const uint8_t*``, bytes\: :ref:`int<class_int>`, r_sent\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_StreamPeerExtension_private_method__put_partial_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
