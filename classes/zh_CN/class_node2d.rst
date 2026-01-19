:github_url: hide

.. _class_Node2D:

Node2D
======

**继承：** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, :ref:`AudioListener2D<class_AudioListener2D>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`, :ref:`BackBufferCopy<class_BackBufferCopy>`, :ref:`Bone2D<class_Bone2D>`, :ref:`Camera2D<class_Camera2D>`, :ref:`CanvasGroup<class_CanvasGroup>`, :ref:`CanvasModulate<class_CanvasModulate>`, :ref:`CollisionObject2D<class_CollisionObject2D>`, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, :ref:`CollisionShape2D<class_CollisionShape2D>`, :ref:`CPUParticles2D<class_CPUParticles2D>`, :ref:`GPUParticles2D<class_GPUParticles2D>`, :ref:`Joint2D<class_Joint2D>`, :ref:`Light2D<class_Light2D>`, :ref:`LightOccluder2D<class_LightOccluder2D>`, :ref:`Line2D<class_Line2D>`, :ref:`Marker2D<class_Marker2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`, :ref:`NavigationLink2D<class_NavigationLink2D>`, :ref:`NavigationObstacle2D<class_NavigationObstacle2D>`, :ref:`NavigationRegion2D<class_NavigationRegion2D>`, :ref:`Parallax2D<class_Parallax2D>`, :ref:`ParallaxLayer<class_ParallaxLayer>`, :ref:`Path2D<class_Path2D>`, :ref:`PathFollow2D<class_PathFollow2D>`, :ref:`Polygon2D<class_Polygon2D>`, :ref:`RayCast2D<class_RayCast2D>`, :ref:`RemoteTransform2D<class_RemoteTransform2D>`, :ref:`ShapeCast2D<class_ShapeCast2D>`, :ref:`Skeleton2D<class_Skeleton2D>`, :ref:`Sprite2D<class_Sprite2D>`, :ref:`TileMap<class_TileMap>`, :ref:`TileMapLayer<class_TileMapLayer>`, :ref:`TouchScreenButton<class_TouchScreenButton>`, :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>`

2D 游戏对象，被所有 2D 相关的节点继承。具有位置、旋转、缩放和倾斜。

.. rst-class:: classref-introduction-group

描述
----

2D 游戏对象，具有变换（位置、旋转、缩放）。包括物理对象和精灵在内的所有 2D 节点都继承自 Node2D。可以使用 Node2D 作为父节点来移动、缩放和旋转 2D 项目中的子节点。还可以控制该节点的渲染顺序。

\ **注意：**\ **Node2D** 和 :ref:`Control<class_Control>` 都继承自 :ref:`CanvasItem<class_CanvasItem>`\ ，它们都具有该类的 :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>`\ 、\ :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 等属性。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`2D 中的自定义绘图 <../tutorials/2d/custom_drawing_in_2d>`

