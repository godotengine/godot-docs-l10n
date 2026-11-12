:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Calcule et stocke les lightmaps pré-calculées pour une illumination globale rapide.

.. rst-class:: classref-introduction-group

Description
-----------

Le nœud **LightmapGI** est utilisé pour calculer et stocker des lightmaps pré-calculées. Les lightmaps sont utilisées pour fournir un éclairage indirect de haute qualité avec très peu de fuites de lumière. **LightmapGI** peut également fournir des reflets rugueux en utilisant des harmoniques sphériques si :ref:`directional<class_LightmapGI_property_directional>` est activé. Les objets dynamiques peuvent recevoir un éclairage indirect grâce à des *sondes de lumière*, qui peuvent être automatiquement placées en définissant :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` à une valeur autre que :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Des sondes de lightmap supplémentaires peuvent également être ajoutées en créant des nœuds :ref:`LightmapProbe<class_LightmapProbe>`. Le désavantage est que les lightmaps sont entièrement statiques et ne peuvent pas être pré-calculées dans un projet exporté. Pré-calculer un nœud **LightmapGI** est également plus lent que :ref:`VoxelGI<class_VoxelGI>`.

\ **Génération procédurale :** La fonctionnalité de pré-calcul des lightmaps est uniquement disponible dans l'éditeur. Cela signifie que **LightmapGI** n'est pas adapté aux niveaux générés procéduralement ou construits par l'utilisateur. Pour les niveaux générés procéduralement ou construits par l'utilisateur, utilisez :ref:`VoxelGI<class_VoxelGI>` ou SDFGI (voir :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Performance :** **LightmapGI** fournit la meilleure performance d'exécution possible pour l'éclairage global. Il convient pour du matériel bas de gamme, y compris les graphismes intégrés et les appareils mobiles.

\ **Note :** En raison de la façon dont fonctionnent les lightmaps, la plupart des propriétés n'ont qu'un effet visible qu'une fois que les lightmaps sont de nouveau pré-calculées.

\ **Note :** Le pré-calcul des lightmaps sur des :ref:`CSGShape3D<class_CSGShape3D>`\ s et :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ es n'est pas supporté, car ils ne peuvent pas stocker les données UV2 requises pour le pré-calcul.

\ **Note :** Si aucun lightmapper personnalisé n'est installé, **LightmapGI** ne peut être pré-calculée qu'à partir d'appareils qui supportent les moteurs de rendus Forward+ ou Mobile.

\ **Note :** Le nœud **LightmapGI** ne fait que pré-calculer des données de lumière pour les nœuds enfants de son parent. Les nœuds plus haut la hiérarchie de la scène ne seront pas pré-calculés.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser l'illumination globale par Lightmap <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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
   | :ref:`float<class_float>`                                 | :ref:`specular_intensity<class_LightmapGI_property_specular_intensity>`               | ``0.0``               |
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

Énumérations
------------------------

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

Qualité de calcul faible (temps de calcul les plus rapides). La qualité de ce préréglage peut être ajustée en changeant :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` et :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

Qualité de calcul moyenne (temps de calcul rapides). La qualité de ce préréglage peut être ajustée en changeant :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` et :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

Qualité de calcul élevée (temps de calcul lents). La qualité de ce préréglage peut être ajustée en changeant :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` et :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

