:github_url: hide

.. _class_AnimationNodeBlendSpace2D:

AnimationNodeBlendSpace2D
=========================

**繼承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一組置於 2D 座標的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ ，在三個相鄰節點間交叉淡化。供 :ref:`AnimationTree<class_AnimationTree>` 使用。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 使用的資源。

\ **AnimationNodeBlendSpace2D** 代表一個虛擬 2D 空間，可在其上放置 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。輸出為包含目前值之三角形頂點（相鄰三節點）依 :ref:`Vector2<class_Vector2>` 權重計算的線性混合。

可透過 :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` 新增頂點，並將 :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` 設為 ``true`` 以自動三角化；否則可手動使用 :ref:`add_triangle()<class_AnimationNodeBlendSpace2D_method_add_triangle>` 與 :ref:`remove_triangle()<class_AnimationNodeBlendSpace2D_method_remove_triangle>` 進行三角化。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` | ``true``              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` | :ref:`blend_mode<class_AnimationNodeBlendSpace2D_property_blend_mode>`         | ``0``                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`max_space<class_AnimationNodeBlendSpace2D_property_max_space>`           | ``Vector2(1, 1)``     |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`min_space<class_AnimationNodeBlendSpace2D_property_min_space>`           | ``Vector2(-1, -1)``   |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`snap<class_AnimationNodeBlendSpace2D_property_snap>`                     | ``Vector2(0.1, 0.1)`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sync<class_AnimationNodeBlendSpace2D_property_sync>`                     | ``false``             |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`x_label<class_AnimationNodeBlendSpace2D_property_x_label>`               | ``"x"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`y_label<class_AnimationNodeBlendSpace2D_property_y_label>`               | ``"y"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_blend_point<class_AnimationNodeBlendSpace2D_method_add_blend_point>`\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_triangle<class_AnimationNodeBlendSpace2D_method_add_triangle>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ )                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_blend_point_count<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`\ (\ ) |const|                                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>` | :ref:`get_blend_point_node<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                     | :ref:`get_blend_point_position<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_count<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`\ (\ ) |const|                                                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_point<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_blend_point<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`\ (\ point\: :ref:`int<class_int>`\ )                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_triangle<class_AnimationNodeBlendSpace2D_method_remove_triangle>`\ (\ triangle\: :ref:`int<class_int>`\ )                                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_node<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_position<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationNodeBlendSpace2D_signal_triangles_updated:

.. rst-class:: classref-signal

**triangles_updated**\ (\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_signal_triangles_updated>`

當混合空間的三角形被建立、移除，或其頂點位置變動時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AnimationNodeBlendSpace2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace2D_BlendMode>`

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

動畫間插值為線性模式。

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

混合空間播放與目前位置最近的動畫節點，可用於逐幀 2D 動畫。

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

類似 :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE>`\ ，但新動畫會自上一段動畫的播放位置開始。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNodeBlendSpace2D_property_auto_triangles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_triangles** = ``true`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_auto_triangles>`

.. rst-class:: classref-property-setget

- |void| **set_auto_triangles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_triangles**\ (\ )

若為 ``true``\ ，混合空間會自動三角化；每次透過 :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` 或 :ref:`remove_blend_point()<class_AnimationNodeBlendSpace2D_method_remove_blend_point>` 變更點時都會更新網格。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **get_blend_mode**\ (\ )

控制動畫之間的插值方式。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_max_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **max_space** = ``Vector2(1, 1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_max_space>`

.. rst-class:: classref-property-setget

- |void| **set_max_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_max_space**\ (\ )

混合空間 X、Y 軸向點位置的上限。參見 :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_min_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **min_space** = ``Vector2(-1, -1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_min_space**\ (\ )

混合空間 X、Y 軸向點位置的下限。參見 :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_snap:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **snap** = ``Vector2(0.1, 0.1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_snap**\ (\ )

移動點時的捕捉間距。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** = ``false`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

若為 ``false``\ ，當混合值為 ``0`` 時會停止混合動畫的影格。

若為 ``true``\ ，仍會強制推進混合動畫影格。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_x_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **x_label** = ``"x"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_x_label>`

.. rst-class:: classref-property-setget

- |void| **set_x_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_x_label**\ (\ )

混合空間 X 軸名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_y_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **y_label** = ``"y"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_y_label>`

.. rst-class:: classref-property-setget

- |void| **set_y_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_y_label**\ (\ )

混合空間 Y 軸名稱。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNodeBlendSpace2D_method_add_blend_point:

.. rst-class:: classref-method

|void| **add_blend_point**\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_blend_point>`

在 ``pos`` 位置新增代表 ``node`` 的點。可透過 ``at_index`` 指定插入索引；預設將插入至陣列末端。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_add_triangle:

.. rst-class:: classref-method

|void| **add_triangle**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_triangle>`

以點 ``x``\ 、\ ``y``\ 、\ ``z`` 建立新三角形。三角形可重疊。可透過 ``at_index`` 指定插入索引；預設插入於陣列末端。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_point_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`

回傳混合空間中的點數量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_node:

.. rst-class:: classref-method

:ref:`AnimationRootNode<class_AnimationRootNode>` **get_blend_point_node**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`

回傳索引 ``point`` 之點所參照的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`

回傳索引 ``point`` 之點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`

回傳混合空間中的三角形數量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_point**\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`

回傳索引 ``triangle`` 三角形中，索引 ``point`` 頂點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`

自混合空間移除索引 ``point`` 之點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_triangle:

.. rst-class:: classref-method

|void| **remove_triangle**\ (\ triangle\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_triangle>`

自混合空間移除索引 ``triangle`` 之三角形。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_node:

.. rst-class:: classref-method

|void| **set_blend_point_node**\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`

更換索引 ``point`` 之點所參照的 :ref:`AnimationNode<class_AnimationNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`

更新混合空間中索引 ``point`` 點的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
