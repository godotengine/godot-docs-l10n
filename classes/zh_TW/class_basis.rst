:github_url: hide

.. _class_Basis:

Basis
=====

用於表示 3D 旋轉與縮放的 3×3 矩陣。

.. rst-class:: classref-introduction-group

說明
----

**Basis** 內建 :ref:`Variant<class_Variant>` 型別是一個 3×3 `矩陣 <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__\ ，用來表示 3D 旋轉、縮放與剪切。它通常用於 :ref:`Transform3D<class_Transform3D>` 中。

\ **Basis** 由 3 個軸向量組成，每個向量代表矩陣的一個直行（column）：\ :ref:`x<class_Basis_property_x>`\ 、\ :ref:`y<class_Basis_property_y>` 和 :ref:`z<class_Basis_property_z>`\ 。每個軸的長度（\ :ref:`Vector3.length()<class_Vector3_method_length>`\ ）會影響基底的縮放，所有軸的方向則共同決定旋轉。這些軸通常彼此垂直；若單獨旋轉其中一個軸，基底就會產生剪切。將具有剪切效果的基底套用至 3D 模型，會使模型變形。

\ **Basis** 可以具有下列性質：

- **正交**\ ：各軸彼此垂直。

- **正規化**\ ：每個軸的長度皆為 ``1.0``\ 。

- **等比例**\ ：所有軸的長度相同（參閱 :ref:`get_scale()<class_Basis_method_get_scale>`\ ）。

- **正交正規化**\ ：同時滿足正交與正規化，因此只能表示旋轉（參閱 :ref:`orthonormalized()<class_Basis_method_orthonormalized>`\ ）。

- **共形**\ ：同時滿足正交與等比例，確保不會造成扭曲。

基本介紹請參閱 :doc:`矩陣與變換 <../tutorials/math/matrices_and_transforms>`\ 教學。

\ **注意：**\ Godot 使用\ `右手座標系 <https://en.wikipedia.org/wiki/Right-hand_rule>`__\ ，這是常見的標準。\ :ref:`Camera3D<class_Camera3D>` 等內建型別採用的方向慣例是 -Z 軸朝前、+X 軸朝右、+Y 軸朝上、+Z 軸朝後。其他物件可能採用不同的方向慣例。詳情請參閱 `3D 素材方向慣例 <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__\ 教學。

\ **注意：**\ 基底矩陣對外以\ `直行優先（column-major） <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__\ 的順序公開，與 OpenGL 相同；但內部儲存方式是橫列優先（row-major），與 DirectX 相同。

\ **注意：**\ 在布林運算情境中，等於 :ref:`IDENTITY<class_Basis_constant_IDENTITY>` 的基底會被視為 ``false``\ ；否則一律視為 ``true``\ 。

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

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

- `2.5D 遊戲示範 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthonormal<class_Basis_method_is_orthonormal>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

單位 **Basis**\ 。此基底為正交正規，無旋轉、無斜切，縮放為 :ref:`Vector3.ONE<class_Vector3_constant_ONE>`\ 。因此：

- :ref:`x<class_Basis_property_x>` 向右（\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ ）。

- :ref:`y<class_Basis_property_y>` 向上（\ :ref:`Vector3.UP<class_Vector3_constant_UP>`\ ）。

- :ref:`z<class_Basis_property_z>` 向後（\ :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。

::

    var basis = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
    # 印出：
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

若將任何 :ref:`Vector3<class_Vector3>` 或 **Basis** 與此常數相乘，結果不會產生任何變換。

\ **注意：** 在 GDScript 中，此常數等同於不帶參數建構 :ref:`Basis<class_Basis_constructor_Basis>`\ ，可使程式碼更易讀，並與 C# 行為一致。

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

任意基底右乘 :ref:`FLIP_X<class_Basis_constant_FLIP_X>` 時，會反轉 :ref:`x<class_Basis_property_x>` 軸（X 欄）的所有分量。

\ :ref:`FLIP_X<class_Basis_constant_FLIP_X>` 左乘任意基底時，會反轉所有軸的 :ref:`Vector3.x<class_Vector3_property_x>` 分量（X 列）。

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

