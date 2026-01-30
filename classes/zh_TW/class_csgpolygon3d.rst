:github_url: hide

.. _class_CSGPolygon3D:

CSGPolygon3D
============

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

拉伸 2D 多邊形形狀以建立 3D 網格。

.. rst-class:: classref-introduction-group

說明
----

擠出一組 2D 點，以快速輕鬆地建立各種 3D 網格。另請參閱 :ref:`CSGMesh3D<class_CSGMesh3D>`\ ，以瞭解將 3D 網格用作 CSG 節點。

\ **注意：**\ CSG 節點旨在用於關卡原型設計。與使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 建立 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，建立 CSG 節點具有顯著的 CPU 成本。在另一個 CSG 節點中，移動一個 CSG 節點，也會大量消耗 CPU，因此在遊戲過程中，應該避免這種情況。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 CSG 設計關卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`depth<class_CSGPolygon3D_property_depth>`                                   | ``1.0``                                        |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Material<class_Material>`                             | :ref:`material<class_CSGPolygon3D_property_material>`                             |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Mode<enum_CSGPolygon3D_Mode>`                         | :ref:`mode<class_CSGPolygon3D_property_mode>`                                     | ``0``                                          |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_continuous_u<class_CSGPolygon3D_property_path_continuous_u>`           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_interval<class_CSGPolygon3D_property_path_interval>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` | :ref:`path_interval_type<class_CSGPolygon3D_property_path_interval_type>`         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_joined<class_CSGPolygon3D_property_path_joined>`                       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_local<class_CSGPolygon3D_property_path_local>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`path_node<class_CSGPolygon3D_property_path_node>`                           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`         | :ref:`path_rotation<class_CSGPolygon3D_property_path_rotation>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_rotation_accurate<class_CSGPolygon3D_property_path_rotation_accurate>` |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_simplify_angle<class_CSGPolygon3D_property_path_simplify_angle>`       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_u_distance<class_CSGPolygon3D_property_path_u_distance>`               |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`         | :ref:`polygon<class_CSGPolygon3D_property_polygon>`                               | ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`smooth_faces<class_CSGPolygon3D_property_smooth_faces>`                     | ``false``                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`spin_degrees<class_CSGPolygon3D_property_spin_degrees>`                     |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`spin_sides<class_CSGPolygon3D_property_spin_sides>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CSGPolygon3D_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_CSGPolygon3D_Mode>`

.. _class_CSGPolygon3D_constant_MODE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_DEPTH** = ``0``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形狀沿負 Z 軸擠出。

.. _class_CSGPolygon3D_constant_MODE_SPIN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_SPIN** = ``1``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形狀通過圍繞 Y 軸旋轉來擠出。

.. _class_CSGPolygon3D_constant_MODE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_PATH** = ``2``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形狀沿 :ref:`path_node<class_CSGPolygon3D_property_path_node>` 中指定的 :ref:`Path3D<class_Path3D>` 擠出。

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathRotation:

.. rst-class:: classref-enumeration

enum **PathRotation**: :ref:`🔗<enum_CSGPolygon3D_PathRotation>`

.. _class_CSGPolygon3D_constant_PATH_ROTATION_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_POLYGON** = ``0``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形狀不會被旋轉。

\ **注意：**\ 要求路徑的 Z 座標不斷減少，以確保可行的形狀。

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH** = ``1``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形狀沿路徑旋轉，但並不繞路徑軸旋轉。

\ **注意：**\ 需要路徑的 Z 座標不斷減小，以確保可行的形狀。

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH_FOLLOW:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH_FOLLOW** = ``2``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 多邊形的形狀跟隨路徑及其圍繞路徑軸的旋轉。

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathIntervalType:

.. rst-class:: classref-enumeration

enum **PathIntervalType**: :ref:`🔗<enum_CSGPolygon3D_PathIntervalType>`

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_DISTANCE** = ``0``

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 被設定為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，\ :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` 將決定路徑的每個間隔將被擠出的距離，單位為米。

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_SUBDIVIDE** = ``1``

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 被設定為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`\ 時，\ :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` 將沿著路徑細分多邊形。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CSGPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CSGPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_DEPTH<class_CSGPolygon3D_constant_MODE_DEPTH>` 時，擠出的深度。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGPolygon3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於生成的網格的材質。UV 將材質的上半部分對應到擠出形狀（U 沿著擠出的長度，V 圍繞 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的輪廓），左下四分之一對應到前端面，右下四分之一對應到後端面。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_CSGPolygon3D_Mode>` **mode** = ``0`` :ref:`🔗<class_CSGPolygon3D_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_CSGPolygon3D_Mode>`\ )
- :ref:`Mode<enum_CSGPolygon3D_Mode>` **get_mode**\ (\ )

