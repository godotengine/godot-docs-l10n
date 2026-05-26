:github_url: hide

.. meta::
	:keywords: stain

.. _class_Decal:

Decal
=====

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nœud qui projette une texture sur un :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

**Decal**\ s are used to project a texture onto a :ref:`Mesh<class_Mesh>` in the scene. Use Decals to add detail to a scene without affecting the underlying :ref:`Mesh<class_Mesh>`. They are often used to add weathering to building, add dirt or mud to the ground, or add variety to props. Decals can be moved at any time, making them suitable for things like blob shadows or laser sight dots.

They are made of an :ref:`AABB<class_AABB>` and a group of :ref:`Texture2D<class_Texture2D>`\ s specifying :ref:`Color<class_Color>`, normal, ORM (ambient occlusion, roughness, metallic), and emission. Decals are projected within their :ref:`AABB<class_AABB>` so altering the orientation of the Decal affects the direction in which they are projected. By default, Decals are projected down (i.e. from positive Y to negative Y).

The :ref:`Texture2D<class_Texture2D>`\ s associated with the Decal are automatically stored in a texture atlas which is used for drawing the decals so all decals can be drawn at once. Godot uses clustered decals, meaning they are stored in cluster data and drawn when the mesh is drawn, they are not drawn as a post-processing effect after.

\ **Note:** Decals cannot affect an underlying material's transparency, regardless of its transparency mode (alpha blend, alpha scissor, alpha hash, opaque pre-pass). This means translucent or transparent areas of a material will remain translucent or transparent even if an opaque decal is applied on them.

\ **Note:** Decals are only supported in the Forward+ and Mobile rendering methods, not Compatibility. When using the Mobile rendering method, only 8 decals can be displayed on each mesh resource. Attempting to display more than 8 decals on a single mesh resource will result in decals flickering in and out as the camera moves.

\ **Note:** When using the Mobile rendering method, decals will only correctly affect meshes whose visibility AABB intersects with the decal's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` must be increased on the mesh. Otherwise, the decal may not be visible on the mesh.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`albedo_mix<class_Decal_property_albedo_mix>`                       | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`cull_mask<class_Decal_property_cull_mask>`                         | ``1048575``           |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`     | ``40.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`distance_fade_enabled<class_Decal_property_distance_fade_enabled>` | ``false``             |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`   | ``10.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`emission_energy<class_Decal_property_emission_energy>`             | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`lower_fade<class_Decal_property_lower_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`modulate<class_Decal_property_modulate>`                           | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`normal_fade<class_Decal_property_normal_fade>`                     | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_Decal_property_size>`                                   | ``Vector3(2, 2, 2)``  |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_albedo<class_Decal_property_texture_albedo>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_emission<class_Decal_property_texture_emission>`           |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_normal<class_Decal_property_texture_normal>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_orm<class_Decal_property_texture_orm>`                     |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`upper_fade<class_Decal_property_upper_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_texture<class_Decal_method_get_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_texture<class_Decal_method_set_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

:ref:`Texture2D<class_Texture2D>` correspondant à :ref:`texture_albedo<class_Decal_property_texture_albedo>`.

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

:ref:`Texture2D<class_Texture2D>` correspondant à :ref:`texture_normal<class_Decal_property_texture_normal>`.

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

:ref:`Texture2D<class_Texture2D>` correspondant à :ref:`texture_orm<class_Decal_property_texture_orm>`.

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

:ref:`Texture2D<class_Texture2D>` correspondant à :ref:`texture_emission<class_Decal_property_texture_emission>`.

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

Taille maximale de l'énumération :ref:`DecalTexture<enum_Decal_DecalTexture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

