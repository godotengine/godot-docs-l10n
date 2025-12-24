:github_url: hide

.. _class_Transform2D:

Transform2D
===========

代表 2D 變換的 2×3 矩陣。

.. rst-class:: classref-introduction-group

說明
----

The **Transform2D** built-in :ref:`Variant<class_Variant>` type is a 2×3 `matrix <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ representing a transformation in 2D space. It contains three :ref:`Vector2<class_Vector2>` values: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and :ref:`origin<class_Transform2D_property_origin>`. Together, they can represent translation, rotation, scale, and skew.

The :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (:ref:`Vector2.length()<class_Vector2_method_length>`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Unlike :ref:`Transform3D<class_Transform3D>`, there is no 2D equivalent to the :ref:`Basis<class_Basis>` type. All mentions of "basis" refer to the :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` components of **Transform2D**.

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

The identity **Transform2D**. This is a transform with no translation, no rotation, and a scale of :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. This also means that:

- The :ref:`x<class_Transform2D_property_x>` points right (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`);

- The :ref:`y<class_Transform2D_property_y>` points down (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # Prints:
    # | X | Y | Origin
    # | 1 | 0 | 0
    # | 0 | 1 | 0

If a :ref:`Vector2<class_Vector2>`, a :ref:`Rect2<class_Rect2>`, a :ref:`PackedVector2Array<class_PackedVector2Array>`, or another **Transform2D** is transformed (multiplied) by this constant, no transformation occurs.

\ **Note:** In GDScript, this constant is equivalent to creating a :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` without any arguments. It can be used to make your code clearer, and for consistency with C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

When any transform is multiplied by :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, it negates all components of the :ref:`x<class_Transform2D_property_x>` axis (the X column).

When :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` is multiplied by any transform, it negates the :ref:`Vector2.x<class_Vector2_property_x>` component of all axes (the X row).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

When any transform is multiplied by :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, it negates all components of the :ref:`y<class_Transform2D_property_y>` axis (the Y column).

When :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` is multiplied by any transform, it negates the :ref:`Vector2.y<class_Vector2_property_y>` component of all axes (the Y row).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

The translation offset of this transform, and the column ``2`` of the matrix. In 2D space, this can be seen as the position.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

The transform basis's X axis, and the column ``0`` of the matrix. Combined with :ref:`y<class_Transform2D_property_y>`, this represents the transform's rotation, scale, and skew.

On the identity transform, this vector points right (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

The transform basis's Y axis, and the column ``1`` of the matrix. Combined with :ref:`x<class_Transform2D_property_x>`, this represents the transform's rotation, scale, and skew.

On the identity transform, this vector points down (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Constructs a **Transform2D** identical to :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Note:** In C#, this constructs a **Transform2D** with all of its components set to :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

建構給定 **Transform2D** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Constructs a **Transform2D** from a given angle (in radians) and position.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Constructs a **Transform2D** from a given angle (in radians), scale, skew (in radians), and position.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Constructs a **Transform2D** from 3 :ref:`Vector2<class_Vector2>` values representing :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and the :ref:`origin<class_Transform2D_property_origin>` (the three matrix columns).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Returns the inverted version of this transform. Unlike :ref:`inverse()<class_Transform2D_method_inverse>`, this method works with almost any basis, including non-uniform ones, but is slower.

\ **Note:** For this method to return correctly, the transform's basis needs to have a determinant that is not exactly ``0.0`` (see :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Returns a copy of the ``v`` vector, transformed (multiplied) by the transform basis's matrix. Unlike the multiplication operator (``*``), this method ignores the :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Returns a copy of the ``v`` vector, transformed (multiplied) by the inverse transform basis's matrix (see :ref:`inverse()<class_Transform2D_method_inverse>`). This method ignores the :ref:`origin<class_Transform2D_property_origin>`.

\ **Note:** This method assumes that this transform's basis is *orthonormal* (see :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). If the basis is not orthonormal, ``transform.affine_inverse().basis_xform(vector)`` should be used instead (see :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Returns the `determinant <https://en.wikipedia.org/wiki/Determinant>`__ of this transform basis's matrix. For advanced math, this number can be used to determine a few attributes:

- If the determinant is exactly ``0.0``, the basis is not invertible (see :ref:`inverse()<class_Transform2D_method_inverse>`).

- If the determinant is a negative number, the basis represents a negative scale.

\ **Note:** If the basis's scale is the same for every axis, its determinant is always that scale by the power of 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Returns this transform's translation. Equivalent to :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Returns this transform's rotation (in radians). This is equivalent to :ref:`x<class_Transform2D_property_x>`'s angle (see :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Returns the length of both :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>`, as a :ref:`Vector2<class_Vector2>`. If this transform's basis is not skewed, this value is the scaling factor. It is not affected by rotation.


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Rotating the Transform2D in any way preserves its scale.
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # Prints (2.0, 4.0)

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Rotating the Transform2D in any way preserves its scale.
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // Prints (2, 4)



\ **Note:** If the value returned by :ref:`determinant()<class_Transform2D_method_determinant>` is negative, the scale is also negative.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Returns this transform's skew (in radians).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Returns the result of the linear interpolation between this transform and ``xform`` by the given ``weight``.

The ``weight`` should be between ``0.0`` and ``1.0`` (inclusive). Values outside this range are allowed and can be used to perform *extrapolation* instead.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Returns the `inverted version of this transform <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

\ **Note:** For this method to return correctly, the transform's basis needs to be *orthonormal* (see :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). That means the basis should only represent a rotation. If it does not, use :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>` instead.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Returns ``true`` if this transform's basis is conformal. A conformal basis is both *orthogonal* (the axes are perpendicular to each other) and *uniform* (the axes share the same length). This method can be especially useful during physics calculations.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Returns ``true`` if this transform and ``xform`` are approximately equal, by running :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` on each component.

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

Returns a copy of the transform rotated such that the rotated X-axis points towards the ``target`` position, in global space.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Returns a copy of this transform with its basis orthonormalized. An orthonormal basis is both *orthogonal* (the axes are perpendicular to each other) and *normalized* (the axes have a length of ``1.0``), which also means it can only represent a rotation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Returns a copy of this transform rotated by the given ``angle`` (in radians).

If ``angle`` is positive, the transform is rotated clockwise.

This method is an optimized version of multiplying the given transform ``X`` with a corresponding rotation transform ``R`` from the left, i.e., ``R * X``.

This can be seen as transforming with respect to the global/parent frame.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

返回該變換的副本，該副本進行了夾角為 ``angle`` 的旋轉操作（單位為弧度）。

這個方法的結果和讓 ``X`` 變換與相應的旋轉變換 ``R`` 從右側相乘一致，即 ``X * R``\ ，但進行了優化。

可以視作在局部坐標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

返回該變換的副本，該副本進行了係數為 ``scale`` 的縮放操作。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從左側相乘一致，即 ``S * X``\ ，但進行了優化。

可以視作在全域/父級坐標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

返回該變換的副本，該副本進行了係數為 ``scale`` 的縮放操作。

這個方法的結果和讓 ``X`` 變換與相應的縮放變換 ``S`` 從右側相乘一致，即 ``X * S``\ ，但進行了優化。

可以視作在局部坐標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

返回該變換的副本，該副本進行了偏移量為 ``offset`` 的平移操作。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從左側相乘一致，即 ``T * X``\ ，但進行了優化。

可以視作在全域/父級坐標系中的變換。

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

返回該變換的副本，該副本進行了偏移量為 ``offset`` 的平移操作。

這個方法的結果和讓 ``X`` 變換與相應的平移變換 ``T`` 從右側相乘一致，即 ``X * T``\ ，但進行了優化。

可以視作在局部坐標系中的變換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Returns ``true`` if the components of both transforms are not equal.

\ **Note:** Due to floating-point precision errors, consider using :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` instead, which is more reliable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Transforms (multiplies) every :ref:`Vector2<class_Vector2>` element of the given :ref:`PackedVector2Array<class_PackedVector2Array>` by this transformation matrix.

On larger arrays, this operation is much faster than transforming each :ref:`Vector2<class_Vector2>` individually.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Transforms (multiplies) the :ref:`Rect2<class_Rect2>` by this transformation matrix.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Transforms (multiplies) this transform by the ``right`` transform.

This is the operation performed between parent and child :ref:`CanvasItem<class_CanvasItem>` nodes.

\ **Note:** If you need to only modify one attribute of this transform, consider using one of the following methods, instead:

- For translation, see :ref:`translated()<class_Transform2D_method_translated>` or :ref:`translated_local()<class_Transform2D_method_translated_local>`.

- For rotation, see :ref:`rotated()<class_Transform2D_method_rotated>` or :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- For scale, see :ref:`scaled()<class_Transform2D_method_scaled>` or :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Transforms (multiplies) the :ref:`Vector2<class_Vector2>` by this transformation matrix.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Multiplies all components of the **Transform2D** by the given :ref:`float<class_float>`, including the :ref:`origin<class_Transform2D_property_origin>`. This affects the transform's scale uniformly.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Multiplies all components of the **Transform2D** by the given :ref:`int<class_int>`, including the :ref:`origin<class_Transform2D_property_origin>`. This affects the transform's scale uniformly.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Divides all components of the **Transform2D** by the given :ref:`float<class_float>`, including the :ref:`origin<class_Transform2D_property_origin>`. This affects the transform's scale uniformly.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Divides all components of the **Transform2D** by the given :ref:`int<class_int>`, including the :ref:`origin<class_Transform2D_property_origin>`. This affects the transform's scale uniformly.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Returns ``true`` if the components of both transforms are exactly equal.

\ **Note:** Due to floating-point precision errors, consider using :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` instead, which is more reliable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Accesses each axis (column) of this transform by their index. Index ``0`` is the same as :ref:`x<class_Transform2D_property_x>`, index ``1`` is the same as :ref:`y<class_Transform2D_property_y>`, and index ``2`` is the same as :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
