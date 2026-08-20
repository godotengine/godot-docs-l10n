:github_url: hide

.. _class_Compositor:

Compositor
==========

**Sperimentale:** More customization of the rendering pipeline will be added in the future.

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Memorizza gli attributi utilizzati per personalizzare il modo in cui viene renderizzata una Viewport.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La risorsa compositore memorizza gli attributi utilizzati per personalizzare il modo in cui viene renderizzato una :ref:`Viewport<class_Viewport>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Il compositore <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] | :ref:`compositor_effects<class_Compositor_property_compositor_effects>` | ``[]`` |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Compositor_property_compositor_effects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **compositor_effects** = ``[]`` :ref:`🔗<class_Compositor_property_compositor_effects>`

.. rst-class:: classref-property-setget

- |void| **set_compositor_effects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **get_compositor_effects**\ (\ )

Gli :ref:`CompositorEffect<class_CompositorEffect>` personalizzati che vengono applicati durante il rendering delle viewport attraverso questo compositore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
