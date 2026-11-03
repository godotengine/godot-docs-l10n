:github_url: hide

.. _class_Transform2D:

Transform2D
===========

代表 2D 變換的 2×3 矩陣。

.. rst-class:: classref-introduction-group

說明
----

內建的 **Transform2D** :ref:`Variant<class_Variant>` 型別是一個 2×3 的 `矩陣 <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__\ ，用於表示 2D 空間中的變換。它包含了三個 :ref:`Vector2<class_Vector2>` 型別的值：\ :ref:`x<class_Transform2D_property_x>`\ 、\ :ref:`y<class_Transform2D_property_y>` 和 :ref:`origin<class_Transform2D_property_origin>`\ 。通過這些值，可以共同表示平移、旋轉、縮放以及錯切（skew）。

其中，\ :ref:`x<class_Transform2D_property_x>` 和 :ref:`y<class_Transform2D_property_y>` 軸構成了一個 2×2 的矩陣，這被稱為變換的 **基（basis）**\ 。每個軸的長度（\ :ref:`Vector2.length()<class_Vector2_method_length>`\ ）會影響變換的縮放比例，而所有軸的方向則決定了旋轉的角度。通常情況下，這兩個軸是相互垂直的。但如果你單獨旋轉其中一個軸，變換就會產生錯切效果。對一個 2D 精靈（sprite）應用帶有錯切的變換，會讓精靈看起來發生扭曲變形。

關於這方面的通用介紹，可以參閱 :doc:`矩陣與變換（Matrices and transforms） <../tutorials/math/matrices_and_transforms>` 教學。

\ **注意：** 與 :ref:`Transform3D<class_Transform3D>` 不同，這裡並沒有一個與 :ref:`Basis<class_Basis>` 型別完全對應的獨立 2D 型別。所有提到的“基（basis）”，指的都是 **Transform2D** 里的 :ref:`x<class_Transform2D_property_x>` 和 :ref:`y<class_Transform2D_property_y>` 這兩個分量。

\ **注意：** 在布林值（boolean）情境中，如果 Transform2D 等於 :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`\ （單位矩陣），它的求值結果會是 ``false``\ ；除此之外，Transform2D 的求值結果永遠都是 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

- :doc:`矩陣與變換 <../tutorials/math/matrices_and_transforms>`

- `矩陣變換示範 <https://godotengine.org/asset-library/asset/2787>`__

- `2.5D 遊戲示範 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

單位 **Transform2D**\ 。這是一個沒有平移和旋轉的變換，縮放為 :ref:`Vector2.ONE<class_Vector2_constant_ONE>`\ 。這意味著：

- :ref:`x<class_Transform2D_property_x>` 指向右側（\ :ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`\ ）；

- :ref:`y<class_Transform2D_property_y>` 指向下方（\ :ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`\ ）。

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # 輸出：
    # | X | Y | Origin
    # | 1 | 0 | 0
    # | 0 | 1 | 0

如果使用該常數變換（相乘）\ :ref:`Vector2<class_Vector2>`\ 、\ :ref:`Rect2<class_Rect2>`\ 、\ :ref:`PackedVector2Array<class_PackedVector2Array>` 或其他 **Transform2D**\ ，則不會發生變換。

\ **注意：**\ 在 GDScript 中，該常數與不帶任何參數建立 :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` 相同。使用該常數可以讓你的程式碼更清晰，並與 C# 保持一致。

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

當任意變換被 :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` 相乘時，它會取負 :ref:`x<class_Transform2D_property_x>` 軸（X 列）的所有分量。

當 :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` 被任意變換相乘時，它會取負所有軸（X 行）的 :ref:`Vector2.x<class_Vector2_property_x>` 分量。

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

當任意變換被 :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` 相乘時，它會取負 :ref:`y<class_Transform2D_property_y>` 軸（Y 列）的所有分量。

當 :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` 被任意變換相乘時，它會取負所有軸（Y 行）的 :ref:`Vector2.y<class_Vector2_property_y>` 分量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

該變換的平移偏移量，即矩陣的第 ``2`` 列。在 2D 空間中可以看作是位置。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

該變換基的 X 軸，以及矩陣的 ``0`` 列。與 :ref:`y<class_Transform2D_property_y>` 組合，這表示該變換的旋轉、縮放和傾斜。