任意基底右乘 :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` 時，會反轉 :ref:`y<class_Basis_property_y>` 軸（Y 欄）的所有分量。

\ :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` 左乘任意基底時，會反轉所有軸的 :ref:`Vector3.y<class_Vector3_property_y>` 分量（Y 列）。

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

任意基底右乘 :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` 時，會反轉 :ref:`z<class_Basis_property_z>` 軸（Z 欄）的所有分量。

\ :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` 左乘任意基底時，會反轉所有軸的 :ref:`Vector3.z<class_Vector3_property_z>` 分量（Z 列）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

基底的 X 軸暨矩陣第 ``0`` 欄。

在單位基底中，此向量指向右方（\ :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

基底的 Y 軸暨矩陣第 ``1`` 欄。

在單位基底中，此向量指向上方（\ :ref:`Vector3.UP<class_Vector3_constant_UP>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

基底的 Z 軸暨矩陣第 ``2`` 欄。

在單位基底中，此向量指向後方（\ :ref:`Vector3.BACK<class_Vector3_constant_BACK>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

建構一個與 :ref:`IDENTITY<class_Basis_constant_IDENTITY>` 完全相同的 **Basis**\ 。

\ **注意：** 在 C# 中，這會建構一個所有分量皆為 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>` 的 **Basis**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

建構指定 **Basis** 的複本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

構造僅表示旋轉的 **Basis**\ ，給定的 ``angle`` 以弧度為單位，表示圍繞 ``axis`` 軸的旋轉量。這個軸必須是正規化的向量。

\ **注意：**\ 與對 :ref:`IDENTITY<class_Basis_constant_IDENTITY>` 基使用 :ref:`rotated()<class_Basis_method_rotated>` 一致。多角度旋轉請改用 :ref:`from_euler()<class_Basis_method_from_euler>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

根據指定的 :ref:`Quaternion<class_Quaternion>` 建構一個僅表示旋轉的 **Basis**\ 。

\ **注意：** 四元數 *只* 儲存旋轉資訊，不含縮放，因此由 **Basis** 轉換為 :ref:`Quaternion<class_Quaternion>` 後不一定能完整還原。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

使用三個軸向量建構 **Basis**\ ；這三個向量即為矩陣的三個欄。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

回傳基矩陣的 `determinant <https://en.wikipedia.org/wiki/Determinant>`__ 。在高等數學中，這個數可以用來確定一些性質：

- 如果行列式為 ``0.0``\ ，則基不可逆（見 :ref:`inverse()<class_Basis_method_inverse>`\ ）。

- 如果行列式為負數，則基表示負縮放。

\ **注意：**\ 如果基的每個軸縮放都相同，那麼這個行列式始終為 3 的該縮放次冪。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

根據給定的 :ref:`Vector3<class_Vector3>` 構造 **Basis**\ ，這個向量為 `歐拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，單位為弧度。

- :ref:`Vector3.x<class_Vector3_property_x>` 應包含圍繞 :ref:`x<class_Basis_property_x>` 軸的角度（俯仰）；

- :ref:`Vector3.y<class_Vector3_property_y>` 應包含圍繞 :ref:`y<class_Basis_property_y>` 軸的角度（偏擺）；

- :ref:`Vector3.z<class_Vector3_property_z>` 應包含圍繞 :ref:`z<class_Basis_property_z>` 軸的角度（翻滾）。


.. tabs::

 .. code-tab:: gdscript

    # 建立 Z 軸向下的 Basis。
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # 輸出 (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // 建立 Z 軸向下的 Basis。
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // 輸出 (0.0, -1.0, 0.0)



連續旋轉的順序可以通過 ``order`` 修改（見 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常數）。在 Godot 中，歐拉角總是採用內旋順序。預設使用內旋 YXZ 約定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）：基首先圍繞區域 Y 軸旋轉（偏擺），然後圍繞區域 X 軸旋轉（俯仰），最後圍繞區域 Z 軸旋轉（翻滾）。當使用相對的方法 :ref:`get_euler()<class_Basis_method_get_euler>` 來分解旋轉時，這個順序是反轉的。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

以指定的 ``scale`` 向量建立新的 **Basis**\ ，僅含縮放，不含旋轉與斜切。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))
    print(my_basis.x) # 印出 (2.0, 0.0, 0.0)
    print(my_basis.y) # 印出 (0.0, 4.0, 0.0)
    print(my_basis.z) # 印出 (0.0, 0.0, 8.0)

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));
    GD.Print(myBasis.X); // 印出 (2, 0, 0)
    GD.Print(myBasis.Y); // 印出 (0, 4, 0)
    GD.Print(myBasis.Z); // 印出 (0, 0, 8)



\ **注意：** 線性代數中，該矩陣亦稱為\ `對角矩陣 <https://en.wikipedia.org/wiki/Diagonal_matrix>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

