:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Calcola e memorizza lightmap elaborate per un'illuminazione globale rapida.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il nodo **LightmapGI** serve per elaborare e memorizzare lightmap precalcolate. Le lightmap servono per fornire un'illuminazione indiretta di alta qualità con una minima perdita di luce. **LightmapGI** può anche fornire riflessi approssimativi attraverso armoniche sferiche se :ref:`directional<class_LightmapGI_property_directional>` è abilitato. Gli oggetti dinamici possono ricevere illuminazione indiretta grazie alle *sonde luminose*, che si possono posizionare automaticamente impostando :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` su un valore diverso da :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. È inoltre possibile aggiungere ulteriori sonde lightmap creando nodi :ref:`LightmapProbe<class_LightmapProbe>`. Lo svantaggio è che le lightmap sono completamente statiche e non si possono precalcolare in un progetto esportato. Precalcolare un nodo **LightmapGI** è inoltre più lento rispetto a :ref:`VoxelGI<class_VoxelGI>`.

\ **Generazione procedurale:** La funzionalità di precalcolo di Lightmap è disponibile solo nell'editor. Ciò significa che **LightmapGI** non è adatto a livelli generati proceduralmente o creati dall'utente. Per livelli generati proceduralmente o creati dall'utente, utilizza invece :ref:`VoxelGI<class_VoxelGI>` o SDFGI (vedi :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Prestazioni:** **LightmapGI** fornisce le migliori prestazioni possibili in fase di esecuzione per l'illuminazione globale. È adatto per hardware di fascia bassa, tra cui schede grafiche integrate e dispositivi mobili.

\ **Nota:** A causa di come funzionano le lightmap, la maggior parte delle proprietà ha un effetto visibile solo una volta che le lightmap vengono nuovamente precalcolate.

\ **Nota:** Il precalcolo delle lightmap sui :ref:`CSGShape3D<class_CSGShape3D>` e i :ref:`PrimitiveMesh<class_PrimitiveMesh>` non è supportato, poiché non possono memorizzare i dati UV2 richiesti per il precalcolo.

\ **Nota:** Se non sono installati lightmapper personalizzati, **LightmapGI** può essere precalcolato solo da dispositivi che supportano i backend di rendering Forward+ o Mobile.

\ **Nota:** Il nodo **LightmapGI** precalcola solo i dati di luce per i nodi figlio del suo genitore. I nodi più in alto nella gerarchia della scena non verranno preparati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dell'illuminazione globale di Lightmap <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Enumerazioni
------------------------

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

Qualità bassa di precalcolo (tempi più rapidi). La qualità di questo preset può essere regolata modificando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` e :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

Qualità media di precalcolo (tempi rapidi). La qualità di questo preset può essere regolata modificando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` e :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

Qualità alta di precalcolo (tempi lenti). La qualità di questo preset può essere regolata modificando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` e :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

Qualità più alta di precalcolo (tempi più lenti). La qualità di questo preset può essere regolata modificando :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` e :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

Non generare sonde di lightmap per l'illuminazione di oggetti dinamici.

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

Livello più basso di suddivisione (tempi di precalcolo più rapidi, dimensioni dei file più piccole).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

Livello basso di suddivisione (tempi di precalcolo rapidi, dimensioni dei file piccole).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

Livello alto di suddivisione (tempi di precalcolo lenti, dimensioni dei file grandi).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

Livello più alto di suddivisione (tempi di precalcolo più lenti, dimensioni dei file più grandi).

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

La preparazione della Lightmap è avvenuta con successo.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

La preparazione della lightmap non è riuscita perché non è stato possibile accedere al nodo radice della scena modificata.

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

La preparazione della lightmap non è riuscita perché la risorsa dati della lightmap è incorporata in una risorsa esterna.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

La preparazione della lightmap non è riuscita perché nessun lightmapper è disponibile in questa build di Godot.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

La preparazione della Lightmap non è riuscita perché il percorso di salvataggio del :ref:`LightmapGIData<class_LightmapGIData>` non è configurato nella risorsa.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

La preparazione della lightmap non è riuscita perché non ci sono mesh il cui :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` è :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` e con una valida mappatura UV2 nella scena attuale. Potrebbe essere necessario selezionare scene 3D nel pannello Importazione e modificare dunque la loro modalità di illuminazione globale.

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

La preparazione della lightmap non è riuscita perché il lightmapper non è riuscito ad analizzare alcune delle mesh contrassegnate come statiche per la preparazione.

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

La preparazione della lightmap non è riuscita perché l'immagine risultante non poteva essere salvata o importata da Godot dopo il salvataggio.

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

L'utente ha interrotto l'operazione di preparazione della lightmap (in genere cliccando sul pulsante **Annulla** nella finestra di dialogo del progresso).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

La preparazione della lightmap non è riuscita perché le dimensioni massime della texture sono troppo piccole per adattarsi ad alcune delle mesh contrassegnate per la preparazione.

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

La preparazione della lightmap non è riuscita perché la lightmap è troppo piccola.

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

La preparazione della lightmap non è riuscita perché non è stato possibile inserire la lightmap in un atlante.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

Ignora l'illuminazione ambientale durante la preparazione delle lightmap.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

Usa l'illuminazione ambientale della scena durante la preparazione delle lightmap.

\ **Nota:** Se le lightmap sono calcolate in una scena senza nodo :ref:`WorldEnvironment<class_WorldEnvironment>`, questo agirà come :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`. Il cielo e il sole di anteprima dell'editor *non* sono considerati da **LightmapGI** durante la preparazione delle lightmap.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

