:github_url: hide

.. _class_LightmapGIData:

LightmapGIData
==============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含用于 :ref:`LightmapGI<class_LightmapGI>` 的烘焙光照贴图和动态对象探测数据。

.. rst-class:: classref-introduction-group

描述
----

**LightmapGIData** 包含用于 :ref:`LightmapGI<class_LightmapGI>` 的烘焙光照贴图和动态对象探测数据。在 :ref:`LightmapGI<class_LightmapGI>` 中每当光照贴图被烘焙时都会替换它。

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_LightmapGIData_ShadowmaskMode:

.. rst-class:: classref-enumeration

enum **ShadowmaskMode**: :ref:`🔗<enum_LightmapGIData_ShadowmaskMode>`

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_NONE** = ``0``

阴影遮罩已禁用。烘焙光照贴图时不会创建阴影遮罩纹理。烘焙时会移除现有的阴影遮罩纹理。

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_REPLACE** = ``1``

阴影遮罩已启用。超出 :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 范围的方向阴影会使用阴影遮罩纹理渲染。范围内的阴影只会使用实时阴影渲染。该模式能够让较近的实时阴影更加精确，不会出现使用高纹素大小的光照贴图时可能出现的“模糊”效果。缺点是当相机快速移动时，实时光照和阴影遮罩之间的过渡可能会很明显。此外，仅在阴影遮罩中烘焙阴影（没有实时阴影）的物体在距离较近时不会显示任何阴影。

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_OVERLAY** = ``2``

阴影遮罩已启用。方向阴影在渲染时会在阴影遮罩纹理上叠加实时阴影。该模式在相机快速移动时可以实现更平滑的阴影过渡，但代价是近距离的方向阴影可能会出现模糊效果（因为实时阴影与低分辨率的阴影遮罩混合）。仅在阴影遮罩中烘焙阴影（没有实时阴影）的物体在距离较近时会保持阴影。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_LightmapGIData_property_light_texture:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **light_texture** :ref:`🔗<class_LightmapGIData_property_light_texture>`

.. rst-class:: classref-property-setget

- |void| **set_light_texture**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_light_texture**\ (\ )

**已弃用：** The lightmap atlas can now contain multiple textures. See :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`.

由光照贴图器生成的光照贴图图集纹理。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_lightmap_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **lightmap_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_lightmap_textures>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_lightmap_textures**\ (\ )

由光照贴图器生成的光照贴图图集纹理。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_shadowmask_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **shadowmask_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_shadowmask_textures>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_shadowmask_textures**\ (\ )

光照贴图器生成的阴影遮罩图集纹理。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_LightmapGIData_method_add_user:

.. rst-class:: classref-method

|void| **add_user**\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LightmapGIData_method_add_user>`

添加一个在该 **LightmapGIData** 中被视为已烘焙的对象。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_clear_users:

.. rst-class:: classref-method

|void| **clear_users**\ (\ ) :ref:`🔗<class_LightmapGIData_method_clear_users>`

清除在该 **LightmapGIData** 中被视为已烘焙的所有对象。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_user_count**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_count>`

返回在该 **LightmapGIData** 中被视为烘焙的对象的数量。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_user_path**\ (\ user_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_path>`

返回索引 ``user_idx`` 处烘焙对象的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_is_using_spherical_harmonics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_spherical_harmonics**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_is_using_spherical_harmonics>`

如果为 ``true``\ ，则光照贴图使用定向信息烘焙。另见 :ref:`LightmapGI.directional<class_LightmapGI_property_directional>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_set_uses_spherical_harmonics:

.. rst-class:: classref-method

|void| **set_uses_spherical_harmonics**\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_LightmapGIData_method_set_uses_spherical_harmonics>`

如果 ``uses_spherical_harmonics`` 为 ``true``\ ，则告诉引擎将光照贴图数据视为使用了定向信息烘焙的。

\ **注意：**\ 在已烘焙的光照贴图上更改此值不会导致再次烘焙它们。这意味着在再次烘焙光照贴图之前，材质外观将看起来不正确，在这种情况下，此处设置的值将被丢弃，因为整个 **LightmapGIData** 资源被光照贴图器替换。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
