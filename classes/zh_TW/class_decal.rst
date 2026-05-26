:github_url: hide

.. meta::
	:keywords: stain

.. _class_Decal:

Decal
=====

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

將紋理投影到 :ref:`MeshInstance3D<class_MeshInstance3D>` 上的節點。

.. rst-class:: classref-introduction-group

說明
----

**Decal** 用於將紋理投射到場景中的 :ref:`Mesh<class_Mesh>` 上。使用裝飾可在不影響底層 :ref:`Mesh<class_Mesh>` 的情況下向場景中新增細節。它們通常用於為建築物新增風化效果，為地面新增污垢或泥土，或為道具新增多樣性。裝飾可以隨時移動，使其適用於斑點陰影或鐳射瞄準點之類的東西。

裝飾由一個 :ref:`AABB<class_AABB>` 和一組用於指定 :ref:`Color<class_Color>`\ 、法線、ORM（環境光遮蔽、粗糙度、金屬度）和自發光的 :ref:`Texture2D<class_Texture2D>` 組成。裝飾在其 :ref:`AABB<class_AABB>` 內投影，因此改變裝飾的朝向會影響它們投影的方向。預設情況下，裝飾向下投影（即從正 Y 到負 Y）。

與裝飾關聯的 :ref:`Texture2D<class_Texture2D>` 會自動儲存在用於繪製裝飾的紋理合集中，因此可以一次繪制所有裝飾。Godot 使用集群裝飾，這意味著裝飾是儲存在集群資料中的，會在繪製網格時繪製，而不是作為後期處理效果在此之後進行繪製。

\ **注意：**\ 裝飾不會影響底層材質的透明度，無論其透明度模式如何（Alpha 混合、Alpha 剪切、Alpha 雜湊、不透明預通）。這意味著材質的半透明或透明區域將保持半透明或透明，即使在其上套用不透明裝飾也是如此。

\ **注意：**\ 裝飾僅在支援 Forward+ 和 Mobile 算繪方式，不支援 Compatibility。使用 Mobile 算繪方式時，每個網格資源上最多只能顯示 8 個裝飾。嘗試在單個網格資源上顯示超過 8 個裝飾，將導致裝飾隨著相機移動而閃爍。

\ **注意：**\ 當使用 Mobile 算繪方式時，裝飾只會正確影響其可視 AABB 與該裝飾的 AABB 相交的網格。如果使用著色器變形網格，使其超出網格自身的 AABB，則必須增大網格上的 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`\ 。否則，裝飾可能在該網格上不可見。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

與 :ref:`texture_albedo<class_Decal_property_texture_albedo>` 對應的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

與 :ref:`texture_normal<class_Decal_property_texture_normal>` 對應的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

與 :ref:`texture_orm<class_Decal_property_texture_orm>` 對應的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

與 :ref:`texture_emission<class_Decal_property_texture_emission>` 對應的 :ref:`Texture2D<class_Texture2D>`\ 。

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

:ref:`DecalTexture<enum_Decal_DecalTexture>` 列舉的最大大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

將該裝飾的反照率 :ref:`Color<class_Color>` 與底層網格的反照率 :ref:`Color<class_Color>` 混合。可以將其設定為 ``0.0``\ ，從而建立僅影響法線或 ORM 的裝飾。這種情況下仍然需要反照率紋理，因為它的 Alpha 通道將決定覆蓋法線和 ORM 的位置。另見 :ref:`modulate<class_Decal_property_modulate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

指定此裝飾將投射到哪些 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 上。預設情況下，裝飾會影響所有圖層。可用於指定哪些型別的對象接收該裝飾、哪些不接收。這一點特別有用，你可以確保動態物件不會意外收到用於其下方地形的裝飾。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

與相機的距離，裝飾從該處開始淡出（以 3D 單位表示）。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

如果為 ``true``\ ，裝飾會在遠離活動的 :ref:`Camera3D<class_Camera3D>` 時平滑地淡出，從 :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` 開始。該裝飾將在 :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>` 處消失，之後就會被剔除，根本不會發送到著色器。請使用這個選項來減少場景中啟動裝飾的數量，從而提高性能。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

該裝飾淡出的距離（以 3D 單位表示）。這段距離內，該裝飾會慢慢變得透明，直至完全不可見。值越大，淡出過渡更平滑，更適合於相機快速移動的情況。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

自發光紋理的能量倍數。會使裝飾以更高或更低的強度發光，與反照率顏色無關。另見 :ref:`modulate<class_Decal_property_modulate>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

設定該裝飾的淡出曲線，表示隨著表面遠離 :ref:`AABB<class_AABB>` 中心而逐漸淡出。僅正值有效（負值將被限制到 ``0.0``\ ）。另見 :ref:`upper_fade<class_Decal_property_upper_fade>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

