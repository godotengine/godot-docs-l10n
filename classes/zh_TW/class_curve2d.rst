:github_url: hide

.. _class_Curve2D:

Curve2D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述 2D 空間的貝茲曲線。

.. rst-class:: classref-introduction-group

說明
----

該類描述了 2D 空間中的貝茲曲線。它主要用於給 :ref:`Path2D<class_Path2D>` 一個形狀，但也可以手動取樣用於其他目的。

它保留了沿曲線的預計算點的快取，以加快進一步的計算。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_Curve2D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``5.0`` :ref:`🔗<class_Curve2D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

相鄰兩個快取點之間的距離，以圖元為單位。改變它將迫使快取在下次呼叫 :ref:`get_baked_points()<class_Curve2D_method_get_baked_points>` 或 :ref:`get_baked_length()<class_Curve2D_method_get_baked_length>` 函式時重新計算。距離越小，快取中的點越多，佔用的記憶體也越多，所以使用時要注意。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve2D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

描述該曲線的點的數量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Curve2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve2D_method_add_point>`

新增一個具有相對於曲線自身位置的指定 ``position``\ ，且帶有控制點 ``in`` 和 ``out`` 的點。在點列表的末尾追加該新點。

如果給定了 ``index``\ ，則將新點插入到由索引 ``index`` 標識的已有點之前。從 ``index`` 開始的每個已有點，都會在點列表中進一步向下移動。索引必須大於或等於 ``0``\ ，並且不得超過線段中已有點的數量。參見 :ref:`point_count<class_Curve2D_property_point_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve2D_method_clear_points>`

從曲線中移除所有點。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_length>`

根據快取的點，返回曲線的總長度。給予足夠的密度（見 :ref:`bake_interval<class_Curve2D_property_bake_interval>`\ ），它應該是足夠近似的。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_points>`

返回快取的點，形式為 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_offset>`

返回最接近 ``to_point`` 的偏移量。該偏移量被用於 :ref:`sample_baked()<class_Curve2D_method_sample_baked>`\ 。

\ ``to_point`` 必須在該曲線的局部空間中。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_point>`

返回已烘焙的線段上最接近 ``to_point`` 的點（在曲線的局部空間中）。

\ ``to_point`` 必須在該曲線的局部空間中。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_in>`

返回指向頂點 ``idx`` 的控制點的位置。返回的位置是相對於頂點 ``idx`` 的。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_out>`

返回離向頂點 ``idx`` 的控制點的位置。返回的位置是相對於頂點 ``idx`` 的。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_position>`

返回頂點的位置 ``idx``\ 。如果索引越界，則該函式將向控制台發送一個錯誤，並返回 ``(0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve2D_method_remove_point>`

從曲線上刪除點 ``idx``\ 。如果 ``idx`` 越界，則會向控制台發送錯誤資訊。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_sample>`

Returns the position between the vertex ``idx`` and the vertex ``idx + 1``, where ``t`` controls if the point is the first vertex (``t = 0.0``), the last vertex (``t = 1.0``), or in between. Values of ``t`` outside the range (``0.0 <= t <= 1.0``) give strange, but predictable results.

If ``idx`` is out of bounds it is truncated to the first or last vertex, and ``t`` is ignored. If the curve has no points, the function sends an error to the console, and returns ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked>`

返回曲線內位於 ``offset`` 位置的一個點，其中 ``offset`` 為沿曲線的像素測量距離。

為此，它會找到 ``offset`` 位於其中的兩個快取點，然後對值進行插值。如果 ``cubic`` 被設定為 ``true``\ ，則該插值是立方插值；如果被設定為 ``false``\ ，則該插值是線性插值。

立方插值往往能更好地跟隨曲線，但線性插值速度更快（而且通常足夠精確）。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked_with_rotation>`

Similar to :ref:`sample_baked()<class_Curve2D_method_sample_baked>`, but returns :ref:`Transform2D<class_Transform2D>` that includes a rotation along the curve, with :ref:`Transform2D.origin<class_Transform2D_property_origin>` as the point position and the :ref:`Transform2D.x<class_Transform2D_property_x>` vector pointing in the direction of the path at that point. Returns an empty transform if the length of the curve is ``0``.

::

    var baked = curve.sample_baked_with_rotation(offset)
    # The returned Transform2D can be set directly.
    transform = baked
    # You can also read the origin and rotation separately from the returned Transform2D.
    position = baked.get_origin()
    rotation = baked.get_rotation()

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_samplef>`

返回頂點 ``fofs`` 的位置。該函式使用 ``fofs`` 的整數部分作為 ``idx``\ ，其小數部分作為 ``t``\ ，呼叫 :ref:`sample()<class_Curve2D_method_sample>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_in>`

設定通往頂點 ``idx`` 的控制點位置。如果索引超出範圍，函式會向控制台發送錯誤信息。位置相對於頂點。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_out>`

設定從頂點 ``idx`` 引出的控制點位置。如果索引超出範圍，函式會向控制台發送錯誤資訊。位置相對於頂點。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_position>`

設定頂點 ``idx`` 的位置。如果索引超出範圍，函式會向控制台發送錯誤資訊。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate>`

返回沿曲線的點的列表，點的密度由曲率控制。也就是說，彎曲的部分比直的部分有更多的點。

這種近似會在每個點之間製作直段，然後將這些直段細分，直到得到的形狀足夠相似。

\ ``max_stages`` 控制曲線段在被認為足夠近似之前可能會面臨多少次細分。每次細分會將曲線段分成兩半，因此預設的 5 個階段可能意味著每個曲線段最多得到 32 個細分。請謹慎增加！

\ ``tolerance_degrees`` 控制曲線段在其中點偏離真實曲線的多少度會被細分。

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate_even_length>`

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
