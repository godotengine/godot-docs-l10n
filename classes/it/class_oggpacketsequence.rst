:github_url: hide

.. _class_OggPacketSequence:

OggPacketSequence
=================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una sequenza di pacchetti Ogg.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una sequenza di pacchetti Ogg.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_length<class_OggPacketSequence_method_get_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OggPacketSequence_property_granule_positions:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **granule_positions** = ``PackedInt64Array()`` :ref:`🔗<class_OggPacketSequence_property_granule_positions>`

.. rst-class:: classref-property-setget

- |void| **set_packet_granule_positions**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_packet_granule_positions**\ (\ )

Contiene le posizioni dei granuli per ogni pagina in questa sequenza di pacchetti.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_packet_data:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **packet_data** = ``[]`` :ref:`🔗<class_OggPacketSequence_property_packet_data>`

.. rst-class:: classref-property-setget

- |void| **set_packet_data**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **get_packet_data**\ (\ )

Contiene i pacchetti grezzi che compongono questa OggPacketSequence.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_sampling_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **sampling_rate** = ``0.0`` :ref:`🔗<class_OggPacketSequence_property_sampling_rate>`

.. rst-class:: classref-property-setget

- |void| **set_sampling_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sampling_rate**\ (\ )

Contiene informazioni sulla frequenza di campionamento di questa sequenza. Deve essere impostato da un'altra classe che comprende effettivamente il codec.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OggPacketSequence_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_OggPacketSequence_method_get_length>`

La lunghezza di questo flusso, in secondi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
