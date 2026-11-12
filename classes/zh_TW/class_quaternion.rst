:github_url: hide

.. _class_Quaternion:

Quaternion
==========

代表 3D 旋轉的單位四元數。

.. rst-class:: classref-introduction-group

說明
----

內建的 **Quaternion**\ （四元數）\ :ref:`Variant<class_Variant>` 型別是一種 4D 資料結構，它以 `哈密頓約定四元數 <https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation>`__ 的形式來表示旋轉。與可以同時儲存旋轉和縮放的 :ref:`Basis<class_Basis>`\ （基）型別相比，四元數 *只能* 儲存旋轉。

一個 **Quaternion** 由 4 個浮點數分量組成：\ :ref:`w<class_Quaternion_property_w>`\ 、\ :ref:`x<class_Quaternion_property_x>`\ 、\ :ref:`y<class_Quaternion_property_y>` 和 :ref:`z<class_Quaternion_property_z>`\ 。這些分量在記憶體中非常緊湊，因此某些運算不僅效率更高，而且更不容易產生浮點誤差。像 :ref:`get_angle()<class_Quaternion_method_get_angle>`\ （取得角度）、\ :ref:`get_axis()<class_Quaternion_method_get_axis>`\ （取得軸）和 :ref:`slerp()<class_Quaternion_method_slerp>`\ （球面線性插值）這類方法，都比它們在 :ref:`Basis<class_Basis>` 中對應的方法執行得更快。

如果想深入瞭解四元數，推薦觀看 `3Blue1Brown 的這個影片 <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__\ 。不過，你並不需要完全搞懂四元數背後的複雜數學原理，因為 Godot 提供了許多輔助方法來幫你處理這些。這些方法包括 :ref:`slerp()<class_Quaternion_method_slerp>` 和 :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>`\ （球面三次插值），以及 ``*`` 運算符。

\ **注意：** 四元數在用於旋轉之前必須先進行正規化（詳見 :ref:`normalized()<class_Quaternion_method_normalized>`\ ）。

\ **注意：** 和 :ref:`Vector2<class_Vector2>`\ 、\ :ref:`Vector3<class_Vector3>` 類似，四元數的分量預設使用 32 位元精度，這與始終為 64 位元的 :ref:`float<class_float>` 型別不同。如果需要雙精度，請使用 ``precision=double`` 選項來編譯引擎。

\ **注意：** 在布林值（boolean）情境中，如果一個四元數等於 :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`\ （單位四元數），它將評估為 ``false``\ 。否則，四元數永遠都會評估為 ``true``\ 。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- `3Blue1Brown 關於四元數的影片 <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__

- `線上四元數視覺化 <https://quaternions.online/>`__

- `使用 3D 變換 <../tutorials/3d/using_transforms.html#interpolating-with-quaternions>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

- `進階四元數視覺化 <https://iwatake2222.github.io/rotation_master/rotation_master.html>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`w<class_Quaternion_property_w>` | ``1.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`x<class_Quaternion_property_x>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`y<class_Quaternion_property_y>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`z<class_Quaternion_property_z>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ )                                                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`angle_to<class_Quaternion_method_angle_to>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`dot<class_Quaternion_method_dot>`\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`exp<class_Quaternion_method_exp>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`from_euler<class_Quaternion_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_angle<class_Quaternion_method_get_angle>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_axis<class_Quaternion_method_get_axis>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Quaternion_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inverse<class_Quaternion_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Quaternion_method_is_equal_approx>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Quaternion_method_is_finite>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_normalized<class_Quaternion_method_is_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length<class_Quaternion_method_length>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length_squared<class_Quaternion_method_length_squared>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`log<class_Quaternion_method_log>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`normalized<class_Quaternion_method_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerp<class_Quaternion_method_slerp>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerpni<class_Quaternion_method_slerpni>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate<class_Quaternion_method_spherical_cubic_interpolate>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate_in_time<class_Quaternion_method_spherical_cubic_interpolate_in_time>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Quaternion_operator_neq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_Quaternion_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator +<class_Quaternion_operator_sum_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator -<class_Quaternion_operator_dif_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Quaternion_operator_eq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator []<class_Quaternion_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary+<class_Quaternion_operator_unplus>`\ (\ )                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary-<class_Quaternion_operator_unminus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Quaternion_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_Quaternion_constant_IDENTITY>`

