:github_url: hide

.. _class_Transform3D:

Transform3D
===========

Матрица 3×4, представляющая трехмерное преобразование.

.. rst-class:: classref-introduction-group

Описание
----------------

The **Transform3D** built-in :ref:`Variant<class_Variant>` type is a 3×4 matrix representing a transformation in 3D space. It contains a :ref:`Basis<class_Basis>`, which on its own can represent rotation, scale, and shear. Additionally, combined with its own :ref:`origin<class_Transform3D_property_origin>`, the transform can also represent a translation.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Godot uses a `right-handed coordinate system <https://en.wikipedia.org/wiki/Right-hand_rule>`__, which is a common standard. For directions, the convention for built-in types like :ref:`Camera3D<class_Camera3D>` is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the `3D asset direction conventions <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ tutorial.

\ **Note:** In a boolean context, a Transform3D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`. Otherwise, a Transform3D will always evaluate to ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Матрицы и преобразования <../tutorials/math/matrices_and_transforms>`

- :doc:`Использование 3D-преобразований <../tutorials/3d/using_transforms>`

- `Демонстрация матричных преобразований <https://godotengine.org/asset-library/asset/2787>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация игры 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

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

Методы
------------

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

Операторы
------------------

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

Константы
------------------

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

Тождество **Transform3D**. Это преобразование без перемещения, без вращения и масштабом :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Его :ref:`basis<class_Transform3D_property_basis>` равен :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. Это также означает, что:

