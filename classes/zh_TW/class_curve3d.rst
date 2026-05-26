:github_url: hide

.. _class_Curve3D:

Curve3D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 3D 空間的貝茲爾曲線。

.. rst-class:: classref-introduction-group

說明
----

該類描述了 3D 空間中的貝茲曲線。它主要用於給 :ref:`Path3D<class_Path3D>` 提供一個形狀，但也可以手動取樣以用於其他目的。

它保留沿曲線預先計算的點的快取，以加速進一步的計算。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_Curve3D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``0.2`` :ref:`🔗<class_Curve3D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

相鄰兩個快取點之間的距離，單位為米。改變它將迫使快取在下次呼叫 :ref:`get_baked_points()<class_Curve3D_method_get_baked_points>` 或 :ref:`get_baked_length()<class_Curve3D_method_get_baked_length>` 函式時重新計算。距離越小，快取中的點越多，佔用的記憶體也越多，所以使用時要注意。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Curve3D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

If ``true``, and the curve has more than 2 control points, the last point and the first one will be connected in a loop.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve3D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

描述該曲線的點的數量。

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

如果為 ``true``\ ，則曲線將烘焙用於定向的向量。當 :ref:`PathFollow3D.rotation_mode<class_PathFollow3D_property_rotation_mode>` 被設定為 :ref:`PathFollow3D.ROTATION_ORIENTED<class_PathFollow3D_constant_ROTATION_ORIENTED>` 時使用。更改它會強制快取被重新計算。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Curve3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve3D_method_add_point>`

新增一個具有相對於曲線自身位置的指定 ``position``\ ，且帶有控制點 ``in`` 和 ``out`` 的點。在點列表的末尾追加該新點。

如果給定了 ``index``\ ，則將新點插入到由索引 ``index`` 標識的已有點之前。從 ``index`` 開始的每個已有點，都會在點列表中進一步向下移動。索引必須大於或等於 ``0``\ ，並且不得超過線段中已有點的數量。參見 :ref:`point_count<class_Curve3D_property_point_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve3D_method_clear_points>`

從曲線中移除所有點。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_length>`

根據快取的點，返回曲線的總長度。給予足夠的密度（見 :ref:`bake_interval<class_Curve3D_property_bake_interval>`\ ），它應該是足夠近似的。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_points>`

返回快取的點，型別為 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_tilts:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_baked_tilts**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_tilts>`

將傾斜快取返回為一個 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_up_vectors:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_up_vectors**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_up_vectors>`

將向上向量的快取返回為一個 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

如果 :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>` 為 ``false``\ ，則快取將為空。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_offset>`

返回最接近 ``to_point`` 的偏移量。該偏移量被用於 :ref:`sample_baked()<class_Curve3D_method_sample_baked>` 或 :ref:`sample_baked_up_vector()<class_Curve3D_method_sample_baked_up_vector>`\ 。

\ ``to_point`` 必須在該曲線的局部空間中。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_point>`

返回已烘焙的線段上最接近 ``to_point`` 的點（在曲線的局部空間中）。

\ ``to_point`` 必須在該曲線的局部空間中。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_in>`

返回指向頂點 ``idx`` 的控制點的位置。返回的位置是相對於頂點 ``idx`` 的。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_out>`

返回離向頂點 ``idx`` 的控制點的位置。返回的位置是相對於頂點 ``idx`` 的。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_position>`

返回頂點 ``idx`` 的位置。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_tilt:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_tilt**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_tilt>`

返回點 ``idx`` 的傾斜弧度角。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve3D_method_remove_point>`

從曲線上刪除點 ``idx``\ 。如果 ``idx`` 越界，則會向控制台發送錯誤資訊。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_sample>`

返回頂點 ``idx`` 和頂點 ``idx + 1`` 之間的位置，其中 ``t`` 控制該點是否為第一個頂點（\ ``t = 0.0``\ ）、最後一個頂點（\ ``t = 1.0``\ ）、或介於兩者之間。超出範圍（\ ``0.0 >= t <=1``\ ）的 ``t`` 的值會給出奇怪但可預測的結果。

如果 ``idx`` 越界，它將被截斷到第一個或最後一個頂點，而 ``t`` 將被忽略。如果曲線沒有點，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked>`

Returns a point within the curve at position ``offset``, where ``offset`` is measured as a distance in 3D units along the curve. To do that, it finds the two cached points where the ``offset`` lies between, then interpolates the values. This interpolation is cubic if ``cubic`` is set to ``true``, or linear if set to ``false``.

Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_up_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked_up_vector**\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_up_vector>`

Returns an up vector within the curve at position ``offset``, where ``offset`` is measured as a distance in 3D units along the curve. To do that, it finds the two cached up vectors where the ``offset`` lies between, then interpolates the values. If ``apply_tilt`` is ``true``, an interpolated tilt is applied to the interpolated up vector.

If the curve has no up vectors, the function sends an error to the console, and returns ``(0, 1, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_with_rotation>`

Returns a :ref:`Transform3D<class_Transform3D>` with ``origin`` as point position, ``basis.x`` as sideway vector, ``basis.y`` as up vector, ``basis.z`` as forward vector. When the curve length is 0, there is no reasonable way to calculate the rotation, all vectors aligned with global space axes. See also :ref:`sample_baked()<class_Curve3D_method_sample_baked>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_samplef>`

返回頂點 ``fofs`` 的位置。該函式使用 ``fofs`` 的整數部分作為 ``idx``\ ，其小數部分作為 ``t``\ ，呼叫 :ref:`sample()<class_Curve3D_method_sample>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_in>`

設定通往頂點 ``idx`` 的控制點位置。如果索引超出範圍，函式會向控制台發送錯誤信息。位置相對於頂點。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_out>`

設定從頂點 ``idx`` 引出的控制點位置。如果索引超出範圍，函式會向控制台發送錯誤資訊。位置相對於頂點。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_position>`

設定頂點 ``idx`` 的位置。如果索引超出範圍，函式會向控制台發送錯誤資訊。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_tilt:

.. rst-class:: classref-method

|void| **set_point_tilt**\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve3D_method_set_point_tilt>`

以弧度為單位，設定點 ``idx`` 的傾斜角度。如果索引超出範圍，則該函式將向控制台發送一個錯誤。

傾斜控制物件沿著路徑行進時，沿著觀察軸的旋轉。在曲線控制 :ref:`PathFollow3D<class_PathFollow3D>` 的情況下，該傾斜是 :ref:`PathFollow3D<class_PathFollow3D>` 計算的自然傾斜的偏移。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate>`

返回沿曲線的點的列表，點的密度由曲率控制。也就是說，彎曲的部分比直的部分有更多的點。

這種近似會在每個點之間製作直段，然後將這些直段細分，直到得到的形狀足夠相似。

\ ``max_stages`` 控制曲線段在被認為足夠近似之前可能會面臨多少次細分。每次細分會將曲線段分成兩半，因此預設的 5 個階段可能意味著每個曲線段最多得到 32 個細分。請謹慎增加！

\ ``tolerance_degrees`` 控制曲線段在其中點偏離真實曲線的多少度會被細分。

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate_even_length>`

返回沿曲線的點列表，具有幾乎均勻的密度。\ ``max_stages`` 控制曲線段在被認為足夠近似之前可能面臨多少次細分。每次細分將段分成兩半，因此預設的 5 個階段可能意味著每個曲線段最多 32 個細分。請謹慎增加！

\ ``tolerance_length`` 控制在必須細分線段之前兩個相鄰點之間的最大距離。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
