:github_url: hide

.. _class_Curve3D:

Curve3D
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 3D 空间的贝兹尔曲线。

.. rst-class:: classref-introduction-group

描述
----

该类描述了 3D 空间中的贝塞尔曲线。它主要用于给 :ref:`Path3D<class_Path3D>` 提供一个形状，但也可以手动采样以用于其他目的。

它保留沿曲线预先计算的点的缓存，以加速进一步的计算。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`bake_interval<class_Curve3D_property_bake_interval>`                   | ``0.2``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`closed<class_Curve3D_property_closed>`                                 | ``false``            |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve3D_property_point_count>`                       | ``0``                |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/in<class_Curve3D_property_point_{index}/in>`             | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/out<class_Curve3D_property_point_{index}/out>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/position<class_Curve3D_property_point_{index}/position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/tilt<class_Curve3D_property_point_{index}/tilt>`         | ``0.0``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>`           | ``true``             |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve3D_method_add_point>`\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve3D_method_clear_points>`\ (\ )                                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve3D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_points<class_Curve3D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_baked_tilts<class_Curve3D_method_get_baked_tilts>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_up_vectors<class_Curve3D_method_get_baked_up_vectors>`\ (\ ) |const|                                                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve3D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_closest_point<class_Curve3D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_in<class_Curve3D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_out<class_Curve3D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_position<class_Curve3D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_tilt<class_Curve3D_method_get_point_tilt>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve3D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample<class_Curve3D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked<class_Curve3D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked_up_vector<class_Curve3D_method_sample_baked_up_vector>`\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`sample_baked_with_rotation<class_Curve3D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`samplef<class_Curve3D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve3D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve3D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve3D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_tilt<class_Curve3D_method_set_point_tilt>`\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ )                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate<class_Curve3D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate_even_length<class_Curve3D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const|                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Curve3D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``0.2`` :ref:`🔗<class_Curve3D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

相邻两个缓存点之间的距离，单位为米。改变它将迫使缓存在下次调用 :ref:`get_baked_points()<class_Curve3D_method_get_baked_points>` 或 :ref:`get_baked_length()<class_Curve3D_method_get_baked_length>` 函数时重新计算。距离越小，缓存中的点越多，占用的内存也越多，所以使用时要注意。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Curve3D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

如果为 ``true`` 且曲线的控制点数量大于 2，则结尾的点和开头的点会连接成环。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve3D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

描述该曲线的点的数量。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/in:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/in** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/in>`

The position of the control point leading to the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/out:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/out** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/out>`

The position of the control point leading out of the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/position>`

The position of for the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/tilt:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/tilt** = ``0.0`` :ref:`🔗<class_Curve3D_property_point_{index}/tilt>`

The tilt angle in radians for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_up_vector_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **up_vector_enabled** = ``true`` :ref:`🔗<class_Curve3D_property_up_vector_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_up_vector_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_up_vector_enabled**\ (\ )

如果为 ``true``\ ，则曲线将烘焙用于定向的向量。当 :ref:`PathFollow3D.rotation_mode<class_PathFollow3D_property_rotation_mode>` 被设置为 :ref:`PathFollow3D.ROTATION_ORIENTED<class_PathFollow3D_constant_ROTATION_ORIENTED>` 时使用。更改它会强制缓存被重新计算。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Curve3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve3D_method_add_point>`

添加一个具有相对于曲线自身位置的指定 ``position``\ ，且带有控制点 ``in`` 和 ``out`` 的点。在点列表的末尾追加该新点。

如果给定了 ``index``\ ，则将新点插入到由索引 ``index`` 标识的已有点之前。从 ``index`` 开始的每个已有点，都会在点列表中进一步向下移动。索引必须大于或等于 ``0``\ ，并且不得超过线段中已有点的数量。参见 :ref:`point_count<class_Curve3D_property_point_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve3D_method_clear_points>`

从曲线中移除所有点。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_length>`

根据缓存的点，返回曲线的总长度。给予足够的密度（见 :ref:`bake_interval<class_Curve3D_property_bake_interval>`\ ），它应该是足够近似的。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_points>`

返回缓存的点，类型为 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_tilts:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_baked_tilts**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_tilts>`

将倾斜缓存返回为一个 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_up_vectors:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_up_vectors**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_up_vectors>`

将向上向量的缓存返回为一个 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

如果 :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>` 为 ``false``\ ，则缓存将为空。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_offset>`

返回最接近 ``to_point`` 的偏移量。该偏移量被用于 :ref:`sample_baked()<class_Curve3D_method_sample_baked>` 或 :ref:`sample_baked_up_vector()<class_Curve3D_method_sample_baked_up_vector>`\ 。

\ ``to_point`` 必须在该曲线的局部空间中。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_point>`

返回已烘焙的线段上最接近 ``to_point`` 的点（在曲线的局部空间中）。

