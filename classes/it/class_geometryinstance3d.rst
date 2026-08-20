:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

Nodo di base per le istanze visive basate sulla geometria.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Nodo di base per le istanze visuali basate sulla geometria. Condivide alcune funzionalità comuni come visibilità e materiali personalizzati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Campi di visibilità (HLOD) <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`       | :ref:`cast_shadow<class_GeometryInstance3D_property_cast_shadow>`                                     | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                         | :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`                         | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`                     | :ref:`gi_lightmap_scale<class_GeometryInstance3D_property_gi_lightmap_scale>`                         | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`             | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                                   | :ref:`gi_mode<class_GeometryInstance3D_property_gi_mode>`                                             | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                         | :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>`           | ``false``                  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`lod_bias<class_GeometryInstance3D_property_lod_bias>`                                           | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_overlay<class_GeometryInstance3D_property_material_overlay>`                           |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_override<class_GeometryInstance3D_property_material_override>`                         |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`transparency<class_GeometryInstance3D_property_transparency>`                                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`               | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`     | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` | :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>`       | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_instance_shader_parameter<class_GeometryInstance3D_method_get_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_instance_shader_parameter<class_GeometryInstance3D_method_set_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

Non proietterà ombre. Usalo per migliorare le prestazioni per piccole geometrie che difficilmente proietteranno ombre evidenti (come detriti).

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

Proietterà ombre da tutte le facce visibili nel GeometryInstance3D.

Terrà conto del culling, quindi le facce non renderizzate non saranno prese in considerazione durante la proiezione delle ombre.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

Proietterà ombre da tutte le facce visibili nel GeometryInstance3D.

Non terrà conto del culling, quindi tutte le facce saranno prese in considerazione quando si proiettano le ombre.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

Saranno mostrate solo le ombre proiettate da questo oggetto.

In altre parole, la mesh reale non sarà visibile, saranno visibili solo le ombre proiettate dalla mesh.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

Modalità di illuminazione globale disabilitata. Da utilizzare per oggetti dinamici che non contribuiscono all'illuminazione globale (ad esempio per personaggi). Quando si utilizza :ref:`VoxelGI<class_VoxelGI>` e SDFGI, la geometria *riceverà* illuminazione indiretta e riflessi, ma la geometria non verrà considerata nel precalcolo di GI.

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

Modalità illuminazione globale precalcolata. Da usare per gli oggetti statici che contribuiscono all'illuminazione globale (come la geometria di un livello). Questa modalità di GI è efficace quando si utilizzano :ref:`VoxelGI<class_VoxelGI>`, SDFGI e :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

Modalità illuminazione globale dinamica. Da usare per gli oggetti dinamici che contribuiscono all'illuminazione globale. Questa modalità di GI è efficace solo quando si utilizza :ref:`VoxelGI<class_VoxelGI>`, ma ha un impatto maggiore sulle prestazioni rispetto a :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Quando si usano altri metodi per GI, si comporterà come :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`. Quando si utilizza :ref:`LightmapGI<class_LightmapGI>`, l'oggetto riceverà illuminazione indiretta attraverso le sonde lightmap, anziché la texture lightmap precalcolata.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Densità dei texel standard per il lightmapping con :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Moltiplica la densità dei texel per 2× per il lightmapping con :ref:`LightmapGI<class_LightmapGI>`. Per garantire la coerenza nella densità dei texel, usa questo quando ridimensioni una mesh con un fattore compreso tra 1,5 e 3,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Moltiplica la densità dei texel per 4× per il lightmapping con :ref:`LightmapGI<class_LightmapGI>`. Per garantire la coerenza nella densità dei texel, usa questo quando ridimensioni una mesh con un fattore compreso tra 3,0 e 6,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Moltiplica la densità dei texel per 8× per il lightmapping con :ref:`LightmapGI<class_LightmapGI>`. Per garantire la coerenza nella densità dei texel, usa questo quando ridimensioni una mesh con un fattore maggiore di 6,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Rappresenta la dimensione dell'enumerazione :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