Utilizza :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` come sorgente di illuminazione ambientale durante la preparazione delle lightmap.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

Utilizza :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>` moltiplicato per :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` come sorgente costante di illuminazione ambientale durante la preparazione delle lightmap.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Il bias da usare quando si calcolano le ombre. Aumentare :ref:`bias<class_LightmapGI_property_bias>` può correggere l'acne delle ombre sulla lightmap precalcolata risultante, ma può introdurre peter-panning (ombre che non si collegano alle loro sorgenti). Le ombre :ref:`Light3D<class_Light3D>` in tempo reale non sono influenzate dal :ref:`bias<class_LightmapGI_property_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

Il moltiplicatore di energia per ogni rimbalzo. Valori più alti renderanno l'illuminazione indiretta più luminosa. Un valore di ``1.0`` rappresenta un comportamento fisicamente accurato, ma aumentando questo valore assicura che l'illuminazione indiretta si propaghi più visibilmente quando si utilizza un basso numero di rimbalzi. Ciò può essere utilizzato per velocizzare i tempi di precalcolo riducendo il numero di :ref:`bounces<class_LightmapGI_property_bounces>` e aumentando :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`.

\ **Nota:** :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` ha effetto solo se :ref:`bounces<class_LightmapGI_property_bounces>` è impostato su un valore maggiore o uguale a ``1``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

Numero di rimbalzi di luce presi in considerazione durante il precalcolo. Valori più alti risultano in un'illuminazione più luminosa e realistica, a scapito di tempi di precalcolo più lunghi. Se impostato su ``0``, sono precalcolate solo l'illuminazione ambientale, la luce diretta e l'illuminazione emissiva.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La risorsa :ref:`CameraAttributes<class_CameraAttributes>` che specifica i livelli di esposizione a cui precalcolare. Saranno ignorate le proprietà che non riguardano l'esposizione e l'esposizione automatica. Le impostazioni di esposizione si dovrebbero utilizzare per ridurre la gamma dinamica presente durante il precalcolo. Se l'esposizione è troppo alta, **LightmapGI** avrà artefatti di banding o potrebbe avere artefatti di sovraesposizione.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

La distanza in pixel da cui il denoiser effettua il campionamento. Valori più bassi preservano più dettagli, ma possono dare risultati macchiati se la qualità della lightmap non è abbastanza alta. Efficace solo se :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` è ``true`` e :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` è impostato su JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

L'intensità del passaggio di rimozione del rumore applicato alle lightmap generate. Efficace solo se :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` è ``true`` e :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` è impostato su JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

