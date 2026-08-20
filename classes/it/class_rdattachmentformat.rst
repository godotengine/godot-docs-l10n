:github_url: hide

.. _class_RDAttachmentFormat:

RDAttachmentFormat
==================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Formato dell'allegato (utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format<class_RDAttachmentFormat_property_format>`           | ``36`` |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`samples<class_RDAttachmentFormat_property_samples>`         | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`usage_flags<class_RDAttachmentFormat_property_usage_flags>` | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDAttachmentFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``36`` :ref:`🔗<class_RDAttachmentFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Il formato dei dati dell'allegato.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

Il numero di campioni utilizzati durante il campionamento dell'allegato.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_usage_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **usage_flags** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_usage_flags>`

.. rst-class:: classref-property-setget

- |void| **set_usage_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_usage_flags**\ (\ )

I flag di utilizzo dell'allegato, che determinano cosa è possibile fare con esso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
