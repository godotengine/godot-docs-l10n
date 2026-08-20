:github_url: hide

.. _class_RDPipelineColorBlendState:

RDPipelineColorBlendState
=========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stato di fusione dei colori della pipeline (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] | :ref:`attachments<class_RDPipelineColorBlendState_property_attachments>`         | ``[]``                |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                                          | :ref:`blend_constant<class_RDPipelineColorBlendState_property_blend_constant>`   | ``Color(0, 0, 0, 1)`` |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                                            | :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` | ``false``             |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`                                                         | :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`               | ``0``                 |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDPipelineColorBlendState_property_attachments:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **attachments** = ``[]`` :ref:`🔗<class_RDPipelineColorBlendState_property_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_attachments**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **get_attachments**\ (\ )

Gli allegati che sono fusi insieme.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_blend_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **blend_constant** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RDPipelineColorBlendState_property_blend_constant>`

.. rst-class:: classref-property-setget

- |void| **set_blend_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_blend_constant**\ (\ )

Il colore costante con cui fondersi. Vedi anche :ref:`RenderingDevice.draw_list_set_blend_constants()<class_RenderingDevice_method_draw_list_set_blend_constants>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_enable_logic_op:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_logic_op** = ``false`` :ref:`🔗<class_RDPipelineColorBlendState_property_enable_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_enable_logic_op**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_logic_op**\ (\ )

Se ``true``, esegue l'operazione logica definita in :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_logic_op:

.. rst-class:: classref-property

:ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **logic_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendState_property_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_logic_op**\ (\ value\: :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`\ )
- :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **get_logic_op**\ (\ )

L'operazione logica da effettuare per la fusione. Efficace solo se :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` è ``true``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