Qualité de calcul la plus élevée (temps de calcul les plus lents). La qualité de ce préréglage peut être ajustée en changeant :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` et :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

Don't generate additional lightmap probes for lighting dynamic objects. Probes will still be generated on each corner of the LightmapGI's bounds (8 probes total), so that interpolation works correctly when using additional :ref:`LightmapProbe<class_LightmapProbe>` nodes.

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

Niveau le plus bas de sous-division (temps de calcul les plus rapides, tailles de fichiers les plus petites).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

Faible niveau de sous-division (temps de calcul rapide, petites tailles de fichiers).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

Niveau élevé de sous-division (temps de calcul lent, tailles de fichiers importantes).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

Niveau le plus élevé de sous-division (temps de calcul les plus lents, tailles de fichiers les plus grandes).

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

Le pré-calcul de la lightmap a réussi.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

Le pré-calcul des lightmaps a échoué car il était impossible d'accéder au nœud racine de la scène éditée.

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

Le pré-calcul des lightmaps a échoué car la ressource des données de lightmap est intégrée dans une ressource étrangère.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

Le pré-calcul des lightmaps a échoué car il n'y a pas de lightmapper disponible dans cette compilation de Godot.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

Le pré-calcul des lightmaps a échoué car le chemin de sauvegarde des :ref:`LightmapGIData<class_LightmapGIData>` n'est pas configuré dans la ressource.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

Le pré-calcul des lightmaps a échoué car il n'y a pas de maillage dont le :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` vaut :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` et avec un mapping UV2 valide dans la scène actuelle. Vous pourriez avoir besoin de sélectionner des scène 3D dans le dock Import et changer leur mode d'illumination globale de manière appropriée.

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

Le pré-calcul des lightmaps a échoué car le lightmapper a échoué à analyser certains des maillages marqués comme statique pour le pré-calcul.

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

Le pré-calcul des lightmaps a échoué car l'image résultante n'a pas pu être sauvegardée ou importée par Godot après sa sauvegarde.

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

L'utilisateur a avorté l'opération de pré-calcul des lightmaps (généralement en cliquant sur le bouton **Annuler** dans le fenêtre de progression).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

Le pré-calcul des lightmaps a échoué car la taille de texture maximale est trop petite pour faire rentrer certains des maillages marqués pour le pré-calcul.

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

Le pré-calcul de la lightmap a échoué car la lightmap est trop petite.

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

Le pré-calcul de la lightmap a échoué car la lightmap ne rentrait pas dans un atlas (atlas trop petit).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_EXCEEDS_DEVICE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_EXCEEDS_DEVICE_LIMIT** = ``12``

Lightmap baking failed as the baking process requires a texture larger than the maximum texture size supported by the rendering device. This can happen when :ref:`supersampling<class_LightmapGI_property_supersampling>` is enabled with a high :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

Ignorer l'éclairage de l'environnement lors du pré-calcul des lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

Utiliser l'éclairage de l'environnement de la scène lors du pré-calcul des lightmaps.

\ **Note :** Si vous calculez des lightmaps dans une scène sans nœud :ref:`WorldEnvironment<class_WorldEnvironment>`, cela se comportera comme :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`. Le ciel de prévisualisation de l'éditeur et le soleil ne sont *pas* pris en compte par **LightmapGI** lors du pré-calcul des lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

Utiliser :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` comme source de l'éclairage de l'environnement lors du pré-calcul des lightmaps.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

Utiliser :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>` multiplié par :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` comme source constante d'éclairage de l'environnement lors du pré-calcul des lightmaps.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Le biais à utiliser lors du calcul des ombres. Augmenter :ref:`bias<class_LightmapGI_property_bias>` peut corriger le "shadow acne" (litt. "acné des ombres", des pointillés apparaissant sur les ombres) sur les lightmap résultantes, mais peut introduire du peter-panning (des ombres ne se connectant pas à leur projeteur). Les ombres de :ref:`Light3D<class_Light3D>` en temps réel ne sont pas affectées par cette propriété :ref:`bias<class_LightmapGI_property_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

Le multiplicateur d'énergie pour chaque rebond. Des valeurs plus élevées rendront l'éclairage indirect plus lumineux. Une valeur de ``1.0`` représente un comportement physiquement correct, mais des valeurs plus élevées peuvent être utilisées pour que l'éclairage indirect se propage de manière plus visible lors de l'utilisation d'un faible nombre de rebonds. Cela peut être utilisé pour accélérer les temps de calcul en baissant le nombre de rebonds :ref:`bounces<class_LightmapGI_property_bounces>` puis en augmentant :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`.