單位四元數，代表無旋轉。這與 :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>` 具有相同的旋轉。

如果一個 :ref:`Vector3<class_Vector3>` 被該四元數旋轉（乘以），則它不會改變。

\ **注意：**\ 在 GDScript 中，該常數等價於不帶任何參數建立 :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ 。可以用來讓程式碼更加清晰，並且與 C# 保持一致。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Quaternion_property_w:

.. rst-class:: classref-property

:ref:`float<class_float>` **w** = ``1.0`` :ref:`🔗<class_Quaternion_property_w>`

四元數的 W 分量。這是“實數”的部分。

\ **注意：**\ 四元數分量通常不應被直接操作。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Quaternion_property_x>`

四元數的 X 分量。這是沿“虛數” ``i`` 軸的值。

\ **注意：**\ 四元數分量通常不應被直接操作。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Quaternion_property_y>`

四元數的 Y 分量。這是沿“虛數” ``j`` 軸的值。

\ **注意：**\ 四元數分量通常不應被直接操作。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Quaternion_property_z>`

四元數的 Z 分量。這是沿“虛數” ``k`` 軸的值。

\ **注意：**\ 四元數分量通常不應被直接操作。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Quaternion_constructor_Quaternion:

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ ) :ref:`🔗<class_Quaternion_constructor_Quaternion>`

構造與 :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>` 相同的 **Quaternion**\ 。

\ **注意：**\ 在 C# 中構造的 **Quaternion** 的所有分量都為 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

建構給定 **Quaternion** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )

構造一個表示 ``arc_from`` 和 ``arc_to`` 之間最短弧的 **Quaternion**\ 。這些可以想象為與球體表面相交的兩個點，球面半徑為 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

構造一個 **Quaternion**\ ，表示圍繞 ``axis`` 旋轉給定的 ``angle`` 弧度。該軸必須是一個正規化向量。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Basis<class_Basis>`\ )

根據給定的旋轉 :ref:`Basis<class_Basis>` 構造一個 **Quaternion**\ 。

該建構函式比 :ref:`Basis.get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>` 更快，但給定的基必須是\ *正交正規化化的*\ （請參閱 :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`\ ）。否則，建構函式將失敗並回傳 :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ )

構造一個由給定值定義的 **Quaternion**\ 。

\ **注意：**\ 只有正規化的四元數才表示旋轉；如果這些值沒有正規化，則新的 **Quaternion** 將不是有效的旋轉。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Quaternion_method_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **angle_to**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_angle_to>`

返回這個四元數與 ``to`` 之間的角度。這是從一個旋轉到另一個旋轉所需的角度大小。

\ **注意：**\ 該方法的浮點數誤差異常地高，因此 ``is_zero_approx`` 等方法的結果不可靠。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_dot:

.. rst-class:: classref-method

:ref:`float<class_float>` **dot**\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_dot>`

回傳該四元數與 ``with`` 的點積。

等價於 ``(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_exp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **exp**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_exp>`

回傳該四元數的指數。該結果的旋轉軸是該四元數的正規化旋轉軸，該結果的角度是該四元數的向量部分的長度。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_from_euler:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Quaternion_method_from_euler>`

根據給定的 `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__\ （以弧度為單位）構造一個新的 **Quaternion**\ （四元數）。在 Godot 中，歐拉角始終使用內旋順序。該方法始終使用內旋 YXZ 約定（即 :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_angle>`

回傳該四元數表示的旋轉角度。

\ **注意：**\ 該四元數必須被正規化。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_axis**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_axis>`

回傳該四元數表示的旋轉的旋轉軸。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Quaternion_method_get_euler>`

將此四元數的旋轉角度以 `歐拉角 <https://en.wikipedia.org/wiki/Euler_angles>`__ :ref:`Vector3<class_Vector3>` 的形式回傳，單位為弧度。

可以通過 ``order`` 參數來改變每個連續旋轉的順序（詳見 :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` 常數）。在 Godot 中，歐拉角始終使用內旋（intrinsic）順序。預設情況下，使用的是內旋 YXZ 約定（即 :ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`\ ）：由於這是一個分解過程，因此會先計算區域 Z 軸（滾轉/roll），然後是區域 X 軸（俯仰/pitch），最後是區域 Y 軸（偏航/yaw）。當使用反向方法 :ref:`from_euler()<class_Quaternion_method_from_euler>` 來合成旋轉時，這個順序則是相反的。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_inverse:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **inverse**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_inverse>`

回傳該四元數的逆版本，反轉除 :ref:`w<class_Quaternion_property_w>` 之外的每個分量的符號。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_is_equal_approx>`

如果該四元數和 ``to`` 近似相等，則回傳 ``true``\ ，判斷方法是通過對每個分量呼叫 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_finite>`

如果該四元數是有限的，則返回 ``true``\ ，判斷方法是在每個分量上呼叫 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_normalized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_normalized>`

如果該四元數已被正規化，則回傳 ``true``\ 。另見 :ref:`normalized()<class_Quaternion_method_normalized>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length>`