以 :ref:`Vector3<class_Vector3>` 的形式回傳基的旋轉向量，這個向量為 `歐拉角 <https://zh.wikipedia.org/zh-cn/%E6%AC%A7%E6%8B%89%E8%A7%92>`__\ ，單位為弧度。回傳值中：

- :ref:`Vector3.x<class_Vector3_property_x>` 包含圍繞 :ref:`x<class_Basis_property_x>` 軸的角度（俯仰）。

- :ref:`Vector3.y<class_Vector3_property_y>` 包含圍繞 :ref:`y<class_Basis_property_y>` 軸的角度（偏擺）。

- :ref:`Vector3.z<class_Vector3_property_z>` 包含圍繞 :ref:`z<class_Basis_property_z>` 軸的角度（翻滾）。

連續旋轉的順序可以通過 ``order`` 修改（見 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常數）。在 Godot 中，歐拉角總是採用內旋順序。預設使用內旋 YXZ 約定（\ :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）：由於正在進行分解操作，首先計算圍繞區域 Z 軸的旋轉（翻滾），然後計算圍繞區域 X 軸的旋轉（俯仰），最後計算圍繞區域 Y 軸旋轉（偏擺）。當使用相對的方法 :ref:`from_euler()<class_Basis_method_from_euler>` 來構成旋轉時，順序會反轉。

\ **注意：**\ 該方法只對\ *標準正交基*\ 回傳正確的值（見 :ref:`orthonormalized()<class_Basis_method_orthonormalized>`\ ）。

\ **注意：**\ 歐拉角更符合直覺，但是並不適合 3D 數學。因此請考慮改用回傳 :ref:`Quaternion<class_Quaternion>` 的 :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`\ 。

\ **注意：**\ 在屬性檢視器面板中，基的旋轉通常是以歐拉角的形式顯示的（單位為度），與 :ref:`Node3D.rotation<class_Node3D_property_rotation>` 屬性相同。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

以 :ref:`Quaternion<class_Quaternion>` 形式回傳此基底的旋轉。

\ **注意：** 四元數較適用於 3D 計算，但不直觀；若用於 UI 顯示，可改用 :ref:`get_euler()<class_Basis_method_get_euler>` 取得歐拉角。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

以 :ref:`Vector3<class_Vector3>` 回傳此基底各軸向量的長度。若基底無斜切，此值即為縮放倍率，並不受旋轉影響。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(2, 0, 0),
        Vector3(0, 4, 0),
        Vector3(0, 0, 8)
    )
    # 不論如何旋轉，縮放皆會保持。
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)
    print(my_basis.get_scale()) # 印出 (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(2.0f, 0.0f, 0.0f),
        new Vector3(0.0f, 4.0f, 0.0f),
        new Vector3(0.0f, 0.0f, 8.0f)
    );
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);
    GD.Print(myBasis.Scale); // 印出 (2, 4, 8)



\ **注意：** 若 :ref:`determinant()<class_Basis_method_determinant>` 為負，縮放亦為負值。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

傳回此基矩陣的\ `逆矩陣 <https://en.wikipedia.org/wiki/Invertible_matrix>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

