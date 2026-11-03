:github_url: hide

.. _class_MeshConvexDecompositionSettings:

MeshConvexDecompositionSettings
===============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於 :ref:`Mesh<class_Mesh>` 凸分解操作的參數。

.. rst-class:: classref-introduction-group

說明
----

用於 :ref:`Mesh<class_Mesh>` 凸分解操作的參數。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_MeshConvexDecompositionSettings_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_MeshConvexDecompositionSettings_Mode>`

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_VOXEL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_VOXEL** = ``0``

常數，表示基於體素的近似凸分解。

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_TETRAHEDRON:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_TETRAHEDRON** = ``1``

常數，表示基於四面體的近似凸分解。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MeshConvexDecompositionSettings_property_convex_hull_approximation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **convex_hull_approximation** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_approximation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_convex_hull_approximation**\ (\ )

如果為 ``true``\ ，則在計算凸包時使用近似計算。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_convex_hull_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **convex_hull_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_convex_hull_downsampling**\ (\ )

控制凸包生成過程的精度，這個過程發生在選擇裁剪平面的階段。範圍從 ``1`` 到 ``16``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_concavity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_concavity** = ``1.0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_concavity>`

.. rst-class:: classref-property-setget

- |void| **set_max_concavity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_concavity**\ (\ )

最大凹度。範圍從 ``0.0`` 到 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_convex_hulls:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_convex_hulls** = ``1`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`

.. rst-class:: classref-property-setget

- |void| **set_max_convex_hulls**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_convex_hulls**\ (\ )

合併操作能夠產生的最大凸包數。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_num_vertices_per_convex_hull** = ``32`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_max_num_vertices_per_convex_hull**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_num_vertices_per_convex_hull**\ (\ )

控制單個凸包的最大三角形數。範圍從 ``4`` 到 ``1024`` 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_volume_per_convex_hull** = ``0.0001`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_min_volume_per_convex_hull**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_volume_per_convex_hull**\ (\ )

控制生成凸包的自我調整取樣。範圍從 ``0.0`` 到 ``0.01`` 。

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

如果為 ``true``\ ，則會在應用凸分解前將網格正規化。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_plane_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **plane_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_plane_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_plane_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_plane_downsampling**\ (\ )

控制搜尋“最佳”裁剪平面的顆粒度。範圍從 ``1`` 到 ``16``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_project_hull_vertices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **project_hull_vertices** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_project_hull_vertices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_project_hull_vertices**\ (\ )

如果為 ``true``\ ，則專案會將凸包頂點輸出到該源網格之上，提高結果的浮點數精度。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **resolution** = ``10000`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_resolution**\ (\ )

體素化階段生成的最大體素數量。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **revolution_axes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_revolution_axes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_revolution_axes_clipping_bias**\ (\ )

控制對沿回轉軸裁剪的偏置。範圍從 ``0.0`` 到 ``1.0`` 。

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **symmetry_planes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_planes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_symmetry_planes_clipping_bias**\ (\ )

控制對沿對稱平面裁剪的偏置。範圍從 ``0.0`` 到 ``1.0`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
