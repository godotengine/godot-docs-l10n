:github_url: hide

.. _class_Rect2:

Rect2
=====

使用浮點數座標的 2D 軸對齊邊界框。

.. rst-class:: classref-introduction-group

說明
----

**Rect2**\ 內建\ :ref:`Variant<class_Variant>`\ 型別表示二維空間中的軸對齊矩形。它由其\ :ref:`position<class_Rect2_property_position>`\ 和\ :ref:`size<class_Rect2_property_size>`\ 定義，分別是\ :ref:`Vector2<class_Vector2>`\ 。常用於快速重疊測試（參見\ :ref:`intersects()<class_Rect2_method_intersects>`\ ）。雖然\ **Rect2**\ 本身是軸對齊的，但它可以與\ :ref:`Transform2D<class_Transform2D>`\ 組合來表示旋轉或傾斜的矩形。

對於整數座標，請使用 :ref:`Rect2i<class_Rect2i>`\ 。與 **Rect2** 等效的 3D 是 :ref:`AABB<class_AABB>`\ 。

\ **注意：** 不支援 :ref:`size<class_Rect2_property_size>` 的負值。對於負大小，大多數 **Rect2** 方法都無法正常運作。使用 :ref:`abs()<class_Rect2_method_abs>` 取得具有非負大小的等效 **Rect2**\ 。

\ **注意：** 在布林本文中，如果\ :ref:`position<class_Rect2_property_position>` 和\ :ref:`size<class_Rect2_property_size>` 均為零（等於\ :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ ），則\ **Rect2** 的計算結果為\ ``false`` ）。否則，它的計算結果始終為 ``true``\ 。

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

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

終點。通常為矩形的右下角，等價於 ``position + size``\ 。設定該點會影響 :ref:`size<class_Rect2_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

相機的位置是固定的，所以左上角總是在原點。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

矩形的寬度和高度，從 :ref:`position<class_Rect2_property_position>` 開始。設定此值也會影響 :ref:`end<class_Rect2_property_end>` 點。

\ **注意：**\ 建議將寬度和高度設為非負值，因為Godot中的大多數方法都假設\ :ref:`position<class_Rect2_property_position>`\ 是左上角，\ :ref:`end<class_Rect2_property_end>`\ 是底部-右上角。若要獲得非負大小的等效矩形，請使用\ :ref:`abs()<class_Rect2_method_abs>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

構造 **Rect2**\ ，將 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 設定為 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

建構給定 **Rect2** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

從 :ref:`Rect2i<class_Rect2i>` 建構 **Rect2**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

使用指定的 ``position`` 和 ``size`` 構造 **Rect2**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

透過將 :ref:`position<class_Rect2_property_position>` 設定為 (``x``, ``y``) 並將其 :ref:`size<class_Rect2_property_size>` 設定為 (``width``, ``height``) 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

傳回與此矩形等效的\ **Rect2**\ ，其寬度和高度修改為非負值，其\ :ref:`position<class_Rect2_property_position>`\ 為矩形的左上角。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var absolute = rect.abs() # absolute is Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var absolute = rect.Abs(); // absolute is Rect2(-75, -25, 100, 50)



\ **注意：**\ 當\ :ref:`size<class_Rect2_property_size>`\ 為負數時，建議使用此方法，因為Godot中的大多數其他方法都假設\ :ref:`position<class_Rect2_property_position>`\ 是左上角，\ :ref:`end<class_Rect2_property_end>`\ 是右下角。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

如果該矩形\ *完全*\ 包含 ``b`` 矩形，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

回傳該矩形的副本，如有必要，該矩形被擴充為將邊緣與給定的 ``to`` 點對齊。


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect 為 Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect 為 Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect 為 Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect 為 Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

返回該 **Rect2** 的面積。另請參閱 :ref:`has_area()<class_Rect2_method_has_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

返回該向量的逆向量。與 ``Vector3(1.0 / v.x, 1.0 / v.y, 1.0 / v.z)`` 相同。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

回傳給定方向上最遠的矩形框的頂點位置。該點在碰撞檢測算法中通常被稱為支撐點。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

傳回給定的\ ``amount`` 在所有邊上擴充的此矩形的副本。負的\ ``amount`` 會縮小矩形。另請參閱\ :ref:`grow_individual()<class_Rect2_method_grow_individual>` 和\ :ref:`grow_side()<class_Rect2_method_grow_side>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a is Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b is Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a is Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b is Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

傳回此矩形的副本，其 ``left``\ 、\ ``top``\ 、\ ``right`` 和 ``bottom`` 邊擴充了給定的量。負值會縮小另請參閱\ :ref:`grow()<class_Rect2_method_grow>` 和\ :ref:`grow_side()<class_Rect2_method_grow_side>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

傳回此矩形的副本，其 ``side`` 按給定的 ``amount`` 擴充（請參閱 :ref:`Side<enum_@GlobalScope_Side>` 常數）。負數 ``amount`` 會縮小矩形，相反。另請參見 :ref:`grow()<class_Rect2_method_grow>` 和 :ref:`grow_individual()<class_Rect2_method_grow_individual>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

如果該矩形具有正的寬度和高度，則回傳 ``true``\ 。另見 :ref:`get_area()<class_Rect2_method_get_area>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

若矩形包含指定的 ``point``\ ，則回傳 ``true``\ 。依照慣例，右邊界與下邊界上的點\ **不**\ 包含在內。

\ **注意：**\ 若 **Rect2** 的 :ref:`size<class_Rect2_property_size>` 為\ *負值*\ ，此方法的結果不可靠。請先使用 :ref:`abs()<class_Rect2_method_abs>` 取得有效的矩形。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

傳回此矩形與 ``b`` 之間的交集。如果矩形不相交，則傳回空的 **Rect2**\ 。


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) # a is Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = new Rect2(0, 0, 5, 10);
    var rect2 = new Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // a is Rect2(2, 0, 3, 4)



\ **注意：**\ 如果您只需要知道兩個矩形是否重疊，請改用\ :ref:`intersects()<class_Rect2_method_intersects>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

如果該矩形與 ``b`` 矩形重疊，則回傳 ``true``\ 。除非 ``include_borders`` 為 ``true``\ ，否則兩個矩形的邊緣均被排除。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

如果該矩形和 ``rect`` 近似相等，判斷方法是通過在 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 上呼叫 :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>`\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

如果該矩形是有限的，則回傳 ``true``\ ，判斷方法是對 :ref:`position<class_Rect2_property_position>` 和 :ref:`size<class_Rect2_property_size>` 呼叫 :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

傳回包圍此矩形和邊緣周圍的 ``b`` 的 **Rect2**\ 。另請參閱 :ref:`encloses()<class_Rect2_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

如果兩個矩形的 :ref:`position<class_Rect2_property_position>` 不相等或 :ref:`size<class_Rect2_property_size>` 不相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點數精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`\ ，會更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

假設該變換的基是正交的（即旋轉/反射可以，縮放/傾斜則不然），將 **Rect2** 逆向變換（乘以）給定的 :ref:`Transform2D<class_Transform2D>` 變換矩陣。

\ ``rect * transform`` 相當於 ``transform.inverse() * rect``\ 。請參閱 :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`\ 。

對於通過仿射變換的逆變換（例如，通過縮放）進行變換，可以使用 ``transform.affine_inverse() * rect`` 來代替。請參閱 :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

如果兩個矩形的 :ref:`position<class_Rect2_property_position>` 完全相等且 :ref:`size<class_Rect2_property_size>` 完全相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點數精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`\ ，會更可靠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
