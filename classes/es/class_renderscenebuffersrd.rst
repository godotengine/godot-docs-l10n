:github_url: hide

.. _class_RenderSceneBuffersRD:

RenderSceneBuffersRD
====================

**Hereda:** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Implementación del búfer de escena de renderizado para los renderizadores basados en RenderingDevice.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This object manages all 3D rendering buffers for the rendering device based renderers. An instance of this object is created for every viewport that has 3D rendering enabled. See also :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

All buffers are organized in **contexts**. The default context is called **render_buffers** and can contain amongst others the color buffer, depth buffer, velocity buffers, VRS density map and MSAA variants of these buffers.

Buffers are only guaranteed to exist during rendering of the viewport.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_RenderSceneBuffersRD_method_clear_context:

.. rst-class:: classref-method

|void| **clear_context**\ (\ context\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_clear_context>`

Libera todos los búferes relacionados con este contexto.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, data_format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`, usage_bits\: :ref:`int<class_int>`, texture_samples\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`, size\: :ref:`Vector2i<class_Vector2i>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, unique\: :ref:`bool<class_bool>`, discardable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture>`

Crea una nueva textura con la definición dada y la almacena en caché con el nombre indicado. Devuelve la textura existente si ya existe.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_from_format:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_from_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, format\: :ref:`RDTextureFormat<class_RDTextureFormat>`, view\: :ref:`RDTextureView<class_RDTextureView>`, unique\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_from_format>`

Crea una nueva textura con el formato y la vista indicados y guárdala en caché con el nombre indicado. Devolverá la textura existente si ya existe.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, view_name\: :ref:`StringName<class_StringName>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_view>`

Crea una nueva vista de textura para una textura existente y la almacena en caché bajo ``view_name``. Devolverá la vista de textura existente si ya existe. Se generará un error si la textura original no existe.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_layer>`

Devuelve la capa especificada de la textura de color a la que estamos renderizando contenido 3D.

Si ``msaa`` es ``true`` y MSAA está habilitado, esto devuelve la variante MSAA del búfer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_texture>`

Devuelve la textura de color a la que estamos renderizando contenido 3D. Si se utiliza multivista, esto será un array de texturas con todas las vistas.

Si ``msaa`` es ``true`` y MSAA está habilitado, esto devuelve la variante MSAA del búfer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_layer>`

Devuelve la capa especificada de la textura de profundidad en la que estamos renderizando el contenido 3D.

Si ``msaa`` es ``true`` y MSAA está habilitado, esto devuelve la variante MSAA del búfer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_texture>`

Devuelve la textura de profundidad en la que estamos renderizando el contenido 3D. Si se utiliza multivista, será un array de texturas con todas las vistas.

Si ``msaa`` es ``true`` y MSAA está habilitado, esto devuelve la variante MSAA del búfer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_fsr_sharpness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fsr_sharpness**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_fsr_sharpness>`

Devuelve el valor de nitidez FSR utilizado al renderizar el contenido 3D (si :ref:`get_scaling_3d_mode()<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>` es un modo FSR).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_internal_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_internal_size>`

Devuelve el tamaño interno del búfer de renderizado (tamaño antes del reescalado) con el que se crean las texturas por defecto.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_msaa_3d:

.. rst-class:: classref-method

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_msaa_3d>`

Devuelve el modo 3D MSAA aplicado para este viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_render_target:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_render_target**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_render_target>`

Devuelve el objetivo de renderizado asociado con este objeto de búferes.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_scaling_3d_mode:

.. rst-class:: classref-method

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>`

Devuelve el modo de escalado utilizado para el reescalado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_screen_space_aa:

.. rst-class:: classref-method

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_screen_space_aa>`

Devuelve el método de antialiasing del espacio de pantalla aplicado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_target_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_target_size>`

Devuelve el tamaño de destino del búfer de renderizado (tamaño después del reescalado).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture>`

Devuelve una textura en caché con este nombre.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_format:

.. rst-class:: classref-method

:ref:`RDTextureFormat<class_RDTextureFormat>` **get_texture_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_format>`

Devuelve la información del formato de textura con el que se creó una textura en caché.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_samples:

.. rst-class:: classref-method

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_texture_samples**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_samples>`

Devuelve el número de muestras MSAA utilizadas.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice>`

Devuelve un corte (capa o mipmap) específico para una textura en caché.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_texture_slice_size**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, mipmap\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_size>`

Devuelve el tamaño de textura de un corte dado de una textura en caché.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_view>`

Devuelve una vista específica de un corte (capa o mipmap) para una textura en caché.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_debanding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_debanding**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_debanding>`

Devuelve ``true`` si el debanding está habilitado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_taa:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_taa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_taa>`

Devuelve ``true`` si TAA está activado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_layer>`

Devuelve la capa especificada de la textura de velocidad en la que estamos renderizando contenido 3D.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_texture>`

Devuelve la textura de velocidad en la que estamos renderizando contenido 3D. Si se utiliza multivista, este será un array de texturas con todas las vistas.

Si ``msaa`` es **true** y MSAA está activado, esto devuelve la variante MSAA del búfer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_view_count>`

Devuelve el número de vistas para el viewport asociado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_has_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_has_texture>`

Devuelve ``true`` si existe una textura en caché para este nombre.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