Non dissolverà né se stesso né le sue dipendenze di visibilità, sarà utilizzata l'isteresi invece. Questo è l'approccio più rapido ai LOD manuali, ma può causare transizioni tra i LOD evidenti a seconda di come vengono create le mesh LOD. Vedi :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` e :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>` per ulteriori informazioni.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

Scomparirà da solo quando raggiungerà i limiti del suo campo di visibilità. È più lento di :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, ma può fornire transizioni più fluide. L'intervallo di dissolvenza è determinato da :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` e :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Nota:** Supportato solo quando si utilizza il metodo di rendering Forward+. Quando si utilizza il metodo di rendering Mobile o Compatibilità, questa modalità si comporta come :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` ma con l'isteresi disabilitata.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

Farà apparire le sue dipendenze di visibilità (vedi :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`) quando raggiunge i limiti del suo campo di visibilità. Questo è più lento di :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, ma può fornire transizioni più fluide. L'intervallo di dissolvenza è determinato da :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` e :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Nota:** Supportato solo quando si utilizza il metodo di rendering Forward+. Quando si utilizza il metodo di rendering Mobile o Compatibilità, questa modalità si comporta come :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` ma con isteresi disabilitata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GeometryInstance3D_property_cast_shadow:

.. rst-class:: classref-property

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **cast_shadow** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_cast_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_cast_shadows_setting**\ (\ value\: :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`\ )
- :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **get_cast_shadows_setting**\ (\ )

La modalità usata per proiettare ombre da questa istanza.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GeometryInstance3D_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Sostituisce la bounding box di questo nodo con una personalizzata. Si può usare per evitare il costoso ricalcolo dell':ref:`AABB<class_AABB>` che avviene quando uno scheletro è usato con un :ref:`MeshInstance3D<class_MeshInstance3D>` o per avere un controllo preciso sulla bounding box del :ref:`MeshInstance3D<class_MeshInstance3D>`. Per usare l'AABB predefinito, imposta il valore su un :ref:`AABB<class_AABB>` con tutti i campi impostati su ``0.0``. Per evitare il frustum culling, imposta :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` su un AABB molto grande che copra l'intero mondo di gioco come ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``. Per disabilitare ogni tipo di culling (incluso l'occlusion culling e il culling tramite strati), chiama :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>` sull':ref:`RID<class_RID>` del **GeometryInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

La distanza ulteriormente aggiunta alla bounding box (:ref:`AABB<class_AABB>`) del GeometryInstance3D per aumentare il suo cull box.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**Deprecato:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

La densità dei texel da user per il lightmapping in :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

La densità dei texel da usare per il lightmapping in :ref:`LightmapGI<class_LightmapGI>`. Valori di scala maggiori forniscono una risoluzione più alta nella lightmap, il che può risultare in ombre più nitide per le luci che hanno precalcolato sia la luce diretta sia quella indiretta. Tuttavia, valori di scala maggiori aumenteranno anche lo spazio occupato dalla mesh nella texture lightmap, il che aumenta i requisiti di memoria, archiviazione e tempo di precalcolo. Quando si usa una singola mesh a scale diverse, si consiglia di regolare questo valore per mantenere la densità dei texel nella lightmap coerente tra le mesh.

