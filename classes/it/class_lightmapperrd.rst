:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Eredita:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Il lightmapper integrato basato su GPU da utilizzare con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

LightmapperRD ("RD" sta per :ref:`RenderingDevice<class_RenderingDevice>`) è il lightmapper integrato basato su GPU per l'uso con :ref:`LightmapGI<class_LightmapGI>`. Sulla maggior parte delle GPU dedicate, può preparare le lightmap molto più velocemente della maggior parte dei lightmapper basati su CPU. LightmapperRD usa shader di calcolo per preparare le lightmap, quindi non richiede l'installazione di librerie CUDA o OpenCL per essere utilizzabile.

\ **Nota:** Questo lightmapper richiede che la GPU supporti il backend :ref:`RenderingDevice<class_RenderingDevice>` (renderer Forward+ e Mobile). Quando si utilizza il renderer Compatibilità, la preparazione delle lightmap utilizzerà un :ref:`RenderingDevice<class_RenderingDevice>` temporaneo. Il supporto per :ref:`RenderingDevice<class_RenderingDevice>` non è necessario per *renderizzare* lightmap già preparate in precedenza.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
