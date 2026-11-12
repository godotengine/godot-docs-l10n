:github_url: hide

.. _class_PacketPeerStream:

PacketPeerStream
================

**Hérite de :** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une encapsulation pour utiliser un PacketPeer dans une StreamPeer.

.. rst-class:: classref-introduction-group

Description
-----------

PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`input_buffer_max_size<class_PacketPeerStream_property_input_buffer_max_size>`   | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`output_buffer_max_size<class_PacketPeerStream_property_output_buffer_max_size>` | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`stream_peer<class_PacketPeerStream_property_stream_peer>`                       |           |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PacketPeerStream_property_input_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_input_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_input_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_output_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_output_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_output_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_stream_peer:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **stream_peer** :ref:`🔗<class_PacketPeerStream_property_stream_peer>`

.. rst-class:: classref-property-setget

- |void| **set_stream_peer**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_stream_peer**\ (\ )

L'objet :ref:`StreamPeer<class_StreamPeer>` enveloppé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
