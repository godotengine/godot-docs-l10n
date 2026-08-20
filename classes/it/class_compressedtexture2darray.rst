:github_url: hide

.. _class_CompressedTexture2DArray:

CompressedTexture2DArray
========================

**Eredita:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Array di texture bidimensionali, facoltativamente compresse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'array di texture caricato da un file ``.ctexarray``. Questo formato di file è interno a Godot; viene creato importando altri formati di immagine con il sistema di importazione. **CompressedTexture2DArray** può utilizzare uno dei 4 metodi di compressione (inclusa nessuna compressione):

- Lossless (WebP o PNG, non compresso sulla GPU)

- Lossy (WebP, non compresso sulla GPU)

- VRAM Compressed (compresso sulla GPU)

- VRAM Uncompressed (non compresso sulla GPU)

- Basis Universal (compresso sulla GPU. Dimensioni file inferiori rispetto a VRAM Compressed, ma più lento da comprimere e qualità inferiore rispetto a VRAM Compressed)

Solo **VRAM Compressed** riduce effettivamente l'utilizzo di memoria sulla GPU. I metodi di compressione **Lossless** e **Lossy** ridurranno lo spazio di archiviazione richiesto su disco, ma non ridurranno l'utilizzo di memoria sulla GPU poiché la texture è inviata alla GPU non compressa.

L'utilizzo di **VRAM Compressed** migliora anche i tempi di caricamento, poiché le texture compresse in VRAM sono più veloci da caricare rispetto alle texture che utilizzano la compressione lossless o lossy. La compressione VRAM può presentare artefatti evidenti ed è progettata per il rendering 3D, non 2D.

Vedi :ref:`Texture2DArray<class_Texture2DArray>` per una descrizione generale degli array di texture.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
