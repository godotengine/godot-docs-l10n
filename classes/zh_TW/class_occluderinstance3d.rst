:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

為 3D 節點提供遮擋剔除，可以提高封閉區域的效能。

.. rst-class:: classref-introduction-group

說明
----

遮擋剔除可以通過隱藏被其他物件遮擋的幾何體，來提高封閉/半開放區域的渲染效能。

遮擋剔除系統大多是靜態的。\ **OccluderInstance3D** 可以在執行時移動或隱藏，但這樣做會觸發可能需要幾影格的背景重新計算。建議僅偶爾移動 **OccluderInstance3D**\ （例如，出於程式生成目的），而不是每影格都這樣做。

遮擋剔除系統的工作原理是，使用 `Embree <https://www.embree.org/>`__ 在 CPU 上並行渲染遮擋物，將結果繪製到一個低解析度緩衝區，然後使用它來單獨剔除 3D 的節點。在 3D 編輯器中，可以通過選擇 3D 視埠左上角的\ **透檢視 > 顯示進階... > 遮擋剔除緩衝區**\ ，來預覽遮擋剔除緩衝區。可以在專案設定中調整遮擋剔除緩衝區的品質。

\ **烘焙：**\ 選擇一個 **OccluderInstance3D** 節點，然後使用 3D 編輯器頂部的\ **烘焙遮擋物**\ 按鈕。只考慮不透明的材質；遮擋器生成將忽略透明材質（alpha 混合或 alpha 測試）。

\ **注意：**\ 遮擋剔除只有在 :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` 為 ``true`` 時才有效。啟用遮擋剔除會消耗一定的 CPU。僅當確實打算使用遮擋剔除時才啟用它。具有很少或沒有物體，將阻擋視埠的大型開放場景，通常不會從遮擋剔除中受益更多。與遮擋剔除相比，大型開放場景通常從網格 LOD 和可見性範圍（\ :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 和 :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`\ ）中受益更多。

\ **注意：**\ 由於記憶體限制，Web 匯出範本中預設不支援遮擋剔除。編譯自訂 Web 匯出範本時使用 ``module_raycast_enabled=yes`` 可以啟用。

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

為了提高效能並避免偽影，建議將動態物件、小物件和固定裝置從烘焙過程中排除，方法是將它們移動到一個單獨的可視層，並在 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中排除該層。

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

用於簡化生成的遮擋物多邊形的簡化距離（單位為 3D 單位）。更高的值會導致遮擋物網格的細節更少，這會提高效能但會降低剔除精度。

遮擋物幾何體是在 CPU 上渲染的，因此保持其幾何體盡可能簡單很重要。由於緩衝區以低解析度渲染，因此細節較少的遮擋網格通常仍能正常工作。預設值相當激進，因此如果遇到誤報（即使相機可見的物件也被遮擋），可能必須降低該屬性。\ ``0.01`` 的值將保守地起作用，並將保持幾何體\ *感知*\ 在遮擋剔除緩衝區中不受影響。根據場景的不同，與完全停用簡化相比，\ ``0.01`` 的值仍能顯著簡化網格。

將該屬性設定為 ``0.0`` 將會完全停用簡化，但仍會合並位置完全相同的頂點。網格也將被重新索引以減少頂點和索引的數量。

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

基於 ``value``\ ，啟用或停用 :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` 中的指定層，該層由給定的一個介於 1 和 32 之間的 ``layer_number`` 指定。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
