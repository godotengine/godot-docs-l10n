:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Calcula y almacena lightmaps procesados para una iluminación global rápida.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **LightmapGI** node is used to compute and store baked lightmaps. Lightmaps are used to provide high-quality indirect lighting with very little light leaking. **LightmapGI** can also provide rough reflections using spherical harmonics if :ref:`directional<class_LightmapGI_property_directional>` is enabled. Dynamic objects can receive indirect lighting thanks to *light probes*, which can be automatically placed by setting :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` to a value other than :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Additional lightmap probes can also be added by creating :ref:`LightmapProbe<class_LightmapProbe>` nodes. The downside is that lightmaps are fully static and cannot be baked in an exported project. Baking a **LightmapGI** node is also slower compared to :ref:`VoxelGI<class_VoxelGI>`.

\ **Procedural generation:** Lightmap baking functionality is only available in the editor. This means **LightmapGI** is not suited to procedurally generated or user-built levels. For procedurally generated or user-built levels, use :ref:`VoxelGI<class_VoxelGI>` or SDFGI instead (see :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Performance:** **LightmapGI** provides the best possible run-time performance for global illumination. It is suitable for low-end hardware including integrated graphics and mobile devices.

\ **Note:** Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again.

\ **Note:** Lightmap baking on :ref:`CSGShape3D<class_CSGShape3D>`\ s and :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ es is not supported, as these cannot store UV2 data required for baking.

\ **Note:** If no custom lightmappers are installed, **LightmapGI** can only be baked from devices that support the Forward+ or Mobile renderers.

\ **Note:** The **LightmapGI** node only bakes light data for child nodes of its parent. Nodes further up the hierarchy of the scene will not be baked.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando iluminación global de Lightmap <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bias<class_LightmapGI_property_bias>`                                           | ``0.0005``            |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`       | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`bounces<class_LightmapGI_property_bounces>`                                     | ``3``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`           | :ref:`camera_attributes<class_LightmapGI_property_camera_attributes>`                 |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`denoiser_range<class_LightmapGI_property_denoiser_range>`                       | ``10``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`denoiser_strength<class_LightmapGI_property_denoiser_strength>`                 | ``0.1``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`directional<class_LightmapGI_property_directional>`                             | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                 | :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Sky<class_Sky>`                                     | :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>`       |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`   | :ref:`environment_mode<class_LightmapGI_property_environment_mode>`                   | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`     | :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`       | ``2``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interior<class_LightmapGI_property_interior>`                                   | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`LightmapGIData<class_LightmapGIData>`               | :ref:`light_data<class_LightmapGI_property_light_data>`                               |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`                   | ``16384``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`           | :ref:`quality<class_LightmapGI_property_quality>`                                     | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` | :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>`                     | ``0``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`supersampling<class_LightmapGI_property_supersampling>`                         | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`           | ``2.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`texel_scale<class_LightmapGI_property_texel_scale>`                             | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>`                           | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>`     | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

Calidad baja de procesado (tiempos de procesado más rápidos). La calidad de este ajuste preestablecido se puede ajustar cambiando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` y :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

Calidad media de procesado (tiempos de procesado rápidos). La calidad de este ajuste preestablecido se puede ajustar cambiando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` y :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

Calidad alta de procesado (tiempos de procesado lentos). La calidad de este preajuste se puede ajustar cambiando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` y :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

Calidad más alta de procesado (tiempos de procesado más lentos). La calidad de este preajuste se puede ajustar cambiando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` y :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

No generar sondas de lightmaps para iluminar objetos dinámicos.

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

Nivel más bajo de subdivisión (tiempos de procesado más rápidos, tamaños de archivo más pequeños).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

Nivel bajo de subdivisión (tiempos de procesado rápidos, tamaños de archivo pequeños).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

Nivel alto de subdivisión (tiempos de procesado lentos, tamaños de archivo grandes).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

Nivel más alto de subdivisión (tiempos de procesado más lentos, tamaños de archivo más grandes).

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

El procesado del lightmap se realizó correctamente.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

El procesado del lightmap falló porque no se pudo acceder al nodo raíz de la escena editada.

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

El procesado del lightmap falló porque el recurso de datos del lightmap está integrado en un recurso externo.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

El procesado del lightmap falló porque no hay un mapeador de luz disponible en esta compilación de Godot.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

El procesado del lightmap falló porque la ruta de guardado de :ref:`LightmapGIData<class_LightmapGIData>` no está configurada en el recurso.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

El procesado del lightmap falló porque no hay mallas cuyo :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` sea :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` y con un mapeo UV2 válido en la escena actual. Es posible que deba seleccionar escenas 3D en el dock de importación y cambiar su modo de iluminación global en consecuencia.

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

El procesado del lightmap falló porque el mapeador de luz no pudo analizar algunas de las mallas marcadas como estáticas para el procesado.

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

El procesado del lightmap falló porque la imagen resultante no se pudo guardar o importar en Godot después de guardarla.

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

El usuario abortó la operación de procesado del lightmap (normalmente haciendo clic en el botón **Cancelar** en el diálogo de progreso).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

El procesado del lightmap falló porque el tamaño máximo de la textura es demasiado pequeño para que quepan algunas de las mallas marcadas para el procesado.

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

El procesado del lightmap falló porque el lightmap es demasiado pequeño.

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

El procesado del lightmap falló porque el lightmap no pudo caber en un atlas.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

Ignorar la iluminación del entorno al procesar lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

Usa la iluminación ambiental de la escena al procesar lightmaps.

\ **Nota:** Si procesas lightmaps en una escena sin un nodo :ref:`WorldEnvironment<class_WorldEnvironment>`, esto actuará como :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`. El cielo y el sol de la previsualización del editor *no* son tomados en cuenta por **LightmapGI** al procesar lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

