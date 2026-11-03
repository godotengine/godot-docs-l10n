:github_url: hide

.. _class_Transform3D:

Transform3D
===========

代表 3D 變換的 3×4 矩陣。

.. rst-class:: classref-introduction-group

說明
----

內建的 **Transform3D** :ref:`Variant<class_Variant>` 型別是一個 3×4 的矩陣，用於表示 3D 空間中的變換。它包含一個 :ref:`Basis<class_Basis>`\ （基），該基本身就可以表示旋轉、縮放和錯切。此外，結合其自身的 :ref:`origin<class_Transform3D_property_origin>`\ （原點）屬性，這個變換還可以表示平移。

關於這方面的通用介紹，可以參閱 :doc:`矩陣與變換（Matrices and transforms） <../tutorials/math/matrices_and_transforms>` 教學。

\ **注意：** Godot 使用的是 `右手座標系 <https://en.wikipedia.org/wiki/Right-hand_rule>`__\ ，這是一個通用的標準。在方向上，像 :ref:`Camera3D<class_Camera3D>` 這類內建型別的慣例是：-Z 軸朝前（+X 是右，+Y 是上，+Z 是後）。其他物體可能會使用不同的方向約定。想瞭解更多資訊，可以參閱 `3D 資源方向約定 <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ 教學。

\ **注意：** 在布林值（boolean）情境中，如果 Transform3D 等於 :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`\ （單位矩陣），它的求值結果會是 ``false``\ ；除此之外，Transform3D 的求值結果永遠都是 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

- :doc:`矩陣與變換 <../tutorials/math/matrices_and_transforms>`

- :doc:`使用 3D 變換 <../tutorials/3d/using_transforms>`

- `矩陣變換示範 <https://godotengine.org/asset-library/asset/2787>`__

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

- `2.5D 遊戲示範 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ )                                                                                                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`affine_inverse<class_Transform3D_method_affine_inverse>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`interpolate_with<class_Transform3D_method_interpolate_with>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const|                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`inverse<class_Transform3D_method_inverse>`\ (\ ) |const|                                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const|                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform3D_method_is_finite>`\ (\ ) |const|                                                                                                                                                     |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`looking_at<class_Transform3D_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated<class_Transform3D_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled<class_Transform3D_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                        |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated<class_Transform3D_method_translated>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated_local<class_Transform3D_method_translated_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                               |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform3D_operator_neq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`operator *<class_Transform3D_operator_mul_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_Transform3D_operator_mul_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`operator *<class_Transform3D_operator_mul_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator *<class_Transform3D_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform3D_operator_eq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

單位 **Transform3D**\ 。這是一個沒有平移和旋轉的變換，縮放為 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ 。\ :ref:`basis<class_Transform3D_property_basis>` 等於 :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`\ 。這意味著：

- :ref:`Basis.x<class_Basis_property_x>` 指向右側（\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ ）；

- :ref:`Basis.y<class_Basis_property_y>` 指向上方（\ :ref:`Vector3.UP<class_Vector3_constant_UP>`\ ）；

- :ref:`Basis.z<class_Basis_property_z>` 指向後方（\ :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | 原點")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # 輸出：
    # | X | Y | Z | 原點
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

如果使用該常數變換（相乘）\ :ref:`Vector3<class_Vector3>`\ 、\ :ref:`AABB<class_AABB>`\ 、\ :ref:`Plane<class_Plane>`\ 、\ :ref:`PackedVector3Array<class_PackedVector3Array>` 或其他 **Transform3D**\ ，則不會發生變換。

\ **注意：**\ 在 GDScript 中，該常數與不帶任何參數建立 :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` 相同。使用該常數可以讓你的程式碼更清晰，並與 C# 保持一致。

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

應用了垂直於 YZ 平面鏡像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相當於 :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`\ 。

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

