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

將其周圍環境捕捉為立方體貼圖，並儲存不同版本，其模糊層級遞增以模擬不同的材質粗糙度。

\ **ReflectionProbe** 用於以低效能成本（當 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 為 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` 時），建立高品質反射。\ **ReflectionProbe** 可以與場景的其餘部分，平滑地混合在一起。\ **ReflectionProbe** 還可以與 :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI（\ :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）和螢幕空間反射（\ :ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`\ ）結合使用，以在特定區域獲得更準確的反射。\ **ReflectionProbe** 渲染其 :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>` 內的所有物件，因此更新它們可能會非常昂貴。最好僅用重要的靜態物件更新一次，然後保持原樣。

\ **注意：**\ 與 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI 不同，\ **ReflectionProbe** 僅從一個 :ref:`WorldEnvironment<class_WorldEnvironment>` 節點取得環境。如果你在一個 :ref:`Camera3D<class_Camera3D>` 節點中指定了一個 :ref:`Environment<class_Environment>` 資源，它將被該 **ReflectionProbe** 忽略。這可能會導致 **ReflectionProbe** 內的照明不正確。

\ **注意：**\ 使用移動渲染方法時，每個網格資源上最多只能顯示 ``8`` 個反射探針，使用相容渲染方法時每個網格僅支援 ``2`` 個反射探針。嘗試在單個網格資源上顯示 ``8`` 個以上的反射探針，在使用移動渲染方法時會導致反射探針隨著相機移動而閃爍。使用相容渲染方法時，如果使用超過 ``2`` 個反射探針就會忽略多餘的探針不渲染。

\ **注意：**\ 使用移動渲染方法時，反射探針只會正確地影響可見 AABB 與反射探針的 AABB 相交的網格。如果使用著色器以使網格超出其 AABB 的方式變形該網格，則必須在網格上增加 :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`\ 。否則，反射探針可能在網格上不可見。

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

在下一影格更新一次探查（建議大多數物件使用）。對應的輻照度貼圖會在後續六影格中陸續生成。更新所花費的時間比 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 多，但消耗的效能比它少、產生的反射品質也更高。ReflectionProbe 的變換發生變化時也會進行更新，但不會在周圍幾何體變化時更新。你可以通過將該 **ReflectionProbe** 在任意方向上進行小幅度移動來強制更新 **ReflectionProbe**\ 。

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

每一影格都更新該探查。可以為快速移動的物件（如汽車）提供更好的結果。然而，帶來的效能消耗也是顯著的。因此，建議同一個場景中最多只使用一個 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 ReflectionProbe。其他用途請使用 :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`\ 。

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

定義探針融入場景的距離，單位為米。

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

設定剔除遮罩，用來確定該探針繪製的物件。如果 :ref:`VisualInstance3D<class_VisualInstance3D>` 有一個層被包含在剔除遮罩中，就會被該探針渲染。為了提高效能，最好只包含可能在反射中佔用大量空間的大型物件。

也可以用來防止物體對自己進行反射（例如位於車輛中心的 **ReflectionProbe**\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

如果為 ``true``\ ，則在反射探測中計算陰影。這使得反射探查渲染更慢;如果想停用它,可以使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`\ 。

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

物件在被剔除之前可以距該 **ReflectionProbe** 的最大距離。減少它可以提高效能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 作為 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 時。

\ **注意：**\ 最大反射距離始終至少等於探查的範圍。這意味著減少 :ref:`max_distance<class_ReflectionProbe_property_max_distance>` 並不總是會從反射中剔除物件，尤其是在反射探查由 :ref:`size<class_ReflectionProbe_property_size>` 定義的框已經很大的情況下。

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

用於在 **ReflectionProbe** 內渲染網格的自動 LOD 偏置（這類似於 :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`\ ）。較高的值將使用生成了 LOD 變化的不太詳細的網格版本。如果設定為 ``0.0``\ ，則自動 LOD 將被停用。增加 :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` 以犧牲幾何細節為代價提高效能，尤其是在使用 :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` 的 :ref:`update_mode<class_ReflectionProbe_property_update_mode>` 時。

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

設定反射遮罩，該遮罩確定哪些物件應用了來自該探針的反射。每個包含在該反射遮罩中的層的 :ref:`VisualInstance3D<class_VisualInstance3D>` 都將由該探針應用反射。另見 :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`\ ，它可用於排除物件出現在反射中，同時仍使它們受到 **ReflectionProbe** 的影響。

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
