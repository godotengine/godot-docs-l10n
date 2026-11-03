:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

3D 高度圖形狀，用於物理碰撞。

.. rst-class:: classref-introduction-group

說明
----

3D 高度圖形狀，用於物理為 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形狀。這種型別最常用於在固定寬度的柵格中放置頂點的地形。

高度圖表示為 2D 柵格中的高度值，每個值代表格點在 Y 軸上的位置。 格點在 X 軸和 Z 軸上各自間隔為 1 個單位，且柵格的中心恰好在 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點的原點。在內部，每個柵格正方形被劃分為兩個三角形。

由於高度圖的特性，它無法用於建模懸垂或洞穴，因為這些情況在同一垂直位置上存在多個頂點。若要在碰撞中打孔，可以將所需位置的頂點高度設為 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`\ （受 GodotPhysics3D 和 Jolt Physics 雙方支援）。你也可以接著在其中加入具有獨立碰撞的網格來提供懸垂、洞穴等效果。

\ **效能：**\ 對 **HeightMapShape3D** 的碰撞檢測比 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 快，但相比 :ref:`BoxShape3D<class_BoxShape3D>` 等基本體形狀顯著要慢。

高度圖碰撞形狀也可以由 :ref:`Image<class_Image>` 建置：


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **注意：** 如果需要使用 1 個單位以外的間距，可以調整形狀的 :ref:`Node3D.scale<class_Node3D_property_scale>`\ 。不過，注意 GodotPhysics3D 不支援非均一的縮放：你需要在 Y 軸上進行和 X 軸與 Z 軸相同的縮放，這就意味著 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 需要提前被相同程度的逆縮放。還要注意 GodotPhysics3D 不支援動態物體（亦即，未凍結的 :ref:`RigidBody3D<class_RigidBody3D>` 節點）的任何縮放。若要同時使用縮放了的 **HeightMapShape3D** 和動態物體，你必須使用 Jolt Physics。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`map_data<class_HeightMapShape3D_property_map_data>`   | ``PackedFloat32Array(0, 0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_width<class_HeightMapShape3D_property_map_width>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_max_height<class_HeightMapShape3D_method_get_max_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_min_height<class_HeightMapShape3D_method_get_min_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`update_map_data_from_image<class_HeightMapShape3D_method_update_map_data_from_image>`\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

高度圖資料。該陣列的大小必須等於 :ref:`map_width<class_HeightMapShape3D_property_map_width>` 乘以 :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

高度圖深度中的頂點數。更改該項將調整 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 的大小。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

高度圖寬度中的頂點數。更改該項將調整 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

回傳在 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 中找到的最大高度值。僅當 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 更改時重新計算。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

回傳在 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 中找到的最小高度值。僅當 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 更改時重新計算。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

使用從 :ref:`Image<class_Image>` 參照讀取的資料更新 :ref:`map_data<class_HeightMapShape3D_property_map_data>`\ 。自動調整高度圖的寬度 :ref:`map_width<class_HeightMapShape3D_property_map_width>` 和高度 :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`\ ，適應整個影像的寬度和高度。

影像格式需要為 :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>`\ （32 位元）、\ :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>`\ （16 位元）或 :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>`\ （8 位元）。

每個影像像素都以浮點數形式讀入，範圍從 ``0.0``\ （黑色像素）到 ``1.0``\ （白色像素）。該範圍值重新映射到最小高度 ``height_min`` 和最大高度 ``height_max``\ ，形成最終的高度值。

\ **注意：**\ 使用 16 位元或 32 位元資料的高度圖時建議儲存為 EXR 或 HDR 格式。使用 8 位元高度資料或像 PNG 這樣 Godot 會匯入為 8 位元的格式，將導致階梯狀地形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