用於擠出 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的 :ref:`mode<class_CSGPolygon3D_property_mode>` 。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_continuous_u:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_continuous_u** :ref:`🔗<class_CSGPolygon3D_property_path_continuous_u>`

.. rst-class:: classref-property-setget

- |void| **set_path_continuous_u**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_continuous_u**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為\ :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，預設情況下，\ :ref:`material<class_CSGPolygon3D_property_material>` 的上半部分會沿著擠出形狀的整個長度被拉伸。如果為 ``false``\ ，擠出的每一步都會重複材質的上半部分。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_interval** :ref:`🔗<class_CSGPolygon3D_property_path_interval>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_interval**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，路徑間隔或路徑點比例擠出。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval_type:

.. rst-class:: classref-property

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **path_interval_type** :ref:`🔗<class_CSGPolygon3D_property_path_interval_type>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval_type**\ (\ value\: :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>`\ )
- :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **get_path_interval_type**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，這將確定間隔是按距離（\ :ref:`PATH_INTERVAL_DISTANCE<class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE>`\ ）還是細分分數（\ :ref:`PATH_INTERVAL_SUBDIVIDE<class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_joined:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_joined** :ref:`🔗<class_CSGPolygon3D_property_path_joined>`

.. rst-class:: classref-property-setget

- |void| **set_path_joined**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_joined**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，如果 ``true`` 路徑的兩端會被連接起來，在路徑的最後一個點和第一個點之間新增擠出。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_local** :ref:`🔗<class_CSGPolygon3D_property_path_local>`

.. rst-class:: classref-property-setget

- |void| **set_path_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_local**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，如果為 ``true``\ ，則該 **CSGPolygon3D** 的 :ref:`Transform3D<class_Transform3D>` 將被用作擠出的起點，而非 :ref:`path_node<class_CSGPolygon3D_property_path_node>` 的 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **path_node** :ref:`🔗<class_CSGPolygon3D_property_path_node>`

.. rst-class:: classref-property-setget

- |void| **set_path_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_path_node**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，用於擠出 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的 :ref:`Path3D<class_Path3D>` 物件的位置。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation:

.. rst-class:: classref-property

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **path_rotation** :ref:`🔗<class_CSGPolygon3D_property_path_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation**\ (\ value\: :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`\ )
- :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **get_path_rotation**\ (\ )

When :ref:`mode<class_CSGPolygon3D_property_mode>` is :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, the path rotation method used to rotate the :ref:`polygon<class_CSGPolygon3D_property_polygon>` as it is extruded.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation_accurate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_rotation_accurate** :ref:`🔗<class_CSGPolygon3D_property_path_rotation_accurate>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation_accurate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_path_rotation_accurate**\ (\ )

When :ref:`mode<class_CSGPolygon3D_property_mode>` is :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, if ``true`` the polygon will be rotated according to the proper tangent of the path at the sampled points. If ``false`` an approximation is used, which decreases in accuracy as the number of subdivisions decreases.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_simplify_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_simplify_angle** :ref:`🔗<class_CSGPolygon3D_property_path_simplify_angle>`

.. rst-class:: classref-property-setget

- |void| **set_path_simplify_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_simplify_angle**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，小於此角度的擠出將合併在一起以減少多邊形數量。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_u_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_u_distance** :ref:`🔗<class_CSGPolygon3D_property_path_u_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_u_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_u_distance**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 時，這是紋理座標沿著路徑的距離，以米為單位，將進行平鋪。當設定為 0 時，紋理座標將與幾何圖形完全配對，沒有平鋪。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` :ref:`🔗<class_CSGPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

頂點陣列，用於定義要擠出的 2D 多邊形。需要包含 3 個或更多頂點，可以是凸多邊形也可以是凹多邊形。該多邊形中\ *不能*\ 存在相交的邊。否則，三角形化會失敗，不會生成任何網格。

\ **注意：**\ 如果 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 中只定義了 1 個或 2 個頂點，則不會生成網格。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``false`` :ref:`🔗<class_CSGPolygon3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果為 ``true``\ ，則對擠出套用平滑著色。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **spin_degrees** :ref:`🔗<class_CSGPolygon3D_property_spin_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_spin_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spin_degrees**\ (\ )

當 :ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`\ ，\ :ref:`polygon<class_CSGPolygon3D_property_polygon>` 在擠出時旋轉的總度數。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **spin_sides** :ref:`🔗<class_CSGPolygon3D_property_spin_sides>`

.. rst-class:: classref-property-setget

- |void| **set_spin_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spin_sides**\ (\ )

:ref:`mode<class_CSGPolygon3D_property_mode>` 為 :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>` 時，擠出的次數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
