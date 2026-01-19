:github_url: hide

.. _class_Rect2i:

Rect2i
======

使用整数坐标的 2D 轴对齐边界框。

.. rst-class:: classref-introduction-group

描述
----

**Rect2i** 是内置的 :ref:`Variant<class_Variant>` 类型，代表 2D 空间中与轴对齐的矩形，使用整数坐标。由 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 定义，它们都是 :ref:`Vector2i<class_Vector2i>`\ 。因为这个矩形不会旋转，所以可以进行快速的重合检查（见 :ref:`intersects()<class_Rect2i_method_intersects>`\ ）。

浮点数坐标的版本见 :ref:`Rect2<class_Rect2>`\ 。

\ **注意：**\ 不支持负数的 :ref:`size<class_Rect2i_property_size>`\ 。如果大小为负数，\ **Rect2i** 的大多数方法都无法正常工作。请使用 :ref:`abs()<class_Rect2i_method_abs>` 获取等价且大小非负的 **Rect2i**\ 。

\ **注意：**\ 在布尔值上下文中，\ :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 均为零（等于 :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`\ ）的 **Rect2i** 会得到 ``false``\ 。否则得到 ``true``\ 。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`向量数学 <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

终点。通常为矩形的右下角，等价于 ``position + size``\ 。设置该点会影响 :ref:`size<class_Rect2i_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

原点。通常为矩形的左上角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

矩形的宽和高，相对于 :ref:`position<class_Rect2i_property_position>`\ 。设置该值会影响终点 :ref:`end<class_Rect2i_property_end>`\ 。

\ **注意：**\ 建议将宽和高设置为非负数，因为 Godot 中的大多数方法假设 :ref:`position<class_Rect2i_property_position>` 为左上角、\ :ref:`end<class_Rect2i_property_end>` 为右下角。要获取等价且大小非负的矩形，请使用 :ref:`abs()<class_Rect2i_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

构造 **Rect2i**\ ，将 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 设置为 :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

构造给定 **Rect2i** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

根据 :ref:`Rect2<class_Rect2>` 构造 **Rect2i**\ 。会截断浮点数坐标。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

使用指定的 ``position`` 和 ``size`` 构造 **Rect2i**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

构造 **Rect2i**\ ，将 :ref:`position<class_Rect2i_property_position>` 设置为 (``x``, ``y``)，将 :ref:`size<class_Rect2i_property_size>` 设置为 (``width``, ``height``)。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

返回一个与该矩形等效的 **Rect2i**\ ，其宽度和高度被修改为非负值，其 :ref:`position<class_Rect2i_property_position>` 为该矩形的左上角。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(25, 25, -100, -50)
    var absolute = rect.abs() # 绝对值为 Rect2i(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2I(25, 25, -100, -50);
    var absolute = rect.Abs(); // 绝对值为 Rect2I(-75, -25, 100, 50)



\ **注意：**\ 当 :ref:`size<class_Rect2i_property_size>` 为负时，建议使用该方法，因为 Godot 中的大多数其他方法都假设 :ref:`position<class_Rect2i_property_position>` 是左上角，\ :ref:`end<class_Rect2i_property_end>` 是右下角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

如果该 **Rect2i** 完全包含另一个，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

返回该矩形的副本，如有必要，该矩形被扩展为将边缘与给定的 ``to`` 点对齐。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(0, 0, 5, 2)

    rect = rect.expand(Vector2i(10, 0)) # rect 为 Rect2i(0, 0, 10, 2)
    rect = rect.expand(Vector2i(-5, 5)) # rect 为 Rect2i(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2I(0, 0, 5, 2);

    rect = rect.Expand(new Vector2I(10, 0)); // rect 为 Rect2I(0, 0, 10, 2)
    rect = rect.Expand(new Vector2I(-5, 5)); // rect 为 Rect2I(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

返回该矩形的面积。这相当于 ``size.x * size.y``\ 。另见 :ref:`has_area()<class_Rect2i_method_has_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

返回该矩形的中心点。这与 ``position + (size / 2)`` 相同。

\ **注意：**\ 如果 :ref:`size<class_Rect2i_property_size>` 为奇数，则结果将向 :ref:`position<class_Rect2i_property_position>` 舍入。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

返回该矩形的副本，该矩形在所有边上扩展给定的 ``amount``\ 。负的 ``amount`` 会缩小该矩形。另见 :ref:`grow_individual()<class_Rect2i_method_grow_individual>` 和 :ref:`grow_side()<class_Rect2i_method_grow_side>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(4, 4, 8, 8).grow(4) # a 为 Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b 为 Rect2i(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2I(4, 4, 8, 8).Grow(4); // a 为 Rect2I(0, 0, 16, 16)
    var b = new Rect2I(0, 0, 8, 4).Grow(2); // b 为 Rect2I(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

返回该矩形的副本，其 ``left``\ 、\ ``top``\ 、\ ``right`` 和 ``bottom`` 边扩展了给定的量。相反，负值会缩小边。另见 :ref:`grow()<class_Rect2i_method_grow>` and :ref:`grow_side()<class_Rect2i_method_grow_side>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

返回该矩形的副本，其 ``side`` 按给定的 ``amount`` 扩展（请参阅 :ref:`Side<enum_@GlobalScope_Side>` 常量）。相反，负的 ``amount`` 会缩小该矩形。另见 :ref:`grow()<class_Rect2i_method_grow>` 和 :ref:`grow_individual()<class_Rect2i_method_grow_individual>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

如果该矩形具有正的宽度和高度，则返回 ``true``\ 。另见 :ref:`get_area()<class_Rect2i_method_get_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

如果该矩形包含给定的 ``point``\ ，则返回 ``true``\ 。依照惯例，\ **不**\ 包括右侧和底部边缘上的点。

\ **注意：**\ 对于\ *大小为负*\ 的 **Rect2i**\ ，该方法并不可靠。请首先使用 :ref:`abs()<class_Rect2i_method_abs>` 获取一个有效的矩形。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

返回该矩形与 ``b`` 之间的交集。如果矩形不相交，则返回空的 **Rect2i**\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(0, 0, 5, 10)
    var b = Rect2i(2, 0, 8, 4)

    var c = a.intersection(b) # c 为 Rect2i(2, 0, 3, 4)

 .. code-tab:: csharp

    var a = new Rect2I(0, 0, 5, 10);
    var b = new Rect2I(2, 0, 8, 4);

    var c = rect1.Intersection(rect2); // c 为 Rect2I(2, 0, 3, 4)



\ **注意：**\ 如果你只需要知道两个矩形是否重叠，请改用 :ref:`intersects()<class_Rect2i_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

如果该矩形与 ``b`` 矩形重叠，则返回 ``true``\ 。两个矩形的边缘均被排除。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

返回一个包含该矩形和边缘周围的 ``b`` 的 **Rect2i**\ 。另见 :ref:`encloses()<class_Rect2i_method_encloses>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

如果两个矩形的 :ref:`position<class_Rect2i_property_position>` 或 :ref:`size<class_Rect2i_property_size>` 不相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

如果该矩形的 :ref:`position<class_Rect2i_property_position>` 和 :ref:`size<class_Rect2i_property_size>` 分别相等，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
