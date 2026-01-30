:github_url: hide

.. _class_AABB:

AABB
====

3D 軸對齊邊界框。

.. rst-class:: classref-introduction-group

說明
----

The **AABB** built-in :ref:`Variant<class_Variant>` type represents an axis-aligned bounding box in a 3D space. It is defined by its :ref:`position<class_AABB_property_position>` and :ref:`size<class_AABB_property_size>`, which are :ref:`Vector3<class_Vector3>`. It is frequently used for fast overlap tests (see :ref:`intersects()<class_AABB_method_intersects>`). Although **AABB** itself is axis-aligned, it can be combined with :ref:`Transform3D<class_Transform3D>` to represent a rotated or skewed bounding box.

It uses floating-point coordinates. The 2D counterpart to **AABB** is :ref:`Rect2<class_Rect2>`. There is no version of **AABB** that uses integer coordinates.

\ **Note:** Negative values for :ref:`size<class_AABB_property_size>` are not supported. With negative size, most **AABB** methods do not work correctly. Use :ref:`abs()<class_AABB_method_abs>` to get an equivalent **AABB** with a non-negative size.

\ **Note:** In a boolean context, an **AABB** evaluates to ``false`` if both :ref:`position<class_AABB_property_position>` and :ref:`size<class_AABB_property_size>` are zero (equal to :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). Otherwise, it always evaluates to ``true``.

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

- :doc:`向量數學 <../tutorials/math/vector_math>`

- :doc:`高等向量數學 <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

結束點。通常為邊界框右上後方的角點，等同於 ``position + size``\ 。設定此值會改變 :ref:`size<class_AABB_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

起始點。通常為邊界框左下前方的角點。

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

邊界框自 :ref:`position<class_AABB_property_position>` 起的寬度、高度與深度。設定此值同時會影響 :ref:`end<class_AABB_property_end>`\ 。

\ **注意：** 建議將寬、高、深設為非負值，因為 Godot 多數方法假設 :ref:`position<class_AABB_property_position>` 為左下前角， :ref:`end<class_AABB_property_end>` 為右上後角。若需取得大小為非負的等效邊界框，請使用 :ref:`abs()<class_AABB_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

預設建構 **AABB**\ ，其 :ref:`position<class_AABB_property_position>` 與 :ref:`size<class_AABB_property_size>` 皆為 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

建構給定 **AABB** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

以指定的 ``position`` 與 ``size`` 建立 **AABB**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

傳回與此邊界框等效、且寬度、高度與深度皆為非負值的 **AABB**\ 。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolute = box.abs()
    print(absolute.position) # 輸出 (-15.0, -10.0, 0.0)
    print(absolute.size)     # 輸出 (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolute = box.Abs();
    GD.Print(absolute.Position); // 輸出 (-15, -10, 0)
    GD.Print(absolute.Size);     // 輸出 (20, 10, 5)



\ **注意：** 當 :ref:`size<class_AABB_property_size>` 為負值時，建議先呼叫本方法，因為 Godot 其他方法通常假設 :ref:`size<class_AABB_property_size>` 的各分量皆大於 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

若此邊界框可\ *完全*\ 包覆 ``with``\ ，則回傳 ``true``\ 。兩者邊緣亦被計入。


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Prints true
    print(a.encloses(b)) # Prints true
    print(a.encloses(c)) # Prints false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Prints True
    GD.Print(a.Encloses(b)); // Prints True
    GD.Print(a.Encloses(c)); // Prints False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

傳回此邊界框的副本；如有需要，會擴張至其邊緣與給定的 ``to_point`` 對齊。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    box = box.expand(Vector3(10, 0, 0))
    print(box.position) # Prints (0.0, 0.0, 0.0)
    print(box.size)     # Prints (10.0, 2.0, 5.0)

    box = box.expand(Vector3(-5, 0, 5))
    print(box.position) # Prints (-5.0, 0.0, 0.0)
    print(box.size)     # Prints (15.0, 2.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    box = box.Expand(new Vector3(10, 0, 0));
    GD.Print(box.Position); // Prints (0, 0, 0)
    GD.Print(box.Size);     // Prints (10, 2, 5)

    box = box.Expand(new Vector3(-5, 0, 5));
    GD.Print(box.Position); // Prints (-5, 0, 0)
    GD.Print(box.Size);     // Prints (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

傳回此邊界框的中心點。等同於 ``position + (size / 2.0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Returns the position of one of the 8 vertices that compose this bounding box. With an ``idx`` of ``0`` this is the same as :ref:`position<class_AABB_property_position>`, and an ``idx`` of ``7`` is the same as :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最長軸向的單位向量，為 :ref:`Vector3<class_Vector3>`\ （可能為 :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ 、\ :ref:`Vector3.UP<class_Vector3_constant_UP>` 或 :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis())       # Prints (0.0, 0.0, 1.0)
    print(box.get_longest_axis_index()) # Prints 2
    print(box.get_longest_axis_size())  # Prints 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis());      // Prints (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Prints Z
    GD.Print(box.GetLongestAxisSize());  // Prints 8



另請參閱 :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` 與 :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最長軸的索引（參見 :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`\ 、\ :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`\ 、\ :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`\ ）。

範例請見 :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最長的尺寸。

範例請見 :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最短軸向的單位向量，為 :ref:`Vector3<class_Vector3>`\ （可能為 :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ 、\ :ref:`Vector3.UP<class_Vector3_constant_UP>` 或 :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis())       # Prints (1.0, 0.0, 0.0)
    print(box.get_shortest_axis_index()) # Prints 0
    print(box.get_shortest_axis_size())  # Prints 2.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis());      // Prints (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Prints X
    GD.Print(box.GetShortestAxisSize());  // Prints 2



另請參閱 :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` 與 :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最短軸的索引（參見 :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`\ 、\ :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>`\ 、\ :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`\ ）。

範例請見 :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

傳回此邊界框 :ref:`size<class_AABB_property_size>` 最短的尺寸。

範例請見 :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

回傳在指定方向上距離最遠的頂點位置（支援點），常用於碰撞偵測演算法。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

傳回此邊界框的體積。等同於 ``size.x * size.y * size.z``\ 。另請參閱 :ref:`has_volume()<class_AABB_method_has_volume>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

