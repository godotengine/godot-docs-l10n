:github_url: hide

.. _class_CompressedTexture2D:

CompressedTexture2D
===================

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture a 2 dimensioni, facoltativamente compressa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture caricata da un file ``.ctex``. Questo formato di file è interno a Godot; viene creato importando altri formati di immagine con il sistema di importazione. **CompressedTexture2D** può utilizzare uno dei 4 metodi di compressione (inclusa nessuna compressione):

- Lossless (WebP o PNG, non compresso sulla GPU)

- Lossy (WebP, non compresso sulla GPU)

- VRAM Compressed (compresso sulla GPU)

- VRAM Uncompressed (non compresso sulla GPU)

- Basis Universal (compresso sulla GPU. Dimensioni file inferiori rispetto a VRAM Compressed, ma più lento da comprimere e qualità inferiore rispetto a VRAM Compressed)

Solo **VRAM Compressed** riduce effettivamente l'utilizzo di memoria sulla GPU. I metodi di compressione **Lossless** e **Lossy** ridurranno lo spazio di archiviazione richiesto su disco, ma non ridurranno l'utilizzo di memoria sulla GPU poiché la texture è inviata alla GPU non compressa.

L'utilizzo di **VRAM Compressed** migliora anche i tempi di caricamento, poiché le texture compresse in VRAM sono più veloci da caricare rispetto alle texture che utilizzano la compressione lossless o lossy. La compressione VRAM può presentare artefatti evidenti ed è progettata per il rendering 3D, non 2D.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture2D_property_load_path>` | ``""``                                                                                 |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | resource_local_to_scene                                        | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture2D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CompressedTexture2D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture2D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

Percorso del file **CompressedTexture2D** a un file ``.ctex``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CompressedTexture2D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture2D_method_load>`

Carica la texture dal percorso ``path`` specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