回傳該四元數的長度，也被稱為幅度。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length_squared:

.. rst-class:: classref-method

:ref:`float<class_float>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length_squared>`

回傳該四元數的長度的平方。

\ **注意：**\ 該方法比 :ref:`length()<class_Quaternion_method_length>` 更快，因此如果你只需要比較四元數的長度，則優先使用它。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_log:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **log**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_log>`

回傳該四元數的對數。將該四元數的旋轉軸乘以它的旋轉角度，並將結果儲存在回傳的四元數的向量部分（\ :ref:`x<class_Quaternion_property_x>`\ 、\ :ref:`y<class_Quaternion_property_y>` 和 :ref:`z<class_Quaternion_property_z>`\ ）中。回傳的四元數的實數部分（\ :ref:`w<class_Quaternion_property_w>`\ ）始終為 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_normalized:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_normalized>`

回傳該四元數的副本，已正規化，因此其長度為 ``1.0``\ 。另見 :ref:`is_normalized()<class_Quaternion_method_is_normalized>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerp**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerp>`

使用 ``to`` 四元數，在給定 ``weight`` 下執行球面線性插值並回傳結果。該四元數和 ``to`` 都必須已正規化。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerpni:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerpni**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerpni>`

在給定 ``weight`` 的情況下，使用 ``to`` 四元數執行球面線性插值並回傳結果。與 :ref:`slerp()<class_Quaternion_method_slerp>` 不同，該方法不檢查旋轉路徑是否小於 90 度。該四元數和 ``to`` 都必須是正規化的。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate>`

Performs a spherical cubic interpolation between quaternions ``pre_a``, this quaternion, ``b``, and ``post_b``, by the given amount ``weight``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate_in_time:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate_in_time**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate_in_time>`

Performs a spherical cubic interpolation between quaternions ``pre_a``, this quaternion, ``b``, and ``post_b``, by the given amount ``weight``.

It can perform smoother interpolation than :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>` by the time values.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Quaternion_operator_neq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_neq_Quaternion>`

如果兩個四元數的分量不完全相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>`\ ，這樣更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Quaternion>`

組合（相乘）兩個四元數。這會由該四元數（父項）旋轉 ``right`` 四元數（子項）。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Vector3>`

由該四元數旋轉（乘以） ``right`` 向量，回傳一個 :ref:`Vector3<class_Vector3>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_mul_float>`

將該 **Quaternion** 的每個分量乘以右側的 :ref:`float<class_float>` 值。

該操作本身沒有意義，但可以用作更大運算式的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_mul_int>`

將該 **Quaternion** 的每個分量乘以右側 :ref:`int<class_int>` 值。

該操作本身沒有意義，但可以用作更大運算式的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_sum_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator +**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_sum_Quaternion>`

將左側 **Quaternion** 的每個分量新增到右側 **Quaternion**\ 。

該操作本身沒有意義，但可以用作更大運算式的一部分，例如用於近似兩個相鄰旋轉之間的中間旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_dif_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator -**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_dif_Quaternion>`

將左側 **Quaternion** 的每個分量減去右側 **Quaternion**\ 。

該操作本身沒有意義，但可以用作更大運算式的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_div_float>`

將該 **Quaternion** 的每個分量除以右側 :ref:`float<class_float>` 值。

該操作本身沒有意義，但可以用作更大運算式的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_div_int>`

將該 **Quaternion** 的每個分量除以右側的 :ref:`int<class_int>` 值。

該操作本身沒有意義，但可以用作更大運算式的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_eq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_eq_Quaternion>`

如果兩個四元數的分量完全相等，則回傳 ``true``\ 。

\ **注意：**\ 由於浮點精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>`\ ，這樣更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_idx_int>`

通過索引存取該四元數的每個分量。

索引 ``0`` 與 :ref:`x<class_Quaternion_property_x>` 相同，索引 ``1`` 與 :ref:`y<class_Quaternion_property_y>` 相同，索引 ``2`` 與 :ref:`z<class_Quaternion_property_z>` 相同，索引 ``3`` 與 :ref:`w<class_Quaternion_property_w>` 相同。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unplus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary+**\ (\ ) :ref:`🔗<class_Quaternion_operator_unplus>`

返回與 ``+`` 不存在時相同的值。單目 ``+`` 沒有作用，但有時可以使你的程式碼更具可讀性。

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unminus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary-**\ (\ ) :ref:`🔗<class_Quaternion_operator_unminus>`

回傳該 **Quaternion** 的負值。這與將所有分量乘以 ``-1`` 相同。這個操作得到的是代表相同旋轉的四元數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
