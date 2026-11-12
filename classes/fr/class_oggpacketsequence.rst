:github_url: hide

.. _class_OggPacketSequence:

OggPacketSequence
=================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une séquence de paquets Ogg.

.. rst-class:: classref-introduction-group

Description
-----------

Une séquence de paquets Ogg.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`        | :ref:`granule_positions<class_OggPacketSequence_property_granule_positions>` | ``PackedInt64Array()`` |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] | :ref:`packet_data<class_OggPacketSequence_property_packet_data>`             | ``[]``                 |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`                              | :ref:`sampling_rate<class_OggPacketSequence_property_sampling_rate>`         | ``0.0``                |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_length<class_OggPacketSequence_method_get_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OggPacketSequence_property_granule_positions:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **granule_positions** = ``PackedInt64Array()`` :ref:`🔗<class_OggPacketSequence_property_granule_positions>`

.. rst-class:: classref-property-setget

- |void| **set_packet_granule_positions**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_packet_granule_positions**\ (\ )

Contains the granule positions for each page in this packet sequence.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_packet_data:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **packet_data** = ``[]`` :ref:`🔗<class_OggPacketSequence_property_packet_data>`

.. rst-class:: classref-property-setget

- |void| **set_packet_data**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **get_packet_data**\ (\ )

Contient les paquets bruts qui composent ce OggPacketSequence.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_sampling_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **sampling_rate** = ``0.0`` :ref:`🔗<class_OggPacketSequence_property_sampling_rate>`

.. rst-class:: classref-property-setget

- |void| **set_sampling_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sampling_rate**\ (\ )

Contient des informations sur le taux d'échantillonnage de cette séquence. Doit être défini par une autre classe qui comprend réellement le codec.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OggPacketSequence_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_OggPacketSequence_method_get_length>`

La longueur de ce flux, en secondes.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
