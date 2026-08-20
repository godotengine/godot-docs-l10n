:github_url: hide

.. _class_RDVertexAttribute:

RDVertexAttribute
=================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Attributo di vertice (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`binding<class_RDVertexAttribute_property_binding>`     | ``4294967295`` |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`           | :ref:`format<class_RDVertexAttribute_property_format>`       | ``232``        |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` | :ref:`frequency<class_RDVertexAttribute_property_frequency>` | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`location<class_RDVertexAttribute_property_location>`   | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`offset<class_RDVertexAttribute_property_offset>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`stride<class_RDVertexAttribute_property_stride>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDVertexAttribute_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``4294967295`` :ref:`🔗<class_RDVertexAttribute_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

L'indice del buffer nell'array del buffer dei vertici a cui associare questo attributo di vertice. Se impostato su ``-1``, è predefinito all'indice dell'attributo.

\ **Nota:** Non è possibile combinare l'associazione di attributi assegnati esplicitamente con quelli assegnati implicitamente (ovvero ``-1``). Tutti gli attributi devono avere la loro associazione impostata su ``-1`` oppure tutti devono avere associazioni esplicite.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``232`` :ref:`🔗<class_RDVertexAttribute_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Il modo in cui i dati di questo attributo vengono interpretati quando vengono inviati a uno shader.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_frequency:

.. rst-class:: classref-property

:ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **frequency** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>`\ )
- :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **get_frequency**\ (\ )

La frequenza con cui questo attributo viene estratto dal suo buffer di vertici.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_location:

.. rst-class:: classref-property

:ref:`int<class_int>` **location** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_location**\ (\ )

La posizione nello shader a cui è vincolato questo attributo.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **offset** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_offset**\ (\ )

Il numero di byte tra l'inizio del buffer di vertici e la prima occorrenza di questo attributo.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **stride** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_stride>`

.. rst-class:: classref-property-setget

- |void| **set_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stride**\ (\ )

Il numero di byte tra gli inizi di istanze consecutive di questo attributo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