Utiliza :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` como fuente de iluminación ambiental al procesar lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

Utiliza :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>` multiplicado por :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` como fuente constante de iluminación ambiental al procesar lightmaps.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

El sesgo que se usará al calcular las sombras. Aumentar :ref:`bias<class_LightmapGI_property_bias>` puede corregir el acné de sombra en el lightmap procesado resultante, pero puede introducir el efecto de peter-panning (sombras que no se conectan con sus emisores). Las sombras en tiempo real de :ref:`Light3D<class_Light3D>` no se ven afectadas por esta propiedad :ref:`bias<class_LightmapGI_property_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

El multiplicador de energía para cada rebote. Los valores más altos harán que la iluminación indirecta sea más brillante. Un valor de ``1.0`` representa un comportamiento físicamente preciso, pero se pueden usar valores más altos para hacer que la iluminación indirecta se propague de manera más visible cuando se usa un número bajo de rebotes. Esto se puede usar para acelerar los tiempos de procesado al disminuir el número de :ref:`bounces<class_LightmapGI_property_bounces>` y luego aumentar :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`.

\ **Nota:** :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` solo tiene efecto si :ref:`bounces<class_LightmapGI_property_bounces>` se establece en un valor mayor o igual a ``1``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

Número de rebotes de luz que se tienen en cuenta durante el procesado. Los valores más altos dan como resultado una iluminación más brillante y realista, a costa de tiempos de procesado más largos. Si se establece en ``0``, solo se procesa la iluminación del entorno, la luz directa y la iluminación emisiva.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

El recurso :ref:`CameraAttributes<class_CameraAttributes>` que especifica los niveles de exposición para procesar. La exposición automática y las propiedades de no exposición se ignorarán. La configuración de exposición debe utilizarse para reducir el rango dinámico presente durante el procesado. Si la exposición es demasiado alta, el **LightmapGI** tendrá artefactos de bandas o puede tener artefactos de sobreexposición.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

La distancia en píxeles desde la que muestrea el denoiser. Los valores más bajos conservan más detalles, pero pueden dar resultados irregulares si la calidad del lightmap no es lo suficientemente alta. Solo es efectivo si :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` es ``true`` y :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` está establecido en JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

La fuerza del paso de eliminación de ruido aplicado a los lightmaps generados. Solo es efectivo si :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` es ``true`` y :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` está establecido en JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

