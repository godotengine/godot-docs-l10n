:github_url: hide

.. _class_PortableCompressedTexture2D:

PortableCompressedTexture2D
===========================

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce una texture compressa per disco e/o VRAM in modo che sia portabile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente di memorizzare texture compresse come risorse autonome (non importate).

Per l'utilizzo 2D (compresse su disco, non compresse in VRAM), sono consigliate le modalità lossy e lossless. Per l'utilizzo 3D (compresse in VRAM), dipende dalla piattaforma di destinazione.

Se intendi usare solo desktop, sono consigliati S3TC o BPTC. Per i dispositivi mobili, è consigliato ETC2.

Per texture 3D portatili e autonome che funzionano sia su desktop sia su dispositivi mobili, è consigliato Basis Universal (nonostante abbia un piccolo costo di qualità e un tempo di compressione più lungo come compromesso).

Questa risorsa è pensata per essere creata da codice.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`keep_compressed_buffer<class_PortableCompressedTexture2D_property_keep_compressed_buffer>` | ``false``                                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | resource_local_to_scene                                                                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size_override<class_PortableCompressedTexture2D_property_size_override>`                   | ``Vector2(0, 0)``                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`create_from_image<class_PortableCompressedTexture2D_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` | :ref:`get_compression_mode<class_PortableCompressedTexture2D_method_get_compression_mode>`\ (\ ) |const|                                                                                                                                                                                                                  |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_keeping_all_compressed_buffers<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`\ (\ ) |static|                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_basisu_compressor_params<class_PortableCompressedTexture2D_method_set_basisu_compressor_params>`\ (\ uastc_level\: :ref:`int<class_int>`, rdo_quality_loss\: :ref:`float<class_float>`\ )                                                                                                                       |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_keep_all_compressed_buffers<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`\ (\ keep\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                           |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_PortableCompressedTexture2D_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_PortableCompressedTexture2D_CompressionMode>`

.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSLESS:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSLESS** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSY:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSY** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BASIS_UNIVERSAL:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BASIS_UNIVERSAL** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_S3TC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_S3TC** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_ETC2:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_ETC2** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BPTC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BPTC** = ``5``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_ASTC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_ASTC** = ``6``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PortableCompressedTexture2D_property_keep_compressed_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_compressed_buffer** = ``false`` :ref:`🔗<class_PortableCompressedTexture2D_property_keep_compressed_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_keep_compressed_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keeping_compressed_buffer**\ (\ )

Se ``true``, quando in esecuzione nell'editor, questa classe manterrà i dati compressi di origine in memoria, facendo persistere i dati dopo il caricamento. Altrimenti, i dati compressi di origine sono persi dopo il caricamento e la texture non si può salvare nuovamente.

\ **Nota:** Questa proprietà deve essere impostata prima di chiamare :ref:`create_from_image()<class_PortableCompressedTexture2D_method_create_from_image>` affinché abbia effetto.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_property_size_override:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size_override** = ``Vector2(0, 0)`` :ref:`🔗<class_PortableCompressedTexture2D_property_size_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_override**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size_override**\ (\ )

Consente di sovrascrivere le dimensioni della texture (solo per 2D).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PortableCompressedTexture2D_method_create_from_image:

.. rst-class:: classref-method

|void| **create_from_image**\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) :ref:`🔗<class_PortableCompressedTexture2D_method_create_from_image>`

Inizializza la texture compressa da un'immagine di base. Deve essere specificata la modalità di compressione.

\ ``normal_map`` è consigliato per garantire una qualità ottimale se questa immagine sarà utilizzata come mappa normale.

Se è richiesta una compressione con perdita di dati, è possibile fornire facoltativamente l'impostazione della qualità. Questo mappa la qualità di compressione Lossy WebP.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_get_compression_mode:

.. rst-class:: classref-method

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **get_compression_mode**\ (\ ) |const| :ref:`🔗<class_PortableCompressedTexture2D_method_get_compression_mode>`

Restituisce la modalità di compressione utilizzata (valida dopo l'inizializzazione).

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_keeping_all_compressed_buffers**\ (\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`

Restituisce ``true`` se il flag è sovrascritto per tutte le texture di questo tipo.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_set_basisu_compressor_params:

.. rst-class:: classref-method

|void| **set_basisu_compressor_params**\ (\ uastc_level\: :ref:`int<class_int>`, rdo_quality_loss\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PortableCompressedTexture2D_method_set_basisu_compressor_params>`

Imposta i parametri del compressore per la compressione Basis Universal. Consulta anche le impostazioni in :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`.

\ **Nota:** Questo metodo deve essere chiamato prima di :ref:`create_from_image()<class_PortableCompressedTexture2D_method_create_from_image>` affinché funzioni.

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers:

.. rst-class:: classref-method

|void| **set_keep_all_compressed_buffers**\ (\ keep\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`

Se ``keep`` is ``true``, sovrascrive il flag globalmente per tutte le texture di questo tipo. È utilizzato principalmente dall'editor.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