若此基底為共形（同時 *正交* 且 *等比例*\ ），則回傳 ``true``\ 。在物理運算中檢查此性質特別實用。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

如果該基和 ``b`` 近似相等，則返回 ``true``\ ，判斷方法是在每個向量分量上呼叫 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

如果該基是有限的，則返回 ``true``\ ，判斷方法是在每個向量分量上呼叫 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_orthonormal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthonormal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_orthonormal>`

如果該基是單位正交的，則回傳 ``true``\ 。單位正交的基既是\ *正交的*\ （軸彼此垂直），又是\ *正規化的*\ （各軸的長度均為 ``1.0``\ ）。該方法在物理計算過程中特別有用。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

建立新的 **Basis**\ ，其旋轉使得前向軸 (-Z) 指向 ``target`` 位置。

預設情況下，-Z 為前向（攝影機前），+X 為右；若 ``use_model_front`` 設為 ``true``\ ，則改以 +Z 為前向（模型前），+X 為左，並同樣指向 ``target``\ 。

上軸 (+Y) 會盡量貼近 ``up`` 向量，同時保持與前向軸垂直。回傳的基底已進行 正交正規化（參閱 :ref:`orthonormalized()<class_Basis_method_orthonormalized>`\ ）。

\ ``target`` 與 ``up`` 皆不得為 :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`\ ，且兩向量不應共線，否則可能導致繞本地 Z 軸的非預期旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

回傳此基底的正交正規化版本。正交正規基底同時 *正交*\ （三軸互相垂直）且 *正規化*\ （每軸長度為 ``1.0``\ ），因此只能表示純旋轉。

在不斷旋轉的基底上，定期呼叫此方法可避免累積的浮點誤差：


.. tabs::

 .. code-tab:: gdscript

    # 每影格旋轉此 Node3D
    func _process(delta):
        basis = basis.rotated(Vector3.UP, TAU * delta)
        basis = basis.rotated(Vector3.RIGHT, TAU * delta)
        basis = basis.orthonormalized()

 .. code-tab:: csharp

    // 每影格旋轉此 Node3D
    public override void _Process(double delta)
    {
        Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

回傳繞 ``axis`` 旋轉 ``angle`` 弧度後的基底副本。

\ ``axis`` 必須為正規化向量（參閱 :ref:`Vector3.normalized()<class_Vector3_method_normalized>`\ ）。若 ``angle`` 為正，則以左手方向（逆時針）旋轉。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2
    my_basis = my_basis.rotated(Vector3.UP, angle)    # 繞上軸（偏航）
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # 繞右軸（俯仰）
    my_basis = my_basis.rotated(Vector3.BACK, angle)  # 繞後軸（翻滾）

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var angle = Mathf.Tau / 2.0f;
    myBasis = myBasis.Rotated(Vector3.Up, angle);    // 繞上軸（偏航）
    myBasis = myBasis.Rotated(Vector3.Right, angle); // 繞右軸（俯仰）
    myBasis = myBasis.Rotated(Vector3.Back, angle);  // 繞後軸（翻滾）



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

回傳將此基底各軸向量分量分別乘以 ``scale`` 對應分量後的結果。

矩陣的列會乘上 ``scale``\ ，此動作屬全域縮放（相對於父節點）。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))
    print(my_basis.x) # 印出 (0.0, 2.0, -2.0)
    print(my_basis.y) # 印出 (0.0, 4.0, -4.0)
    print(my_basis.z) # 印出 (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));
    GD.Print(myBasis.X); // 印出 (0, 2, -2)
    GD.Print(myBasis.Y); // 印出 (0, 4, -4)
    GD.Print(myBasis.Z); // 印出 (0, 6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

回傳該基，其中每個軸都按給定的 ``scale`` 中的相應分量縮放。

該基矩陣的列乘以 ``scale`` 的分量。該操作是區域縮放（相對於自身）。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

    print(my_basis.x) # 輸出 (0.0, 0.0, 0.0)
    print(my_basis.y) # 輸出 (4.0, 4.0, 4.0)
    print(my_basis.z) # 輸出 (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // 輸出 (0, 0, 0)
    GD.Print(myBasis.Y); // 輸出 (4, 4, 4)
    GD.Print(myBasis.Z); // 輸出 (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

