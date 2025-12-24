:github_url: hide

.. _class_NavigationMeshSourceGeometryData2D:

NavigationMeshSourceGeometryData2D
==================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放解析所得的源几何体数据的容器，用于导航网格的烘焙。

.. rst-class:: classref-introduction-group

描述
----

存放解析所得的源几何体数据的容器，用于导航网格的烘焙。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_obstruction_outline<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_projected_obstruction<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ )             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_traversable_outline<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear<class_NavigationMeshSourceGeometryData2D_method_clear>`\ (\ )                                                                                                                                                      |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`\ (\ )                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                                        | :ref:`get_bounds<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`\ (\ )                                                                                                                                            |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                        | :ref:`get_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`\ (\ ) |const|                                                                                                    |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`has_data<class_NavigationMeshSourceGeometryData2D_method_has_data>`\ (\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`merge<class_NavigationMeshSourceGeometryData2D_method_merge>`\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ )                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ )                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline:

.. rst-class:: classref-method

|void| **add_obstruction_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`

添加形状的轮廓点作为遮挡区域。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`

将投影的障碍物形状添加到源几何体。如果 ``carve`` 为 ``true``\ ，则雕刻的形状将不会受到导航网格烘焙过程的额外偏移（例如代理半径）的影响。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline:

.. rst-class:: classref-method

|void| **add_traversable_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`

添加形状的轮廓点作为可遍历区域。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines:

.. rst-class:: classref-method

|void| **append_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`

在已有障碍物轮廓数组的末尾追加另一个 ``obstruction_outlines`` 数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines:

.. rst-class:: classref-method

|void| **append_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`

在已有可遍历轮廓数组的末尾追加另一个 ``traversable_outlines`` 数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear>`

清除内部数据。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`

清除所有投射的障碍物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`

返回覆盖所有存储几何数据的轴对齐边界框。边界在调用该函数时计算，缓存至几何体发生后续变化。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_obstruction_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`

返回所有遮挡区域轮廓数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`

将投影的障碍物作为字典的 :ref:`Array<class_Array>` 返回。每个 :ref:`Dictionary<class_Dictionary>` 包含以下条目：

- ``vertices`` - 定义投影形状轮廓点的 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

- ``carve`` - 定义投影形状如何影响导航网格烘焙的 :ref:`bool<class_bool>`\ 。如果为 ``true``\ ，则投影形状不会受到额外偏移的影响，例如代理半径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_traversable_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`

返回所有可遍历区域轮廓数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_has_data>`

当解析的源几何数据存在时，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_merge>`

将其他 **NavigationMeshSourceGeometryData2D** 的几何体数据添加到导航网格烘焙数据。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines:

.. rst-class:: classref-method

|void| **set_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`

设置所有遮挡区域轮廓数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`

使用包含以下键值对的字典数组设置投影障碍物：


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines:

.. rst-class:: classref-method

|void| **set_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`

设置所有可遍历区域轮廓数组。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
