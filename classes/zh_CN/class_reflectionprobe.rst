:github_url: hide

.. meta::
	:keywords: environment, envmap

.. _class_ReflectionProbe:

ReflectionProbe
===============

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

捕捉某个位置周围的环境，用于快速创建准确的反射。

.. rst-class:: classref-introduction-group

描述
----

将其周围环境捕捉为立方体贴图，并存储不同版本，其模糊级别递增以模拟不同的材质粗糙度。

\ **ReflectionProbe** 用于以低性能成本（当 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 为 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` 时），创建高质量反射。\ **ReflectionProbe** 可以与场景的其余部分，平滑地混合在一起。\ **ReflectionProbe** 还可以与 :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI（\ :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）和屏幕空间反射（\ :ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`\ ）结合使用，以在特定区域获得更准确的反射。\ **ReflectionProbe** 渲染其 :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>` 内的所有对象，因此更新它们可能会非常昂贵。最好仅用重要的静态对象更新一次，然后保持原样。

\ **注意：**\ 与 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI 不同，\ **ReflectionProbe** 仅从一个 :ref:`WorldEnvironment<class_WorldEnvironment>` 节点获取环境。如果你在一个 :ref:`Camera3D<class_Camera3D>` 节点中指定了一个 :ref:`Environment<class_Environment>` 资源，它将被该 **ReflectionProbe** 忽略。这可能会导致 **ReflectionProbe** 内的照明不正确。

\ **注意：**\ 使用移动渲染方法时，每个网格资源上最多只能显示 ``8`` 个反射探针，使用兼容渲染方法时每个网格仅支持 ``2`` 个反射探针。尝试在单个网格资源上显示 ``8`` 个以上的反射探针，在使用移动渲染方法时会导致反射探针随着相机移动而闪烁。使用兼容渲染方法时，如果使用超过 ``2`` 个反射探针就会忽略多余的探针不渲染。

\ **注意：**\ 使用移动渲染方法时，反射探针只会正确地影响可见 AABB 与反射探针的 AABB 相交的网格。如果使用着色器以使网格超出其 AABB 的方式变形该网格，则必须在网格上增加 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`\ 。否则，反射探针可能在网格上不可见。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`反射探针 <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`                            | :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>`               | ``Color(0, 0, 0, 1)``   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>` | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` | :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>`                 | ``1``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`blend_distance<class_ReflectionProbe_property_blend_distance>`             | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`box_projection<class_ReflectionProbe_property_box_projection>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`                       | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`enable_shadows<class_ReflectionProbe_property_enable_shadows>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`intensity<class_ReflectionProbe_property_intensity>`                       | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`interior<class_ReflectionProbe_property_interior>`                         | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`max_distance<class_ReflectionProbe_property_max_distance>`                 | ``0.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`     | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`origin_offset<class_ReflectionProbe_property_origin_offset>`               | ``Vector3(0, 0, 0)``    |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`reflection_mask<class_ReflectionProbe_property_reflection_mask>`           | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`size<class_ReflectionProbe_property_size>`                                 | ``Vector3(20, 20, 20)`` |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`   | :ref:`update_mode<class_ReflectionProbe_property_update_mode>`                   | ``0``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

在下一帧更新一次探针（建议大多数对象使用）。对应的辐射率贴图会在后续六帧中陆续生成。更新所花费的时间比 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 多，但消耗的性能比它少、产生的反射质量也更高。ReflectionProbe 的变换发生变化时也会进行更新，但不会在周围几何体变化时更新。你可以通过将该 **ReflectionProbe** 在任意方向上进行小幅度移动来强制更新 **ReflectionProbe**\ 。

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

每一帧都更新该探针。可以为快速移动的对象（如汽车）提供更好的结果。然而，带来的性能消耗也是显著的。因此，建议同一个场景中最多只使用一个 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 ReflectionProbe。其他用途请使用 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

不在 **ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框内部应用环境光照。

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

在 **ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框内部应用自动来源的环境光照。

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

在 **ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框内部应用自定义环境光照。见 :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` 和 :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

**ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的自定义环境光颜色。仅在 :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` 为 :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

**ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的自定义环境光颜色能量。仅在 :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` 为 :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

**ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的环境光颜色。环境光颜色会和其他 **ReflectionProbe** 和场景（\ **ReflectionProbe** 的大小为 :ref:`size<class_ReflectionProbe_property_size>` 的框之外）的其他部分进行平滑混合。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

定义探针融入场景的距离，单位为米。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

为 ``true`` 时将启用箱体投影。通过根据相机的位置偏移反射中心，这使得在矩形房间中的反射看起来更正确。

\ **注意：**\ 为了更好地适应未与网格对齐的区域，你可以旋转 **ReflectionProbe** 节点。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

设置剔除掩码，用来确定该探针绘制的对象。如果 :ref:`VisualInstance3D<class_VisualInstance3D>` 有一个层被包含在剔除掩码中，就会被该探针渲染。为了提高性能，最好只包含可能在反射中占用大量空间的大型对象。

也可以用来防止物体对自己进行反射（例如位于车辆中心的 **ReflectionProbe**\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

如果为 ``true``\ ，则在反射探测中计算阴影。这使得反射探针渲染更慢;如果想禁用它,可以使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

定义反射强度。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

如果为 ``true``\ ，则反射将忽略天空的贡献。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

对象在被剔除之前可以距该 **ReflectionProbe** 的最大距离。减少它可以提高性能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 作为 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 时。

\ **注意：**\ 最大反射距离始终至少等于探针的范围。这意味着减少 :ref:`max_distance<class_ReflectionProbe_property_max_distance>` 并不总是会从反射中剔除对象，尤其是在反射探针由 :ref:`size<class_ReflectionProbe_property_size>` 定义的框已经很大的情况下。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

用于在 **ReflectionProbe** 内渲染网格的自动 LOD 偏置（这类似于 :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`\ ）。较高的值将使用生成了 LOD 变化的不太详细的网格版本。如果设置为 ``0.0``\ ，则自动 LOD 将被禁用。增加 :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` 以牺牲几何细节为代价提高性能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 时。

\ **注意：**\ :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` 不影响 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 可见性范围（也称为“手动”LOD 或分层 LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

设置当该 **ReflectionProbe** 处于 :ref:`box_projection<class_ReflectionProbe_property_box_projection>` 模式时要使用的原点偏移量。这可以被设置为一个非零值，以确保反射适合矩形房间，同时减少“妨碍”反射的对象数量。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

设置反射掩码，该掩码确定哪些对象应用了来自该探针的反射。每个包含在该反射掩码中的层的 :ref:`VisualInstance3D<class_VisualInstance3D>` 都将由该探针应用反射。另见 :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`\ ，它可用于排除对象出现在反射中，同时仍使它们受到 **ReflectionProbe** 的影响。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

反射探针的大小。大小越大，探针覆盖的空间就越大，这将降低感知的分辨率。最好将大小保持在需要的大小。

\ **注意：**\ 为了更好地适应未与网格对齐的区域，可以旋转 **ReflectionProbe** 节点。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

设置该 **ReflectionProbe** 的更新频率。可以是 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` 或 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
