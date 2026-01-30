:github_url: hide

.. _class_Curve2D:

Curve2D
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 2D 空间的贝塞尔曲线。

.. rst-class:: classref-introduction-group

描述
----

该类描述了 2D 空间中的贝塞尔曲线。它主要用于给 :ref:`Path2D<class_Path2D>` 一个形状，但也可以手动采样用于其他目的。

它保留了沿曲线的预计算点的缓存，以加快进一步的计算。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`bake_interval<class_Curve2D_property_bake_interval>` | ``5.0`` |
   +---------------------------+------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`point_count<class_Curve2D_property_point_count>`     | ``0``   |
   +---------------------------+------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve2D_method_clear_points>`\ (\ )                                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve2D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_baked_points<class_Curve2D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve2D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                    |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_Curve2D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_in<class_Curve2D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_out<class_Curve2D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_Curve2D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve2D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample<class_Curve2D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample_baked<class_Curve2D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`sample_baked_with_rotation<class_Curve2D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`samplef<class_Curve2D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve2D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve2D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve2D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate<class_Curve2D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate_even_length<class_Curve2D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const|                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Curve2D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``5.0`` :ref:`🔗<class_Curve2D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

相邻两个缓存点之间的距离，以像素为单位。改变它将迫使缓存在下次调用 :ref:`get_baked_points()<class_Curve2D_method_get_baked_points>` 或 :ref:`get_baked_length()<class_Curve2D_method_get_baked_length>` 函数时重新计算。距离越小，缓存中的点越多，占用的内存也越多，所以使用时要注意。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve2D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

描述该曲线的点的数量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Curve2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve2D_method_add_point>`

添加一个具有相对于曲线自身位置的指定 ``position``\ ，且带有控制点 ``in`` 和 ``out`` 的点。在点列表的末尾追加该新点。

如果给定了 ``index``\ ，则将新点插入到由索引 ``index`` 标识的已有点之前。从 ``index`` 开始的每个已有点，都会在点列表中进一步向下移动。索引必须大于或等于 ``0``\ ，并且不得超过线段中已有点的数量。参见 :ref:`point_count<class_Curve2D_property_point_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve2D_method_clear_points>`

从曲线中移除所有点。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_length>`

根据缓存的点，返回曲线的总长度。给予足够的密度（见 :ref:`bake_interval<class_Curve2D_property_bake_interval>`\ ），它应该是足够近似的。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_points>`

返回缓存的点，形式为 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_offset>`

返回最接近 ``to_point`` 的偏移量。该偏移量被用于 :ref:`sample_baked()<class_Curve2D_method_sample_baked>`\ 。

\ ``to_point`` 必须在该曲线的局部空间中。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_point>`

返回已烘焙的线段上最接近 ``to_point`` 的点（在曲线的局部空间中）。

\ ``to_point`` 必须在该曲线的局部空间中。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_in>`

返回指向顶点 ``idx`` 的控制点的位置。返回的位置是相对于顶点 ``idx`` 的。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_out>`

返回离向顶点 ``idx`` 的控制点的位置。返回的位置是相对于顶点 ``idx`` 的。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_position>`

返回顶点的位置 ``idx``\ 。如果索引越界，则该函数将向控制台发送一个错误，并返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve2D_method_remove_point>`

从曲线上删除点 ``idx``\ 。如果 ``idx`` 越界，则会向控制台发送错误信息。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_sample>`

返回顶点 ``idx`` 和顶点 ``idx + 1`` 之间的位置，其中 ``t`` 控制该点是否为第一个顶点（\ ``t = 0.0``\ ）、最后一个顶点（\ ``t = 1.0``\ ）或介于两者之间。超出范围（\ ``0.0 <= t <= 1.0``\ ）的 ``t`` 的值会给出奇怪但可预测的结果。

如果 ``idx`` 越界，它将被截断到第一个或最后一个顶点，而 ``t`` 将被忽略。如果曲线没有点，则该函数将向控制台发送一个错误，并返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked>`

返回曲线内位于 ``offset`` 位置的一个点，其中 ``offset`` 为沿曲线的像素测量距离。

为此，它会找到 ``offset`` 位于其中的两个缓存点，然后对值进行插值。如果 ``cubic`` 被设置为 ``true``\ ，则该插值是立方插值；如果被设置为 ``false``\ ，则该插值是线性插值。

立方插值往往能更好地跟随曲线，但线性插值速度更快（而且通常足够精确）。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked_with_rotation>`

与 :ref:`sample_baked()<class_Curve2D_method_sample_baked>` 类似，但返回的是 :ref:`Transform2D<class_Transform2D>`\ ，它包含沿曲线的旋转，以 :ref:`Transform2D.origin<class_Transform2D_property_origin>` 为点的位置，\ :ref:`Transform2D.x<class_Transform2D_property_x>` 向量指向该点的路径方向。如果曲线长度为 ``0``\ ，则返回一个空变换。

::

    var baked = curve.sample_baked_with_rotation(offset)
    # 返回的 Transform2D 可以被直接设置。
    transform = baked
    # 还可以从返回的 Transform2D 中单独读取原点和旋转。
    position = baked.get_origin()
    rotation = baked.get_rotation()

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_samplef>`

返回顶点 ``fofs`` 的位置。该函数使用 ``fofs`` 的整数部分作为 ``idx``\ ，其小数部分作为 ``t``\ ，调用 :ref:`sample()<class_Curve2D_method_sample>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_in>`

设置通往顶点 ``idx`` 的控制点位置。如果索引超出范围，函数会向控制台发送错误信息。位置相对于顶点。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_out>`

设置从顶点 ``idx`` 引出的控制点位置。如果索引超出范围，函数会向控制台发送错误信息。位置相对于顶点。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_position>`

设置顶点 ``idx`` 的位置。如果索引超出范围，函数会向控制台发送错误信息。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate>`

返回沿曲线的点的列表，点的密度由曲率控制。也就是说，弯曲的部分比直的部分有更多的点。

这种近似会在每个点之间制作直段，然后将这些直段细分，直到得到的形状足够相似。

\ ``max_stages`` 控制曲线段在被认为足够近似之前可能会面临多少次细分。每次细分会将曲线段分成两半，因此默认的 5 个阶段可能意味着每个曲线段最多得到 32 个细分。请谨慎增加！

\ ``tolerance_degrees`` 控制曲线段在其中点偏离真实曲线的多少度会被细分。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate_even_length>`

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