應用了垂直於 XZ 平面鏡像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相當於 :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`\ 。

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

應用了垂直於 XY 平面鏡像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相當於 :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

該變換的 :ref:`Basis<class_Basis>`\ 。它由 3 個軸（\ :ref:`Basis.x<class_Basis_property_x>`\ 、\ :ref:`Basis.y<class_Basis_property_y>` 和 :ref:`Basis.z<class_Basis_property_z>`\ ）組成。它們共同代表變換的旋轉、縮放和傾斜。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

該變換的平移偏移量。在 3D 空間中，這可以被看作是位置。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

構造與 :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>` 相同的 **Transform3D**\ 。

\ **注意：**\ 在 C# 中構造的 **Transform3D** 的 :ref:`origin<class_Transform3D_property_origin>` 和 :ref:`basis<class_Transform3D_property_basis>` 的所有分量都為 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

建構給定 **Transform3D** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

根據 :ref:`Basis<class_Basis>` 和 :ref:`Vector3<class_Vector3>` 構造 **Transform3D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

根據 :ref:`Projection<class_Projection>` 構造 **Transform3D**\ 。因為 **Transform3D** 是 3×4 的矩陣，而 :ref:`Projection<class_Projection>` 是 4×4 的矩陣，所以這個操作會削去投影矩陣的最後一行（新的變換中不包含 ``from.x.w``\ 、\ ``from.y.w``\ 、\ ``from.z.w``\ 、\ ``from.w.w``\ ）。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

根據四個 :ref:`Vector3<class_Vector3>` 值（也叫矩陣列）構造 **Transform3D**\ 。

前三個參數是 :ref:`basis<class_Transform3D_property_basis>` 的三個軸（\ :ref:`Basis.x<class_Basis_property_x>`\ 、\ :ref:`Basis.y<class_Basis_property_y>`\ 、\ :ref:`Basis.z<class_Basis_property_z>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

回傳該變換的逆版本。與 :ref:`inverse()<class_Transform3D_method_inverse>` 不同，則該方法幾乎適用於任何 :ref:`basis<class_Transform3D_property_basis>`\ ，包括非均勻的，但速度較慢。另見 :ref:`Basis.inverse()<class_Basis_method_inverse>`\ 。

\ **注意：**\ 為了使該方法正確回傳，該變換的 :ref:`basis<class_Transform3D_property_basis>` 需要具有一個不完全是 ``0.0`` 的行列式（見 :ref:`Basis.determinant()<class_Basis_method_determinant>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

回傳將該變換和 ``xform`` 按照給定的權重 ``weight`` 進行線性插值結果。

\ ``weight`` 應該在 ``0.0`` 到 ``1.0``\ （閉區間）的範圍內。允許使用超出這個範圍的值，表示進行\ *外插*\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

回傳\ `該變換的逆版本 <https://zh.wikipedia.org/zh-hans/%E9%9D%9E%E5%A5%87%E5%BC%82%E6%96%B9%E9%98%B5>`__\ 。另見 :ref:`Basis.inverse()<class_Basis_method_inverse>`\ 。

