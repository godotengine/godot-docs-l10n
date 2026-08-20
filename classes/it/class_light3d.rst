:github_url: hide

.. _class_Light3D:

Light3D
=======

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AreaLight3D<class_AreaLight3D>`, :ref:`DirectionalLight3D<class_DirectionalLight3D>`, :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>`

Fornisce una classe di base per diversi tipi di nodi luce.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Light3D è la classe di base *astratta* per i nodi di luce. Poiché non può essere istanziata, non dovrebbe essere utilizzata direttamente. Altri tipi di nodi di luce ereditano da essa. Light3D contiene le variabili e i parametri comuni utilizzati per l'illuminazione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Fingere l'illuminazione globale <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`                 | ``40.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>`             | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`               | ``10.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_shadow<class_Light3D_property_distance_fade_shadow>`               | ``50.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`editor_only<class_Light3D_property_editor_only>`                                 | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>`           | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeMode<enum_Light3D_BakeMode>` | :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`                         | ``2``                 |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`              | :ref:`light_color<class_Light3D_property_light_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`light_cull_mask<class_Light3D_property_light_cull_mask>`                         | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_energy<class_Light3D_property_light_energy>`                               | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`             | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>`           |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`                 |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`light_negative<class_Light3D_property_light_negative>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`      | :ref:`light_projector<class_Light3D_property_light_projector>`                         |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_size<class_Light3D_property_light_size>`                                   | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_specular<class_Light3D_property_light_specular>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_temperature<class_Light3D_property_light_temperature>`                     |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_bias<class_Light3D_property_shadow_bias>`                                 | ``0.1``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_blur<class_Light3D_property_shadow_blur>`                                 | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`shadow_caster_mask<class_Light3D_property_shadow_caster_mask>`                   | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`                   | ``2.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_reverse_cull_face<class_Light3D_property_shadow_reverse_cull_face>`       | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`     | ``0.05``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_correlated_color<class_Light3D_method_get_correlated_color>`\ (\ ) |const|                                                |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_Light3D_method_get_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_Light3D_method_set_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Light3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Light3D_Param>`

.. _class_Light3D_constant_PARAM_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ENERGY** = ``0``

Costante per accedere a :ref:`light_energy<class_Light3D_property_light_energy>`.

.. _class_Light3D_constant_PARAM_INDIRECT_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INDIRECT_ENERGY** = ``1``

Costante per accedere a :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`.

.. _class_Light3D_constant_PARAM_VOLUMETRIC_FOG_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_VOLUMETRIC_FOG_ENERGY** = ``2``

Costante per accedere a :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>`.

.. _class_Light3D_constant_PARAM_SPECULAR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPECULAR** = ``3``

Costante per accedere a :ref:`light_specular<class_Light3D_property_light_specular>`.

.. _class_Light3D_constant_PARAM_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_RANGE** = ``4``

Costante per accedere a :ref:`OmniLight3D.omni_range<class_OmniLight3D_property_omni_range>` o :ref:`SpotLight3D.spot_range<class_SpotLight3D_property_spot_range>`.

.. _class_Light3D_constant_PARAM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SIZE** = ``5``

Costante per accedere a :ref:`light_size<class_Light3D_property_light_size>`.

.. _class_Light3D_constant_PARAM_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ATTENUATION** = ``6``

Costante per accedere a :ref:`OmniLight3D.omni_attenuation<class_OmniLight3D_property_omni_attenuation>` o :ref:`SpotLight3D.spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. _class_Light3D_constant_PARAM_SPOT_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ANGLE** = ``7``

Costante per accedere a :ref:`SpotLight3D.spot_angle<class_SpotLight3D_property_spot_angle>`.

.. _class_Light3D_constant_PARAM_SPOT_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ATTENUATION** = ``8``

Costante per accedere a :ref:`SpotLight3D.spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>`.

.. _class_Light3D_constant_PARAM_SHADOW_MAX_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_MAX_DISTANCE** = ``9``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_1_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_1_OFFSET** = ``10``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_2_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_2_OFFSET** = ``11``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_3_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_3_OFFSET** = ``12``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`.

.. _class_Light3D_constant_PARAM_SHADOW_FADE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_FADE_START** = ``13``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`.

.. _class_Light3D_constant_PARAM_SHADOW_NORMAL_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_NORMAL_BIAS** = ``14``

Costante per accedere a :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BIAS** = ``15``

Costante per accedere a :ref:`shadow_bias<class_Light3D_property_shadow_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_PANCAKE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_PANCAKE_SIZE** = ``16``

