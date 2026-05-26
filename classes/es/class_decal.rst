:github_url: hide

.. meta::
	:keywords: stain

.. _class_Decal:

Decal
=====

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo que proyecta una textura sobre una :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **Decal**\ s se utilizan para project una textura sobre un :ref:`Mesh<class_Mesh>` en la escena. Utiliza Decals para añadir detalles a una escena sin afectar al :ref:`Mesh<class_Mesh>` subyacente. A menudo se utilizan para añadir desgaste a los edificios, añadir suciedad o barro al suelo, o añadir variedad a los props. Los Decals se pueden mover en cualquier momento, lo que los hace adecuados para cosas como blob shadows o laser sight dots.

Están hechos de un :ref:`AABB<class_AABB>` y un grupo de :ref:`Texture2D<class_Texture2D>`\ s que especifican el :ref:`Color<class_Color>`, normal, ORM (ambient occlusion, roughness, metallic) y emisión. Los Decals se proyectan dentro de su :ref:`AABB<class_AABB>`, por lo que alterar la orientación del Decal afecta la dirección en la que se proyectan. Por defecto, los Decals se proyectan hacia abajo (es decir, de Y positivo a Y negativo).

Los :ref:`Texture2D<class_Texture2D>`\ s asociados con el Decal se almacenan automáticamente en un atlas de texturas que se utiliza para dibujar los decals, de modo que todos los decals se puedan dibujar a la vez. Godot utiliza decals agrupados, lo que significa que se almacenan en datos de cluster y se dibujan cuando se dibuja el mesh; no se dibujan como un effect de post-procesamiento posterior.

\ **Note:** Los Decals no pueden afectar la transparencia de un material subyacente, independientemente de su modo de transparencia (alpha blend, alpha scissor, alpha hash, opaque pre-pass). Esto significa que las áreas translúcidas o transparentes de un material seguirán siendo translúcidas o transparentes incluso si se aplica un decal opaco sobre ellas.

\ **Note:** Los Decals solo son compatibles con los métodos de renderizado Forward+ y Mobile, no con Compatibility. Al usar el método de renderizado Mobile, solo se pueden mostrar 8 decals en cada recurso mesh. Intentar mostrar más de 8 decals en un solo recurso mesh hará que los decals parpadeen a medida que la cámara se mueve.

\ **Note:** Al usar el método de renderizado Mobile, los decals solo afectarán correctamente a las mallas cuya visibilidad AABB se intersecte con el decal's AABB. Si se usa un shader para deformar el mesh de manera que salga de su AABB, se debe aumentar :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` en el mesh. De lo contrario, el decal podría no ser visible en el mesh.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

:ref:`Texture2D<class_Texture2D>` correspondiente a :ref:`texture_albedo<class_Decal_property_texture_albedo>`.

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

:ref:`Texture2D<class_Texture2D>` correspondiente a :ref:`texture_normal<class_Decal_property_texture_normal>`.

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

:ref:`Texture2D<class_Texture2D>` correspondiente a :ref:`texture_orm<class_Decal_property_texture_orm>`.

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

:ref:`Texture2D<class_Texture2D>` correspondiente a :ref:`texture_emission<class_Decal_property_texture_emission>`.

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

El tamaño del enum :ref:`DecalTexture<enum_Decal_DecalTexture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

Mezcla el :ref:`Color<class_Color>` de albedo del decal con el :ref:`Color<class_Color>` de albedo del mesh subyacente. Esto se puede establecer en ``0.0`` para crear un decal que solo afecte a normal o ORM. En este caso, todavía se requiere una textura de albedo, ya que su canal alpha determinará dónde se sobrescribirán normal y ORM. Consulte también :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Especifica en qué :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` se proyectará este decal. Por defecto, los Decals afectan a todas las capas. Esto se utiliza para poder especificar qué tipos de objetos reciben el Decal y cuáles no. Esto es especialmente útil para asegurar que los objetos dinámicos no reciban accidentalmente un Decal destinado al terreno debajo de ellos.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

