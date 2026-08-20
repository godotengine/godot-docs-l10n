:github_url: hide

.. _class_RenderSceneBuffersRD:

RenderSceneBuffersRD
====================

**Eredita:** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Implementazione del buffer della scena di rendering per i renderer basati su RenderingDevice.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto gestisce tutti i buffer di rendering 3D per i renderer basati sul dispositivo di rendering. Un'istanza di questo oggetto viene creata per ogni viewport che ha il rendering 3D abilitato. Vedi anche :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

Tutti i buffer sono organizzati in **contesti**. Il contesto predefinito è detto **render_buffers** e può contenere, tra altri, i buffer di colore, di profondità e di velocità, la mappa della densità VRS e le variazioni per l'MSAA di questi buffer.

I buffer sono garantiti solo durante il rendering della viewport.

\ **Nota:** Questo è un oggetto interno nel server di rendering. Non istanziare questa classe da uno script.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`clear_context<class_RenderSceneBuffersRD_method_clear_context>`\ (\ context\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture<class_RenderSceneBuffersRD_method_create_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, data_format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`, usage_bits\: :ref:`int<class_int>`, texture_samples\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`, size\: :ref:`Vector2i<class_Vector2i>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, unique\: :ref:`bool<class_bool>`, discardable\: :ref:`bool<class_bool>`\ ) |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture_from_format<class_RenderSceneBuffersRD_method_create_texture_from_format>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, format\: :ref:`RDTextureFormat<class_RDTextureFormat>`, view\: :ref:`RDTextureView<class_RDTextureView>`, unique\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                   |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture_view<class_RenderSceneBuffersRD_method_create_texture_view>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, view_name\: :ref:`StringName<class_StringName>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ )                                                                                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_color_layer<class_RenderSceneBuffersRD_method_get_color_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_color_texture<class_RenderSceneBuffersRD_method_get_color_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_depth_layer<class_RenderSceneBuffersRD_method_get_depth_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_depth_texture<class_RenderSceneBuffersRD_method_get_depth_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_fsr_sharpness<class_RenderSceneBuffersRD_method_get_fsr_sharpness>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_internal_size<class_RenderSceneBuffersRD_method_get_internal_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`                   | :ref:`get_msaa_3d<class_RenderSceneBuffersRD_method_get_msaa_3d>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_render_target<class_RenderSceneBuffersRD_method_get_render_target>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` | :ref:`get_scaling_3d_mode<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` | :ref:`get_screen_space_aa<class_RenderSceneBuffersRD_method_get_screen_space_aa>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_target_size<class_RenderSceneBuffersRD_method_get_target_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture<class_RenderSceneBuffersRD_method_get_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDTextureFormat<class_RDTextureFormat>`                            | :ref:`get_texture_format<class_RenderSceneBuffersRD_method_get_texture_format>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`               | :ref:`get_texture_samples<class_RenderSceneBuffersRD_method_get_texture_samples>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture_slice<class_RenderSceneBuffersRD_method_get_texture_slice>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_texture_slice_size<class_RenderSceneBuffersRD_method_get_texture_slice_size>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, mipmap\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture_slice_view<class_RenderSceneBuffersRD_method_get_texture_slice_view>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ )                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`get_use_debanding<class_RenderSceneBuffersRD_method_get_use_debanding>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`get_use_taa<class_RenderSceneBuffersRD_method_get_use_taa>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_velocity_layer<class_RenderSceneBuffersRD_method_get_velocity_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_velocity_texture<class_RenderSceneBuffersRD_method_get_velocity_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                              |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_view_count<class_RenderSceneBuffersRD_method_get_view_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`has_texture<class_RenderSceneBuffersRD_method_has_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderSceneBuffersRD_method_clear_context:

.. rst-class:: classref-method

|void| **clear_context**\ (\ context\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_clear_context>`

Libera tutti i buffer correlati a questo contesto.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, data_format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`, usage_bits\: :ref:`int<class_int>`, texture_samples\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`, size\: :ref:`Vector2i<class_Vector2i>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, unique\: :ref:`bool<class_bool>`, discardable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture>`