更改裝飾的 :ref:`Color<class_Color>`\ ，將其反照率和自發光顏色乘以這個值。僅在與反照率顏色相乘時才會考慮 Alpha 分量，與自發光顏色相乘時則不會。如果要獨立更改自發光和反照率強度，請參閱 :ref:`emission_energy<class_Decal_property_emission_energy>` 和 :ref:`albedo_mix<class_Decal_property_albedo_mix>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

如果裝飾的 :ref:`AABB<class_AABB>` 與目標表面之間的角度變得過大，則淡出裝飾。值為 ``0`` 時在投影裝飾會忽略角度，值為 ``1`` 時會將裝飾限制到幾乎垂直的表面。

\ **注意：**\ 將 :ref:`normal_fade<class_Decal_property_normal_fade>` 設定為大於 ``0.0`` 的值會有較小的性能成本，因為增加了法線角度計算。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

設定裝飾使用的 :ref:`AABB<class_AABB>` 的大小。所有大小都必須設定為大於零的值（如果不是這種情況，它們將被鉗制為 ``0.001``\ ）。該 AABB 從 ``-size/2`` 到 ``size/2``\ 。

\ **注意：**\ 為了提高“硬表面”裝飾的剔除效率，將它們的 :ref:`upper_fade<class_Decal_property_upper_fade>` 和 :ref:`lower_fade<class_Decal_property_lower_fade>` 設定為 ``0.0``\ ，並將 :ref:`size<class_Decal_property_size>` 的 Y 分量設定的越低越好。這將減少裝飾的 AABB 大小而不影響它們的外觀。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

帶有裝飾的基礎 :ref:`Color<class_Color>` 的 :ref:`Texture2D<class_Texture2D>`\ 。必須設定這個屬性或者 :ref:`texture_emission<class_Decal_property_texture_emission>` 裝飾才可見。要將裝飾的邊緣與底層物件平滑地混合，請像遮罩一樣使用 Alpha 通道。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的篩選模式可以對每個材質進行調整，而 **Decal** 紋理的篩選模式是通過 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全域設定的。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

帶有裝飾的自發光 :ref:`Color<class_Color>` 的 :ref:`Texture2D<class_Texture2D>`\ 。必須設定這個屬性或者 :ref:`texture_albedo<class_Decal_property_texture_albedo>` 裝飾才可見。要將裝飾的邊緣與底層物件平滑地混合，請像遮罩一樣使用 Alpha 通道。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的篩選模式可以對每個材質進行調整，而 **Decal** 紋理的篩選模式是通過 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全域設定的。

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

帶有裝飾的逐圖元法線貼圖的 :ref:`Texture2D<class_Texture2D>`\ 。可用於為裝飾新增額外的細節。

\ **注意：**\ :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的篩選模式可以對每個材質進行調整，而 **Decal** 紋理的篩選模式是通過 :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>` 全域設定的。

\ **注意：**\ 單獨設定此紋理時裝飾不可見，因為還必須設定 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ 。要建立僅包含法線的裝飾，請將反照率紋理載入到 :ref:`texture_albedo<class_Decal_property_texture_albedo>`\ ，並將 :ref:`albedo_mix<class_Decal_property_albedo_mix>` 設定為 ``0.0``\ 。反照率紋理的 Alpha 通道將用於確定應在何處覆蓋底層表面的法線貼圖（及其強度）。

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

設定該裝飾的淡出曲線，表示隨著表面遠離 :ref:`AABB<class_AABB>` 中心而逐漸淡出。僅正值有效（負值將被限制到 ``0.0``\ ）。另見 :ref:`upper_fade<class_Decal_property_upper_fade>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

返回與指定的 :ref:`DecalTexture<enum_Decal_DecalTexture>` 關聯的 :ref:`Texture2D<class_Texture2D>`\ 。這是一個便捷方法，在大多數情況下，你應該直接存取紋理。

例如，相比於 ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``\ ，請使用 ``albedo_tex = $Decal.texture_albedo``\ 。

有一種情況下這種寫法比直接存取紋理更好，那就是當想要將裝飾的紋理複製到另一個裝飾是。例如：


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

設定與指定的 :ref:`DecalTexture<enum_Decal_DecalTexture>` 關聯的 :ref:`Texture2D<class_Texture2D>`\ 。這是一個便捷方法，在大多數情況下，你應該直接存取紋理。

例如，相比於 ``albedo_tex = $Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``\ ，請使用 ``$Decal.texture_albedo = albedo_tex``\ 。

有一種情況下這種寫法比直接存取紋理更好，那就是當想要將裝飾的紋理複製到另一個裝飾是。例如：


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