The distance from the camera at which the Decal begins to fade away (in 3D units).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Si es ``true``, los decals se desvanecerán suavemente cuando estén lejos de la :ref:`Camera3D<class_Camera3D>` activa, comenzando en :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`. El Decal se desvanecerá por completo a lo largo de :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`, después de lo cual será descartado culled y no se enviará al shader en absoluto. Utiliza esto para reducir el número de calcos activos en una escena y así mejorar el rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

La distancia sobre la cual el Decal se desvanece (en unidades 3D). El Decal se vuelve lentamente mas transparente a lo largo de esta distancia y es completamente invisible al final. Los valores más altos resultan en una transición de desvanecimiento más suave, lo cual es más adecuado cuando la cámara se mueve rápido.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

Energy multiplier for the emission texture. This will make the decal emit light at a higher or lower intensity, independently of the albedo color. See also :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

Sets the curve over which the decal will fade as the surface gets further from the center of the :ref:`AABB<class_AABB>`. Only positive values are valid (negative values will be clamped to ``0.0``). See also :ref:`upper_fade<class_Decal_property_upper_fade>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Changes the :ref:`Color<class_Color>` of the Decal by multiplying the albedo and emission colors with this value. The alpha component is only taken into account when multiplying the albedo color, not the emission color. See also :ref:`emission_energy<class_Decal_property_emission_energy>` and :ref:`albedo_mix<class_Decal_property_albedo_mix>` to change the emission and albedo intensity independently of each other.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

Fades the Decal if the angle between the Decal's :ref:`AABB<class_AABB>` and the target surface becomes too large. A value of ``0`` projects the Decal regardless of angle, a value of ``1`` limits the Decal to surfaces that are nearly perpendicular.

\ **Note:** Setting :ref:`normal_fade<class_Decal_property_normal_fade>` to a value greater than ``0.0`` has a small performance cost due to the added normal angle computations.

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

:ref:`Texture2D<class_Texture2D>` with the base :ref:`Color<class_Color>` of the Decal. Either this or the :ref:`texture_emission<class_Decal_property_texture_emission>` must be set for the Decal to be visible. Use the alpha channel like a mask to smoothly blend the edges of the decal with the underlying object.

\ **Note:** Unlike :ref:`BaseMaterial3D<class_BaseMaterial3D>` whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` with the emission :ref:`Color<class_Color>` of the Decal. Either this or the :ref:`texture_albedo<class_Decal_property_texture_albedo>` must be set for the Decal to be visible. Use the alpha channel like a mask to smoothly blend the edges of the decal with the underlying object.

\ **Note:** Unlike :ref:`BaseMaterial3D<class_BaseMaterial3D>` whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` with the per-pixel normal map for the decal. Use this to add extra detail to decals.

\ **Note:** Unlike :ref:`BaseMaterial3D<class_BaseMaterial3D>` whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Note:** Setting this texture alone will not result in a visible decal, as :ref:`texture_albedo<class_Decal_property_texture_albedo>` must also be set. To create a normal-only decal, load an albedo texture into :ref:`texture_albedo<class_Decal_property_texture_albedo>` and set :ref:`albedo_mix<class_Decal_property_albedo_mix>` to ``0.0``. The albedo texture's alpha channel will be used to determine where the underlying surface's normal map should be overridden (and its intensity).

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

Sets the curve over which the decal will fade as the surface gets further from the center of the :ref:`AABB<class_AABB>`. Only positive values are valid (negative values will be clamped to ``0.0``). See also :ref:`lower_fade<class_Decal_property_lower_fade>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

Returns the :ref:`Texture2D<class_Texture2D>` associated with the specified :ref:`DecalTexture<enum_Decal_DecalTexture>`. This is a convenience method, in most cases you should access the texture directly.

For example, instead of ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``, use ``albedo_tex = $Decal.texture_albedo``.

One case where this is better than accessing the texture directly is when you want to copy one Decal's textures to another. For example:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. rst-class:: classref-item-separator

----

.. _class_Decal_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Decal_method_set_texture>`

Sets the :ref:`Texture2D<class_Texture2D>` associated with the specified :ref:`DecalTexture<enum_Decal_DecalTexture>`. This is a convenience method, in most cases you should access the texture directly.

For example, instead of ``$Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``, use ``$Decal.texture_albedo = albedo_tex``.

One case where this is better than accessing the texture directly is when you want to copy one Decal's textures to another. For example:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