在恆等變換中，該向量指向右側（\ :ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

該變換基的 Y 軸，以及矩陣的 ``1`` 列。與 :ref:`x<class_Transform2D_property_x>` 組合，這表示變換的旋轉、縮放和傾斜。

在恆等變換中，該向量指向下方（\ :ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

構造與 :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>` 相同的 **Transform2D**\ 。

\ **注意：**\ 在 C# 中構造的 **Transform2D** 的所有分量都為 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

建構給定 **Transform2D** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

根據給定的旋轉角（單位為弧度）和位置構造 **Transform2D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

根據給定的旋轉角（單位為弧度）、縮放、偏斜（單位為弧度）和位置構造 **Transform2D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

根據表示 :ref:`x<class_Transform2D_property_x>`\ 、\ :ref:`y<class_Transform2D_property_y>`\ 、\ :ref:`origin<class_Transform2D_property_origin>` 的 3 個 :ref:`Vector2<class_Vector2>`\ （三個矩陣列向量）建置 **Transform2D**\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

回傳該變換的逆版本。與 :ref:`inverse()<class_Transform2D_method_inverse>` 不同，該方法適用於幾乎任何基，包括非均勻基，但速度較慢。

\ **注意：**\ 要使該方法正確回傳，該變換的基需要有一個不完全是 ``0.0`` 的行列式（見 :ref:`determinant()<class_Transform2D_method_determinant>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

回傳 ``v`` 向量的副本，由該變換基的矩陣變換（乘以）得到。與乘法運算符 （\ ``*``\ ）不同，該方法忽略 :ref:`origin<class_Transform2D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

回傳 ``v`` 向量的副本，由逆變換基矩陣（參閱 :ref:`inverse()<class_Transform2D_method_inverse>`\ ）變換（乘以）得到。該方法忽略 :ref:`origin<class_Transform2D_property_origin>`\ 。

\ **注意：**\ 該方法假定該變換的基是\ *正交正規化化的*\ （參見 :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`\ ）。如果基不是正交正規化化的，則應改用 ``transform.affine_inverse().basis_xform(vector)``\ （參閱 :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

回傳該變換基矩陣的\ `行列式 <https://zh.wikipedia.org/wiki/%E8%A1%8C%E5%88%97%E5%BC%8F>`__\ 。在高等數學中，這個數可以用來確定一些性質：

- 如果行列式為 ``0.0``\ ，則基不可逆（見 :ref:`inverse()<class_Transform2D_method_inverse>`\ ）。

- 如果行列式為負數，則基表示負縮放。

\ **注意：**\ 如果基的每個軸縮放都相同，那麼這個行列式始終為 2 的該縮放次冪。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

回傳該變換的平移。相當於 :ref:`origin<class_Transform2D_property_origin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

回傳該變換的旋轉（單位為弧度）。等價於 :ref:`x<class_Transform2D_property_x>` 的旋轉角（見 :ref:`Vector2.angle()<class_Vector2_method_angle>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

以 :ref:`Vector2<class_Vector2>` 的形式同時回傳 :ref:`x<class_Transform2D_property_x>` 和 :ref:`y<class_Transform2D_property_y>` 的長度。如果該變換的基不存在剪切，這個值就是縮放係數。它不受旋轉的影響。


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # 以任何方式旋轉 Transform2D 都會保持其縮放。
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # 輸出 (2.0, 4.0)

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // R以任何方式旋轉 Transform2D 都會保持其縮放。
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // 輸出 (2, 4)



\ **注意：**\ 如果 :ref:`determinant()<class_Transform2D_method_determinant>` 回傳的值為負數，則縮放也為負數。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

回傳該變換的偏斜（單位為弧度）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

回傳將該變換和 ``xform`` 按照給定的權重 ``weight`` 進行線性插值結果。

\ ``weight`` 應該在 ``0.0`` 到 ``1.0``\ （閉區間）的範圍內。允許使用超出這個範圍的值，表示進行\ *外插*\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

回傳\ `該變換的逆版本 <https://en.wikipedia.org/wiki/Invertible_matrix>`__\ 。

