:github_url: hide

.. _class_MeshConvexDecompositionSettings:

MeshConvexDecompositionSettings
===============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于 :ref:`Mesh<class_Mesh>` 凸分解操作的参数。

.. rst-class:: classref-introduction-group

描述
----

用于 :ref:`Mesh<class_Mesh>` 凸分解操作的参数。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`convex_hull_approximation<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`               | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`convex_hull_downsampling<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`                 | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`max_concavity<class_MeshConvexDecompositionSettings_property_max_concavity>`                                       | ``1.0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_convex_hulls<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`                                 | ``1``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_num_vertices_per_convex_hull<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>` | ``32``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`min_volume_per_convex_hull<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`             | ``0.0001`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` | :ref:`mode<class_MeshConvexDecompositionSettings_property_mode>`                                                         | ``0``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`normalize_mesh<class_MeshConvexDecompositionSettings_property_normalize_mesh>`                                     | ``false``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`plane_downsampling<class_MeshConvexDecompositionSettings_property_plane_downsampling>`                             | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`project_hull_vertices<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`                       | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`resolution<class_MeshConvexDecompositionSettings_property_resolution>`                                             | ``10000``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`revolution_axes_clipping_bias<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`symmetry_planes_clipping_bias<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_MeshConvexDecompositionSettings_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_MeshConvexDecompositionSettings_Mode>`

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_VOXEL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_VOXEL** = ``0``

常量，表示基于体素的近似凸分解。

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_TETRAHEDRON:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_TETRAHEDRON** = ``1``

常量，表示基于四面体的近似凸分解。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MeshConvexDecompositionSettings_property_convex_hull_approximation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **convex_hull_approximation** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_approximation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_convex_hull_approximation**\ (\ )

如果为 ``true``\ ，则在计算凸包时使用近似计算。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_convex_hull_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **convex_hull_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_convex_hull_downsampling**\ (\ )

控制凸包生成过程的精度，这个过程发生在选择裁剪平面的阶段。范围从 ``1`` 到 ``16``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_concavity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_concavity** = ``1.0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_concavity>`

.. rst-class:: classref-property-setget

- |void| **set_max_concavity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_concavity**\ (\ )

最大凹度。范围从 ``0.0`` 到 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_convex_hulls:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_convex_hulls** = ``1`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`

.. rst-class:: classref-property-setget

- |void| **set_max_convex_hulls**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_convex_hulls**\ (\ )

合并操作能够产生的最大凸包数。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_num_vertices_per_convex_hull** = ``32`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_max_num_vertices_per_convex_hull**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_num_vertices_per_convex_hull**\ (\ )

控制单个凸包的最大三角形数。范围从 ``4`` 到 ``1024`` 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_volume_per_convex_hull** = ``0.0001`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_min_volume_per_convex_hull**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_volume_per_convex_hull**\ (\ )

控制生成凸包的自适应采样。范围从 ``0.0`` 到 ``0.01`` 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **mode** = ``0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>`\ )
- :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **get_mode**\ (\ )

近似凸分解的模式。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_normalize_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize_mesh** = ``false`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_normalize_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_normalize_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalize_mesh**\ (\ )

如果为 ``true``\ ，则会在应用凸分解前将网格归一化。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_plane_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **plane_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_plane_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_plane_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_plane_downsampling**\ (\ )

控制搜索“最佳”裁剪平面的颗粒度。范围从 ``1`` 到 ``16``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_project_hull_vertices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **project_hull_vertices** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_project_hull_vertices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_project_hull_vertices**\ (\ )

如果为 ``true``\ ，则项目会将凸包顶点输出到该源网格之上，提高结果的浮点数精度。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **resolution** = ``10000`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_resolution**\ (\ )

体素化阶段生成的最大体素数量。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **revolution_axes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_revolution_axes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_revolution_axes_clipping_bias**\ (\ )

控制对沿回转轴裁剪的偏置。范围从 ``0.0`` 到 ``1.0`` 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **symmetry_planes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_planes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_symmetry_planes_clipping_bias**\ (\ )

控制对沿对称平面裁剪的偏置。范围从 ``0.0`` 到 ``1.0`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
