:github_url: hide

.. meta::
	:keywords: stain

.. _class_Decal:

Decal
=====

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将纹理投影到 :ref:`MeshInstance3D<class_MeshInstance3D>` 上的节点。

.. rst-class:: classref-introduction-group

描述
----

**Decal** 用于将纹理投射到场景中的 :ref:`Mesh<class_Mesh>` 上。使用贴花可在不影响底层 :ref:`Mesh<class_Mesh>` 的情况下向场景中添加细节。它们通常用于为建筑物添加风化效果，为地面添加污垢或泥土，或为道具添加多样性。贴花可以随时移动，使其适用于斑点阴影或激光瞄准点之类的东西。

贴花由一个 :ref:`AABB<class_AABB>` 和一组用于指定 :ref:`Color<class_Color>`\ 、法线、ORM（环境光遮蔽、粗糙度、金属度）和自发光的 :ref:`Texture2D<class_Texture2D>` 组成。贴花在其 :ref:`AABB<class_AABB>` 内投影，因此改变贴花的朝向会影响它们投影的方向。默认情况下，贴花向下投影（即从正 Y 到负 Y）。

与贴花关联的 :ref:`Texture2D<class_Texture2D>` 会自动存储在用于绘制贴花的纹理图集中，因此可以一次绘制所有贴花。Godot 使用集群贴花，这意味着贴花是存储在集群数据中的，会在绘制网格时绘制，而不是作为后期处理效果在此之后进行绘制。

\ **注意：**\ 贴花不会影响底层材质的透明度，无论其透明度模式如何（Alpha 混合、Alpha 剪切、Alpha 哈希、不透明预通）。这意味着材质的半透明或透明区域将保持半透明或透明，即使在其上应用不透明贴花也是如此。

\ **注意：**\ 贴花仅在支持 Forward+ 和 Mobile 渲染方式，不支持 Compatibility。使用 Mobile 渲染方式时，每个网格资源上最多只能显示 8 个贴花。尝试在单个网格资源上显示超过 8 个贴花，将导致贴花随着相机移动而闪烁。

\ **注意：**\ 当使用 Mobile 渲染方式时，贴花只会正确影响其可视 AABB 与该贴花的 AABB 相交的网格。如果使用着色器变形网格，使其超出网格自身的 AABB，则必须增大网格上的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`\ 。否则，贴花可能在该网格上不可见。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

枚举
----

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

与 :ref:`texture_albedo<class_Decal_property_texture_albedo>` 对应的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

与 :ref:`texture_normal<class_Decal_property_texture_normal>` 对应的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

与 :ref:`texture_orm<class_Decal_property_texture_orm>` 对应的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

与 :ref:`texture_emission<class_Decal_property_texture_emission>` 对应的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

:ref:`DecalTexture<enum_Decal_DecalTexture>` 枚举的最大大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

将该贴花的反照率 :ref:`Color<class_Color>` 与底层网格的反照率 :ref:`Color<class_Color>` 混合。可以将其设置为 ``0.0``\ ，从而创建仅影响法线或 ORM 的贴花。这种情况下仍然需要反照率纹理，因为它的 Alpha 通道将决定覆盖法线和 ORM 的位置。另见 :ref:`modulate<class_Decal_property_modulate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

指定此贴花将投射到哪些 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 上。默认情况下，贴花会影响所有图层。可用于指定哪些类型的对象接收该贴花、哪些不接收。这一点特别有用，你可以确保动态对象不会意外收到用于其下方地形的贴花。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

与相机的距离，贴花从该处开始淡出（以 3D 单位表示）。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

如果为 ``true``\ ，贴花会在远离活动的 :ref:`Camera3D<class_Camera3D>` 时平滑地淡出，从 :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` 开始。该贴花将在 :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>` 处消失，之后就会被剔除，根本不会发送到着色器。请使用这个选项来减少场景中激活贴花的数量，从而提高性能。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

该贴花淡出的距离（以 3D 单位表示）。这段距离内，该贴花会慢慢变得透明，直至完全不可见。值越大，淡出过渡更平滑，更适合于相机快速移动的情况。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

自发光纹理的能量倍数。会使贴花以更高或更低的强度发光，与反照率颜色无关。另见 :ref:`modulate<class_Decal_property_modulate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

设置该贴花的淡出曲线，表示随着表面远离 :ref:`AABB<class_AABB>` 中心而逐渐淡出。仅正值有效（负值将被限制到 ``0.0``\ ）。另见 :ref:`upper_fade<class_Decal_property_upper_fade>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

