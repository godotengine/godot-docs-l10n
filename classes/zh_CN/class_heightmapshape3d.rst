:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

3D 高度图形状，用于物理碰撞。

.. rst-class:: classref-introduction-group

描述
----

A 3D heightmap shape, intended for use in physics to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`. This type is most commonly used for terrain with vertices placed in a fixed-width grid.

The heightmap is represented as a 2D grid of height values, which represent the position of grid points on the Y axis. Grid points are spaced 1 unit apart on the X and Z axes, and the grid is centered on the origin of the :ref:`CollisionShape3D<class_CollisionShape3D>` node. Internally, each grid square is divided into two triangles.

Due to the nature of the heightmap, it cannot be used to model overhangs or caves, which would require multiple vertices at the same vertical location. Holes can be punched through the collision by assigning :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` to the height of the desired vertices. You could then insert meshes with their own separate collision to provide overhangs, caves, and so on.

\ **Performance:** **HeightMapShape3D** is faster to check collisions against than :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, but it is significantly slower than primitive shapes like :ref:`BoxShape3D<class_BoxShape3D>`.

A heightmap collision shape can also be built by using an :ref:`Image<class_Image>` reference:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Note:** If you need to use a spacing different than 1 unit, you can adjust the :ref:`Node3D.scale<class_Node3D_property_scale>` of the shape. However, keep in mind that GodotPhysics3D does not support non-uniform scaling: you'll need to scale the Y axis by the same amount as the X and Z axes, which means the values in :ref:`map_data<class_HeightMapShape3D_property_map_data>` will need to be pre-scaled by the inverse of that scale. Also note that GodotPhysics3D does not support scaling at all for dynamic bodies (that is, non-frozen :ref:`RigidBody3D<class_RigidBody3D>` nodes); to use a scaled **HeightMapShape3D** with those, you will need to use Jolt Physics.

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

高度图数据。该数组的大小必须等于 :ref:`map_width<class_HeightMapShape3D_property_map_width>` 乘以 :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

高度图深度中的顶点数。更改该项将调整 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 的大小。

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

高度图宽度中的顶点数。更改该项将调整 :ref:`map_data<class_HeightMapShape3D_property_map_data>` 的大小。

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
