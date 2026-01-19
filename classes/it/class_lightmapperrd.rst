:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Eredita:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Il lightmapper integrato basato su GPU da utilizzare con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

LightmapperRD ("RD" stands for :ref:`RenderingDevice<class_RenderingDevice>`) is the built-in GPU-based lightmapper for use with :ref:`LightmapGI<class_LightmapGI>`. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.

\ **Note:** This lightmapper requires the GPU to support the :ref:`RenderingDevice<class_RenderingDevice>` backend (Forward+ and Mobile renderers). When using the Compatibility renderer, baking will use a temporary :ref:`RenderingDevice<class_RenderingDevice>`. Support for :ref:`RenderingDevice<class_RenderingDevice>` is not required to *render* lightmaps that were already baked beforehand.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
