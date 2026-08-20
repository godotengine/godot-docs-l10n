:github_url: hide

.. _class_RDPipelineColorBlendStateAttachment:

RDPipelineColorBlendStateAttachment
===================================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Allegato allo stato di fusione dei colori della pipeline (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Controlla come viene effettuata la fusione tra i frammenti di origine e destinazione quando si utilizza :ref:`RenderingDevice<class_RenderingDevice>`.

Per riferimento, ecco come sono implementate le modalità comuni di fusione per gli utenti nel renderer 2D di Godot:

\ **Mescola:**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

\ **Aggiungi:**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

\ **Sottrai:**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
    attachment.color_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

\ **Moltiplica:**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_DST_COLOR
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_DST_ALPHA
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO

\ **Alfa premultiplicato:**\ 

::

    var attachment = RDPipelineColorBlendStateAttachment.new()
    attachment.enable_blend = true
    attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
    attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
    attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
    attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` | :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`                 | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`                     | ``false`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`       | :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` | ``0``     |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`                               | ``true``  |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------+
   | |void| | :ref:`set_as_mix<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`\ (\ ) |
   +--------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **alpha_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_alpha_blend_op**\ (\ )

La modalità di fusione da usare per il canale alfa.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_color_blend_op:

.. rst-class:: classref-property

:ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **color_blend_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>`

.. rst-class:: classref-property-setget

- |void| **set_color_blend_op**\ (\ value\: :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>`\ )
- :ref:`BlendOperation<enum_RenderingDevice_BlendOperation>` **get_color_blend_op**\ (\ )

La modalità di fusione da usare per i canali di colore rosso/verde/blu.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_alpha_blend_factor**\ (\ )

Controlla il modo in cui il fattore di fusione per il canale alfa è determinato in base ai frammenti della destinazione.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **dst_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_dst_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_dst_color_blend_factor**\ (\ )

Controlla il modo in cui il fattore di fusione per i canali di colore è determinato in base ai frammenti di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_enable_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_blend** = ``false`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_enable_blend>`

.. rst-class:: classref-property-setget

- |void| **set_enable_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_blend**\ (\ )

Se ``true``, effettua la fusione tra la sorgente e la destinazione in base ai fattori definiti in :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`, :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>`, :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` e :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>`. Sono prese in considerazione anche le modalità di fusione :ref:`color_blend_op<class_RDPipelineColorBlendStateAttachment_property_color_blend_op>` e :ref:`alpha_blend_op<class_RDPipelineColorBlendStateAttachment_property_alpha_blend_op>`, con :ref:`write_r<class_RDPipelineColorBlendStateAttachment_property_write_r>`, :ref:`write_g<class_RDPipelineColorBlendStateAttachment_property_write_g>`, :ref:`write_b<class_RDPipelineColorBlendStateAttachment_property_write_b>` e :ref:`write_a<class_RDPipelineColorBlendStateAttachment_property_write_a>` che controllano il risultato.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_alpha_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_alpha_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_alpha_blend_factor**\ (\ )

Controlla il modo in cui il fattore di fusione per il canale alfa è determinato in base ai frammenti della sorgente.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor:

.. rst-class:: classref-property

:ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **src_color_blend_factor** = ``0`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>`

.. rst-class:: classref-property-setget

- |void| **set_src_color_blend_factor**\ (\ value\: :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>`\ )
- :ref:`BlendFactor<enum_RenderingDevice_BlendFactor>` **get_src_color_blend_factor**\ (\ )

Controlla il modo in cui il fattore di fusione per i canali di colore è determinato in base ai frammenti della sorgente.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_a** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_a>`

.. rst-class:: classref-property-setget

- |void| **set_write_a**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_a**\ (\ )

Se ``true``, scrive il nuovo canale alfa al risultato finale.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_b:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_b** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_b>`

.. rst-class:: classref-property-setget

- |void| **set_write_b**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_b**\ (\ )

Se ``true``, scrive il nuovo canale di colore blu al risultato finale.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_g:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_g** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_g>`

.. rst-class:: classref-property-setget

- |void| **set_write_g**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_g**\ (\ )

Se ``true``, scrive il nuovo canale di colore verde al risultato finale.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendStateAttachment_property_write_r:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **write_r** = ``true`` :ref:`🔗<class_RDPipelineColorBlendStateAttachment_property_write_r>`

.. rst-class:: classref-property-setget

- |void| **set_write_r**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_write_r**\ (\ )

Se ``true``, scrive il nuovo canale di colore rosso al risultato finale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDPipelineColorBlendStateAttachment_method_set_as_mix:

.. rst-class:: classref-method

|void| **set_as_mix**\ (\ ) :ref:`🔗<class_RDPipelineColorBlendStateAttachment_method_set_as_mix>`

Metodo di convenienza per effettuare la fusione standard con alfa retto (non premoltiplicato). Questo imposta :ref:`enable_blend<class_RDPipelineColorBlendStateAttachment_property_enable_blend>` su ``true``, :ref:`src_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_color_blend_factor>` su :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>`, :ref:`dst_color_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_color_blend_factor>` su :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`, :ref:`src_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_src_alpha_blend_factor>` su :ref:`RenderingDevice.BLEND_FACTOR_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_SRC_ALPHA>` e :ref:`dst_alpha_blend_factor<class_RDPipelineColorBlendStateAttachment_property_dst_alpha_blend_factor>` su :ref:`RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA<class_RenderingDevice_constant_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
