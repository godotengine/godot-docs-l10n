:github_url: hide

.. _class_Polygon2D:

Polygon2D
=========

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 多邊形。

.. rst-class:: classref-introduction-group

說明
----

Polygon2D 由一組點定義。每個點都連接到下一個點，最後一個點連接到第一個點，從而形成一個封閉的多邊形。Polygon2D 可以填充顏色（純色或漸變），也可以填充給定的紋理。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Polygon2D_property_antialiased>`                     | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`color<class_Polygon2D_property_color>`                                 | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`internal_vertex_count<class_Polygon2D_property_internal_vertex_count>` | ``0``                    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`invert_border<class_Polygon2D_property_invert_border>`                 | ``100.0``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>`               | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`offset<class_Polygon2D_property_offset>`                               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_Polygon2D_property_polygon>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`polygons<class_Polygon2D_property_polygons>`                           | ``[]``                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`skeleton<class_Polygon2D_property_skeleton>`                           | ``NodePath("")``         |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Polygon2D_property_texture>`                             |                          |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_offset<class_Polygon2D_property_texture_offset>`               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`texture_rotation<class_Polygon2D_property_texture_rotation>`           | ``0.0``                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_scale<class_Polygon2D_property_texture_scale>`                 | ``Vector2(1, 1)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`uv<class_Polygon2D_property_uv>`                                       | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`     | :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`                 | ``PackedColorArray()``   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_bone<class_Polygon2D_method_add_bone>`\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_bones<class_Polygon2D_method_clear_bones>`\ (\ )                                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`erase_bone<class_Polygon2D_method_erase_bone>`\ (\ index\: :ref:`int<class_int>`\ )                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_bone_count<class_Polygon2D_method_get_bone_count>`\ (\ ) |const|                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`get_bone_path<class_Polygon2D_method_get_bone_path>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_bone_weights<class_Polygon2D_method_get_bone_weights>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_path<class_Polygon2D_method_set_bone_path>`\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ )                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_weights<class_Polygon2D_method_set_bone_weights>`\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Polygon2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Polygon2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

如果為 ``true``\ ，則多邊形邊緣將進行反鋸齒。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Polygon2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

該多邊形的填充顏色。如果設定了 :ref:`texture<class_Polygon2D_property_texture>`\ ，它將乘以該顏色。它也將是未在 :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>` 中設定的頂點的預設顏色。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_internal_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **internal_vertex_count** = ``0`` :ref:`🔗<class_Polygon2D_property_internal_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_internal_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_internal_vertex_count**\ (\ )

內部頂點的數量，用於 UV 對應。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_border:

.. rst-class:: classref-property

:ref:`float<class_float>` **invert_border** = ``100.0`` :ref:`🔗<class_Polygon2D_property_invert_border>`

.. rst-class:: classref-property-setget

- |void| **set_invert_border**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_invert_border**\ (\ )

新增了當 :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>` 被設定為 ``true`` 時套用於邊界框的填充。將該值設定得太小可能會產生一個“Bad Polygon”錯誤。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert_enabled** = ``false`` :ref:`🔗<class_Polygon2D_property_invert_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_invert_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert_enabled**\ (\ )

如果為 ``true``\ ，則多邊形將被反轉，包含定義點之外的區域並延伸到 :ref:`invert_border<class_Polygon2D_property_invert_border>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

套用於每個頂點的位置偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

多邊形的頂點清單。最後一點將連接到第一個點。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygons:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **polygons** = ``[]`` :ref:`🔗<class_Polygon2D_property_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_polygons**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_polygons**\ (\ )

多邊形數量大於一時的多邊形列表。每個獨立的多邊形都作為 :ref:`PackedInt32Array<class_PackedInt32Array>` 儲存，其中的每個 :ref:`int<class_int>` 都是對 :ref:`polygon<class_Polygon2D_property_polygon>` 某個點的索引。如果為空，則會忽略這個屬性，得到由 :ref:`polygon<class_Polygon2D_property_polygon>` 中所有點構成的單個多邊形，順序與儲存順序一致。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_Polygon2D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton**\ (\ )

指向 :ref:`Skeleton2D<class_Skeleton2D>` 節點的路徑，用於對這個多邊形進行基於骨架的變形。如果為空或無效，則不會使用骨架變形。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Polygon2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

該多邊形的填充紋理。使用 :ref:`uv<class_Polygon2D_property_uv>` 設定紋理座標。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_texture_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

多邊形的 :ref:`texture<class_Polygon2D_property_texture>` 紋理的偏移量。如果設定為 ``Vector2(0, 0)``\ ，則紋理的原點（其左上角）將放置在該多邊形的位置。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_rotation** = ``0.0`` :ref:`🔗<class_Polygon2D_property_texture_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_rotation**\ (\ )

紋理的旋轉弧度。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Polygon2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_scale**\ (\ )

使用 :ref:`texture<class_Polygon2D_property_texture>` 時乘以 :ref:`uv<class_Polygon2D_property_uv>` 座標的量。值越大，紋理越小，反之亦然。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_uv:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **uv** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_uv>`

.. rst-class:: classref-property-setget

- |void| **set_uv**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_uv**\ (\ )

多邊形每個頂點的紋理座標。每個多邊形頂點應該有一個 UV 值。如果數量少，則未定義的頂點將使用 ``Vector2(0, 0)``\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_vertex_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **vertex_colors** = ``PackedColorArray()`` :ref:`🔗<class_Polygon2D_property_vertex_colors>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_vertex_colors**\ (\ )

每個頂點的顏色。顏色在頂點之間插值，從而產生平滑的漸變。每個多邊形頂點應該有一個。如果數量較少，則未定義的頂點將使用 :ref:`color<class_Polygon2D_property_color>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Polygon2D_method_add_bone:

.. rst-class:: classref-method

|void| **add_bone**\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_add_bone>`

新增指定 ``path`` 和 ``weights`` 的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Polygon2D_method_clear_bones>`

刪除這個 **Polygon2D** 的所有骨骼。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_erase_bone:

.. rst-class:: classref-method

|void| **erase_bone**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Polygon2D_method_erase_bone>`

從這個 **Polygon2D** 中刪除指定的骨骼。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_count>`

返回這個 **Polygon2D** 中骨骼的數量。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_bone_path**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_path>`

返回與指定骨骼相關聯的節點的路徑。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_bone_weights**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_weights>`

返回指定骨骼的權重值。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_path:

.. rst-class:: classref-method

|void| **set_bone_path**\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_path>`

設定與指定骨骼相關聯的節點的路徑。

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_weights:

.. rst-class:: classref-method

|void| **set_bone_weights**\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_weights>`

設定指定骨骼的權重值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
