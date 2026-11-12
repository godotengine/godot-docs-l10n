:github_url: hide

.. _class_StreamPeerBuffer:

StreamPeerBuffer
================

**Hérite de :** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer used to handle binary data streams.

.. rst-class:: classref-introduction-group

Description
-----------

A data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, :ref:`FileAccess<class_FileAccess>` can be used directly.

A **StreamPeerBuffer** object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data_array<class_StreamPeerBuffer_property_data_array>` | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_StreamPeerBuffer_method_clear>`\ (\ )                                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerBuffer<class_StreamPeerBuffer>` | :ref:`duplicate<class_StreamPeerBuffer_method_duplicate>`\ (\ ) |const|                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_position<class_StreamPeerBuffer_method_get_position>`\ (\ ) |const|           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_size<class_StreamPeerBuffer_method_get_size>`\ (\ ) |const|                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`resize<class_StreamPeerBuffer_method_resize>`\ (\ size\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`seek<class_StreamPeerBuffer_method_seek>`\ (\ position\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StreamPeerBuffer_property_data_array:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data_array** = ``PackedByteArray()`` :ref:`🔗<class_StreamPeerBuffer_property_data_array>`

.. rst-class:: classref-property-setget

- |void| **set_data_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data_array**\ (\ )

La mémoire tampon interne. Changer cette valeur réinitialise la position du curseur.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamPeerBuffer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerBuffer_method_clear>`

Efface le :ref:`data_array<class_StreamPeerBuffer_property_data_array>` et rétablit le curseur.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_duplicate:

.. rst-class:: classref-method

:ref:`StreamPeerBuffer<class_StreamPeerBuffer>` **duplicate**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_duplicate>`

Renvoie un nouveau **StreamPeerBuffer** avec le même contenu que :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_position:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_position**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_position>`

Renvoie la position actuelle du curseur.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_size**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_size>`

Renvoie la taille de :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_resize>`

Redimensionne :ref:`data_array<class_StreamPeerBuffer_property_data_array>`. Cela *ne met pas* à jour le curseur.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_seek>`

Déplace le curseur vers la position spécifiée. ``position`` doit être un index valide de :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