更改贴花的 :ref:`Color<class_Color>`\ ，将其反照率和自发光颜色乘以这个值。仅在与反照率颜色相乘时才会考虑 Alpha 分量，与自发光颜色相乘时则不会。如果要独立更改自发光和反照率强度，请参阅 :ref:`emission_energy<class_Decal_property_emission_energy>` 和 :ref:`albedo_mix<class_Decal_property_albedo_mix>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

如果贴花的 :ref:`AABB<class_AABB>` 与目标表面之间的角度变得过大，则淡出贴花。值为 ``0`` 时在投影贴花会忽略角度，值为 ``1`` 时会将贴花限制到几乎垂直的表面。

\ **注意：**\ 将 :ref:`normal_fade<class_Decal_property_normal_fade>` 设置为大于 ``0.0`` 的值会有较小的性能成本，因为增加了法线角度计算。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

设置贴花使用的 :ref:`AABB<class_AABB>` 的大小。所有大小都必须设置为大于零的值（如果不是这种情况，它们将被钳制为 ``0.001``\ ）。该 AABB 从 ``-size/2`` 到 ``size/2``\ 。

\ **注意：**\ 为了提高“硬表面”贴花的剔除效率，将它们的 :ref:`upper_fade<class_Decal_property_upper_fade>` 和 :ref:`lower_fade<class_Decal_property_lower_fade>` 设置为 ``0.0``\ ，并将 :ref:`size<class_Decal_property_size>` 的 Y 分量设置的越低越好。这将减少贴花的 AABB 大小而不影响它们的外观。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

带有贴花的基础 :ref:`Color<class_Color>` 的 :ref:`Texture2D<class_Texture2D>`\ 。必须设置这个属性或者 :ref:`texture_emission<class_Decal_property_texture_emission>` 贴花才可见。要将贴花的边缘与底层对象平滑地混合，请像遮罩一样使用 Alpha 通道。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的过滤模式可以对每个材质进行调整，而 **Decal** 纹理的过滤模式是通过 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全局设置的。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

带有贴花的自发光 :ref:`Color<class_Color>` 的 :ref:`Texture2D<class_Texture2D>`\ 。必须设置这个属性或者 :ref:`texture_albedo<class_Decal_property_texture_albedo>` 贴花才可见。要将贴花的边缘与底层对象平滑地混合，请像遮罩一样使用 Alpha 通道。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的过滤模式可以对每个材质进行调整，而 **Decal** 纹理的过滤模式是通过 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全局设置的。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

带有贴花的逐像素法线贴图的 :ref:`Texture2D<class_Texture2D>`\ 。可用于为贴花添加额外的细节。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的过滤模式可以对每个材质进行调整，而 **Decal** 纹理的过滤模式是通过 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全局设置的。

\ **注意：**\ 单独设置此纹理时贴花不可见，因为还必须设置 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ 。要创建仅包含法线的贴花，请将反照率纹理加载到 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ ，并将 :ref:`albedo_mix<class_Decal_property_albedo_mix>` 设置为 ``0.0``\ 。反照率纹理的 Alpha 通道将用于确定应在何处覆盖底层表面的法线贴图（及其强度）。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_orm:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_orm** :ref:`🔗<class_Decal_property_texture_orm>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

存有贴花的环境光遮蔽、粗糙度、金属性的 :ref:`Texture2D<class_Texture2D>`\ 。可用于为贴花添加额外的细节。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的过滤模式可以对每个材质进行调整，而 **Decal** 纹理的过滤模式是通过 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全局设置的。

\ **注意：**\ 单独设置此纹理时贴花不可见，因为还必须设置 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ 。要创建仅包含 ORM 的贴花，请将反照率纹理加载到 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ ，并将 :ref:`albedo_mix<class_Decal_property_albedo_mix>` 设置为 ``0.0``\ 。反照率纹理的 Alpha 通道将用于确定应在何处覆盖底层表面的 ORM 贴图（及其强度）。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_upper_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_fade** = ``0.3`` :ref:`🔗<class_Decal_property_upper_fade>`

.. rst-class:: classref-property-setget

- |void| **set_upper_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_fade**\ (\ )

设置该贴花的淡出曲线，表示随着表面远离 :ref:`AABB<class_AABB>` 中心而逐渐淡出。仅正值有效（负值将被限制到 ``0.0``\ ）。另见 :ref:`upper_fade<class_Decal_property_upper_fade>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

返回与指定的 :ref:`DecalTexture<enum_Decal_DecalTexture>` 关联的 :ref:`Texture2D<class_Texture2D>`\ 。这是一个便捷方法，在大多数情况下，你应该直接访问纹理。

例如，相比于 ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``\ ，请使用 ``albedo_tex = $Decal.texture_albedo``\ 。

有一种情况下这种写法比直接访问纹理更好，那就是当想要将贴花的纹理复制到另一个贴花是。例如：


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

设置与指定的 :ref:`DecalTexture<enum_Decal_DecalTexture>` 关联的 :ref:`Texture2D<class_Texture2D>`\ 。这是一个便捷方法，在大多数情况下，你应该直接访问纹理。

例如，相比于 ``albedo_tex = $Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``\ ，请使用 ``$Decal.texture_albedo = albedo_tex``\ 。

有一种情况下这种写法比直接访问纹理更好，那就是当想要将贴花的纹理复制到另一个贴花是。例如：


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
