:github_url: hide

.. _class_LightmapGIData:

LightmapGIData
==============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含用於 :ref:`LightmapGI<class_LightmapGI>` 的烘焙光照貼圖和動態物件探測資料。

.. rst-class:: classref-introduction-group

說明
----

**LightmapGIData** 包含用於 :ref:`LightmapGI<class_LightmapGI>` 的烘焙光照貼圖和動態物件探測資料。在 :ref:`LightmapGI<class_LightmapGI>` 中每當光照貼圖被烘焙時都會替換它。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`TextureLayered<class_TextureLayered>`                              | :ref:`light_texture<class_LightmapGIData_property_light_texture>`             |        |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`     | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`shadowmask_textures<class_LightmapGIData_property_shadowmask_textures>` | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_user<class_LightmapGIData_method_add_user>`\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`clear_users<class_LightmapGIData_method_clear_users>`\ (\ )                                                                                                                                                    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_user_count<class_LightmapGIData_method_get_user_count>`\ (\ ) |const|                                                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_user_path<class_LightmapGIData_method_get_user_path>`\ (\ user_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_using_spherical_harmonics<class_LightmapGIData_method_is_using_spherical_harmonics>`\ (\ ) |const|                                                                                                          |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_uses_spherical_harmonics<class_LightmapGIData_method_set_uses_spherical_harmonics>`\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ )                                                              |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_LightmapGIData_ShadowmaskMode:

.. rst-class:: classref-enumeration

enum **ShadowmaskMode**: :ref:`🔗<enum_LightmapGIData_ShadowmaskMode>`

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_NONE** = ``0``

Shadowmasking is disabled. No shadowmask texture will be created when baking lightmaps. Existing shadowmask textures will be removed during baking.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_REPLACE** = ``1``

Shadowmasking is enabled. Directional shadows that are outside the :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` will be rendered using the shadowmask texture. Shadows that are inside the range will be rendered using real-time shadows exclusively. This mode allows for more precise real-time shadows up close, without the potential "smearing" effect that can occur when using lightmaps with a high texel size. The downside is that when the camera moves fast, the transition between the real-time light and shadowmask can be obvious. Also, objects that only have shadows baked in the shadowmask (and no real-time shadows) won't display any shadows up close.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_OVERLAY** = ``2``

Shadowmasking is enabled. Directional shadows will be rendered with real-time shadows overlaid on top of the shadowmask texture. This mode makes for smoother shadow transitions when the camera moves fast, at the cost of a potential smearing effect for directional shadows that are up close (due to the real-time shadow being mixed with a low-resolution shadowmask). Objects that only have shadows baked in the shadowmask (and no real-time shadows) will keep their shadows up close.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_LightmapGIData_property_light_texture:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **light_texture** :ref:`🔗<class_LightmapGIData_property_light_texture>`

.. rst-class:: classref-property-setget

- |void| **set_light_texture**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_light_texture**\ (\ )

**已棄用：** The lightmap atlas can now contain multiple textures. See :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`.

The lightmap atlas texture generated by the lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_lightmap_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **lightmap_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_lightmap_textures>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_lightmap_textures**\ (\ )

The lightmap atlas textures generated by the lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_shadowmask_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **shadowmask_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_shadowmask_textures>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_shadowmask_textures**\ (\ )

The shadowmask atlas textures generated by the lightmapper.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_LightmapGIData_method_add_user:

.. rst-class:: classref-method

|void| **add_user**\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LightmapGIData_method_add_user>`

新增一個在該 **LightmapGIData** 中被視為已烘焙的物件。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_clear_users:

.. rst-class:: classref-method

|void| **clear_users**\ (\ ) :ref:`🔗<class_LightmapGIData_method_clear_users>`

清除在該 **LightmapGIData** 中被視為已烘焙的所有物件。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_user_count**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_count>`

返回在該 **LightmapGIData** 中被視為烘焙的物件的數量。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_user_path**\ (\ user_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_path>`

返回索引 ``user_idx`` 處烘焙對象的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_is_using_spherical_harmonics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_spherical_harmonics**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_is_using_spherical_harmonics>`

如果為 ``true``\ ，則光照貼圖使用定向資訊烘焙。另請參閱 :ref:`LightmapGI.directional<class_LightmapGI_property_directional>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_set_uses_spherical_harmonics:

.. rst-class:: classref-method

|void| **set_uses_spherical_harmonics**\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_LightmapGIData_method_set_uses_spherical_harmonics>`

如果 ``uses_spherical_harmonics`` 為 ``true``\ ，則告訴引擎將光照貼圖資料視為使用了定向資訊烘焙的。

\ **注意：**\ 在已烘焙的光照貼圖上更改此值不會導致再次烘焙它們。這意味著在再次烘焙光照貼圖之前，材質外觀將看起來不正確，在這種情況下，此處設定的值將被丟棄，因為整個 **LightmapGIData** 資源被光照貼圖器替換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
