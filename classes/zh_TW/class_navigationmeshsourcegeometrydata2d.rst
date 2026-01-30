:github_url: hide

.. _class_NavigationMeshSourceGeometryData2D:

NavigationMeshSourceGeometryData2D
==================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放解析所得的源幾何體資料的容器，用於導覽網格的烘焙。

.. rst-class:: classref-introduction-group

說明
----

存放解析所得的源幾何體資料的容器，用於導覽網格的烘焙。

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

方法說明
--------

.. _class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline:

.. rst-class:: classref-method

|void| **add_obstruction_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`

將形狀的輪廓點新增為遮蔽區域。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`

Adds a projected obstruction shape to the source geometry. If ``carve`` is ``true`` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline:

.. rst-class:: classref-method

|void| **add_traversable_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`

將形狀的輪廓點新增為可走訪區域。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines:

.. rst-class:: classref-method

|void| **append_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`

Appends another array of ``obstruction_outlines`` at the end of the existing obstruction outlines array.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines:

.. rst-class:: classref-method

|void| **append_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`

Appends another array of ``traversable_outlines`` at the end of the existing traversable outlines array.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear>`

清除內部資料。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`

Clears all projected obstructions.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`

Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_obstruction_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`

返回參數的絕對值。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`

Returns the projected obstructions as an :ref:`Array<class_Array>` of dictionaries. Each :ref:`Dictionary<class_Dictionary>` contains the following entries:

- ``vertices`` - A :ref:`PackedFloat32Array<class_PackedFloat32Array>` that defines the outline points of the projected shape.

- ``carve`` - A :ref:`bool<class_bool>` that defines how the projected shape affects the navigation mesh baking. If ``true`` the projected shape will not be affected by addition offsets, e.g. agent radius.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_traversable_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`

返回解析得到的源幾何體資料索引資料。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_has_data>`

如果存在解析得到的源幾何體資料，則返回 **true**\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_merge>`

Adds the geometry data of another **NavigationMeshSourceGeometryData2D** to the navigation mesh baking data.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines:

.. rst-class:: classref-method

|void| **set_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`

設定所有遮蔽區域輪廓陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`

Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines:

.. rst-class:: classref-method

|void| **set_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`

設定所有可走訪區域輪廓陣列。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