Costante per accedere a :ref:`DirectionalLight3D.directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>`.

.. _class_Light3D_constant_PARAM_SHADOW_OPACITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_OPACITY** = ``17``

Costante per accedere a :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`.

.. _class_Light3D_constant_PARAM_SHADOW_BLUR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BLUR** = ``18``

Costante per accedere a :ref:`shadow_blur<class_Light3D_property_shadow_blur>`.

.. _class_Light3D_constant_PARAM_TRANSMITTANCE_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_TRANSMITTANCE_BIAS** = ``19``

Costante per accedere a :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`.

.. _class_Light3D_constant_PARAM_INTENSITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INTENSITY** = ``20``

Costante per accedere a :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>` e :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`. Usato solo quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è ``true``.

.. _class_Light3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_MAX** = ``21``

Rappresenta la dimensione dell'enumerazione :ref:`Param<enum_Light3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_Light3D_BakeMode:

.. rst-class:: classref-enumeration

enum **BakeMode**: :ref:`🔗<enum_Light3D_BakeMode>`

.. _class_Light3D_constant_BAKE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DISABLED** = ``0``

La luce è ignorata durante il precalcolo. Questa è la modalità più veloce, ma la luce sarà presa in considerazione durante il precalcolo dell'illuminazione globale. Questa modalità si dovrebbe generalmente usare per le luci dinamiche che cambiano rapidamente, poiché l'effetto dell'illuminazione globale è meno evidente su tali luci.

\ **Nota:** Nascondere una luce *non* influisce sul precalcolo di :ref:`LightmapGI<class_LightmapGI>`. Nascondere una luce influenzerà comunque il precalcolo di :ref:`VoxelGI<class_VoxelGI>` e di SDFGI (vedi :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

.. _class_Light3D_constant_BAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_STATIC** = ``1``

Light is taken into account in static baking (:ref:`VoxelGI<class_VoxelGI>`, :ref:`LightmapGI<class_LightmapGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`)). The light can be moved around or modified, but its global illumination will not update in real-time.

\ **Note:** The light is not baked in :ref:`LightmapGI<class_LightmapGI>` if :ref:`editor_only<class_Light3D_property_editor_only>` is ``true``.

\ **Note:** When using :ref:`LightmapGI<class_LightmapGI>`, both the direct and indirect light are baked. Since direct light is baked, the light doesn't display a specular lobe on static lightmapped meshes. Shadows on static lightmapped meshes will also look less detailed, but the light still casts shadows that can be displayed on dynamic objects. Since real-time light computations are skipped on static lightmapped meshes, this bake mode improves runtime performance compared to :ref:`BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>` and :ref:`BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>`.

.. _class_Light3D_constant_BAKE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DYNAMIC** = ``2``