Se ``true``, precalcola le lightmap per contenere informazioni direzionali come armoniche sferiche. Ciò si traduce in un aspetto di illuminazione più realistico, specialmente con materiali mappati con normali e per luci che hanno la loro luce diretta precalcolata (:ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` impostato su :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` e con :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` impostato su ``false``). Le informazioni direzionali sono anche utilizzate per fornire riflessi approssimativi per oggetti statici e dinamici. Ciò ha un piccolo costo sulle prestazioni in fase di esecuzione poiché lo shader deve eseguire più lavoro per interpretare le informazioni di direzione dalla lightmap. Le lightmap direzionali richiedono anche più tempo per essere precalcolate e risultano in file più grandi.

\ **Nota:** Il nome della proprietà non ha alcuna relazione con :ref:`DirectionalLight3D<class_DirectionalLight3D>`. :ref:`directional<class_LightmapGI_property_directional>` funziona con tutti i tipi di luce.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

Il colore da usare per l'illuminazione ambientale. Efficace solo se :ref:`environment_mode<class_LightmapGI_property_environment_mode>` è :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

Il moltiplicatore per il colore da usare per l'illuminazione ambientale. Efficace solo se :ref:`environment_mode<class_LightmapGI_property_environment_mode>` è :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

Il cielo da usare come sorgente dell'illuminazione ambientale. Efficace solo se :ref:`environment_mode<class_LightmapGI_property_environment_mode>` è :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

La modalità ambientale da utilizzare durante la preparazione delle lightmap.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

Livello di suddivisione da utilizzare quando si generano automaticamente i :ref:`LightmapProbe<class_LightmapProbe>` per l'illuminazione dinamica degli oggetti. Valori più alti risultano in un'illuminazione indiretta più accurata sugli oggetti dinamici, a costo di tempi di precalcolo più lunghi e file più grandi.

\ **Nota:** I :ref:`LightmapProbe<class_LightmapProbe>` generati automaticamente non sono visibili come nodi nel pannello dell'albero di scene e non possono essere modificati in questo modo dopo essere stati generati.

\ **Nota:** A prescindere da :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`, l'illuminazione diretta sugli oggetti dinamici è sempre applicata attraverso i nodi :ref:`Light3D<class_Light3D>` in tempo reale.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Se ``true``, ignora l'illuminazione dell'ambiente durante l'elaborazione delle lightmap.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

Il :ref:`LightmapGIData<class_LightmapGIData>` associato a questo nodo **LightmapGI**. Questa risorsa viene creata automaticamente dopo il precalcolo e non si dovrebbe creare manualmente.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

Le dimensioni massime della texture per l'atlante generato per le texture. Valori più alti risultano in meno sezioni generate, ma potrebbero non funzionare su tutti gli hardware a causa delle limitazioni hardware sulle dimensioni delle texture. Lascia :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` al suo valore predefinito di ``16384`` se non sei sicuro.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

Il modello di qualità da usare quando si precalcolano le lightmap. Ciò influisce sui tempi di preparazione, ma le dimensioni dei file risultanti rimangono per lo più identiche tra i vari livelli di qualità.

Per velocizzare ulteriormente i tempi di preparazione, diminuisci :ref:`bounces<class_LightmapGI_property_bounces>`, disattiva :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` e aumenta le dimensioni dei texel della lightmap nelle scene 3D nel pannello d'Importazione.

Per aumentare ulteriormente la qualità, abilita :ref:`supersampling<class_LightmapGI_property_supersampling>` e/o aumenta :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**Sperimentale:** Questa proprietà potrebbe essere cambiata o rimossa in versioni future.

Il criterio di shadowmasking da usare per le ombre direzionali sugli oggetti statici che sono calcolati con questa istanza di **LightmapGI**.

Lo shadowmasking permette ai nodi :ref:`DirectionalLight3D<class_DirectionalLight3D>` di proiettare ombre anche fuori dalla portata definita dalla loro proprietà :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Lo si fa calcolando una texture che contiene una shadowmap per la luce direzionale, poi utilizzando questa texture in base alla modalità di shadowmasking attuale.

\ **Nota:** La texture di shadowmask viene creata solo se :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` non è :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>`. Per notare differenze, bisogna rielaborare le lightmap dopo aver passato da :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` a qualsiasi altra modalità.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

Se ``true``, le lightmap vengono preparate con la loro scala dei texel moltiplicata per :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` e sottocampionate prima di salvare la lightmap (quindi la densità effettiva dei texel è identica a quella ottenuta con il sovracampionamento disabilitato).

Il sovracampionamento migliora la qualità della lightmap con meno rumore, rende le ombre più uniformi e migliora l'ombreggiatura per i piccoli dettagli negli oggetti. Tuttavia, potrebbe comportare un aumento significativo dei tempi di preparazione e dell'utilizzo di memoria durante la preparazione delle lightmap. Il padding è regolato automaticamente per evitare di aumentare le perdite di luce.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

Il fattore per cui la densità dei texel viene moltiplicata per il sovracampionamento. Per risultati ottimali, utilizza un valore intero. Sebbene siano consentiti valori frazionari, questi possono aumentare le perdite di luce e sfocare la lightmap.

Valori più elevati potrebbero risultare in una migliore qualità, ma potrebbero anche aumentare i tempi di preparazione e l'utilizzo di memoria durante la preparazione.

Vedi :ref:`supersampling<class_LightmapGI_property_supersampling>` per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

Scala la densità dei texel della lightmap di tutte le mesh per il precalcolo attuale. Questo è un moltiplicatore che si basa sulle dimensioni dei texel della lightmap esistente definita in ogni scena 3D importata, insieme al moltiplicatore di densità per mesh (che è progettato per quando la stessa mesh viene utilizzata a scale diverse). Valori più bassi risulteranno in tempi di precalcolo più rapidi.

Ad esempio, raddoppiando :ref:`texel_scale<class_LightmapGI_property_texel_scale>` si raddoppia la risoluzione della texture lightmap per tutti gli oggetti *su ciascun asse*, quindi *quadruplicherà* il conteggio dei texel.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

Se ``true``, utilizza un algoritmo di rimozione del rumore basato su GPU sulla lightmap generata. Questo elimina la maggior parte del rumore all'interno della lightmap generata al costo di tempi di precalcolo più lunghi. Le dimensioni dei file in genere non sono influenzate in modo notevole dall'uso di un denoiser, tuttavia la compressione senza perdita di dati potrebbe comprimere meglio un'immagine con il rumore rimosso.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

Se ``true``, sarà generata una texture con le informazioni di illuminazione per velocizzare la generazione dell'illuminazione indiretta, a scapito di una certa accuratezza. La geometria potrebbe mostrare infiltrazioni di luce in più con lightmap a bassa risoluzione o con UV che stirano molto la lightmap lungo le superfici. Lascia :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` al suo valore predefinito di ``true`` se non sei sicuro.

\ **Nota:** :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` ha effetto solo se :ref:`bounces<class_LightmapGI_property_bounces>` è impostato su un valore maggiore o uguale a ``1``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
