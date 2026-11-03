:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

CSG 基底類別。

.. rst-class:: classref-introduction-group

說明
----

這是 CSG 的基底類別，為 Godot 中的各種 CSG 節點提供 CSG 運算支援。

\ **效能：**\ CSG 節點僅適用於原型設計，存在顯著的 CPU 效能消耗。請考慮將最終的 CSG 運算結果烘焙為靜態幾何體，替換 CSG 節點。

使用選中 CSG 根節點後顯示的編輯器選單可以將各個 CSG 根節點的結果烘焙為使用靜態資源的節點。

使用腳本也可以將各個 CSG 根節點烘焙為靜態資源，可視網格請呼叫 :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>`\ ，物理碰撞請呼叫 :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>`\ 。

使用編輯器的 gltf 場景匯出器可以將由 CSG 節點構成的整個場景烘焙為靜態幾何體：\ **場景 > 匯出為... > glTF 2.0 場景...**

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 CSG 設計關卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`autosmooth<class_CSGShape3D_property_autosmooth>`                 | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>`       | ``50.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

合併兩個圖元的幾何體，移除相交的幾何體。

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

僅保留相交的幾何，其餘的將被移除。

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

從第一個形狀減去第二個形狀，留下一個帶有其形狀的凹痕。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CSGShape3D_property_autosmooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autosmooth** = ``false`` :ref:`🔗<class_CSGShape3D_property_autosmooth>`

.. rst-class:: classref-property-setget

- |void| **set_autosmooth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autosmooth**\ (\ )

啟用自動平滑。這將覆蓋 CSG 節點上的任何原有平滑設定，轉而使用 :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>`\ （平滑角度）根據面與面之間的夾角來計算法線。

\ :ref:`CSGCombiner3D<class_CSGCombiner3D>` 節點的所有子節點將被視為一個單一的網格體。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

計算允許使用法線貼圖的 CSG 形狀的切線。僅適用於根形狀，該設定在所有子級上均被忽略。設定為 ``false`` 可以略微加速形狀的生成。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

這個區域所處的實體層。

可碰撞的物體可以存在於 32 個不同層中的任何一個。這些層的工作就像一個標籤系統，而不是視覺化的。一個可碰撞物體可以使用這些層來選擇它可以與哪些物體碰撞，使用 collision_mask 屬性。

如果物件 A 在物件 B 所掃描的任何層中，或者物件 B 在物件 A 所掃描的任何層中，就會偵測到接觸。詳情請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

該 CSG 形狀掃描碰撞的實體層。僅當 :ref:`use_collision<class_CSGShape3D_property_use_collision>` 為 ``true`` 時有效。有關更多資訊，請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

發生穿透時用於解算碰撞的優先順序。僅當 :ref:`use_collision<class_CSGShape3D_property_use_collision>` 為 ``true`` 時有效。優先順序越高，對對象的穿透力就越低。例如，這可以用來防止玩家突破關卡的邊界。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

在此形狀上執行的操作。對於第一個 CSG 子節點，將忽略此操作，因為操作是在此節點與該節點父級的上一個子級之間進行的。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_smoothing_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **smoothing_angle** = ``50.0`` :ref:`🔗<class_CSGShape3D_property_smoothing_angle>`

.. rst-class:: classref-property-setget

- |void| **set_smoothing_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_smoothing_angle**\ (\ )

當自動平滑（autosmooth）啟用時，面與面之間的夾角小於該值的會被平滑處理，而夾角大於該值的則會保持銳利（保留稜角）。

注意：將該角度設定為低於 0.1 的值會導致所有平滑效果被停用，這可以用來提升效能。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**已棄用：** The CSG library no longer uses snapping.

該屬性無效。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

為我們的 CSG 形狀向物理引擎新增碰撞形狀。這樣行為就始終與靜態物體類似。請注意，即使 CSG 形狀本身被隱藏，碰撞形狀仍處於活動狀態。另見 :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` 和 :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

回傳針對該節點 CSG 運算結果烘焙的物理 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`\ 。如果該節點不是 CSG 根節點或者不包含有效的幾何體，則回傳空形狀。

\ **效能：**\ 如果 CSG 運算得到的是包含大量細節的幾何體，面數很多，那麼物理效能可能非常慢。一般來說，凹面形狀應該只用來製作靜態關卡幾何體，不應用來製作可以移動的動態物體。

\ **注意：**\ CSG 網格資料是延遲更新的，即延遲一個渲染影格後更新。為了避免取得到空形狀或過時的網格資料，請確保在 :ref:`Node._ready()<class_Node_private_method__ready>` 中使用 :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` 之前，或在更改 **CSGShape3D** 的屬性後，呼叫 ``await get_tree().process_frame``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

回傳該節點 CSG 運算結果烘焙得到的靜態 :ref:`ArrayMesh<class_ArrayMesh>`\ 。相關 CSG 節點的材質會作為額外的網格表面新增。如果該節點不是 CSG 根節點或沒有有效的幾何體，則回傳空網格。

\ **注意：**\ CSG 網格資料是延遲更新的，存在一個渲染影格的更新延遲。要避免取得到空的形狀或過時的網格資料，請確保在 :ref:`Node._ready()<class_Node_private_method__ready>` 中使用 :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` 之前以及在修改 **CSGShape3D** 的屬性後呼叫 ``await get_tree().process_frame``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_CSGShape3D_property_collision_layer>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

回傳一個包含兩個元素的 :ref:`Array<class_Array>`\ ，第一個元素是該節點的 :ref:`Transform3D<class_Transform3D>`\ ，第二個元素是該節點的根 :ref:`Mesh<class_Mesh>`\ 。僅在該節點為根形狀時有效。

\ **注意：**\ CSG 網格資料是延遲更新的，存在一個渲染影格的更新延遲。要避免取得到空的形狀或過時的網格資料，請確保在 :ref:`Node._ready()<class_Node_private_method__ready>` 中使用 :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` 之前以及在修改 **CSGShape3D** 的屬性後呼叫 ``await get_tree().process_frame``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

如果這是根形狀，因此是渲染的物件，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

根據 ``value``\ ，啟用或停用 :ref:`collision_layer<class_CSGShape3D_property_collision_layer>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或停用 :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