- Его :ref:`Basis.x<class_Basis_property_x>` указывает вправо (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Его :ref:`Basis.y<class_Basis_property_y>` указывает вверх (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Его :ref:`Basis.z<class_Basis_property_z>` указывает назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | Origin")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # Выводит:
    # | X | Y | Z | Origin
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

Если :ref:`Vector3<class_Vector3>`, :ref:`AABB<class_AABB>`, :ref:`Plane<class_Plane>`, :ref:`PackedVector3Array<class_PackedVector3Array>` или другой **Transform3D** преобразуется (умножается) этой константой, то преобразование не происходит.

\ **Примечание:** В GDScript эта константа эквивалентна созданию :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` без каких-либо аргументов. Ее можно использовать для того, чтобы сделать ваш код более понятным и для согласованности с C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

**Transform3D** с зеркальным отражением, примененным перпендикулярно плоскости YZ. Его :ref:`basis<class_Transform3D_property_basis>` равен :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`.

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

**Transform3D** с зеркальным отражением, примененным перпендикулярно плоскости XZ. Его :ref:`basis<class_Transform3D_property_basis>` равен :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`.

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

**Transform3D** с зеркальным отражением, примененным перпендикулярно плоскости XY. Его :ref:`basis<class_Transform3D_property_basis>` равен :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

:ref:`Basis<class_Basis>` этого преобразования. Он состоит из 3 осей (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` и :ref:`Basis.z<class_Basis_property_z>`). Вместе они представляют вращение, масштаб и сдвиг преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

Смещение трансляции этого преобразования. В трехмерном пространстве это можно рассматривать как позицию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Создает **Transform3D**, идентичный :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`.

\ **Примечание:** В C# это создает **Transform3D** с его :ref:`origin<class_Transform3D_property_origin>` и компонентами его :ref:`basic<class_Transform3D_property_basic>`, установленными на :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Создает **Transform3D** как копию заданного **Transform3D**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Создает **Transform3D** из :ref:`Basis<class_Basis>` и :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Создает **Transform3D** из :ref:`Projection<class_Projection>`. Поскольку **Transform3D** — это матрица 3×4, а :ref:`Projection<class_Projection>` — это матрица 4×4, эта операция обрезает последнюю строку матрицы проекции (``from.x.w``, ``from.y.w``, ``from.z.w`` и ``from.w.w`` не включены в новое преобразование).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Создает **Transform3D** из четырех значений :ref:`Vector3<class_Vector3>` (также называемых столбцами матрицы).

Первые три аргумента — это оси :ref:`basic<class_Transform3D_property_basic>` (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` и :ref:`Basis.z<class_Basis_property_z>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Возвращает инвертированную версию этого преобразования. В отличие от :ref:`inverse()<class_Transform3D_method_inverse>`, этот метод работает практически с любым :ref:`basis<class_Transform3D_property_basis>`, включая неравномерные, но медленнее. См. также :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Примечание:** Чтобы этот метод возвращал правильно, :ref:`basis<class_Transform3D_property_basis>` преобразования должен иметь определитель, который не равен точно ``0.0`` (см. :ref:`Basis.determinant()<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

Возвращает результат линейной интерполяции между этим преобразованием и ``xform`` по заданному ``weight``. 

\ ``weight`` должен быть между ``0.0`` и ``1.0`` (включительно). Значения вне этого диапазона разрешены и могут использоваться для выполнения *экстраполяции*.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Возвращает `инвертированную версию этого преобразования <https://en.wikipedia.org/wiki/Invertible_matrix>`__. См. также :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Примечание:** Чтобы этот метод возвращал правильно, :ref:`basis<class_Transform3D_property_basis>` преобразования должен быть *ортонормальным* (см. :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`). Это означает, что базис должен представлять только поворот. Если это не так, используйте вместо этого :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

Возвращает ``true``, если это преобразование и ``xform`` приблизительно равны, путем запуска :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

Возвращает ``true``, если это преобразование конечно, вызывая :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

Возвращает копию этого преобразования, повернутую так, чтобы прямая ось (-Z) указывала на позицию ``target``.

Верхняя ось (+Y) указывает как можно ближе к вектору ``up``, оставаясь перпендикулярной прямой оси. Результирующее преобразование ортонормализовано. Существующая информация о вращении, масштабе и наклоне из исходного преобразования отбрасывается. Векторы ``target`` и ``up`` не могут быть нулевыми, не могут быть параллельны друг другу и определены в глобальном/родительском пространстве.

Если ``use_model_front`` равно ``true``, ось +Z (фронт актива) рассматривается как прямая (подразумевается, что +X слева) и указывает на позицию ``target``. По умолчанию ось -Z (камера впереди) рассматривается как прямая (подразумевается, что +X справа).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Возвращает копию этого преобразования с его :ref:`basis<class_Transform3D_property_basis>` ортонормированным. Ортонормированный базис является как *перпендикулярный* (оси перпендикулярны друг другу), так и *нормализованным* (оси имеют длину ``1.0``), что также означает, что он может представлять только поворот. См. также :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Возвращает копию этого преобразования, повернутую вокруг заданной ``axis`` на заданный ``angle`` (в радианах).

\ ``axis`` должен быть нормализованным вектором (см. :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Если ``angle`` положительный, базис поворачивается против часовой стрелки вокруг оси.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование вращения ``R`` слева, т. е. ``R * X``.

Это можно рассматривать как преобразование относительно глобального/родительского кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Возвращает копию этого преобразования, повернутую вокруг заданной ``axis`` на заданный ``angle`` (в радианах).

\ ``axis`` должен быть нормализованным вектором в локальной системе координат преобразования. Например, для поворота вокруг локальной оси X используйте :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование поворота ``R`` справа, т. е. ``X * R``.

Это можно рассматривать как преобразование относительно локальной системы отсчета.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

Возвращает копию этого преобразования, масштабированную заданным коэффициентом ``scale``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее масштабирующее преобразование ``S`` слева, т. е. ``S * X``.

Это можно рассматривать как преобразование относительно глобального/родительского кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

Возвращает копию этого преобразования, масштабированную заданным коэффициентом ``scale``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее масштабирующее преобразование ``S`` справа, т. е. ``X * S``.

Это можно рассматривать как преобразование относительно локального кадра.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

Возвращает копию этого преобразования, переведенную на заданное ``offset``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование перевода ``T`` слева, т. е. ``T * X``.

Это можно рассматривать как преобразование относительно глобального/родительского фрейма.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

Возвращает копию этого преобразования, переведенную на заданное ``offset``.

Этот метод является оптимизированной версией умножения заданного преобразования ``X`` на соответствующее преобразование перевода ``T`` справа, т. е. ``X * T``.

Это можно рассматривать как преобразование относительно локального фрейма.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

Возвращает ``true``, если компоненты обоих преобразований не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

Преобразует (умножает) :ref:`AABB<class_AABB>` на эту матрицу преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

Преобразует (умножает) каждый элемент :ref:`Vector3<class_Vector3>` заданного :ref:`PackedVector3Array<class_PackedVector3Array>` на эту матрицу преобразования.

На больших массивах эта операция выполняется намного быстрее, чем преобразование каждого :ref:`Vector3<class_Vector3>` по отдельности.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

Преобразует (умножает) :ref:`Plane<class_Plane>` на эту матрицу преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

Преобразует (умножает) это преобразование на преобразование ``right``.

Это операция, выполняемая между родительским и дочерним :ref:`Node3D<class_Node3D>`-ми.

\ **Примечание:** Если вам нужно изменить только один атрибут этого преобразования, рассмотрите возможность использования одного из следующих методов:

- Для перевода см. :ref:`moved()<class_Transform3D_method_moved>` или :ref:`moved_local()<class_Transform3D_method_moved_local>`.

- Для поворота см. :ref:`rotated()<class_Transform3D_method_rotated>` или :ref:`rotated_local()<class_Transform3D_method_rotated_local>`.

- Для масштабирования см. :ref:`scaled()<class_Transform3D_method_scaled>` или :ref:`scaled_local()<class_Transform3D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

Преобразует (умножает) :ref:`Vector3<class_Vector3>` на эту матрицу преобразования.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

Умножает все компоненты **Transform3D** на заданный :ref:`float<class_float>`, включая :ref:`origin<class_Transform3D_property_origin>`. Это влияет на масштаб преобразования равномерно, масштабируя :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

Умножает все компоненты **Transform3D** на заданное :ref:`int<class_int>`, включая :ref:`origin<class_Transform3D_property_origin>`. Это влияет на масштаб преобразования равномерно, масштабируя :ref:`basic<class_Transform3D_property_basic>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

Делит все компоненты **Transform3D** на заданный :ref:`float<class_float>`, включая :ref:`origin<class_Transform3D_property_origin>`. Это равномерно влияет на масштаб преобразования, масштабируя :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

Делит все компоненты **Transform3D** на заданное :ref:`int<class_int>`, включая :ref:`origin<class_Transform3D_property_origin>`. Это равномерно влияет на масштаб преобразования, масштабируя :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

Возвращает ``true``, если компоненты обоих преобразований в точности равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` вместо этого, что более надежно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
