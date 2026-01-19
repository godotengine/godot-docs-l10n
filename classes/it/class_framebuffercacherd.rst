:github_url: hide

.. _class_FramebufferCacheRD:

FramebufferCacheRD
==================

**Eredita:** :ref:`Object<class_Object>`

Gestore della cache del framebuffer per i renderer basati sul dispositivo di rendering.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Framebuffer cache manager for :ref:`RenderingDevice<class_RenderingDevice>`-based renderers. Provides a way to create a framebuffer and reuse it in subsequent calls for as long as the used textures exists. Framebuffers will automatically be cleaned up when dependent objects are freed.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache_multipass<class_FramebufferCacheRD_method_get_cache_multipass>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FramebufferCacheRD_method_get_cache_multipass:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache_multipass**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], passes\: :ref:`Array<class_Array>`\[:ref:`RDFramebufferPass<class_RDFramebufferPass>`\], views\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_FramebufferCacheRD_method_get_cache_multipass>`

Crea o ottiene un framebuffer memorizzato nella cache. ``textures`` elenca le texture a cui si accede. ``passes`` definisce i sotto-passaggi e l'allocazione delle texture; se lasciato vuoto, viene creato un singolo passaggio e le texture vengono assegnate in base ai loro flag di utilizzo. ``views`` definisce il numero di viste utilizzate durante il rendering.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
