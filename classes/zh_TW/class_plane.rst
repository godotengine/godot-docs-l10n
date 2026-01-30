:github_url: hide

.. _class_Plane:

Plane
=====

使用黑塞範式的平面。

.. rst-class:: classref-introduction-group

說明
----

代表正規化的平面方程。\ :ref:`normal<class_Plane_property_normal>` 是平面的法線（正規化的 a、b、c），而 :ref:`d<class_Plane_property_d>` 是原點到平面的距離（沿“法線”方向）。平面的“上方”是平面朝向法線方向的一面。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`數學文件索引 <../tutorials/math/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`d<class_Plane_property_d>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_Plane_property_normal>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`x<class_Plane_property_x>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`y<class_Plane_property_y>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`z<class_Plane_property_z>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ )                                                                                                                             |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ from\: :ref:`Plane<class_Plane>`\ )                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )                                                      |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`distance_to<class_Plane_method_distance_to>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_Plane_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Plane_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const|       |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersect_3<class_Plane_method_intersect_3>`\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const|                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_Plane_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_Plane_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Plane_method_is_equal_approx>`\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const|                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Plane_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_point_over<class_Plane_method_is_point_over>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`normalized<class_Plane_method_normalized>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`project<class_Plane_method_project>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Plane_operator_neq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator *<class_Plane_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Plane_operator_eq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary+<class_Plane_operator_unplus>`\ (\ )                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary-<class_Plane_operator_unminus>`\ (\ )                                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Plane_constant_PLANE_YZ:

.. rst-class:: classref-constant

**PLANE_YZ** = ``Plane(1, 0, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_YZ>`

在 Y 軸和 Z 軸上延伸的平面（法向量指向 +X）。

.. _class_Plane_constant_PLANE_XZ:

.. rst-class:: classref-constant

**PLANE_XZ** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XZ>`

在 X 軸和 Z 軸上延伸的平面（法向量朝向 +Y）。

.. _class_Plane_constant_PLANE_XY:

.. rst-class:: classref-constant

**PLANE_XY** = ``Plane(0, 0, 1, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XY>`

在 X 軸和 Y 軸上延伸的平面（法向量朝向 +Z）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Plane_property_d:

.. rst-class:: classref-property

:ref:`float<class_float>` **d** = ``0.0`` :ref:`🔗<class_Plane_property_d>`

The distance from the origin to the plane, expressed in terms of :ref:`normal<class_Plane_property_normal>` (according to its direction and magnitude). Actual absolute distance from the origin to the plane can be calculated as ``abs(d) / normal.length()`` (if :ref:`normal<class_Plane_property_normal>` has zero length then this **Plane** does not represent a valid plane).

In the scalar equation of the plane ``ax + by + cz = d``, this is ``d``, while the ``(a, b, c)`` coordinates are represented by the :ref:`normal<class_Plane_property_normal>` property.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Plane_property_normal>`

The normal of the plane, typically a unit vector. Shouldn't be a zero vector as **Plane** with such :ref:`normal<class_Plane_property_normal>` does not represent a valid plane.

In the scalar equation of the plane ``ax + by + cz = d``, this is the vector ``(a, b, c)``, where ``d`` is the :ref:`d<class_Plane_property_d>` property.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Plane_property_x>`

平面法向量 :ref:`normal<class_Plane_property_normal>` 的 X 分量。

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Plane_property_y>`

平面法向量 :ref:`normal<class_Plane_property_normal>` 的 Y 分量。

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Plane_property_z>`

平面法向量 :ref:`normal<class_Plane_property_normal>` 的 Z 分量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Plane_constructor_Plane:

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ ) :ref:`🔗<class_Plane_constructor_Plane>`

建構預設初始化的 **Plane**\ ，所有分量都設定為 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ from\: :ref:`Plane<class_Plane>`\ )

建構給定 **Plane** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ )

根據四個參數建立一個平面。產生的平面的 :ref:`normal<class_Plane_property_normal>` 的三個分量是 ``a``\ 、\ ``b``\ 、和 ``c``\ ，且該平面與原點的距離為 ``d``\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )

根據法向量建立一個平面。該平面將與原點相交。

該平面的 ``normal`` 必須是一個單位向量。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )

根據法向量和平面與原點的距離建立一個平面。

平面的 ``normal`` 必須是一個單位向量。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )

從法向量和平面上的一個點建立一個平面。

平面的 ``normal`` 必須是一個單位向量。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )

根據順時針順序給出的三個點建立一個平面。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Plane_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_distance_to>`

返回從該平面到位置 ``point`` 的最短距離。如果該點在平面上方，則距離將為正。如果在下方，則距離將為負。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_Plane_method_get_center>`

返回平面的中心。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const| :ref:`🔗<class_Plane_method_has_point>`

如果 ``point`` 在該平面內，則返回 ``true``\ 。比較將使用一個自訂的最小 ``tolerance`` 閾值。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersect_3:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersect_3**\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_intersect_3>`

返回 ``b``\ 、\ ``c``\ 、該平面這三個平面的交點。如果沒有找到交點，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_ray>`

返回由位置 ``from`` 和方向法線 ``dir`` 組成的射線與該平面的交點。如果沒有找到交點，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_segment>`

返回從位置 ``from`` 到位置 ``to`` 的線段與該平面的交點。如果沒有找到交點，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_is_equal_approx>`

如果該平面和 ``to_plane`` 近似相等，則返回 ``true``\ ，判斷近似相等的方法是通過在每個分量上運作 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Plane_method_is_finite>`

如果該平面是有限的，則返回 ``true``\ ，判斷方法是在每個分量上呼叫 :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_point_over:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_over**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_is_point_over>`

如果 ``point`` 位於平面上方，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_normalized:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **normalized**\ (\ ) |const| :ref:`🔗<class_Plane_method_normalized>`

返回該平面正規化 :ref:`normal<class_Plane_property_normal>` 後的副本（法線成為單位向量）。如果 :ref:`normal<class_Plane_property_normal>` 無法正規化（長度為零），則返回 ``Plane(0, 0, 0, 0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_project:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_project>`

返回 ``point`` 在該平面中的正交投影。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Plane_operator_neq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_neq_Plane>`

如果平面不相等，則返回 ``true``\ 。

\ **注意：**\ 由於浮點數精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>`\ ，會更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Plane_operator_mul_Transform3D>`

Inversely transforms (multiplies) the **Plane** by the given :ref:`Transform3D<class_Transform3D>` transformation matrix.

\ ``plane * transform`` is equivalent to ``transform.affine_inverse() * plane``. See :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_eq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_eq_Plane>`

如果平面完全相等，則返回 ``true``\ 。

\ **注意：**\ 由於浮點數精度誤差，請考慮改用 :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>`\ ，會更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unplus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary+**\ (\ ) :ref:`🔗<class_Plane_operator_unplus>`

返回與 ``+`` 不存在時相同的值。單目 ``+`` 沒有作用，但有時可以使你的程式碼更具可讀性。

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unminus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary-**\ (\ ) :ref:`🔗<class_Plane_operator_unminus>`

返回該 **Plane** 的負值。和寫 ``Plane(-p.normal, -p.d)`` 相同。該操作翻轉了法線向量的方向，也翻轉了距離值，得到的 Plane 位於同一個位置，但是朝向相反的方向。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