Blends the albedo :ref:`Color<class_Color>` of the decal with albedo :ref:`Color<class_Color>` of the underlying mesh. This can be set to ``0.0`` to create a decal that only affects normal or ORM. In this case, an albedo texture is still required as its alpha channel will determine where the normal and ORM will be overridden. See also :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Spécifie sur quels :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` ce décalage se projettera. Par défaut, les Decals affectent toutes les couches. Ceci est utilisé pour que vous puissiez spécifier quels types d'objets reçoivent le Decal et lequels ne le reçoivent pas. Ceci est particulièrement utile pour vous assurer que des objets dynamiques ne reçoivent pas accidentellement un Decal destiné au terrain sous eux.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

La distance à la caméra à laquelle le Decal commence à disparaître (en unités 3D).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Si ``true``, les décalques vont disparaître en douceur lorsqu'ils sont loin de la :ref:`Camera3D<class_Camera3D>` active à partir de :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`. Le décalque disparaîtra sur :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`, après quoi il sera coupé et ne sera pas envoyé au shader du tout. Utilisez cela pour réduire le nombre de décalques actifs dans une scène et ainsi améliorer les performances.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

La distance sur laquelle le décalque disparaît (en unités 3D). Le décalque devient lentement plus transparent au cours de cette distance et est complètement invisible à la fin. Des valeurs plus élevées résultent en une transition plus fluide, plus adaptée lorsque la caméra se déplace rapidement.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

Multiplicateur de l'énergie pour la texture d'émission. Cela fera que le décalque émet de la lumière à une intensité supérieure ou inférieure, indépendamment de l’albédo. Voir aussi :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

Définit la courbe sur laquelle le décalque va disparaître lorsque que la surface s'éloigne du centre de l':ref:`AABB<class_AABB>`. Seules les valeurs positives sont valides (les valeurs négatives seront bornées à ``0.0``). Voir aussi :ref:`upper_fade<class_Decal_property_upper_fade>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Change la :ref:`Color<class_Color>` du Decal en multipliant la couleur de l'albédo et de l'émission avec cette valeur. La composante alpha est seulement prise en compte lors de la multiplication de la couleur de l'albédo, pas de la couleur de l'émission. Voir aussi :ref:`emission_energy<class_Decal_property_emission_energy>` et :ref:`albedo_mix<class_Decal_property_albedo_mix>` pour changer l'intensité de l'émission et de l'albédo indépendamment l'une de l'autre.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

Fait disparaître le Decal si l'angle entre l':ref:`AABB<class_AABB>` du Decal et la surface cible devient trop grand. Une valeur de ``0`` projette le Decal indépendamment de l'angle, une valeur de ``1`` limite le Decal aux surfaces presque perpendiculaires.

\ **Note :** Définir :ref:`normal_fade<class_Decal_property_normal_fade>` à une valeur supérieure à ``0.0`` a un petit coût de performance en raison des calculs d'angle normaux ajoutés.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Sets the size of the :ref:`AABB<class_AABB>` used by the decal. All dimensions must be set to a value greater than zero (they will be clamped to ``0.001`` if this is not the case). The AABB goes from ``-size/2`` to ``size/2``.

\ **Note:** To improve culling efficiency of "hard surface" decals, set their :ref:`upper_fade<class_Decal_property_upper_fade>` and :ref:`lower_fade<class_Decal_property_lower_fade>` to ``0.0`` and set the Y component of the :ref:`size<class_Decal_property_size>` as low as possible. This will reduce the decals' AABB size without affecting their appearance.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` avec la :ref:`Color<class_Color>` de base du Decal. Soit cela soit la :ref:`texture_emission<class_Decal_property_texture_emission>` doit être définie pour que le Decal soit visible. Utilisez le canal alpha comme un masque pour mélanger en douceur les bords du décalque avec l'objet sous-jacent.

\ **Note :** Contrairement à :ref:`BaseMaterial3D<class_BaseMaterial3D>` dont le mode de filtrage peut être ajusté selon le matériau, le mode de filtrage pour les textures de **Decal** est défini globalement avec :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` avec la :ref:`Color<class_Color>` d'émission du Decal. Soit cela soit la :ref:`texture_albedo<class_Decal_property_texture_albedo>` doit être définie pour que le Decal soit visible. Utilisez le canal alpha comme un masque pour mélanger en douceur les bords du décalque avec l'objet sous-jacent.

\ **Note :** Contrairement à :ref:`BaseMaterial3D<class_BaseMaterial3D>` dont le mode de filtrage peut être ajusté selon le matériau, le mode de filtrage pour les textures de **Decal** est défini globalement avec :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` avec la normal map par pixel du Decal. Utilisez cela pour ajouter des détails supplémentaires aux décalques.