\ **注意：**\ 為了使該方法正確回傳，此變換的 :ref:`basis<class_Transform3D_property_basis>` 必須是\ *正交正規化的*\ （見 :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`\ ）。這意味著該基應該只代表旋轉。如果不是，請改用 :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

如果通過在每個分量上執行 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ ，該變換和 ``xform`` 近似相等，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

如果該變換是有限的，則返回 ``true``\ ，判斷方法是在每個分量上呼叫 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

回傳該變換的旋轉副本，以便向前軸（-Z）指向 ``target`` 的位置。

向上的軸（+Y）在保持與向前的軸垂直的前提下，盡可能接近 ``up`` 向量。最終的變換是標準正交變換。變換中原有的旋轉、縮放、偏斜資訊會被丟棄。\ ``target`` 和 ``up`` 向量不能為零，不能互相平行，使用全域/父級空間。

如果 ``use_model_front`` 為 ``true``\ ，則會將 +Z 軸（素材正面）作為向前的軸（此時 +X 為左），指向 ``target`` 的位置。預設情況下會將 -Z 軸（相機前方）作為向前的軸（此時 +X 為右）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

回傳該變換的副本，其 :ref:`basis<class_Transform3D_property_basis>` 已正交正規化化。正交正規化化的基既是\ *正交的*\ （軸彼此垂直）又是\ *正規化的*\ （軸長度為 ``1.0``\ ），這也意味著它只能代表旋轉。另見 :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

回傳該變換圍繞給定 ``axis`` 旋轉給定 ``angle``\ （單位為弧度）的副本。

\ ``axis`` 必須為正規化的向量（見 :ref:`Vector3.normalized()<class_Vector3_method_normalized>`\ ）。如果 ``angle`` 為正數，則基會圍繞軸進行逆時針旋轉。

這個方法的結果和讓 ``X`` 變換與相應的旋轉變換 ``R`` 從左側相乘一致，即 ``R * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

回傳該變換圍繞給定 ``axis`` 旋轉給定 ``angle``\ （單位為弧度）的副本。

\ ``axis`` 必須為正規化的向量，使用變換的區域座標系。例如，要圍繞區域 X 軸旋轉請使用 :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ 。

這個方法的結果和讓 ``X`` 變換與相應的旋轉變換 ``R`` 從右側相乘一致，即 ``R * X``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

回傳該變換按給定的 ``scale`` 係數縮放的副本。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從左側相乘一致，即 ``S * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

回傳該變換按給定的 ``scale`` 係數縮放的副本。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從右側相乘一致，即 ``X * S``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

回傳該變換平移了給定 ``offset`` 的副本。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從左側相乘一致，即 ``T * X``\ ，但進行了最佳化。

可以視作在全域/父級座標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

回傳該變化平移了給定 ``offset`` 的副本。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從右側相乘一致，即 ``X * T``\ ，但進行了最佳化。

可以視作在區域座標系中的變換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

如果兩個變換的分量不相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>`\ ，這樣更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

使用該變換矩陣對 :ref:`AABB<class_AABB>` 進行變換（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

由該變換矩陣變換（乘以）給定 :ref:`PackedVector3Array<class_PackedVector3Array>` 的每個 :ref:`Vector3<class_Vector3>` 元素。

在較大的陣列上，該操作比單獨變換每個 :ref:`Vector3<class_Vector3>` 要快得多。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

使用該變換矩陣對 :ref:`Plane<class_Plane>` 進行變換（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

由 ``right`` 變換來變換（乘以）該變換。

這是父級和子級 :ref:`Node3D<class_Node3D>` 之間執行的操作。

\ **注意：**\ 如果你只需要修改該變換的一個屬性，請考慮改用以下方法之一：

- 對於平移，請參閱 :ref:`translated()<class_Transform3D_method_translated>` 或 :ref:`translated_local()<class_Transform3D_method_translated_local>`\ 。

- 對於旋轉，請參閱 :ref:`rotated()<class_Transform3D_method_rotated>` 或 :ref:`rotated_local()<class_Transform3D_method_rotated_local>`\ 。

- 對於縮放，請參閱 :ref:`scaled()<class_Transform3D_method_scaled>` 或 :ref:`scaled_local()<class_Transform3D_method_scaled_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

使用該變換矩陣對 :ref:`Vector3<class_Vector3>` 進行變換（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

將 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在內的所有分量乘以給定的 :ref:`float<class_float>`\ 。會均勻地影響該變換的縮放，對 :ref:`basis<class_Transform3D_property_basis>` 進行縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

將 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在內的所有分量乘以給定的 :ref:`int<class_int>`\ 。會均勻地影響該變換的縮放，對 :ref:`basis<class_Transform3D_property_basis>` 進行縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

將 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在內的所有分量除以給定的 :ref:`float<class_float>`\ 。會均勻地影響該變換的縮放，對 :ref:`basis<class_Transform3D_property_basis>` 進行縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

將 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在內的所有分量除以給定的 :ref:`int<class_int>`\ 。會均勻地影響該變換的縮放，對 :ref:`basis<class_Transform3D_property_basis>` 進行縮放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

如果兩個變換的分量完全相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>`\ ，這樣更可靠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