\ **Note :** :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` a seulement un effet si :ref:`bounces<class_LightmapGI_property_bounces>` est défini à une valeur supérieure ou égale à ``1``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

Nombre de rebonds de la lumière qui sont pris en compte lors du pré-calcul. Des valeurs plus élevées résultent en un éclairage plus lumineux et plus réaliste, à un coût de temps de calcul plus long. S'il est défini à ``0``, seuls l'éclairage de l'environnement, la lumière directe et l'éclairage d'émission sont pré-calculés.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La ressource :ref:`CameraAttributes<class_CameraAttributes>` qui précise les niveaux d'exposition auxquels pré-calculer. Les propriétés d'auto-exposition et de non-exposition seront ignorées. Les paramètres d'exposition devraient être utilisés pour réduire la plage dynamique présente lors du pré-calcul. Si l'exposition est trop élevée, le **LightmapGI** aura des artéfacts de bande ou peut avoir des artéfacts de sur-exposition.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

La distance en pixels sur laquelle le dé-bruiteur échantillonne. Les valeurs inférieures conservent plus de détails, mais peuvent donner des résultats en tâches si la qualité de la lightmap n'est pas assez élevée. Seulement effectif si :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` vaut ``true`` et :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` est défini à JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

La force de l'étape de suppression du bruit appliquée aux lightmaps générées. Seulement effective si :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` vaut ``true`` et :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` est défini à JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

Si ``true``, pré-calcule les lightmaps pour qu'elles contiennent des informations directionnelles en tant qu'harmoniques sphériques. Cela résulte en une apparence plus réaliste de l'éclairage, en particulier avec des matériaux avec des normal maps et pour les lumières qui ont leur lumière directe pré-calculée (:ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` défini à :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` et avec :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` défini à ``false``). L'information directionnelle est également utilisée pour fournir des reflets rugueux pour les objets statiques et dynamiques. Ceci a un petit coût de performance lors de l'exécution puisque le shader doit effectuer plus de travail pour interpréter les informations de direction de la lightmap. Les lightmaps directionnelles prennent également plus de temps pour pré-calculer et résultent en des tailles de fichiers plus grandes.

\ **Note :** Le nom de la propriété n'est pas lié à :ref:`DirectionalLight3D<class_DirectionalLight3D>`. :ref:`directional<class_LightmapGI_property_directional>` fonctionne avec tous les types de lumière.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

La couleur à utiliser pour l'éclairage de l'environnement. Seulement effective lorsque :ref:`environment_mode<class_LightmapGI_property_environment_mode>` vaut :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

Le multiplicateur de couleur à utiliser pour l'éclairage de l'environnement. Seulement effectif si :ref:`environment_mode<class_LightmapGI_property_environment_mode>` est :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

Le ciel à utiliser comme source d'éclairage de l'environnement. Seulement effectif si :ref:`environment_mode<class_LightmapGI_property_environment_mode>` vaut :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

Le mode d'environnement à utiliser lors du pré-calcul des lightmaps.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

Le niveau de sous-division à utiliser lors de la génération automatique de :ref:`LightmapProbe<class_LightmapProbe>`\ s pour l'éclairage dynamique des objets. Des valeurs plus élevées résultent en un éclairage indirect plus précis sur les objets dynamiques, avec un coût de temps de calcul plus long et des tailles de fichiers plus grandes.

\ **Note :** Les :ref:`LightmapProbe<class_LightmapProbe>`\ s générées automatiquement ne sont pas visibles comme des nœuds dans le dock Scène, et ne peuvent pas être modifiés de cette façon après leur génération.

\ **Note :** Indépendamment de :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`, l'éclairage direct sur les objets dynamiques est toujours appliqué en utilisant des nœuds :ref:`Light3D<class_Light3D>` en temps réel.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Si ``true``, ignore la contribution de l'environnement lors du pré-calcul des lightmaps.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

La :ref:`LightmapGIData<class_LightmapGIData>` associé à ce nœud **LightmapGI**. Cette ressource est créée automatiquement après le pré-calcul, et n'est pas destinée à être créée manuellement.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

The maximum texture size for the generated texture atlas. Higher values will result in fewer slices being generated, but may not work on all hardware as a result of hardware limitations on texture sizes. Leave :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` at its default value of ``16384`` if unsure.

\ **Note:** If :ref:`supersampling<class_LightmapGI_property_supersampling>` is enabled, the texture atlas used while baking may be up to :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` times larger than :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`, since it's downsampled before saving.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

Le pré-réglage de qualité à utiliser lors du pré-calcul des lightmaps. Cela affecte les temps de calcul, mais les tailles des fichiers de sortie restent généralement identiques à tous les niveaux de qualité.