Crea una nuova texture con la definizione specificata e la memorizza nella cache con il nome specificato. Restituirà la texture esistente se esiste già.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_from_format:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_from_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, format\: :ref:`RDTextureFormat<class_RDTextureFormat>`, view\: :ref:`RDTextureView<class_RDTextureView>`, unique\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_from_format>`

Crea una nuova texture usando il formato e la vista specificati e la memorizza nella cache con il nome specificato. Restituirà la texture esistente se esiste già.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, view_name\: :ref:`StringName<class_StringName>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_view>`

Crea una nuova vista di texture per una texture esistente e la memorizza nella cache sotto il ``view_name`` specificato. Restituirà la vista di texture esistente se esiste già. Genera un errore se la texture sorgente non esiste.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_layer>`

Restituisce il livello specificato dalla texture di colore su cui stiamo renderizzando il contenuto 3D.

Se ``msaa`` è ``true`` e l'MSAA è abilitato, restituisce la variazione dell'MSAA del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_texture>`

Restituisce la texture di colore su cui stiamo renderizzando il contenuto 3D. Se si utilizza multiview, esso sarà un array di texture con tutte le viste.

Se ``msaa`` è ``true`` e l'MSAA è abilitato, restituisce la variazione dell'MSAA del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_layer>`

Restituisce il livello specificato dalla texture di profondità su cui stiamo renderizzando il contenuto 3D.

Se ``msaa`` è ``true`` e l'MSAA è abilitato, restituisce la variazione dell'MSAA del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_texture>`

Restituisce la texture di profondità su cui stiamo renderizzando il contenuto 3D. Se si utilizza multiview, esso sarà un array di texture con tutte le viste.

Se ``msaa`` è ``true`` e l'MSAA è abilitato, restituisce la variazione dell'MSAA del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_fsr_sharpness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fsr_sharpness**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_fsr_sharpness>`

Restituisce il valore di nitidezza del FSR utilizzato per renderizzare il contenuto 3D (se :ref:`get_scaling_3d_mode()<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>` è una modalità FSR).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_internal_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_internal_size>`

Restituisce la dimensione interna del buffer di rendering (dimensione prima del sovracampionamento) con cui le texture vengono create come predefinito.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_msaa_3d:

.. rst-class:: classref-method

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_msaa_3d>`

Restituisce la modalità dell'MSAA 3D applicata per questa viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_render_target:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_render_target**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_render_target>`

Restituisce la destinazione di rendering associata a questo oggetto del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_scaling_3d_mode:

.. rst-class:: classref-method

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>`

Restituisce la modalità di ridimensionamento utilizzata per l'upscaling.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_screen_space_aa:

.. rst-class:: classref-method

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_screen_space_aa>`

Restituisce il metodo applicato di antialiasing nello spazio dello schermo.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_target_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_target_size>`

Restituisce le dimensioni di destinazione del buffer di rendering (dimensioni dopo l'upscaling).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture>`

Restituisce una texture dalla cache con questo nome.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_format:

.. rst-class:: classref-method

:ref:`RDTextureFormat<class_RDTextureFormat>` **get_texture_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_format>`

Restituisce le informazioni sul formato texture con cui è stata creata una texture memorizzata nella cache.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_samples:

.. rst-class:: classref-method

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_texture_samples**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_samples>`

Restituisce il numero di campioni MSAA utilizzati.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice>`

Restituisce una porzione specifica (livello o mipmap) per una texture memorizzata nella cache.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_texture_slice_size**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, mipmap\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_size>`

Restituisce le dimensioni della texture di una data sezione di una texture nella cache.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_view>`

Restituisce una vista specifica di una porzione (livello o mipmap) per una texture memorizzata nella cache.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_debanding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_debanding**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_debanding>`

Restituisce ``true`` se il debanding è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_taa:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_taa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_taa>`

Restituisce ``true`` se il TAA è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_layer>`

Restituisce il livello specificato dalla texture di velocità su cui stiamo renderizzando il contenuto 3D.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_texture>`

Restituisce la texture di velocità su cui stiamo renderizzando il contenuto 3D. Se si utilizza multiview, esso sarà un array di texture con tutte le viste.

Se ``msaa`` è **true** e l'MSAA è abilitato, restituisce la variazione dell'MSAA del buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_view_count>`

Restituisce il numero delle viste per la viewport associata.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_has_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_has_texture>`

Restituisce ``true`` se esiste una texture con questo nome nella cache.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