\ **注意：**\ 為了使該方法正確回傳，該變換的基需要是\ *正交正規化化的*\ （見 :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`\ ）。這意味著該基應該只代表旋轉。如果不是，請改用 :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

如果該變換的基是共形的，則回傳 ``true``\ 。共形的基既是\ *正交的*\ （軸彼此垂直）又是\ *均勻的*\ （軸共享相同長度）。該方法在物理計算過程中特別有用。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

如果通過在每個分量上執行 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ ，該變換和 ``xform`` 近似相等，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

如果該變換是有限的，則返回 ``true``\ ，判斷方法是在每個分量上呼叫 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

回傳該變換旋轉後的一個副本，使得旋轉後的 X 軸指向全域空間中的 ``target`` 位置。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

回傳該變換的副本，其基已正交正規化化。正交正規化化的基既是\ *正交的*\ （軸彼此垂直）又是\ *正規化的*\ （軸長度為 ``1.0``\ ），這也意味著它只能代表旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

回傳該變換的副本，該副本進行了夾角為 ``angle`` 的旋轉操作（單位為弧度）。

如果 ``angle`` 為負數，則變換執行順時針旋轉。

這個方法的結果和讓 ``X`` 變換與相應的旋轉變換 ``R`` 從左側相乘一致，即 ``R * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

返回該變換的副本，該副本進行了夾角為 ``angle`` 的旋轉操作（單位為弧度）。

這個方法的結果和讓 ``X`` 變換與相應的旋轉變換 ``R`` 從右側相乘一致，即 ``X * R``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

返回該變換的副本，該副本進行了係數為 ``scale`` 的縮放操作。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從左側相乘一致，即 ``S * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

返回該變換的副本，該副本進行了係數為 ``scale`` 的縮放操作。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從右側相乘一致，即 ``X * S``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

返回該變換的副本，該副本進行了偏移量為 ``offset`` 的平移操作。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從左側相乘一致，即 ``T * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

返回該變換的副本，該副本進行了偏移量為 ``offset`` 的平移操作。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從右側相乘一致，即 ``X * T``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

如果兩個變換的分量不相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`\ ，這樣更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

由該變換矩陣變換（乘以）給定 :ref:`PackedVector2Array<class_PackedVector2Array>` 的每個 :ref:`Vector2<class_Vector2>` 元素。

在較大的陣列上，該操作比單獨變換每個 :ref:`Vector2<class_Vector2>` 要快得多。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

使用該變換矩陣對 :ref:`Rect2<class_Rect2>` 進行變換（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

由 ``right`` 變換來變換（乘以）該變換。

這是父級和子級 :ref:`CanvasItem<class_CanvasItem>` 之間執行的操作。

\ **注意：**\ 如果你只需要修改該變換的一個屬性，請考慮改用以下方法之一：

- 對於平移，請參閱 :ref:`translated()<class_Transform2D_method_translated>` 或 :ref:`translated_local()<class_Transform2D_method_translated_local>`\ 。

- 對於旋轉，請參閱 :ref:`rotated()<class_Transform2D_method_rotated>` 或 :ref:`rotated_local()<class_Transform2D_method_rotated_local>`\ 。

- 對於縮放，請參閱 :ref:`scaled()<class_Transform2D_method_scaled>` 或 :ref:`scaled_local()<class_Transform2D_method_scaled_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

使用該變換矩陣對 :ref:`Vector2<class_Vector2>` 進行變換（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

將 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在內的所有分量乘以給定的 :ref:`float<class_float>`\ 。會均勻地影響該變換的縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

將 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在內的所有分量乘以給定的 :ref:`int<class_int>`\ 。會均勻地影響該變換的縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

將 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在內的所有分量除以給定的 :ref:`float<class_float>`\ 。會均勻地影響該變換的縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

將 **Transform2D** 包括 :ref:`origin<class_Transform2D_property_origin>` 在內的所有分量除以給定的 :ref:`int<class_int>`\ 。會均勻地影響該變換的縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

如果兩個變換的分量完全相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>`\ ，這樣更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

通過索引存取該變換的軸（列）。索引 ``0`` 與 :ref:`x<class_Transform2D_property_x>` 相同，索引 ``1`` 與 :ref:`y<class_Transform2D_property_y>` 相同，索引 ``2`` 與 :ref:`origin<class_Transform2D_property_origin>` 相同。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
