:github_url: hide

.. _class_Projection:

Projection
==========

用於 3D 投影變換的 4×4 矩陣。

.. rst-class:: classref-introduction-group

說明
----

A 4×4 matrix used for 3D projective transformations. It can represent transformations such as translation, rotation, scaling, shearing, and perspective division. It consists of four :ref:`Vector4<class_Vector4>` columns.

For purely linear transformations (translation, rotation, and scale), it is recommended to use :ref:`Transform3D<class_Transform3D>`, as it is more performant and requires less memory.

Used internally as :ref:`Camera3D<class_Camera3D>`'s projection matrix.

\ **Note:** In a boolean context, a projection will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Projection_constant_IDENTITY>`. Otherwise, a projection will always evaluate to ``true``.

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`w<class_Projection_property_w>` | ``Vector4(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`x<class_Projection_property_x>` | ``Vector4(1, 0, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`y<class_Projection_property_y>` | ``Vector4(0, 1, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`z<class_Projection_property_z>` | ``Vector4(0, 0, 1, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ )                                                                                                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_depth_correction<class_Projection_method_create_depth_correction>`\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_fit_aabb<class_Projection_method_create_fit_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_for_hmd<class_Projection_method_create_for_hmd>`\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum<class_Projection_method_create_frustum>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum_aspect<class_Projection_method_create_frustum_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_light_atlas_rect<class_Projection_method_create_light_atlas_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal<class_Projection_method_create_orthogonal>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal_aspect<class_Projection_method_create_orthogonal_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective<class_Projection_method_create_perspective>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective_hmd<class_Projection_method_create_perspective_hmd>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Projection_method_determinant>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`flipped_y<class_Projection_method_flipped_y>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_aspect<class_Projection_method_get_aspect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_far_plane_half_extents<class_Projection_method_get_far_plane_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fov<class_Projection_method_get_fov>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fovy<class_Projection_method_get_fovy>`\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static|                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_lod_multiplier<class_Projection_method_get_lod_multiplier>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_pixels_per_meter<class_Projection_method_get_pixels_per_meter>`\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`           | :ref:`get_projection_plane<class_Projection_method_get_projection_plane>`\ (\ plane\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_viewport_half_extents<class_Projection_method_get_viewport_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_far<class_Projection_method_get_z_far>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_near<class_Projection_method_get_z_near>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`inverse<class_Projection_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthogonal<class_Projection_method_is_orthogonal>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`jitter_offseted<class_Projection_method_jitter_offseted>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`perspective_znear_adjusted<class_Projection_method_perspective_znear_adjusted>`\ (\ new_znear\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Projection_operator_neq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`operator *<class_Projection_operator_mul_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_Projection_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Projection_operator_eq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator []<class_Projection_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Projection_Planes:

.. rst-class:: classref-enumeration

enum **Planes**: :ref:`🔗<enum_Projection_Planes>`

.. _class_Projection_constant_PLANE_NEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_NEAR** = ``0``

該投影的近裁剪平面的索引值。

.. _class_Projection_constant_PLANE_FAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_FAR** = ``1``

該投影的遠裁剪平面的索引值。

.. _class_Projection_constant_PLANE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_LEFT** = ``2``

該投影的左裁剪平面的索引值。

.. _class_Projection_constant_PLANE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_TOP** = ``3``

該投影的上裁剪平面的索引值。

.. _class_Projection_constant_PLANE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_RIGHT** = ``4``

該投影的右裁剪平面的索引值。

.. _class_Projection_constant_PLANE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_BOTTOM** = ``5``

該投影的下裁剪平面的索引值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Projection_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)`` :ref:`🔗<class_Projection_constant_IDENTITY>`

未定義變換的 **Projection**\ 。對其他資料結構使用時，不會進行任何變換。

