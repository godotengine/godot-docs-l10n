:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

為 3D 節點提供遮擋剔除，可以提高封閉區域的性能。

.. rst-class:: classref-introduction-group

說明
----

Occlusion culling can improve rendering performance in closed/semi-open areas by hiding geometry that is occluded by other objects.

The occlusion culling system is mostly static. **OccluderInstance3D**\ s can be moved or hidden at run-time, but doing so will trigger a background recomputation that can take several frames. It is recommended to only move **OccluderInstance3D**\ s sporadically (e.g. for procedural generation purposes), rather than doing so every frame.

The occlusion culling system works by rendering the occluders on the CPU in parallel using `Embree <https://www.embree.org/>`__, drawing the result to a low-resolution buffer then using this to cull 3D nodes individually. In the 3D editor, you can preview the occlusion culling buffer by choosing **Perspective > Display Advanced... > Occlusion Culling Buffer** in the top-left corner of the 3D viewport. The occlusion culling buffer quality can be adjusted in the Project Settings.

\ **Baking:** Select an **OccluderInstance3D** node, then use the **Bake Occluders** button at the top of the 3D editor. Only opaque materials will be taken into account; transparent materials (alpha-blended or alpha-tested) will be ignored by the occluder generation.

\ **Note:** Occlusion culling is only effective if :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` is ``true``. Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges (:ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` and :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`) compared to occlusion culling.

\ **Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with ``module_raycast_enabled=yes``.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`遮擋剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

烘焙遮擋物時要考慮的可視層。只有其 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 與該 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 配對的 :ref:`MeshInstance3D<class_MeshInstance3D>`\ ，才會被包含在生成的遮擋物網格中。預設情況下，所有具有\ *不透明*\ 材質的對象，都將被考慮用於遮擋物烘焙。

為了提高性能並避免偽影，建議將動態物件、小物件和固定裝置從烘焙過程中排除，方法是將它們移動到一個單獨的可視層，並在 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中排除該層。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

用於簡化生成的遮擋物多邊形的簡化距離（單位為 3D 單位）。更高的值會導致遮擋物網格的細節更少，這會提高性能但會降低剔除精度。

遮擋物幾何體是在 CPU 上算繪的，因此保持其幾何體盡可能簡單很重要。由於緩衝區以低解析度算繪，因此細節較少的遮擋網格通常仍能正常工作。預設值相當激進，因此如果遇到誤報（即使相機可見的物件也被遮擋），可能必須降低該屬性。\ ``0.01`` 的值將保守地起作用，並將保持幾何體\ *感知*\ 在遮擋剔除緩衝區中不受影響。根據場景的不同，與完全禁用簡化相比，\ ``0.01`` 的值仍能顯著簡化網格。

將該屬性設定為 ``0.0`` 將會完全禁用簡化，但仍會合並位置完全相同的頂點。網格也將被重新索引以減少頂點和索引的數量。

\ **注意：**\ 這在底層使用了 `meshoptimizer <https://meshoptimizer.org/>`__ 庫，類似於 LOD 生成。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

這個 **OccluderInstance3D** 的遮擋器資源。要生成遮擋器資源，你可以先選中 **OccluderInstance3D** 節點，然後使用編輯器頂部的\ **烘焙遮擋器**\ 按鈕。

你還可以通過在“屬性檢視器”中為 :ref:`occluder<class_OccluderInstance3D_property_occluder>` 屬性新增新的 :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` 資源來繪製自己的 2D 遮擋器多邊形。

另外，你也可以選擇要使用的基本遮擋器：\ :ref:`QuadOccluder3D<class_QuadOccluder3D>`\ 、\ :ref:`BoxOccluder3D<class_BoxOccluder3D>`\ 、\ :ref:`SphereOccluder3D<class_SphereOccluder3D>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

返回是否啟用了 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 的指定層，該層由給定的一個介於 1 和 32 之間的 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

基於 ``value``\ ，啟用或禁用 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中的指定層，該層由給定的一個介於 1 和 32 之間的 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
