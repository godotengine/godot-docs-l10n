:github_url: hide

.. _class_NavigationObstacle2D:

NavigationObstacle2D
====================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D obstacle used to affect navigation mesh baking or constrain velocities of avoidance controlled agents.

.. rst-class:: classref-introduction-group

說明
----

An obstacle needs a navigation map and outline :ref:`vertices<class_NavigationObstacle2D_property_vertices>` defined to work correctly. The outlines can not cross or overlap.

Obstacles can be included in the navigation mesh baking process when :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>` is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places. If :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>` is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius.

With :ref:`avoidance_enabled<class_NavigationObstacle2D_property_avoidance_enabled>` the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationObstacle <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle2D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle2D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`velocity<class_NavigationObstacle2D_property_velocity>`                             | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`vertices<class_NavigationObstacle2D_property_vertices>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle2D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle2D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle2D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle2D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationObstacle2D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

If enabled and parsed in a navigation mesh baking process the obstacle will discard source geometry inside its :ref:`vertices<class_NavigationObstacle2D_property_vertices>` defined shape.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

如果為 ``true``\ ，則該障礙物會影響使用代理的避障。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

決定該障礙物的避障層的位域。避障遮罩中存在配對位元的代理會躲避該障礙物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

If enabled the obstacle vertices will carve into the baked navigation mesh with the shape unaffected by additional offsets (e.g. agent radius).

It will still be affected by further postprocessing of the baking process, like edge and polygon simplification.

Requires :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>` to be enabled.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

設定該障礙物的避障半徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationObstacle2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

設定該障礙物的期望速度，這樣如果（每影格）一直使用相同的速度移動而不是直接跳到某個位置，那麼其他代理就能夠更好地預測該障礙物的行為。僅影響該障礙物 :ref:`radius<class_NavigationObstacle2D_property_radius>` 的避障。不會影響障礙物的靜態頂點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **vertices** = ``PackedVector2Array()`` :ref:`🔗<class_NavigationObstacle2D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ )

該障礙物的輪廓頂點。如果這些頂點是按照順時針順序纏繞的，那麼障礙物就會將其他代理向內推，否則就會向外推。輪廓不能交叉或重疊。如果這些頂點直接跳到了新的位置，那麼其他代理可能無法預測這種行為，導致被困在障礙物內。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationObstacle2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_avoidance_layer_value>`

返回 :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_navigation_map>`

返回該 NavigationObstacle 節點的導覽地圖的 :ref:`RID<class_RID>`\ 。該函式始終返回在 NavigationObstacle 節點上設定的地圖，而不是 NavigationServer 上抽象障礙物所使用的地圖。如果該障礙物地圖使用 NavigationServer API 直接更改，則該 NavigationObstacle 節點將不會察覺該地圖的更改。請使用 :ref:`set_navigation_map()<class_NavigationObstacle2D_method_set_navigation_map>` 更改 NavigationObstacle 的導覽地圖，也會更新 NavigationServer 上的障礙物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_rid>`

返回這個障礙物在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_avoidance_layer_value>`

根據 ``value`` 啟用或禁用 :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_navigation_map>`

設定該 NavigationObstacle 節點應使用的導覽地圖的 :ref:`RID<class_RID>`\ ，並會更新 NavigationServer 上的 ``obstacle``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
