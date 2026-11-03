:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含用於 :ref:`VoxelGI<class_VoxelGI>` 節點的烘焙體素全域光照資料。

.. rst-class:: classref-introduction-group

說明
----

**VoxelGIData** 包含烘焙的體素全域照明，用於 :ref:`VoxelGI<class_VoxelGI>` 節點。\ **VoxelGIData** 還提供了若干用來調整全域照明最終外觀的屬性。這些屬性可以在運作時調整，無須再次烘焙 :ref:`VoxelGI<class_VoxelGI>` 節點。

\ **注意：**\ 為了防止基於文字的場景檔（\ ``.tscn``\ ）過度增長，導致載入和保存速度變慢，請始終將 **VoxelGIData** 保存為外部二進位資源檔（\ ``.res``\ ），不要將其嵌入到場景中。做法是點選 **VoxelGIData** 資源旁邊的下拉箭頭，選擇\ **編輯**\ ，點選屬性檢視器頂部的軟碟圖示，然後選擇\ **另存為...**\ 。

.. rst-class:: classref-introduction-group

教學
----

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

間接光照和反射所使用的法線偏移。較高的值可以減少非粗糙材質中可見的自反射，但會增加光線洩漏並讓間接光照看上去更扁平。如果要優先隱藏自反射而不是追求光照質量，請將 :ref:`bias<class_VoxelGIData_property_bias>` 設為 ``0.0``\ ，並將 :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` 設為 ``1.0`` 和 ``2.0`` 之間的值。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

要使用的動態範圍（\ ``1.0`` 代表低動態範圍場景亮度）。較高的值可用於提供更明亮的間接光照，但會在較暗的區域產生更多可見的色帶效果（包括間接光照和反射）。為了避免色帶效果，建議將其設定得盡可能低，避免出現明顯的亮度截斷。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

:ref:`VoxelGI<class_VoxelGI>` 節點產生的間接照明和反射的能量。值越高，間接照明越亮。如果間接照明看起來過於平坦，請嘗試減少 :ref:`propagation<class_VoxelGIData_property_propagation>`\ ，同時增加 :ref:`energy<class_VoxelGIData_property_energy>`\ 。另請參閱影響間接照明有效亮度的 :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

如果為 ``true``\ ，則 :ref:`VoxelGI<class_VoxelGI>` 節點會忽略 :ref:`Environment<class_Environment>` 光照。如果為 ``false``\ ，則 :ref:`VoxelGI<class_VoxelGI>` 節點會考慮 :ref:`Environment<class_Environment>` 光照。\ :ref:`Environment<class_Environment>` 光照會即時更新，這意味著無需再次烘焙 :ref:`VoxelGI<class_VoxelGI>` 節點即可對其進行更改。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

用於間接照明和反射的法線偏置。較高的值能夠減少在非粗糙材質中可見的自反射，但會導致更多可見的漏光問題，間接照明看起來也會更平坦。另見 :ref:`bias<class_VoxelGIData_property_bias>`\ 。要優先隱藏自反射，而不是提高照明品質，請將 :ref:`bias<class_VoxelGIData_property_bias>` 設定為 ``0.0``\ ，並將 :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` 設定為介於 ``1.0`` 和 ``2.0`` 之間的值。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

當光線從表面反彈時使用的乘數。較高的值會導致更亮的間接照明。如果間接照明看起來過於平坦，請嘗試減少 :ref:`propagation<class_VoxelGIData_property_propagation>` 同時增加 :ref:`energy<class_VoxelGIData_property_energy>`\ 。另請參閱影響間接照明的有效亮度的 :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

如果為 ``true``\ ，則執行兩次間接照明反彈而不是一次。這使得以一個較低的效能成本，使間接照明看起來更自然、更明亮。第二次反彈在反射中也是可見的。如果啟用 :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` 後場景顯得太亮，請調整 :ref:`propagation<class_VoxelGIData_property_propagation>` 和 :ref:`energy<class_VoxelGIData_property_energy>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

用指定的資料初始化此 **VoxelGIData**\ 。\ ``octree_cells`` 必須是 32 的倍數，且 ``octree_cells`` 的大小必須是 ``data_cells`` 的兩倍。分配的資料日後可通過各種取值方法（getter methods）進行檢索。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

返回一個 :ref:`AABB<class_AABB>`\ ，表示已烘焙體素資料的邊界，烘焙後應該與 :ref:`VoxelGI.size<class_VoxelGI_property_size>` 相配對（僅包含表示大小的 :ref:`Vector3<class_Vector3>`\ ）。

\ **注意：**\ 如果修改了大小但沒有對 VoxelGI 資料進行烘焙，則 :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` 和 :ref:`VoxelGI.size<class_VoxelGI_property_size>` 的值將不配對。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

回傳這個 **VoxelGIData** 的烘焙單元格資料。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

回傳這個 **VoxelGIData** 的烘焙層級數量。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

回傳這個 **VoxelGIData** 的烘焙八叉樹單元格資料。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

回傳此 **VoxelGIData** 烘焙後的八叉樹大小，該數值對應於每個軸向的細分數量。當選擇 :ref:`VoxelGI<class_VoxelGI>` 節點時，將滑鼠懸停在 3D 編輯器視埠頂部的 **烘焙 VoxelGI** 按鈕上，即可在工具提示中查看 **細分** 欄位。

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

回傳這個 **VoxelGIData** 的烘焙單元格變換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