Si ``true``, procesa lightmaps para contener información direccional como armónicos esféricos. Esto resulta en una apariencia de iluminación más realista, especialmente con materiales con mapeado normal y para luces que tienen su luz directa procesada (:ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` establecido en :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` y con :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` establecido en ``false``). La información direccional también se utiliza para proporcionar reflejos rugosos para objetos estáticos y dinámicos. Esto tiene un pequeño coste de rendimiento en tiempo de ejecución, ya que el sombreador tiene que realizar más trabajo para interpretar la información de dirección del lightmap. Los lightmaps direccionales también tardan más en procesarse y resultan en archivos de mayor tamaño.

\ **Nota:** El nombre de la propiedad no tiene relación con :ref:`DirectionalLight3D<class_DirectionalLight3D>`. :ref:`directional<class_LightmapGI_property_directional>` funciona con todos los tipos de luz.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

El color que se utilizará para la iluminación del entorno. Solo es efectivo si :ref:`environment_mode<class_LightmapGI_property_environment_mode>` es :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

El multiplicador de color que se utilizará para la iluminación del entorno. Solo es efectivo si :ref:`environment_mode<class_LightmapGI_property_environment_mode>` es :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

El cielo que se utilizará como fuente de iluminación del entorno. Solo es efectivo si :ref:`environment_mode<class_LightmapGI_property_environment_mode>` es :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

El modo de entorno que se utilizará al procesar lightmaps.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

El nivel de subdivisión que se utilizará al generar automáticamente :ref:`LightmapProbe<class_LightmapProbe>`\ s para la iluminación de objetos dinámicos. Los valores más altos dan como resultado una iluminación indirecta más precisa en los objetos dinámicos, a costa de tiempos de procesado más largos y archivos de mayor tamaño.

\ **Nota:** Los :ref:`LightmapProbe<class_LightmapProbe>`\ s generados automáticamente no son visibles como nodos en el dock del árbol de escenas y no se pueden modificar de esta manera después de generarlos.

\ **Nota:** Independientemente de :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`, la iluminación directa en objetos dinámicos siempre se aplica utilizando nodos :ref:`Light3D<class_Light3D>` en tiempo real.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Si es ``true``, ignora la iluminación del entorno al procesar lightmaps.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

El :ref:`LightmapGIData<class_LightmapGIData>` asociado a este nodo **LightmapGI**. Este recurso se crea automáticamente después del procesado y no está destinado a ser creado manualmente.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

El tamaño máximo de textura para el atlas de texturas generado. Los valores más altos darán como resultado la generación de menos divisiones, pero es posible que no funcionen en todo el hardware como resultado de las limitaciones de hardware en los tamaños de textura. Deja :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` en su valor predeterminado de ``16384`` si no estás seguro.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

El preajuste de calidad que se utilizará al procesar lightmaps. Esto afecta los tiempos de procesado, pero los tamaños de los archivos de salida siguen siendo prácticamente idénticos en todos los niveles de calidad.

Para acelerar aún más los tiempos de procesado, disminuye :ref:`bounces<class_LightmapGI_property_bounces>`, desactiva :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` y/o disminuye :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

Para aumentar aún más la calidad, activa :ref:`supersampling<class_LightmapGI_property_supersampling>` y/o aumenta :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

La política de máscara de sombras a utilizar para sombras direccionales en objetos estáticos que se procesan con esta instancia de **LightmapGI**.

El enmascaramiento de sombras permite a los nodos :ref:`DirectionalLight3D<class_DirectionalLight3D>` proyectar sombras incluso fuera del rango definido por su propiedad :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Esto se logra procesando una textura que contiene un mapa de sombras para la luz direccional, y luego usando esta textura de acuerdo con el modo de máscara de sombras actual.

\ **Nota:** La textura de máscara de sombras solo se crea si :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` no es :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>`. Para ver una diferencia, debes procesar los lightmaps nuevamente después de cambiar de :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` a cualquier otro modo.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

Si ``true``, los lightmaps se procesan con la escala de texel multiplicada por :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` y se submuestrean antes de guardar el lightmap (de modo que la densidad de texel efectiva es idéntica a tener el supermuestreo deshabilitado).

El supermuestreo proporciona una mayor calidad de lightmap con menos ruido, sombras más suaves y una mejor proyección de sombras de características a pequeña escala en los objetos. Sin embargo, puede resultar en tiempos de procesado y uso de memoria significativamente mayores al procesar lightmaps. El relleno se ajusta automáticamente para evitar aumentar la fuga de luz.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

El factor por el cual se multiplica la densidad de texel para el supermuestreo. Para obtener mejores resultados, utiliza un valor entero. Aunque se permiten valores fraccionarios, estos pueden resultar en un aumento de la fuga de luz y un lightmap borroso.

Valores más altos pueden resultar en una mejor calidad, pero también aumentan los tiempos de procesado y el uso de memoria durante el procesado.

Consulta :ref:`supersampling<class_LightmapGI_property_supersampling>` para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

Scales the lightmap texel density of all meshes for the current bake. This is a multiplier that builds upon the existing lightmap texel size defined in each imported 3D scene, along with the per-mesh density multiplier (which is designed to be used when the same mesh is used at different scales). Lower values will result in faster bake times.

For example, doubling :ref:`texel_scale<class_LightmapGI_property_texel_scale>` doubles the lightmap texture resolution for all objects *on each axis*, so it will *quadruple* the texel count.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

If ``true``, uses a GPU-based denoising algorithm on the generated lightmap. This eliminates most noise within the generated lightmap at the cost of longer bake times. File sizes are generally not impacted significantly by the use of a denoiser, although lossless compression may do a better job at compressing a denoised image.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

Si es ``true``, se generará una textura con la información de iluminación para acelerar la generación de iluminación indirecta a costa de cierta precisión. La geometría puede presentar artefactos de fugas de luz adicionales al usar lightmaps de baja resolución o UVs que estiran el lightmap significativamente a través de las superficies. Deja :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` en su valor predeterminado de ``true`` si no estás seguro.

\ **Nota:** :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` solo tiene efecto si :ref:`bounces<class_LightmapGI_property_bounces>` se establece en un valor mayor o igual a ``1``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
