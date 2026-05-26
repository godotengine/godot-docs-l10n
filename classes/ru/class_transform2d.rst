:github_url: hide

.. _class_Transform2D:

Transform2D
===========

Матрица 2×3, представляющая двумерное преобразование.

.. rst-class:: classref-introduction-group

Описание
----------------

The **Transform2D** built-in :ref:`Variant<class_Variant>` type is a 2×3 `matrix <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ representing a transformation in 2D space. It contains three :ref:`Vector2<class_Vector2>` values: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and :ref:`origin<class_Transform2D_property_origin>`. Together, they can represent translation, rotation, scale, and skew.

The :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (:ref:`Vector2.length()<class_Vector2_method_length>`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Unlike :ref:`Transform3D<class_Transform3D>`, there is no 2D equivalent to the :ref:`Basis<class_Basis>` type. All mentions of "basis" refer to the :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` components of **Transform2D**.

\ **Note:** In a boolean context, a Transform2D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`. Otherwise, a Transform2D will always evaluate to ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Матрицы и преобразования <../tutorials/math/matrices_and_transforms>`

- `Демонстрация матричных преобразований <https://godotengine.org/asset-library/asset/2787>`__

- `Демонстрация игры 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Конструкторы
------------------------

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

Методы
------------

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

Операторы
------------------

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

Константы
------------------

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

Тождество **Transform2D**. Это преобразование без перемещения, без вращения и масштабом :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. Это также означает, что:

- :ref:`x<class_Transform2D_property_x>` указывает вправо (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`);