Pour accélérer davantage les temps de calcul, diminuez :ref:`bounces<class_LightmapGI_property_bounces>`, désactivez :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` et/ou diminuez :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

Pour augmenter encore la qualité, activez :ref:`supersampling<class_LightmapGI_property_supersampling>` et/ou augmentez :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**Expérimental :** Cette propriété peut être changée ou retirée dans de futures versions.

La politique de shadowmasking à utiliser pour les ombres directionnelles sur des objets statiques qui sont pré-calculés avec cette instance **LightmapGI**.

Le shadowmasking permet aux nœuds :ref:`DirectionalLight3D<class_DirectionalLight3D>` de projeter des ombres même en dehors de la plage définie par leur propriété :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Ceci est fait en pré-calculant une texture qui contient une shadowmap pour la lumière directionnelle, puis en utilisant cette texture selon le mode de shadowmask actuel.

\ **Note :** La texture Shadowmask n'est créée que si :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` ne vaut pas :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>`. Pour voir une différence, vous devez de nouveau pré-calculer les lightmaps après avoir changé de :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` vers tout autre mode.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_specular_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_intensity** = ``0.0`` :ref:`🔗<class_LightmapGI_property_specular_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_specular_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_intensity**\ (\ )

The strength of the lightmap's approximated specular lobe. This helps make lightmapped scenes look closer to real-time lighting, which is particularly noticeable for lights that use the :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` bake mode. Only effective if :ref:`directional<class_LightmapGI_property_directional>` is ``true``.

\ **Note:** The lightmap is only able to represent one light direction per texel, which means that the specular direction may appear to be incorrect in certain cases. This can manifest as specular lobes appearing to warp around as the camera moves.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

Si ``true``, les lightmaps sont pré-calculées avec l'échelle de texel multipliée par :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` et sous-échantilionnées avant d'enregistrer la lightmap (ainsi, la densité de texel effective est identique à celle avec le Suréchantillonnage désactivé).

Le suréchantillonnage offre une qualité de lightmap accrue avec moins de bruit, des ombres plus lisses et un meilleur ombrage de petites caractéristiques d'objets. Cependant, il peut entraîner une augmentation significative des temps de calcul et d'utilisation de la mémoire pendant le pré-calcul des lightmaps. Le rembourrage est automatiquement ajusté pour éviter d'augmenter les fuites de lumière.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

Le facteur par lequel la densité de texel est multipliée pour le suréchantillionnage. Pour les meilleurs résultats, utilisez une valeur entière. Bien que les valeurs fractionnelles soient autorisées, elles peuvent entraîner une fuite des lumières accrue et une lightmap floue.

Des valeurs plus élevées peuvent résulter en une meilleure qualité, mais également augmenter les temps de calcul et l'utilisation de la mémoire pendant le calcul.

Voir :ref:`supersampling<class_LightmapGI_property_supersampling>` pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

Redimensionne la densité de texel de lightmap de tous les maillages pour le pré-calcul actuel. Il s'agit d'un multiplicateur qui s'appuie sur la taille de texel de lightmap existante définie dans chaque scène 3D importée, ainsi que sur le multiplicateur de densité par maillage (qui est conçu pour être utilisé lorsque le même maillage est utilisé à différentes échelles). les valeurs inférieures résulteront en des temps de calcul plus rapides.

Par exemple, doubler :ref:`texel_scale<class_LightmapGI_property_texel_scale>` double la résolution de texture de la lightmap pour tous les objets *sur chaque axe*, de sorte qu'il *quadruple* le compte de texels.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

Si ``true``, utilise un algorithme de dé-bruitage basé sur le GPU sur la lightmap générée. Cela élimine la plupart du bruit dans la lightmap générée au coût d'un temps de calcul plus long. Les tailles de fichiers ne sont généralement pas impactées significativement par l'utilisation d'un dé-bruiteur, bien que la compression sans perte peut faire un meilleur travail pour compresser une image dé-bruitée.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

Si ``true``, une texture avec les informations d'éclairage sera générée pour accélérer la génération de l'éclairage indirect avec un coût sur la précision. La géométrie peut présenter des artéfacts de fuite de lumière supplémentaires lors de l'utilisation de lightmaps basse résolution ou d'UVs qui étirent significativement la lightmap sur les surfaces. Laissez :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` à sa valeur par défaut de ``true`` si vous n'êtes pas sûr.

\ **Note :** :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` a seulement un effet si :ref:`bounces<class_LightmapGI_property_bounces>` est défini à une valeur supérieure ou égale à ``1``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
