:github_url: hide

.. _class_RDPipelineMultisampleState:

RDPipelineMultisampleState
==========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stato multicampione della pipeline (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**RDPipelineMultisampleState** serve per controllare il modo in cui è effettuato l'antialiasing multicampione o supercampione durante il rendering tramite :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_one<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`           | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>`       | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                  | :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`             | ``0.0``   |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>`                         | ``0``     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]         | :ref:`sample_masks<class_RDPipelineMultisampleState_property_sample_masks>`                         | ``[]``    |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_coverage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_coverage** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_coverage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_coverage**\ (\ )

Se ``true``, alfa a copertura è abilitato. Ciò genera un valore di copertura temporaneo basato sulla componente alfa del primo colore risultante del frammento. Ciò consente alla trasparenza alfa di utilizzare l'antialiasing multicampione.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_one:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_one** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_one**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_one**\ (\ )

Se ``true``, l'alfa è forzato a ``0.0`` o ``1.0``. Ciò consente di affinare i bordi delle trasparenze alfa con antialiasing. Rilevante solo se :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_sample_shading:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_sample_shading** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_enable_sample_shading**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_sample_shading**\ (\ )

Se ``true``, abilita l'ombreggiatura per campione che sostituisce l'MSAA con l'SSAA. Ciò fornisce un antialiasing di qualità superiore che funziona con i bordi trasparenti (alpha scissor). Ciò ha un costo di prestazioni molto elevato. Vedi anche :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`. Consulta la `documentazione Vulkan sull'ombreggiatura per campione <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading>`__ per maggiori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_min_sample_shading:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_sample_shading** = ``0.0`` :ref:`🔗<class_RDPipelineMultisampleState_property_min_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_min_sample_shading**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_sample_shading**\ (\ )

Il moltiplicatore di :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>` che determina quanti campioni sono effettuati per ogni frammento. Deve essere compreso tra ``0.0`` e ``1.0`` (inclusi). Efficace solo se :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` è ``true``. Se :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>` è ``1.0``, l'invocazione del frammento deve leggere solo dal campione dell'indice di copertura. L'accesso alle immagini piastrellate non deve essere utilizzato se :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` *non* è ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_count:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **sample_count** = ``0`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_count>`

.. rst-class:: classref-property-setget

- |void| **set_sample_count**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_sample_count**\ (\ )

Il numero di campioni MSAA (o campioni SSAA se :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` è ``true``) da effettuare. Valori più alti producono un antialiasing migliore, a scapito delle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_masks:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **sample_masks** = ``[]`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_masks>`

.. rst-class:: classref-property-setget

- |void| **set_sample_masks**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_sample_masks**\ (\ )

L'array di maschere di campionamento. Consulta la `documentazione Vulkan sulle maschere di campionamento <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask>`__ per maggiori dettagli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