- :ref:`y<class_Transform2D_property_y>` указывает вниз (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # Prints:
    # | X | Y | Origin
    # | 1 | 0 | 0
    # | 0 | 1 | 0

Если :ref:`Vector2<class_Vector2>`, :ref:`Rect2<class_Rect2>`, :ref:`PackedVector2Array<class_PackedVector2Array>` или другой **Transform2D** преобразуется (умножается) этой константой, то преобразование не происходит.

\ **Примечание:** В GDScript эта константа эквивалентна созданию :ref:`Transform2D<class_Transform2D_constant_Transform2D>` без каких-либо аргументов. Ее можно использовать для того, чтобы сделать ваш код более понятным и для согласованности с C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

Когда любое преобразование умножается на :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, оно инвертирует все компоненты оси :ref:`x<class_Transform2D_property_x>` (столбец X).

Когда :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` умножается на любое преобразование, оно инвертирует компонент :ref:`Vector2.x<class_Vector2_property_x>` всех осей (строка X).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

Когда любое преобразование умножается на :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, оно инвертирует все компоненты оси :ref:`y<class_Transform2D_property_y>` (столбец Y).

Когда :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` умножается на любое преобразование, оно инвертирует компонент :ref:`Vector2.y<class_Vector2_property_y>` всех осей (строка Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

Смещение перевода этого преобразования и столбец ``2`` матрицы. В двумерном пространстве это можно рассматривать как позицию.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

Ось X базиса преобразования и столбец ``0`` матрицы. В сочетании с :ref:`y<class_Transform2D_property_y>` это представляет поворот, масштаб и наклон преобразования.

В тождественном преобразовании этот вектор указывает вправо (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

Ось Y базиса преобразования и столбец ``1`` матрицы. В сочетании с :ref:`x<class_Transform2D_property_x>` это представляет поворот, масштаб и наклон преобразования.

В тождественном преобразовании этот вектор указывает вниз (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Создает **Transform2D**, идентичный :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Примечание:** В C# это создает **Transform2D**, все компоненты которого установлены в :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

Создает **Transform2D** как копию заданного **Transform2D**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Создает **Transform2D** по заданному углу (в радианах) и положению.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Создает **Transform2D** по заданному углу (в радианах), масштабу, наклону (в радианах) и положению.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Создает **Transform2D** из 3 значений :ref:`Vector2<class_Vector2>`, представляющих :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>` и :ref:`origin<class_Transform2D_property_origin>` (три столбца матрицы).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Возвращает инвертированную версию этого преобразования. В отличие от :ref:`inverse()<class_Transform2D_method_inverse>`, этот метод работает практически с любым базисом, включая неравномерные, но медленнее.

\ **Примечание:** Чтобы этот метод возвращал правильно, базис преобразования должен иметь определитель, который не равен в точности ``0.0`` (см. :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Возвращает копию вектора ``v``, преобразованного (умноженного) на матрицу базиса преобразования. В отличие от оператора умножения (``*``), этот метод игнорирует :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Возвращает копию вектора ``v``, преобразованного (умноженного) на матрицу базиса обратного преобразования (см. :ref:`inverse()<class_Transform2D_method_inverse>`). Этот метод игнорирует :ref:`origin<class_Transform2D_property_origin>`.

\ **Примечание:** Этот метод предполагает, что базис этого преобразования является *ортонормальным* (см. :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Если базис не является ортонормальным, вместо него следует использовать ``transform.affine_inverse().basis_xform(vector)`` (см. :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Возвращает `определитель <https://en.wikipedia.org/wiki/Determinant>`__ матрицы этого базиса преобразования. Для продвинутой математики это число может использоваться для определения нескольких атрибутов:

- Если определитель равен точно ``0.0``, базис необратим (см. :ref:`inverse()<class_Transform2D_method_inverse>`).

- Если определитель — отрицательное число, базис представляет собой отрицательный масштаб.

\ **Примечание:** Если масштаб базиса одинаков для каждой оси, его определитель всегда равен этому масштабу в степени 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Возвращает перевод этого преобразования. Эквивалентно :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Возвращает поворот этого преобразования (в радианах). Это эквивалентно углу :ref:`x<class_Transform2D_property_x>` (см. :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Возвращает длину :ref:`x<class_Transform2D_property_x>` и :ref:`y<class_Transform2D_property_y>` как :ref:`Vector2<class_Vector2>`. Если основа этого преобразования не перекошена, это значение является коэффициентом масштабирования. Оно не зависит от вращения.


.. tabs::

 .. code-tab:: gdscript

    var my_transform = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Поворот Transform2D любым способом сохраняет его масштаб.
    my_transform = my_transform.rotated(TAU / 2)

    print(my_transform.get_scale()) # Prints (2.0, 4.0)

 .. code-tab:: csharp

    var myTransform = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Поворот Transform2D любым способом сохраняет его масштаб.
    myTransform = myTransform.Rotated(Mathf.Tau / 2.0f);

    GD.Print(myTransform.GetScale()); // Prints (2, 4)



\ **Примечание:** Если значение, возвращаемое :ref:`determinant()<class_Transform2D_method_determinant>`, отрицательное, масштаб также будет отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Возвращает наклон данного преобразования (в радианах).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Возвращает результат линейной интерполяции между этим преобразованием и ``xform`` по заданному ``weight``. 

\ ``weight`` должен быть между ``0.0`` и ``1.0`` (включительно). Значения вне этого диапазона разрешены и могут использоваться для выполнения *экстраполяции*.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Возвращает `инвертированную версию этого преобразования <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

\ **Примечание:** Чтобы этот метод возвращал правильно, базис преобразования должен быть *ортонормальным* (см. :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Это означает, что базис должен представлять только поворот. Если это не так, используйте вместо этого :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Возвращает ``true``, если базис этого преобразования конформный. Конформный базис является как *ортогональным* (оси перпендикулярны друг другу), так и *равномерным* (оси имеют одинаковую длину). Этот метод может быть особенно полезен при физических расчетах.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Возвращает ``true``, если это преобразование и ``xform`` приблизительно равны, путем запуска :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

Возвращает ``true``, если это преобразование конечно, вызывая :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

Возвращает копию преобразования, повернутую таким образом, что повернутая ось X указывает на позицию ``target`` в глобальном пространстве.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Возвращает копию этого преобразования с ортонормированным базисом. Ортонормированный базис является как *ортогональным* (оси перпендикулярны друг другу), так и *нормализованным* (оси имеют длину ``1.0``), что также означает, что он может представлять только поворот.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Возвращает копию этого преобразования, повернутую на заданный ``angle`` (в радианах).

Если ``angle`` положительно, преобразование поворачивается по часовой стрелке.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование поворота ``R`` слева, т. е. ``R * X``.

Это можно рассматривать как преобразование относительно глобального/родительского кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

Возвращает копию преобразования, повернутую на заданный ``angle`` (в радианах).

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование поворота ``R`` справа, т. е. ``X * R``.

Это можно рассматривать как преобразование относительно локального кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

Возвращает копию преобразования, масштабированную заданным коэффициентом ``scale``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее масштабирующее преобразование ``S`` слева, т. е. ``S * X``.

Это можно рассматривать как преобразование относительно глобального/родительского кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

Возвращает копию преобразования, масштабированную заданным коэффициентом ``scale``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее масштабирующее преобразование ``S`` справа, т. е. ``X * S``.

Это можно рассматривать как преобразование относительно локального кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

Возвращает копию преобразования, переведенную на заданное ``offset``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование перевода ``T`` слева, т. е. ``T * X``.

Это можно рассматривать как преобразование относительно глобального/родительского фрейма.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

Возвращает копию преобразования, переведенную на заданное ``offset``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование перевода ``T`` справа, т. е. ``X * T``.

Это можно рассматривать как преобразование относительно локального фрейма.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Возвращает ``true``, если компоненты обоих преобразований не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Преобразует (умножает) каждый элемент :ref:`Vector2<class_Vector2>` заданного :ref:`PackedVector2Array<class_PackedVector2Array>` на эту матрицу преобразования.

На больших массивах эта операция выполняется намного быстрее, чем преобразование каждого :ref:`Vector2<class_Vector2>` по отдельности.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Преобразует (умножает) :ref:`Rect2<class_Rect2>` на эту матрицу преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Преобразует (умножает) это преобразование на преобразование ``right``.

Это операция, выполняемая между родительским и дочерним узлами :ref:`CanvasItem<class_CanvasItem>`.

\ **Примечание:** Если вам нужно изменить только один атрибут этого преобразования, рассмотрите возможность использования одного из следующих методов:

- Для перевода см. :ref:`translate()<class_Transform2D_method_translate>` или :ref:`translate_local()<class_Transform2D_method_translate_local>`.

- Для поворота см. :ref:`rotated()<class_Transform2D_method_rotated>` или :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- Для масштабирования см. :ref:`scaled()<class_Transform2D_method_scaled>` или :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Преобразует (умножает) :ref:`Vector2<class_Vector2>` на эту матрицу преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Умножает все компоненты **Transform2D** на заданный :ref:`float<class_float>`, включая :ref:`origin<class_Transform2D_property_origin>`. Это равномерно влияет на масштаб преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Умножает все компоненты **Transform2D** на заданное :ref:`int<class_int>`, включая :ref:`origin<class_Transform2D_property_origin>`. Это равномерно влияет на масштаб преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Делит все компоненты **Transform2D** на заданный :ref:`float<class_float>`, включая :ref:`origin<class_Transform2D_property_origin>`. Это равномерно влияет на масштаб преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Делит все компоненты **Transform2D** на заданное :ref:`int<class_int>`, включая :ref:`origin<class_Transform2D_property_origin>`. Это равномерно влияет на масштаб преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Возвращает ``true``, если компоненты обоих преобразований в точности равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Доступ к каждой оси (столбцу) этого преобразования по их индексу. Индекс ``0`` совпадает с :ref:`x<class_Transform2D_property_x>`, индекс ``1`` совпадает с :ref:`y<class_Transform2D_property_y>`, а индекс ``2`` совпадает с :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
