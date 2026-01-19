:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 3D heightmap shape used for physics collision.

.. rst-class:: classref-introduction-group

描述
----

3D 高度图形状，用于物理为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。这种类型最常用于在固定宽度的栅格中放置顶点的地形。

高度图表示为 2D 栅格中的高度值，每个值代表格点在 Y 轴上的位置。 格点在 X 轴和 Z 轴上各自间隔为 1 个单位，且栅格的中心恰好在 :ref:`CollisionShape3D<class_CollisionShape3D>` 节点的原点。在内部，每个栅格正方形被划分为两个三角形。

由于高度图的特性，它无法用于建模悬垂或洞穴，因为这些情况在同一垂直位置上存在多个顶点。若要在碰撞中打孔，可以将所需位置的顶点高度设为 :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`\ （受 GodotPhysics3D 和 Jolt Physics 双方支持）。你也可以接着在其中加入具有独立碰撞的网格来提供悬垂、洞穴等效果。

\ **性能：**\ 对 **HeightMapShape3D** 的碰撞检测比 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 快，但相比 :ref:`BoxShape3D<class_BoxShape3D>` 等基本体形状显著要慢。

高度图碰撞形状也可以由 :ref:`Image<class_Image>` 构建：


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **注意：** 如果需要使用 1 个单位以外的间距，可以调整形状的 :ref:`Node3D.scale<class_Node3D_property_scale>`\ 。不过，注意 GodotPhysics3D 不支持非均一的缩放：你需要在 Y 轴上进行和 X 轴与 Z 轴相同的缩放，这就意味着 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 需要提前被相同程度的逆缩放。还要注意 GodotPhysics3D 不支持动态物体（亦即，未冻结的 :ref:`RigidBody3D<class_RigidBody3D>` 节点）的任何缩放。若要同时使用缩放了的 **HeightMapShape3D** 和动态物体，你必须使用 Jolt Physics。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Heightmap data. The array's size must be equal to :ref:`map_width<class_HeightMapShape3D_property_map_width>` multiplied by :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Number of vertices in the depth of the heightmap. Changing this will resize the :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Number of vertices in the width of the heightmap. Changing this will resize the :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

返回在 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 中找到的最大高度值。仅当 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 更改时重新计算。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

返回在 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 中找到的最小高度值。仅当 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 更改时重新计算。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

使用从 :ref:`Image<class_Image>` 引用读取的数据更新 :ref:`map_data<class_HeightMapShape3D_property_map_data>`\ 。自动调整高度图的宽度 :ref:`map_width<class_HeightMapShape3D_property_map_width>` 和高度 :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`\ ，适应整个图像的宽度和高度。

图像格式需要为 :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>`\ （32 位）、\ :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>`\ （16 位）或 :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>`\ （8 位）。

每个图像像素都以浮点数形式读入，范围从 ``0.0``\ （黑色像素）到 ``1.0``\ （白色像素）。该范围值重新映射到最小高度 ``height_min`` 和最大高度 ``height_max``\ ，形成最终的高度值。

\ **注意：**\ 使用 16 位或 32 位数据的高度图时建议存储为 EXR 或 HDR 格式。使用 8 位高度数据或像 PNG 这样 Godot 会导入为 8 位的格式，将导致阶梯状地形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