\ **Note :** Contrairement à :ref:`BaseMaterial3D<class_BaseMaterial3D>` dont le mode de filtrage peut être ajusté selon le matériau, le mode de filtrage pour les textures de **Decal** est défini globalement avec :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Note :** Définir seulement cette texture ne résultera pas en un décalque visible, car :ref:`texture_albedo<class_Decal_property_texture_albedo>` doit également être définie. Pour créer un décalque avec seulement des normales, chargez une texture d'albedo dans :ref:`texture_albedo<class_Decal_property_texture_albedo>` et définissez :ref:`albedo_mix<class_Decal_property_albedo_mix>` à ``0.0``. Le canal alpha de la texture de l'albédo sera utilisé pour déterminer où la normal map de la surface sous-jacente devrait être redéfinie (et son intensité).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_orm:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_orm** :ref:`🔗<class_Decal_property_texture_orm>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` storing ambient occlusion, roughness, and metallic for the decal. Use this to add extra detail to decals.

\ **Note:** Unlike :ref:`BaseMaterial3D<class_BaseMaterial3D>` whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Note:** Setting this texture alone will not result in a visible decal, as :ref:`texture_albedo<class_Decal_property_texture_albedo>` must also be set. To create an ORM-only decal, load an albedo texture into :ref:`texture_albedo<class_Decal_property_texture_albedo>` and set :ref:`albedo_mix<class_Decal_property_albedo_mix>` to ``0.0``. The albedo texture's alpha channel will be used to determine where the underlying surface's ORM map should be overridden (and its intensity).

\ **Note:** Due to technical limitations, modifying the underlying surface's roughness using :ref:`texture_orm<class_Decal_property_texture_orm>` does *not* affect screen-space reflections (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`), reflections from :ref:`VoxelGI<class_VoxelGI>`, and reflections from SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`). Only reflections from :ref:`ReflectionProbe<class_ReflectionProbe>`\ s are affected.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_upper_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_fade** = ``0.3`` :ref:`🔗<class_Decal_property_upper_fade>`

.. rst-class:: classref-property-setget

- |void| **set_upper_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_fade**\ (\ )

Définit la courbe sur laquelle le décalque va disparaître lorsque que la surface s'éloigne du centre de l':ref:`AABB<class_AABB>`. Seules les valeurs positives sont valides (les valeurs négatives seront bornées à ``0.0``). Voir aussi :ref:`lower_fade<class_Decal_property_lower_fade>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

Renvoie la :ref:`Texture2D<class_Texture2D>` associée au :ref:`DecalTexture<enum_Decal_DecalTexture>` spécifié. Il s'agit d'une méthode de commodité, dans la plupart des cas, vous devriez accéder directement à la texture.

Par exemple, au lieu de ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``, utilisez ``albedo_tex = $Decal.texture_albedo``.

Un cas où cela vaut meilleur que d'accéder directement à la texture est quand vous voulez copier une texture d'un Decal vers un autre. Par exemple :


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NouveauDecal.set_texture(i, $AncienDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NouveauDecal").SetTexture(i, GetNode<Decal>("AncienDecal").GetTexture(i));
    }



.. rst-class:: classref-item-separator

----

.. _class_Decal_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Decal_method_set_texture>`

Définit la :ref:`Texture2D<class_Texture2D>` associée au :ref:`DecalTexture<enum_Decal_DecalTexture>` spécifié. Il s'agit d'une méthode de commodité, dans la plupart des cas, vous devriez accéder directement à la texture.

Par exemple, au lieu de ``$Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``, utiliser ``$Decal.texture_albedo = albedo_tex``.

Un cas où cela est meilleur que d'accéder directement à la texture est quand vous voulez copier une texture d'un Decal à un autre. Par exemple :


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NouveauDecal.set_texture(i, $AncienDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NouveauDecal").SetTexture(i, GetNode<Decal>("AncienDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
