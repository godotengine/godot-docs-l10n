:github_url: hide

.. meta::
	:keywords: environment, envmap

.. _class_ReflectionProbe:

ReflectionProbe
===============

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

捕捉某個位置周圍的環境，用於快速建立準確的反射。

.. rst-class:: classref-introduction-group

說明
----

Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses.

The **ReflectionProbe** is used to create high-quality reflections at a low performance cost (when :ref:`update_mode<class_ReflectionProbe_property_update_mode>` is :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`). **ReflectionProbe**\ s can be blended together and with the rest of the scene smoothly. **ReflectionProbe**\ s can also be combined with :ref:`VoxelGI<class_VoxelGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) and screen-space reflections (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`) to get more accurate reflections in specific areas. **ReflectionProbe**\ s render all objects within their :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is.

\ **Note:** Unlike :ref:`VoxelGI<class_VoxelGI>` and SDFGI, **ReflectionProbe**\ s only source their environment from a :ref:`WorldEnvironment<class_WorldEnvironment>` node. If you specify an :ref:`Environment<class_Environment>` resource within a :ref:`Camera3D<class_Camera3D>` node, it will be ignored by the **ReflectionProbe**. This can lead to incorrect lighting within the **ReflectionProbe**.

\ **Note:** When using the Mobile rendering method, only ``8`` reflection probes can be displayed on each mesh resource, while the Compatibility rendering method only supports up to ``2`` reflection probes on each mesh. Attempting to display more than ``8`` reflection probes on a single mesh resource using the Mobile renderer will result in reflection probes flickering in and out as the camera moves, while the Compatibility renderer will not render any additional probes if more than ``2`` reflection probes are being used.

\ **Note:** When using the Mobile rendering method, reflection probes will only correctly affect meshes whose visibility AABB intersects with the reflection probe's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` must be increased on the mesh. Otherwise, the reflection probe may not be visible on the mesh.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`反射探查 <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

在下一影格更新一次探查（建議大多數物件使用）。對應的輻照度貼圖會在後續六影格中陸續生成。更新所花費的時間比 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 多，但消耗的性能比它少、產生的反射品質也更高。ReflectionProbe 的變換發生變化時也會進行更新，但不會在周圍幾何體變化時更新。你可以通過將該 **ReflectionProbe** 在任意方向上進行小幅度移動來強制更新 **ReflectionProbe**\ 。

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

每一影格都更新該探查。可以為快速移動的物件（如汽車）提供更好的結果。然而，帶來的性能消耗也是顯著的。因此，建議同一個場景中最多只使用一個 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 ReflectionProbe。其他用途請使用 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

不在 **ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框內部套用環境光照。

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

在 **ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框內部套用自動來源的環境光照。

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

在 **ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框內部套用自訂環境光照。見 :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` 和 :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

**ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的自訂環境光顏色。僅在 :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` 為 :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

**ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的自訂環境光顏色能量。僅在 :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` 為 :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

**ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框中使用的環境光顏色。環境光顏色會和其他 **ReflectionProbe** 和場景（\ **ReflectionProbe** 的大小為 :ref:`size<class_ReflectionProbe_property_size>` 的框之外）的其他部分進行平滑混合。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

Defines the distance in meters over which a probe blends into the scene.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

為 ``true`` 時將啟用箱體投影。通過根據相機的位置偏移反射中心，這使得在矩形房間中的反射看起來更正確。

\ **注意：**\ 為了更好地適應未與網格對齊的區域，你可以旋轉 **ReflectionProbe** 節點。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Sets the cull mask which determines what objects are drawn by this probe. Every :ref:`VisualInstance3D<class_VisualInstance3D>` with a layer included in this cull mask will be rendered by the probe. It is best to only include large objects which are likely to take up a lot of space in the reflection in order to save on rendering cost.

This can also be used to prevent an object from reflecting upon itself (for instance, a **ReflectionProbe** centered on a vehicle).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

如果為 ``true``\ ，則在反射探測中計算陰影。這使得反射探查算繪更慢;如果想禁用它,可以使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

定義反射強度。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

如果為 ``true``\ ，則反射將忽略天空的貢獻。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

物件在被剔除之前可以距該 **ReflectionProbe** 的最大距離。減少它可以提高性能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 作為 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 時。

\ **注意：**\ 最大反射距離始終至少等於探查的範圍。這意味著減少 :ref:`max_distance<class_ReflectionProbe_property_max_distance>` 並不總是會從反射中剔除物件，尤其是在反射探查由 :ref:`size<class_ReflectionProbe_property_size>` 定義的框已經很大的情況下。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

用於在 **ReflectionProbe** 內算繪網格的自動 LOD 偏置（這類似於 :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`\ ）。較高的值將使用生成了 LOD 變化的不太詳細的網格版本。如果設定為 ``0.0``\ ，則自動 LOD 將被禁用。增加 :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` 以犧牲幾何細節為代價提高性能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 時。

\ **注意：**\ :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` 不影響 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 可見性範圍（也稱為“手動”LOD 或分層 LOD）。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

設定當該 **ReflectionProbe** 處於 :ref:`box_projection<class_ReflectionProbe_property_box_projection>` 模式時要使用的原點偏移量。這可以被設定為一個非零值，以確保反射適合矩形房間，同時減少“妨礙”反射的物件數量。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

Sets the reflection mask which determines what objects have reflections applied from this probe. Every :ref:`VisualInstance3D<class_VisualInstance3D>` with a layer included in this reflection mask will have reflections applied from this probe. See also :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, which can be used to exclude objects from appearing in the reflection while still making them affected by the **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

反射探查的大小。大小越大，探查覆蓋的空間就越大，這將降低感知的解析度。最好將大小保持在需要的大小。

\ **注意：**\ 為了更好地適應未與網格對齊的區域，可以旋轉 **ReflectionProbe** 節點。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

設定該 **ReflectionProbe** 的更新頻率。可以是 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` 或 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