Light is taken into account in dynamic baking (:ref:`VoxelGI<class_VoxelGI>` and SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`)). The light can be moved around or modified with global illumination updating in real-time. The light's global illumination appearance will be slightly different compared to :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. This has a greater performance cost compared to :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. When using SDFGI, the update speed of dynamic lights is affected by :ref:`ProjectSettings.rendering/global_illumination/sdfgi/frames_to_update_lights<class_ProjectSettings_property_rendering/global_illumination/sdfgi/frames_to_update_lights>`.

\ **Note:** When using :ref:`LightmapGI<class_LightmapGI>`, the light's indirect light is baked, but direct light and shadows remain real-time. This mode allows performing *subtle* changes to a light's color, energy, and position while still looking fairly correct. For example, you can use this to create flickering static torches that have their indirect light baked.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Light3D_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Light3D_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

Distanza dalla telecamera alla quale la luce inizia a svanire (in unità 3D).

\ **Nota:** Efficace solo per :ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Light3D_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Se ``true``, la luce svanirà gradualmente quando è lontana dalla :ref:`Camera3D<class_Camera3D>` attiva a partire da :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`. Questo agisce come una forma di livello di dettaglio (LOD). La luce svanirà su :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`, dopodiché sarà scartata e non sarà inviata allo shader. Usalo per ridurre il numero di luci attive in una scena e quindi migliorare le prestazioni.

\ **Nota:** Efficace solo per :ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Light3D_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

Distanza su cui la luce e la sua ombra svaniscono. L'energia della luce e l'opacità dell'ombra sono ridotti progressivamente su questa distanza, fino a diventare completamente invisibili.

\ **Nota:** Efficace solo per :ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_shadow:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_shadow** = ``50.0`` :ref:`🔗<class_Light3D_property_distance_fade_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_shadow**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_shadow**\ (\ )

La distanza dalla telecamera a cui l'ombra della luce è interrotta (in unità 3D). Imposta questo valore su un valore inferiore a :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` per migliorare ulteriormente le prestazioni, poiché il rendering delle ombre è spesso più costoso del rendering della luce stessa.

\ **Nota:** Efficace solo per :ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>` e solo quando :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light3D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

Se ``true``, la luce appare solo nell'editor e non sarà visibile in fase di esecuzione. Se ``true``, la luce non sarà mai precalcolata nei :ref:`LightmapGI<class_LightmapGI>`, a prescindere dalla sua :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_angular_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_angular_distance** = ``0.0`` :ref:`🔗<class_Light3D_property_light_angular_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La dimensione angolare della luce in gradi. Aumentando questo valore, le ombre saranno più sfumate da più lontano (dette anche percentage-closer soft shadows, o PCSS). Disponibile solo per :ref:`DirectionalLight3D<class_DirectionalLight3D>`. Per riferimento, il Sole dalla Terra è approssimativamente ``0.5``. Aumentare questo valore oltre ``0.0`` per luci con ombre abilitate avrà un notevole impatto sulle prestazioni a causa di PCSS.

\ **Nota:** :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>` non è influenzato da :ref:`Node3D.scale<class_Node3D_property_scale>` (la scala della luce o la scala del suo genitore).

\ **Nota:** PCSS per luci direzionali è supportato solo nel metodo di rendering Forward+, non Mobile o Compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_bake_mode:

.. rst-class:: classref-property

:ref:`BakeMode<enum_Light3D_BakeMode>` **light_bake_mode** = ``2`` :ref:`🔗<class_Light3D_property_light_bake_mode>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mode**\ (\ value\: :ref:`BakeMode<enum_Light3D_BakeMode>`\ )
- :ref:`BakeMode<enum_Light3D_BakeMode>` **get_bake_mode**\ (\ )

La modalità di precalcolo della luce. Ciò influirà sulle tecniche di illuminazione globale che influenzano il rendering della luce.

\ **Nota:** La modalità di illuminazione globale delle mesh influirà anche sul rendering dell'illuminazione globale. Vedi :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **light_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light3D_property_light_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Il colore della luce in codifica sRGB non lineare. È possibile usare un colore *sovra-luminoso* per un risultato equivalente all'aumento della :ref:`light_energy<class_Light3D_property_light_energy>` della luce.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **light_cull_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_light_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

La luce influenzerà gli oggetti negli strati selezionati.

\ **Nota:** La maschera di culling della luce è ignorata da :ref:`VoxelGI<class_VoxelGI>`, SDFGI, :ref:`LightmapGI<class_LightmapGI>` e la nebbia volumetrica. Questi renderizzeranno sempre le luci in modo da ignorare la maschera di culling. Vedi anche :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Il moltiplicatore di intensità della luce (non è un'unità fisica). Per :ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>`, la modifica di questo valore cambierà solo l'intensità del colore della luce, non il raggio della luce.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_indirect_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Moltiplicatore secondario utilizzato con la luce indiretta (rimbalzi di luce). Utilizzato con :ref:`VoxelGI<class_VoxelGI>` e SDFGI (vedi :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Nota:** Questa proprietà è ignorata se :ref:`light_energy<class_Light3D_property_light_energy>` è uguale a ``0.0``, poiché la luce non sarà affatto presente nello shader GI.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lumens:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lumens** :ref:`🔗<class_Light3D_property_light_intensity_lumens>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilizzato dalle luci posizionali (:ref:`OmniLight3D<class_OmniLight3D>` e :ref:`SpotLight3D<class_SpotLight3D>`) quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è ``true``. Imposta l'intensità della sorgente luminosa misurata in lumen. I lumen sono una misura del flusso luminoso, ovvero la quantità totale di luce visibile emessa da una sorgente luminosa per unità di tempo.

Per :ref:`SpotLight3D<class_SpotLight3D>`, assumiamo che l'area esterna al cono visibile sia circondata da un materiale che assorbe perfettamente la luce. Di conseguenza, la luminosità apparente dell'area del cono non cambia quando il cono aumenta e diminuisce di dimensioni.

Una tipica lampadina domestica può variare da circa 600 lumen a 1.200 lumen, una candela è di circa 13 lumen, mentre un lampione può essere di circa 60.000 lumen.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lux:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lux** :ref:`🔗<class_Light3D_property_light_intensity_lux>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilizzato da :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ s quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è ``true``. Imposta l'intensità della sorgente luminosa misurata in Lux. Lux è una misura del flusso luminoso per unità di area, è uguale a un lumen per metro quadrato. Lux è la misura di quanta luce colpisce una superficie in un determinato momento.

In una giornata limpida e soleggiata una superficie esposta alla luce solare diretta può essere di circa 100.000 lux, una stanza tipica di una casa può essere di circa 50 lux, mentre il terreno illuminato dalla luna può essere di circa 0,1 lux.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_negative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **light_negative** = ``false`` :ref:`🔗<class_Light3D_property_light_negative>`

.. rst-class:: classref-property-setget

- |void| **set_negative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_negative**\ (\ )

Se ``true``, l'effetto della luce è invertito, scurendo aree e proiettando ombre luminose.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_projector:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **light_projector** :ref:`🔗<class_Light3D_property_light_projector>`

.. rst-class:: classref-property-setget

- |void| **set_projector**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_projector**\ (\ )

La :ref:`Texture2D<class_Texture2D>` proiettata dalla luce. :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` deve essere attivo affinché il proiettore funzioni. I proiettori di luce fanno apparire la luce come se splendesse attraverso un oggetto colorato ma trasparente, quasi come la luce che splende attraverso una vetrata.

\ **Nota:** A differenza di :ref:`BaseMaterial3D<class_BaseMaterial3D>` la cui modalità filtro può essere regolata in base al materiale, la modalità filtro per le texture del proiettore di luce è impostata globalmente con :ref:`ProjectSettings.rendering/textures/light_projectors/filter<class_ProjectSettings_property_rendering/textures/light_projectors/filter>`.

\ **Nota:** Le texture del proiettore di luce sono supportate solo nei metodi di rendering Forward+ e Mobile, non Compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_size** = ``0.0`` :ref:`🔗<class_Light3D_property_light_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La dimensione simulata della luce in unità di Godot, che influisce sull'ombreggiatura e sulle ombre. Per gli :ref:`OmniLight3D<class_OmniLight3D>` e gli :ref:`SpotLight3D<class_SpotLight3D>`, aumentare questo valore simula una luce d'area sferica, espandendo la dimensione dei riflessi speculari. Se le ombre sono abilitate, una penumbra viene renderizzata, rendendo le ombre più sfocate. Per :ref:`AreaLight3D<class_AreaLight3D>`, influisce solo sulle ombre. Le penombre vengono simulate con percentage-closer soft shadows, o PCSS, il quale ha un notevole impatto sulle prestazioni per i valori superiori a ``0.0``\ 

\ **Nota:** :ref:`light_size<class_Light3D_property_light_size>` non è influenzato da :ref:`Node3D.scale<class_Node3D_property_scale>` (la scala della luce o la scala del suo genitore).

\ **Nota:** Il PCSS per luci posizionali è supportato solo nei metodi di rendering Forward+ e Mobile, non Compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_specular:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_specular** = ``1.0`` :ref:`🔗<class_Light3D_property_light_specular>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

L'intensità della macchia speculare negli oggetti influenzati dalla luce. A ``0``, la luce diventa una luce puramente diffusa. Se l'emissione non è precalcolata, questa può essere utilizzata per evitare riflessi poco realistici quando si posizionano le luci sopra una superficie emissiva.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_temperature:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_temperature** :ref:`🔗<class_Light3D_property_light_temperature>`

.. rst-class:: classref-property-setget

- |void| **set_temperature**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_temperature**\ (\ )

Imposta la temperatura di colore della sorgente luminosa, misurata in Kelvin. Serve per calcolare una temperatura di colore correlata che tinge il :ref:`light_color<class_Light3D_property_light_color>`.

Il sole in una giornata nuvolosa è di circa 6500 Kelvin, in una giornata limpida è tra 5500 e 6000 Kelvin e in una giornata limpida all'alba o al tramonto varia fino a circa 1850 Kelvin.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_volumetric_fog_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_volumetric_fog_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_volumetric_fog_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Moltiplicatore secondario moltiplicato con :ref:`light_energy<class_Light3D_property_light_energy>`, quindi utilizzato con la nebbia volumetrica di :ref:`Environment<class_Environment>` (se abilitata). Se impostato su ``0.0``, il calcolo della nebbia volumetrica sarà saltato per questa luce, il che può migliorare le prestazioni per grandi quantità di luci quando la nebbia volumetrica è abilitata.

\ **Nota:** Per evitare che gli effetti di luce dinamici di breve durata interagiscano male con la nebbia volumetrica, le luci usate in tali effetti dovrebbero avere :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` impostato su ``0.0`` a meno che :ref:`Environment.volumetric_fog_temporal_reprojection_enabled<class_Environment_property_volumetric_fog_temporal_reprojection_enabled>` non sia disabilitato (o a meno che la quantità di riproiezione non sia notevolmente ridotta).

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_bias** = ``0.1`` :ref:`🔗<class_Light3D_property_shadow_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilizzato per regolare l'aspetto delle ombre. Un valore troppo piccolo provoca l'auto-ombreggiatura ("shadow acne"), mentre un valore troppo grande produce ombre separate dall'oggetto che le crea ("peter-panning"). Regola come necessario.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_blur:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_blur** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_blur>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Sfoca i bordi dell'ombra. Può essere utilizzato per nascondere gli artefatti di pixel nelle mappe ombra a bassa risoluzione. Un valore elevato può influire sulle prestazioni, rende le ombre granulose e provocare altri artefatti indesiderati. Cerca di mantenere il valore il più vicino possibile a quello predefinito.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_caster_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_caster_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_shadow_caster_mask>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_caster_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_caster_mask**\ (\ )

La luce proietterà ombre solo sugli oggetti presenti negli strati selezionati.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light3D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_shadow**\ (\ )

Se ``true``, la luce proietterà ombre in tempo reale. Ciò ha un costo significativo in termini di prestazioni. Abilita il rendering delle ombre solo quando fa una differenza evidente nell'aspetto della scena e considera di usare :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>` per nascondere la luce quando è lontana dal :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_normal_bias** = ``2.0`` :ref:`🔗<class_Light3D_property_shadow_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Compensa la ricerca nella mappa delle ombre in base alla normale dell'oggetto. Può essere utilizzato per ridurre gli artefatti di auto-ombreggiatura senza utilizzare :ref:`shadow_bias<class_Light3D_property_shadow_bias>`. In pratica, questo valore dovrebbe essere modificato insieme a :ref:`shadow_bias<class_Light3D_property_shadow_bias>` per ridurre il più possibile gli artefatti.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_opacity:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_opacity** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_opacity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

L'opacità da usare quando si renderizza la mappa di ombre della luce. Valori inferiori a ``1.0`` fanno apparire la luce attraverso le ombre. Questo può essere usato per fingere un illuminazione globale a basso costo in termini di prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_reverse_cull_face:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_reverse_cull_face** = ``false`` :ref:`🔗<class_Light3D_property_shadow_reverse_cull_face>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_reverse_cull_face**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shadow_reverse_cull_face**\ (\ )

Se ``true``, inverte il backface culling della mesh. Questo può essere utile quando hai una mesh piatta che ha una luce dietro di essa. Se hai bisogno di proiettare un'ombra su entrambi i lati della mesh, imposta la mesh in modo che utilizzi ombre bifacciali con :ref:`GeometryInstance3D.SHADOW_CASTING_SETTING_DOUBLE_SIDED<class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_transmittance_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_transmittance_bias** = ``0.05`` :ref:`🔗<class_Light3D_property_shadow_transmittance_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Light3D_method_get_correlated_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_correlated_color**\ (\ ) |const| :ref:`🔗<class_Light3D_method_get_correlated_color>`

Restituisce il :ref:`Color<class_Color>` di un corpo nero idealizzato alla temperatura della luce (:ref:`light_temperature<class_Light3D_property_light_temperature>`). Questo valore è calcolato internamente in base a :ref:`light_temperature<class_Light3D_property_light_temperature>`. Questo :ref:`Color<class_Color>` è moltiplicato per :ref:`light_color<class_Light3D_property_light_color>` prima di essere inviato al :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const| :ref:`🔗<class_Light3D_method_get_param>`

Restituisce il valore del parametro :ref:`Param<enum_Light3D_Param>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light3D_method_set_param>`

Imposta il valore del parametro :ref:`Param<enum_Light3D_Param>` specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