Ad esempio, raddoppiando :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` si raddoppia la risoluzione della texture lightmap per questo oggetto *su ciascun asse*, quindi *quadruplicherà* il numero dei texel.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

La modalità di illuminazione globale da usare per l'intera geometria. Per evitare risultati incoerenti, usa una modalità che corrisponda allo scopo della mesh durante il gioco (statica/dinamica).

\ **Nota:** La modalità di precalcolo delle luci influirà anche sul rendering dell'illuminazione globale. Vedi :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

Se ``true``, disabilita l'occlusion culling per questa istanza. Utile per i gizmo che devono essere renderizzati anche quando l'occlusion culling è in uso.

\ **Nota:** :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` non influisce sul frustum culling (che è ciò che accade quando un oggetto non è visibile in base all'angolazione della telecamera). Per evitare il frustum culling, imposta :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` su un AABB molto grande che copra l'intero mondo di gioco, ad esempio ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Modifica quanto presto la mesh passa a un livello di dettaglio inferiore. Un valore pari a 0 forzerà la mesh al suo livello di dettaglio più basso, un valore pari a 1 utilizzerà le impostazioni predefinite e valori più grandi manterranno la mesh a un livello di dettaglio più alto a distanze maggiori.

Utile per testare le transizioni del livello di dettaglio nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

Il materiale sovrapposto per l'intera geometria.

Se a questa proprietà è assegnato un materiale, sarà renderizzato sopra qualsiasi altro materiale attivo per tutte le superfici.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

Il materiale sostitutivo per l'intera geometria.

Se a questa proprietà è assegnato un materiale, sarà utilizzato al posto di qualsiasi materiale impostato in qualsiasi slot di materiale della mesh.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

La trasparenza applicata all'intera geometria (come moltiplicatore della trasparenza esistente dei materiali). ``0.0`` è totalmente opaco, mentre ``1.0`` è totalmente trasparente. Valori maggiori di ``0.0`` (esclusivo) forzeranno i materiali della geometria a passare attraverso la pipeline trasparente, che è più lenta da renderizzare e può presentare problemi di rendering a causa di un ordinamento della trasparenza non corretto. Tuttavia, a differenza di utilizzare un materiale trasparente, Impostare :ref:`transparency<class_GeometryInstance3D_property_transparency>` su un valore maggiore di ``0.0`` (esclusivo) *non* disabiliterà il rendering delle ombre.

Negli shader spatial, ``1.0 - transparency`` è impostato come valore predefinito dell'``ALPHA`` integrato.

\ **Nota:** :ref:`transparency<class_GeometryInstance3D_property_transparency>` è limitato tra ``0.0`` e ``1.0``, quindi questa proprietà non può essere utilizzata per rendere i materiali trasparenti più opachi di quanto non siano originalmente.

\ **Nota:** Supportato solo quando si utilizza il metodo di rendering Forward+. Quando si utilizza il metodo di rendering Mobile o Compatibilità, :ref:`transparency<class_GeometryInstance3D_property_transparency>` è ignorato ed è considerato sempre ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

Distanza iniziale da cui sarà visibile il GeometryInstance3D, tenendo conto anche di :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>`. Il valore predefinito di 0 serve per disabilitare la verifica dell'intervallo.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

Margine per la soglia :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`. Il GeometryInstance3D cambierà il suo stato di visibilità solo quando supera o scende sotto la soglia :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` di questa quantità.

Se :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` è :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, questo agisce come una distanza di isteresi. Se :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` è :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` o :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, questo agisce come una distanza di transizione di dissolvenza e deve essere impostato su un valore maggiore di ``0.0`` affinché l'effetto sia evidente.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

Distanza da cui sarà nascosto il GeometryInstance3D, tenendo conto anche di :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`. Il valore predefinito di 0 serve per disabilitare la verifica dell'intervallo.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

Margine per la soglia :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`. Il GeometryInstance3D cambierà il suo stato di visibilità solo quando supera o scende sotto la soglia :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` di questa quantità.

Se :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` è :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, questo agisce come una distanza di isteresi. Se :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` è :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` o :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, questo agisce come una distanza di transizione di dissolvenza e deve essere impostato su un valore maggiore di ``0.0`` affinché l'effetto sia evidente.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

Controlla quali istanze saranno dissolte quando ci si avvicina ai limiti del campo di visibilità.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

Ottieni il valore di un parametro dello shader impostato in questa istanza.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

Imposta il valore di un'uniforme di shader solo per questa istanza (`uniforme per istanza <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__). Consulta anche :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` per assegnare un'uniforme a tutte le istanze che utilizzano lo stesso :ref:`ShaderMaterial<class_ShaderMaterial>`.

\ **Nota:** Affinché un'uniforme di shader possa essere assegnabile per ogni istanza, *deve* essere definita con ``instance uniform ...`` anziché ``uniform ...`` nel codice dello shader.

\ **Nota:** ``name`` è sensibile alle maiuscole e alle minuscole e deve corrispondere esattamente al nome dell'uniforme in codice (non al nome formattato nell'ispettore).

\ **Nota:** Le uniformi di shader per ogni istanza sono disponibili solo nei shader Spatial e CanvasItem, ma non per gli shader Fog, Sky, o Particles.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