使用 ``to`` 基在給定 ``weight`` 的情況下執行球面線性插值。該基和 ``to`` 兩者都應該代表一個旋轉。

\ **範例：**\ 使用 :ref:`Tween<class_Tween>` 隨時間平滑地將 :ref:`Node3D<class_Node3D>` 旋轉到目標基：

::

    var start_basis = Basis.IDENTITY
    var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpolate(weight):
        basis = start_basis.slerp(target_basis, weight)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

回傳 ``with`` 與 :ref:`x<class_Basis_property_x>` 軸之間的轉置點積（參閱 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

等同於 ``basis.x.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

回傳 ``with`` 與 :ref:`y<class_Basis_property_y>` 軸之間的轉置點積（參閱 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

等同於 ``basis.y.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

回傳 ``with`` 與 :ref:`z<class_Basis_property_z>` 軸之間的轉置點積（參閱 :ref:`transposed()<class_Basis_method_transposed>`\ ）。

等同於 ``basis.z.dot(vector)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

回傳此基底的轉置矩陣，將原本的欄轉為列、列轉為欄。


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    my_basis = my_basis.transposed()
    print(my_basis.x) # 印出 (1.0, 4.0, 7.0)
    print(my_basis.y) # 印出 (2.0, 5.0, 8.0)
    print(my_basis.z) # 印出 (3.0, 6.0, 9.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    myBasis = myBasis.Transposed();
    GD.Print(myBasis.X); // 印出 (1, 4, 7)
    GD.Print(myBasis.Y); // 印出 (2, 5, 8)
    GD.Print(myBasis.Z); // 印出 (3, 6, 9)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

若兩個 **Basis** 矩陣的對應分量不相等，回傳 ``true``\ 。

\ **注意：** 由於浮點精度誤差，建議改用 :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` 進行比較以提升可靠性。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

將 ``right`` 基底乘以此基底（右乘）。

此運算與父子 :ref:`Node3D<class_Node3D>` 之間的變換相同。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

將向量 ``right`` 乘以此基底並回傳 :ref:`Vector3<class_Vector3>` 結果。


.. tabs::

 .. code-tab:: gdscript

    # 可交換 X/Z 並將縮放加倍的 Basis
    var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # 印出 (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // 可交換 X/Z 並將縮放加倍的 Basis
    var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // 印出 (4, 2, 6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

將 **Basis** 的所有分量乘以給定的 :ref:`float<class_float>`\ 。這會均勻地影響該基矩陣的縮放，並通過 ``right`` 值調整所有 3 個軸的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

將該 **Basis** 的所有分量乘以給定的 :ref:`int<class_int>`\ 。這會均勻地影響該基的縮放，並通過 ``right`` 值調整所有 3 個軸的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

將 **Basis** 的所有分量除以給定的 :ref:`float<class_float>`\ 。這會均勻地影響該基的縮放，並通過 ``right`` 值調整所有 3 個軸的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

將 **Basis** 的所有分量除以給定的 :ref:`int<class_int>`\ 。這會均勻地影響該基的縮放，並通過 ``right`` 值調整所有 3 個軸的大小。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

若兩個 **Basis** 矩陣的對應分量完全相同，回傳 ``true``\ 。

\ **注意：** 由於浮點精度誤差，建議改用 :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` 進行比較以提升可靠性。

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

透過索引存取此基底的各軸（欄）。索引 ``0`` 等同 :ref:`x<class_Basis_property_x>`\ 、\ ``1`` 等同 :ref:`y<class_Basis_property_y>`\ 、\ ``2`` 等同 :ref:`z<class_Basis_property_z>`\ 。

\ **注意：** 在 C++ 中，該運算子會存取矩陣的列，而\ *非*\ 欄；若要與腳本語言行為一致，請使用 ``set_column`` 與 ``get_column``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