\ ``to_point`` 必须在该曲线的局部空间中。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_in>`

返回指向顶点 ``idx`` 的控制点的位置。返回的位置是相对于顶点 ``idx`` 的。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_out>`

返回离向顶点 ``idx`` 的控制点的位置。返回的位置是相对于顶点 ``idx`` 的。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_position>`

返回顶点 ``idx`` 的位置。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_tilt:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_tilt**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_tilt>`

返回点 ``idx`` 的倾斜弧度角。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve3D_method_remove_point>`

从曲线上删除点 ``idx``\ 。如果 ``idx`` 越界，则会向控制台发送错误信息。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_sample>`

返回顶点 ``idx`` 和顶点 ``idx + 1`` 之间的位置，其中 ``t`` 控制该点是否为第一个顶点（\ ``t = 0.0``\ ）、最后一个顶点（\ ``t = 1.0``\ ）或介于两者之间。超出范围（\ ``0.0 >= t <=1``\ ）的 ``t`` 的值会给出奇怪但可预测的结果。

如果 ``idx`` 越界，它将被截断到第一个或最后一个顶点，而 ``t`` 将被忽略。如果曲线没有点，则该函数将向控制台发送一个错误，并返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked>`

返回曲线内位于 ``offset`` 位置的一个点，其中 ``offset`` 为沿曲线的 3D 单位测量距离。为此，它会找到 ``offset`` 位于其间的两个缓存点，然后对值进行插值。如果 ``cubic`` 被设置为 ``true``\ ，则该插值是立方插值；如果被设置为 ``false``\ ，则该插值是线性插值。

立方插值往往能更好地跟随曲线，但线性插值速度更快（而且通常足够精确）。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_up_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked_up_vector**\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_up_vector>`

返回曲线内位于 ``offset`` 位置的向上向量，其中 ``offset`` 为沿曲线的 3D 单位测量距离。为此，它会找到 ``offset`` 位于其间的两个缓存向上向量，然后对值进行插值。如果 ``apply_tilt`` 为 ``true``\ ，则对插值后的向上向量应用插值后的倾斜。

如果曲线没有向上向量，则该函数将向控制台发送一个错误，并返回 ``(0, 1, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_with_rotation>`

返回一个 :ref:`Transform3D<class_Transform3D>`\ ，其中 ``origin`` 作为点位置，\ ``basis.x`` 作为横向向量，\ ``basis.y`` 作为向上向量，\ ``basis.z`` 作为前向向量。当曲线长度为 0 时，将没有合理的方法来计算旋转，所有向量都会与全局空间轴对齐。另请参见 :ref:`sample_baked()<class_Curve3D_method_sample_baked>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_samplef>`

返回顶点 ``fofs`` 的位置。该函数使用 ``fofs`` 的整数部分作为 ``idx``\ ，其小数部分作为 ``t``\ ，调用 :ref:`sample()<class_Curve3D_method_sample>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_in>`

设置通往顶点 ``idx`` 的控制点位置。如果索引超出范围，函数会向控制台发送错误信息。位置相对于顶点。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_out>`

设置从顶点 ``idx`` 引出的控制点位置。如果索引超出范围，函数会向控制台发送错误信息。位置相对于顶点。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_position>`

设置顶点 ``idx`` 的位置。如果索引超出范围，函数会向控制台发送错误信息。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_tilt:

.. rst-class:: classref-method

|void| **set_point_tilt**\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve3D_method_set_point_tilt>`

以弧度为单位，设置点 ``idx`` 的倾斜角度。如果索引超出范围，则该函数将向控制台发送一个错误。

倾斜控制对象沿着路径行进时，沿着观察轴的旋转。在曲线控制 :ref:`PathFollow3D<class_PathFollow3D>` 的情况下，该倾斜是 :ref:`PathFollow3D<class_PathFollow3D>` 计算的自然倾斜的偏移。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate>`

返回沿曲线的点的列表，点的密度由曲率控制。也就是说，弯曲的部分比直的部分有更多的点。

这种近似会在每个点之间制作直段，然后将这些直段细分，直到得到的形状足够相似。

\ ``max_stages`` 控制曲线段在被认为足够近似之前可能会面临多少次细分。每次细分会将曲线段分成两半，因此默认的 5 个阶段可能意味着每个曲线段最多得到 32 个细分。请谨慎增加！

\ ``tolerance_degrees`` 控制曲线段在其中点偏离真实曲线的多少度会被细分。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate_even_length>`

返回沿曲线的点列表，具有几乎均匀的密度。\ ``max_stages`` 控制曲线段在被认为足够近似之前可能面临多少次细分。每次细分将段分成两半，因此默认的 5 个阶段可能意味着每个曲线段最多 32 个细分。请谨慎增加！

\ ``tolerance_length`` 控制在必须细分线段之前两个相邻点之间的最大距离。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
