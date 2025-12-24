:github_url: hide

.. _class_Shape2D:

Shape2D
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CapsuleShape2D<class_CapsuleShape2D>`, :ref:`CircleShape2D<class_CircleShape2D>`, :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, :ref:`RectangleShape2D<class_RectangleShape2D>`, :ref:`SegmentShape2D<class_SegmentShape2D>`, :ref:`SeparationRayShape2D<class_SeparationRayShape2D>`, :ref:`WorldBoundaryShape2D<class_WorldBoundaryShape2D>`

用于物理碰撞的 2D 形状的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

所有 2D 形状的抽象基类，针对物理使用设计。

\ **性能：**\ 对图元形状进行碰撞检测很快，尤其是 :ref:`CircleShape2D<class_CircleShape2D>`\ 。\ :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` 较慢，\ :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 最慢。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape2D_property_custom_solver_bias>` | ``0.0`` |
   +---------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide<class_Shape2D_method_collide>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_and_get_contacts<class_Shape2D_method_collide_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide_with_motion<class_Shape2D_method_collide_with_motion>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_with_motion_and_get_contacts<class_Shape2D_method_collide_with_motion_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`draw<class_Shape2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ )                                                                                                                                                                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_rect<class_Shape2D_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Shape2D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape2D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

该形状的的自定义求解器偏差。定义了强制接触分离涉及到这个形状时，物体会做出多大的反应。

设为 ``0.0`` 时，使用的默认值为 :ref:`ProjectSettings.physics/2d/solver/default_contact_bias<class_ProjectSettings_property_physics/2d/solver/default_contact_bias>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Shape2D_method_collide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide>`

如果该形状与另一个形状发生碰撞，返回 ``true``\ 。

本方法需要该形状的变换矩阵（\ ``local_xform``\ ）、要检查与该形状碰撞的形状（\ ``with_shape``\ ）、以及那个形状的变换矩阵（\ ``shape_xform``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide_and_get_contacts>`

返回该形状与另一形状接触的接触点对的列表。

如果不存在碰撞，则返回的列表为空。否则，返回的列表中包含的是成对排列的接触点，在该形状边界上的点和 ``with_shape`` 边界上的点之间交替排列。

有了碰撞对 A 和 B，就可以通过 ``(B - A).normalized()`` 计算碰撞法线，通过 ``(B - A).length()`` 计算碰撞深度。这些信息通常用于分离形状，在碰撞求解器中比较常见。

这个方法需要用到该形状的变换矩阵（\ ``local_xform``\ ）、要检查与该形状是否碰撞的形状（\ ``with_shape``\ ）、以及那个形状的变换矩阵（\ ``shape_xform``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_with_motion**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion>`

返回应用给定的运动后，这个形状是否会与另一个形状发生碰撞。

这个方法需要这个形状的变换矩阵（\ ``local_xform``\ ），要在这个形状上测试的运动（\ ``local_motion``\ ），检查碰撞的形状（\ ``with_shape``\ ），那个形状的变换矩阵（\ ``shape_xform``\ ），以及用于测试其他物体的运动（\ ``shape_motion``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_with_motion_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion_and_get_contacts>`

返回如果应用了给定的移动后，该形状将接触另一形状的接触点对列表。

如果不存在碰撞，则返回的列表为空。否则，返回的列表中包含的是成对排列的接触点，在该形状边界上的点和 ``with_shape`` 边界上的点之间会交替出现。

有了碰撞对 A 和 B，就可以通过 ``(B - A).normalized()`` 计算碰撞法线，通过 ``(B - A).length()`` 计算碰撞深度。这些信息通常用于分离形状，在碰撞求解器中比较常见。

本方法需要用到该形状的变换矩阵（\ ``local_xform``\ ）、要在该形状上测试的运动（\ ``local_motion``\ ）、要检查与该形状是否碰撞的形状（\ ``with_shape``\ ）、那个形状的变换矩阵（\ ``shape_xform``\ ）、以及要在其他形状上测试的运动（\ ``shape_motion``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Shape2D_method_draw>`

用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上绘制实体形状，并填充指定的颜色 ``color``\ 。确切的绘制方法是每个形状特有的，无法配置。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Shape2D_method_get_rect>`

返回代表形状边界的 :ref:`Rect2<class_Rect2>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