.. _class_Projection_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Projection_constant_ZERO>`

所有值都初始化為 0 的 **Projection**\ 。對其他資料結構使用時，會進行清零操作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Projection_property_w:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **w** = ``Vector4(0, 0, 0, 1)`` :ref:`🔗<class_Projection_property_w>`

投影矩陣的 W 向量（第 3 列）。相當於陣列索引 ``3``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_x:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **x** = ``Vector4(1, 0, 0, 0)`` :ref:`🔗<class_Projection_property_x>`

投影矩陣的 X 向量（第 0 列）。相當於陣列索引 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_y:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **y** = ``Vector4(0, 1, 0, 0)`` :ref:`🔗<class_Projection_property_y>`

投影矩陣的 Y 向量（第 1 列）。相當於陣列索引 ``1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_z:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **z** = ``Vector4(0, 0, 1, 0)`` :ref:`🔗<class_Projection_property_z>`

投影矩陣的 Z 向量（第 2 列）。相當於陣列索引 ``2``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Projection_constructor_Projection:

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ ) :ref:`🔗<class_Projection_constructor_Projection>`

Constructs a default-initialized **Projection** identical to :ref:`IDENTITY<class_Projection_constant_IDENTITY>`.

\ **Note:** In C#, this constructs a **Projection** identical to :ref:`ZERO<class_Projection_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Projection<class_Projection>`\ )

建構給定 **Projection** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

將 Projection 作為給定 :ref:`Transform3D<class_Transform3D>` 的副本進行建構。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ )

從四個 :ref:`Vector4<class_Vector4>` 值（矩陣列）建構 Projection。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Projection_method_create_depth_correction:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_depth_correction**\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Projection_method_create_depth_correction>`

建立新的 **Projection**\ ，將位置從深度 ``-1`` 到 ``1`` 的範圍投影到 ``0`` 到 ``1`` 的範圍，並將投影後的位置根據 ``flip_y`` 垂直翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_fit_aabb:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_fit_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static| :ref:`🔗<class_Projection_method_create_fit_aabb>`

建立新的 **Projection**\ ，將給定的投影進行縮放，從而適應投影空間中的給定 :ref:`AABB<class_AABB>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_for_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_for_hmd**\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_for_hmd>`

建立新的 **Projection**\ ，將位置投影至頭戴顯示器中，使用給定的 X:Y 縱橫比、雙眼間距、顯示器寬度、到鏡頭的距離、過取樣係數以及深度裁剪平面。

\ ``eye`` 設為 1 時建立的是左眼投影，設為 2 時則為右眼。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_frustum>`

建立新的 **Projection**\ ，將位置投影至平截頭台中，平截頭台由給定的裁剪平面指定。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_frustum_aspect>`

建立新的 **Projection**\ ，將位置投影至平截頭台中，平截頭台由給定的大小、X:Y 縱橫比、偏移量以及裁剪平面指定。

\ ``flip_fov`` 決定投影視野是否按對角線翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_light_atlas_rect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_light_atlas_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static| :ref:`🔗<class_Projection_method_create_light_atlas_rect>`

建立新的 **Projection**\ ，將位置投影至給定的 :ref:`Rect2<class_Rect2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal>`

建立新的 **Projection**\ ，使用給定裁剪平面的正交投影對位置進行投影。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal_aspect>`

建立新的 **Projection**\ ，使用正交投影對位置進行投影，正交投影由給定的大小、X:Y 縱橫比以及裁剪平面指定。

\ ``flip_fov`` 決定投影視野是否按對角線翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_perspective>`

建立新的 **Projection**\ ，使用透視投影對位置進行投影，透視投影由給定的 Y 軸視野（單位為度）、X:Y 縱橫比以及裁剪平面指定。

\ ``flip_fov`` 決定投影視野是否按對角線翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective_hmd**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_perspective_hmd>`

建立新的 **Projection**\ ，使用透視投影對位置進行投影，透視投影由給定的 Y 軸視野（單位為度）、X:Y 縱橫比以及裁剪平面指定。投影會針對頭戴顯示器進行調整，使用給定的雙眼間距以及與能夠聚焦的點的距離。

\ ``eye`` 設為 1 時建立的是左眼投影，設為 2 時則為右眼。

\ ``flip_fov`` 決定投影視野是否按對角線翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Projection_method_determinant>`

返回一個標量值，該標量值是區域被該矩陣縮放的有符號係數。如果符號是負的，則矩陣翻轉該區域的方向。

行列式可用於計算矩陣的可逆性或求解涉及矩陣的線性方程組，以及其他套用。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_flipped_y:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **flipped_y**\ (\ ) |const| :ref:`🔗<class_Projection_method_flipped_y>`

