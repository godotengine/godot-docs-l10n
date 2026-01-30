:github_url: hide

.. _class_CSGPolygon3D:

CSGPolygon3D
============

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

拉伸 2D 多边形形状以创建 3D 网格。

.. rst-class:: classref-introduction-group

描述
----

挤出一组 2D 点，以快速轻松地创建各种 3D 网格。另见 :ref:`CSGMesh3D<class_CSGMesh3D>`\ ，以了解将 3D 网格用作 CSG 节点。

\ **注意：**\ CSG 节点旨在用于关卡原型设计。与使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 创建 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，创建 CSG 节点具有显著的 CPU 成本。在另一个 CSG 节点中，移动一个 CSG 节点，也会大量消耗 CPU，因此在游戏过程中，应该避免这种情况。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_CSGPolygon3D_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_CSGPolygon3D_Mode>`

.. _class_CSGPolygon3D_constant_MODE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_DEPTH** = ``0``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形状沿负 Z 轴挤出。

.. _class_CSGPolygon3D_constant_MODE_SPIN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_SPIN** = ``1``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形状通过围绕 Y 轴旋转来挤出。

.. _class_CSGPolygon3D_constant_MODE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_PATH** = ``2``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形状沿 :ref:`path_node<class_CSGPolygon3D_property_path_node>` 中指定的 :ref:`Path3D<class_Path3D>` 挤出。

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathRotation:

.. rst-class:: classref-enumeration

enum **PathRotation**: :ref:`🔗<enum_CSGPolygon3D_PathRotation>`

.. _class_CSGPolygon3D_constant_PATH_ROTATION_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_POLYGON** = ``0``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形状不会被旋转。

\ **注意：**\ 要求路径的 Z 坐标不断减少，以确保可行的形状。

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH** = ``1``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 形状沿路径旋转，但并不绕路径轴旋转。

\ **注意：**\ 需要路径的 Z 坐标不断减小，以确保可行的形状。

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH_FOLLOW:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH_FOLLOW** = ``2``

:ref:`polygon<class_CSGPolygon3D_property_polygon>` 多边形的形状跟随路径及其围绕路径轴的旋转。

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathIntervalType:

.. rst-class:: classref-enumeration

enum **PathIntervalType**: :ref:`🔗<enum_CSGPolygon3D_PathIntervalType>`

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_DISTANCE** = ``0``

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 被设置为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，\ :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` 将决定路径的每个间隔将被挤出的距离，单位为米。

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_SUBDIVIDE** = ``1``

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 被设置为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`\ 时，\ :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` 将沿着路径细分多边形。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CSGPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_DEPTH<class_CSGPolygon3D_constant_MODE_DEPTH>` 时，挤出的深度。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGPolygon3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于生成的网格的材质。UV 将材质的上半部分映射到挤出形状（U 沿着挤出的长度，V 围绕 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的轮廓），左下四分之一映射到前端面，右下四分之一映射到后端面。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_CSGPolygon3D_Mode>` **mode** = ``0`` :ref:`🔗<class_CSGPolygon3D_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_CSGPolygon3D_Mode>`\ )
- :ref:`Mode<enum_CSGPolygon3D_Mode>` **get_mode**\ (\ )

用于挤出 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的 :ref:`mode<class_CSGPolygon3D_property_mode>` 。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_continuous_u:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_continuous_u** :ref:`🔗<class_CSGPolygon3D_property_path_continuous_u>`

.. rst-class:: classref-property-setget

- |void| **set_path_continuous_u**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_continuous_u**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为\ :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，默认情况下，\ :ref:`material<class_CSGPolygon3D_property_material>` 的上半部分会沿着挤出形状的整个长度被拉伸。如果为 ``false``\ ，挤出的每一步都会重复材质的上半部分。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_interval** :ref:`🔗<class_CSGPolygon3D_property_path_interval>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_interval**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，路径间隔或路径点比例挤出。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval_type:

.. rst-class:: classref-property

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **path_interval_type** :ref:`🔗<class_CSGPolygon3D_property_path_interval_type>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval_type**\ (\ value\: :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>`\ )
- :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **get_path_interval_type**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，这将确定间隔是按距离（\ :ref:`PATH_INTERVAL_DISTANCE<class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE>`\ ）还是细分分数（\ :ref:`PATH_INTERVAL_SUBDIVIDE<class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_joined:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_joined** :ref:`🔗<class_CSGPolygon3D_property_path_joined>`

.. rst-class:: classref-property-setget

- |void| **set_path_joined**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_joined**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，如果 ``true`` 路径的两端会被连接起来，在路径的最后一个点和第一个点之间添加挤出。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_local** :ref:`🔗<class_CSGPolygon3D_property_path_local>`

.. rst-class:: classref-property-setget

- |void| **set_path_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_local**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，如果为 ``true``\ ，则该 **CSGPolygon3D** 的 :ref:`Transform3D<class_Transform3D>` 将被用作挤出的起点，而非 :ref:`path_node<class_CSGPolygon3D_property_path_node>` 的 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **path_node** :ref:`🔗<class_CSGPolygon3D_property_path_node>`

.. rst-class:: classref-property-setget

- |void| **set_path_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_path_node**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，用于挤出 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的 :ref:`Path3D<class_Path3D>` 对象的位置。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation:

.. rst-class:: classref-property

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **path_rotation** :ref:`🔗<class_CSGPolygon3D_property_path_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation**\ (\ value\: :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`\ )
- :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **get_path_rotation**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，用于在挤出时旋转 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 的路径旋转方法。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation_accurate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_rotation_accurate** :ref:`🔗<class_CSGPolygon3D_property_path_rotation_accurate>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation_accurate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_path_rotation_accurate**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，如果为 ``true``\ ，则该多边形会根据路径在采样点处的实际切线进行旋转。如果为 ``false``\ ，则会使用近似值，减少细分数，因而降低精确度。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_simplify_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_simplify_angle** :ref:`🔗<class_CSGPolygon3D_property_path_simplify_angle>`

.. rst-class:: classref-property-setget

- |void| **set_path_simplify_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_simplify_angle**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，小于此角度的挤出将合并在一起以减少多边形数量。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_u_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_u_distance** :ref:`🔗<class_CSGPolygon3D_property_path_u_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_u_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_u_distance**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` 时，这是纹理坐标沿着路径的距离，以米为单位，将进行平铺。当设置为 0 时，纹理坐标将与几何图形完全匹配，没有平铺。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` :ref:`🔗<class_CSGPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

顶点数组，用于定义要挤出的 2D 多边形。需要包含 3 个或更多顶点，可以是凸多边形也可以是凹多边形。该多边形中\ *不能*\ 存在相交的边。否则，三角形化会失败，不会生成任何网格。

\ **注意：**\ 如果 :ref:`polygon<class_CSGPolygon3D_property_polygon>` 中只定义了 1 个或 2 个顶点，则不会生成网格。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``false`` :ref:`🔗<class_CSGPolygon3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果为 ``true``\ ，则对挤出应用平滑着色。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **spin_degrees** :ref:`🔗<class_CSGPolygon3D_property_spin_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_spin_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spin_degrees**\ (\ )

当 :ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`\ ，\ :ref:`polygon<class_CSGPolygon3D_property_polygon>` 在挤出时旋转的总度数。

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **spin_sides** :ref:`🔗<class_CSGPolygon3D_property_spin_sides>`

.. rst-class:: classref-property-setget

- |void| **set_spin_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spin_sides**\ (\ )

:ref:`mode<class_CSGPolygon3D_property_mode>` 为 :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>` 时，挤出的次数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