傳回在所有方向上以 ``by`` 數值擴張後的此邊界框副本。若 ``by`` 為負，則改為收縮。


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Prints (0.0, 0.0, 0.0)
    print(a.size)     # Prints (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Prints (-2.0, -2.0, -2.0)
    print(b.size)     # Prints (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Prints (0, 0, 0)
    GD.Print(a.Size);     // Prints (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Prints (-2, -2, -2)
    GD.Print(b.Size);     // Prints (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

若此邊界框包含給定的 ``point``\ ，則回傳 ``true``\ 。依慣例，恰位於右側、上側與後側邊緣的點\ **不**\ 會被計入。

\ **注意：** 對於\ *大小為負值*\ 的 **AABB**\ ，此方法不可靠；請先使用 :ref:`abs()<class_AABB_method_abs>` 取得有效的邊界框。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

若此邊界框具備面積或長度（至少有一個 :ref:`size<class_AABB_property_size>` 分量大於 ``0``\ ），則回傳 ``true``\ ；否則為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

若此邊界框的寬度、高度與深度皆為正值，則回傳 ``true``\ 。另請參閱 :ref:`get_volume()<class_AABB_method_get_volume>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

傳回此邊界框與 ``with`` 的交集。如果兩框不相交，則回傳空的 **AABB**\ 。若僅於邊緣相交，則回傳沒有體積的扁平 **AABB**\ （參見 :ref:`has_surface()<class_AABB_method_has_surface>` 與 :ref:`has_volume()<class_AABB_method_has_volume>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # Prints (2.0, 0.0, 2.0)
    print(intersection.size)     # Prints (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.Position); // Prints (2, 0, 2)
    GD.Print(intersection.Size);     // Prints (3, 2, 4)



\ **注意：** 若僅需判斷兩邊界框是否相交，請改用 :ref:`intersects()<class_AABB_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

若此邊界框與 ``with`` 發生重疊，則回傳 ``true``\ 。兩者邊緣\ *皆被排除*\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

若此邊界框同時位於指定 ``plane`` 的兩側，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

回傳此邊界框與指定射線的第一個交點，型別為 :ref:`Vector3<class_Vector3>`\ ；若無交點則回傳 ``null``\ 。

射線從 ``from`` 出發，方向為 ``dir``\ ，並延伸至無限遠。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

回傳此邊界框與指定線段的第一個交點，型別為 :ref:`Vector3<class_Vector3>`\ ；若無交點則回傳 ``null``\ 。

線段起於 ``from``\ ，止於 ``to``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

若此邊界框與 ``aabb`` 近似相等（透過分別對 :ref:`position<class_AABB_property_position>` 與 :ref:`size<class_AABB_property_size>` 呼叫 :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>`\ ），則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

若此邊界框的值皆為有限數（透過對 :ref:`position<class_AABB_property_position>` 與 :ref:`size<class_AABB_property_size>` 呼叫 :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>`\ ），則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

傳回同時包覆此邊界框與 ``with`` 的 **AABB**\ 。另請參閱 :ref:`encloses()<class_AABB_method_encloses>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

若兩邊界框的 :ref:`position<class_AABB_property_position>` 或 :ref:`size<class_AABB_property_size>` 不相等，則回傳 ``true``\ 。

\ **注意：** 由於浮點誤差，建議改用 :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` 以取得更可靠的結果。

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

將此 **AABB** 以給定的 :ref:`Transform3D<class_Transform3D>` 逆向變換（乘法）並回傳結果，前提為該變換基底為正交單位矩陣（可含旋轉／鏡射，但不含縮放／斜切）。

\ ``aabb * transform`` 等價於 ``transform.inverse() * aabb``\ 。詳見 :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`\ 。

若需對仿射變換（包含縮放）的逆變換，可使用 ``transform.affine_inverse() * aabb``\ 。詳見 :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

若兩邊界框的 :ref:`position<class_AABB_property_position>` 與 :ref:`size<class_AABB_property_size>` 完全相等，則回傳 ``true``\ 。

\ **注意：** 由於浮點誤差，建議改用 :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` 以取得更可靠的結果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