返回這個 **Projection** 的副本，Y 列中數值的符號都進行了翻轉。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_aspect**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_aspect>`

返回該 **Projection** 視口的 X:Y 縱橫比。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_far_plane_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_far_plane_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_far_plane_half_extents>`

返回投影遠裁剪平面的尺寸除以二。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_fov>`

返回該投影的水平視野（單位為度）。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fovy:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fovy**\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_get_fovy>`

Returns the vertical field of view of the projection (in degrees) associated with the given horizontal field of view (in degrees) and aspect ratio.

\ **Note:** Unlike most methods of **Projection**, ``aspect`` is expected to be 1 divided by the X:Y aspect ratio.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_lod_multiplier:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_lod_multiplier**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_lod_multiplier>`

返回這個 **Projection** 對可見細節級別的縮放係數。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_pixels_per_meter:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pixels_per_meter**\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_pixels_per_meter>`

Returns ``for_pixel_width`` divided by the viewport's width measured in meters on the near plane, after this **Projection** is applied.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_projection_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_projection_plane**\ (\ plane\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_projection_plane>`

返回這個 **Projection** 的裁剪平面，索引由 ``plane`` 給定。

\ ``plane`` 應該等於 :ref:`PLANE_NEAR<class_Projection_constant_PLANE_NEAR>`\ 、\ :ref:`PLANE_FAR<class_Projection_constant_PLANE_FAR>`\ 、\ :ref:`PLANE_LEFT<class_Projection_constant_PLANE_LEFT>`\ 、\ :ref:`PLANE_TOP<class_Projection_constant_PLANE_TOP>`\ 、\ :ref:`PLANE_RIGHT<class_Projection_constant_PLANE_RIGHT>` 或 :ref:`PLANE_BOTTOM<class_Projection_constant_PLANE_BOTTOM>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_viewport_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_viewport_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_viewport_half_extents>`

返回視口平面的尺寸除以二，這個 **Projection** 會把位置投影至該平面。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_far:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_far**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_far>`

返回該 **Projection** 中的距離，超過這個距離的位置會被裁剪。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_near:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_near**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_near>`

返回該 **Projection** 中的距離，未達到這個距離的位置會被裁剪。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_inverse:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **inverse**\ (\ ) |const| :ref:`🔗<class_Projection_method_inverse>`

返回執行這個 **Projection** 的逆投影變換的 **Projection**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_is_orthogonal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthogonal**\ (\ ) |const| :ref:`🔗<class_Projection_method_is_orthogonal>`

如果該 **Projection** 進行的是正交投影，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_jitter_offseted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **jitter_offseted**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Projection_method_jitter_offseted>`

返回一個 **Projection**\ ，X 和 Y 的取值由給定的 :ref:`Vector2<class_Vector2>` 和最後一列中對應的第一個和第二個值相加而來。

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_perspective_znear_adjusted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **perspective_znear_adjusted**\ (\ new_znear\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Projection_method_perspective_znear_adjusted>`

返回一個 **Projection**\ ，將其近裁剪距離調整為 ``new_znear``\ 。

\ **注意：**\ 原始的 **Projection** 必須為透視投影。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Projection_operator_neq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_neq_Projection>`

如果投影不相等，則返回 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，即使投影實際上相等，也可能會返回 ``true`` 。可能會在 Godot 的未來版本中新增 ``is_equal_approx`` 方法。

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Projection:

.. rst-class:: classref-operator

:ref:`Projection<class_Projection>` **operator ***\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_mul_Projection>`

返回一個 **Projection**\ ，套用了這個 **Projection** 和 ``right`` 的組合變換。

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_Projection_operator_mul_Vector4>`

使用這個 **Projection** 矩陣將給定的 :ref:`Vector4<class_Vector4>` 進行投影（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_eq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_eq_Projection>`

如果投影相等，則返回 ``true``\ 。

\ **注意：**\ 由於浮點精度錯誤，即使投影實際上相等，也可能會返回 ``false``\ 。可能會在 Godot 的未來版本中新增 ``is_equal_approx`` 方法。

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Projection_operator_idx_int>`

返回具有給定索引的 **Projection** 的列。

索引按以下順序排列：x、y、z、w。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
