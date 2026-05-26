:github_url: hide

.. _class_StreamPeerExtension:

StreamPeerExtension
===================

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
