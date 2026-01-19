:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

所有可視 3D 節點的父節點。

.. rst-class:: classref-introduction-group

說明
----

**VisualInstance3D** 可用於將資源連接到視覺表示。所有的視覺化 3D 節點都繼承自 **VisualInstance3D**\ 。一般來說，你不應該直接存取 **VisualInstance3D** 的屬性，因為它們是由繼承自 **VisualInstance3D** 的節點存取和管理的。\ **VisualInstance3D** 是 :ref:`RenderingServer<class_RenderingServer>` 實例的節點表示。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1`` |
   +---------------------------+-----------------------------------------------------------------------------------------+-------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   |       |
   +---------------------------+-----------------------------------------------------------------------------------------+-------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |       |
   +---------------------------+-----------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

繪製該 **VisualInstance3D** 的算繪層。

\ :ref:`Camera3D<class_Camera3D>` 的剔除遮罩包含該 **VisualInstance3D** 所設定的任何算繪層時，該物件才在該相機中可見。

對於 :ref:`Light3D<class_Light3D>`\ ，可以用於控制指定的燈光能夠影響哪些 **VisualInstance3D**\ 。對於 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，可以用於控制哪些粒子受到吸引器的影響。對於 :ref:`Decal<class_Decal>`\ ，可以用於控制哪些 **VisualInstance3D** 受到指定裝飾的影響。

要在腳本中更加方便地調整 :ref:`layers<class_VisualInstance3D_property_layers>`\ ，請使用 :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` 和 :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`\ 。

\ **注意：**\ :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI、\ :ref:`LightmapGI<class_LightmapGI>` 在確定全域光照影響時始終會考慮所有算繪層。如果不希望這樣，請將網格的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 設定為 :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`\ ，將燈光的 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 設定為 :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>`\ ，這樣就能從全域光照中剔除。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

按深度排序時該 **VisualInstance3D** 的深度將調整的量。使用與引擎相同的單位（通常是米）。將其調整為更高的值，將使 **VisualInstance3D** 可靠地繪製在位於同一位置的其他 **VisualInstance3D** 之上。為確保它始終繪製在它周圍的其他物件之上（不位於同一位置），請將值設定為大於該 **VisualInstance3D** 與附近其他 **VisualInstance3D** 之間的距離值。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

如果為 ``true``\ ，則該物件會根據其 :ref:`AABB<class_AABB>` 中心點排序。否則會根據其全局位置排序。

對 3D 模型而言，根據 :ref:`AABB<class_AABB>` 的中心點排序一般更為精確。使用 :ref:`GPUParticles3D<class_GPUParticles3D>` 和 :ref:`CPUParticles3D<class_CPUParticles3D>` 時，根據位置排序能夠更好地控制繪製順序。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

返回此 **VisualInstance3D** 的 :ref:`AABB<class_AABB>`\ （也叫邊界框）。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

返回與此 **VisualInstance3D** 相關聯的資源的 RID。例如，如果該節點是 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，則會返回相關聯的 :ref:`Mesh<class_Mesh>` 的 RID。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

返回這個實例的 RID。這個 RID 與 :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>` 返回的 RID 相同。如果你想為這個 **VisualInstance3D** 直接呼叫 :ref:`RenderingServer<class_RenderingServer>` 函數，就需要這個 RID。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

返回是否啟用了 :ref:`layers<class_VisualInstance3D_property_layers>` 的指定層，該層由一個介於 1 和 20 之間的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

設定由該 **VisualInstance3D** 產生實體的資源，這將改變引擎在底層對該 **VisualInstance3D** 的處理方式。相當於 :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

基於 ``value``\ ，啟用或禁用 :ref:`layers<class_VisualInstance3D_property_layers>` 中的指定層，該層由一個介於 1 和 20 之間的給定 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