- `所有 2D 演示 <https://github.com/godotengine/godot-demo-projects/tree/master/2d>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_position<class_Node2D_property_global_position>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation<class_Node2D_property_global_rotation>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>` |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_scale<class_Node2D_property_global_scale>`                       |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_skew<class_Node2D_property_global_skew>`                         |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`global_transform<class_Node2D_property_global_transform>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`position<class_Node2D_property_position>`                               | ``Vector2(0, 0)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_Node2D_property_rotation>`                               | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_Node2D_property_scale>`                                     | ``Vector2(1, 1)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`skew<class_Node2D_property_skew>`                                       | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_Node2D_property_transform>`                             |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_scale<class_Node2D_method_apply_scale>`\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_angle_to<class_Node2D_method_get_angle_to>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_relative_transform_to_parent<class_Node2D_method_get_relative_transform_to_parent>`\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`global_translate<class_Node2D_method_global_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`look_at<class_Node2D_method_look_at>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_x<class_Node2D_method_move_local_x>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_y<class_Node2D_method_move_local_y>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`rotate<class_Node2D_method_rotate>`\ (\ radians\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_global<class_Node2D_method_to_global>`\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_local<class_Node2D_method_to_local>`\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`translate<class_Node2D_method_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Node2D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Node2D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

全局位置。另见 :ref:`position<class_Node2D_property_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation** :ref:`🔗<class_Node2D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation**\ (\ )

全局旋转，单位为弧度。另见 :ref:`rotation<class_Node2D_property_rotation>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation_degrees** :ref:`🔗<class_Node2D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation_degrees**\ (\ )

辅助属性，用于按度数访问 :ref:`global_rotation<class_Node2D_property_global_rotation>` 而不是弧度数。另见 :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_scale** :ref:`🔗<class_Node2D_property_global_scale>`

.. rst-class:: classref-property-setget

- |void| **set_global_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_scale**\ (\ )

全局缩放。另见 :ref:`scale<class_Node2D_property_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_skew** :ref:`🔗<class_Node2D_property_global_skew>`

.. rst-class:: classref-property-setget

- |void| **set_global_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_skew**\ (\ )

全局偏斜，单位为弧度。另见 :ref:`skew<class_Node2D_property_skew>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **global_transform** :ref:`🔗<class_Node2D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_global_transform**\ (\ )

全局 :ref:`Transform2D<class_Transform2D>`\ 。另见 :ref:`transform<class_Node2D_property_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Node2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

位置，相对于父节点。另见 :ref:`global_position<class_Node2D_property_global_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Node2D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

旋转，单位为弧度，相对于该节点的父节点。另见 :ref:`global_rotation<class_Node2D_property_global_rotation>`\ 。

\ **注意：**\ 这个属性在检查器中是以度数编辑的。如果你想在脚本中使用度数，请使用 :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Node2D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

辅助属性，用于按度数访问 :ref:`rotation<class_Node2D_property_rotation>` 而不是弧度数。另见 :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Node2D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

该节点的缩放，相对于父节点。未缩放值：\ ``(1, 1)``\ 。另见 :ref:`global_scale<class_Node2D_property_global_scale>`\ 。

\ **注意：**\ 2D 中，变换矩阵是无法分解出负数的 X 缩放的。由于 Godot 中使用变换矩阵来表示缩放，X 轴上的负数缩放在分解后会变为 Y 轴的负数缩放和一次 180 度的旋转。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **skew** = ``0.0`` :ref:`🔗<class_Node2D_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_skew**\ (\ )

如果设为非零值，则节点会向某一方向倾斜。可以用来实现伪 3D 效果。另见 :ref:`global_skew<class_Node2D_property_global_skew>`\ 。

\ **注意：**\ 只有 X 轴会执行倾斜，发生在旋转和缩放\ *中间*\ 。

\ **注意：**\ 该属性在检查器中以度为单位进行编辑。如果你想在脚本中使用度数，请使用 ``skew = deg_to_rad(value_in_degrees)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_Node2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

该节点的 :ref:`Transform2D<class_Transform2D>`\ ，相对于父节点。另见 :ref:`global_transform<class_Node2D_property_global_transform>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Node2D_method_apply_scale:

.. rst-class:: classref-method

|void| **apply_scale**\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_apply_scale>`

将当前缩放乘以比例向量 ``ratio``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle_to**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_get_angle_to>`

Returns the angle between the node and the ``point`` in radians. See also :ref:`look_at()<class_Node2D_method_look_at>`.

\ `Illustration of the returned angle. <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/node2d_get_angle_to.png>`__

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_relative_transform_to_parent:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_relative_transform_to_parent**\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node2D_method_get_relative_transform_to_parent>`

返回相对于此节点的父节点的 :ref:`Transform2D<class_Transform2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_global_translate>`

将偏移向量 ``offset`` 添加到该节点的全局位置。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_look_at>`

Rotates the node so that its local +X axis points towards the ``point``, which is expected to use global coordinates. This method is a combination of both :ref:`rotate()<class_Node2D_method_rotate>` and :ref:`get_angle_to()<class_Node2D_method_get_angle_to>`.

\ ``point`` should not be the same as the node's position, otherwise the node always looks to the right.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_x:

.. rst-class:: classref-method

|void| **move_local_x**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_x>`

Applies a local translation on the node's X axis with the amount specified in ``delta``. If ``scaled`` is ``false``, normalizes the movement to occur independently of the node's :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_y:

.. rst-class:: classref-method

|void| **move_local_y**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_y>`

Applies a local translation on the node's Y axis with the amount specified in ``delta``. If ``scaled`` is ``false``, normalizes the movement to occur independently of the node's :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ radians\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node2D_method_rotate>`

Applies a rotation to the node, in radians, starting from its current rotation. This is equivalent to ``rotation += radians``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_global**\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_global>`

将提供的本地位置转换为全局坐标空间的位置。例如，对子节点的位置应用这个方法将正确地把它们的位置转换到全局坐标空间，但对节点自己的位置应用这个方法将得到一个不正确的结果，因为它将把节点自己的变换纳入它的全局位置。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_local**\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_local>`

将提供的全局位置转换为本地坐标空间的位置。例如，它适合于确定子节点的位置，但不适合于确定其自身相对于父节点的位置。

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_translate>`

Translates the node by the given ``offset`` in local coordinates. This is equivalent to ``position += offset``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
