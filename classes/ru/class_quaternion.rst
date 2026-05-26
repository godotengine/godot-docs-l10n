:github_url: hide

.. _class_Quaternion:

Quaternion
==========

Единичный кватернион, используемый для представления трехмерных вращений.

.. rst-class:: classref-introduction-group

Описание
----------------

The **Quaternion** built-in :ref:`Variant<class_Variant>` type is a 4D data structure that represents rotation in the form of a `Hamilton convention quaternion <https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation>`__. Compared to the :ref:`Basis<class_Basis>` type which can store both rotation and scale, quaternions can *only* store rotation.

A **Quaternion** is composed by 4 floating-point components: :ref:`w<class_Quaternion_property_w>`, :ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>`, and :ref:`z<class_Quaternion_property_z>`. These components are very compact in memory, and because of this some operations are more efficient and less likely to cause floating-point errors. Methods such as :ref:`get_angle()<class_Quaternion_method_get_angle>`, :ref:`get_axis()<class_Quaternion_method_get_axis>`, and :ref:`slerp()<class_Quaternion_method_slerp>` are faster than their :ref:`Basis<class_Basis>` counterparts.

For a great introduction to quaternions, see `this video by 3Blue1Brown <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__. You do not need to know the math behind quaternions, as Godot provides several helper methods that handle it for you. These include :ref:`slerp()<class_Quaternion_method_slerp>` and :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>`, as well as the ``*`` operator.

\ **Note:** Quaternions must be normalized before being used for rotation (see :ref:`normalized()<class_Quaternion_method_normalized>`).

\ **Note:** Similarly to :ref:`Vector2<class_Vector2>` and :ref:`Vector3<class_Vector3>`, the components of a quaternion use 32-bit precision by default, unlike :ref:`float<class_float>` which is always 64-bit. If double precision is needed, compile the engine with the option ``precision=double``.

\ **Note:** In a boolean context, a quaternion will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`. Otherwise, a quaternion will always evaluate to ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Видео 3Blue1Brown о кватернионах <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__

- `Онлайн-визуализация кватерниона <https://quaternions.online/>`__

- `Использование 3D-преобразований <../tutorials/3d/using_transforms.html#interpolating-with-quaternions>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Расширенная визуализация кватерниона <https://iwatake2222.github.io/rotation_master/rotation_master.html>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Конструкторы
------------------------

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

Методы
------------

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

Операторы
------------------

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

Константы
------------------

.. _class_Quaternion_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_Quaternion_constant_IDENTITY>`

Кватернион идентичности, представляющий отсутствие вращения. Имеет такое же вращение, как и :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

Если :ref:`Vector3<class_Vector3>` вращается (умножается) на этот кватернион, он не изменяется.

\ **Примечание:** В GDScript эта константа эквивалентна созданию :ref:`Quaternion<class_Quaternion_constructor_Quaternion>` без каких-либо аргументов. Ее можно использовать для того, чтобы сделать ваш код более понятным и для согласованности с C#.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Quaternion_property_w:

.. rst-class:: classref-property

:ref:`float<class_float>` **w** = ``1.0`` :ref:`🔗<class_Quaternion_property_w>`

Компонент W кватерниона. Это «реальная» часть.

\ **Примечание:** Компоненты кватерниона обычно не следует изменять напрямую.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Quaternion_property_x>`

X-компонента кватерниона. Это значение вдоль «мнимой» оси ``i``.

\ **Примечание:** Компоненты кватерниона обычно не следует изменять напрямую.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Quaternion_property_y>`

Компонент Y кватерниона. Это значение вдоль «мнимой» оси ``j``.

\ **Примечание:** Компоненты кватерниона обычно не следует изменять напрямую.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Quaternion_property_z>`

Z-компонента кватерниона. Это значение вдоль «мнимой» оси ``k``.

\ **Примечание:** Компоненты кватерниона обычно не следует изменять напрямую.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Quaternion_constructor_Quaternion:

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ ) :ref:`🔗<class_Quaternion_constructor_Quaternion>`

Создает **Quaternion**, идентичный :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

\ **Примечание:** В C# это создает **Quaternion**, все компоненты которого установлены в ``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Создает **Quaternion** как копию заданного **Quaternion**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )

Создает **Quaternion**, представляющий кратчайшую дугу между ``arc_from`` и ``arc_to``. Их можно представить как две точки, пересекающие поверхность сферы, с радиусом ``1.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Создает **Quaternion**, представляющий вращение вокруг ``axis`` на заданный ``angle`` в радианах. Ось должна быть нормализованным вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Создает **Quaternion** из заданного вращения :ref:`Basis<class_Basis>`.

Этот конструктор быстрее, чем :ref:`Basis.get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, но заданный базис должен быть *ортонормализован* (см. :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`). В противном случае конструктор завершается неудачей и возвращает :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ )

Создает **Quaternion**, определенный заданными значениями.

\ **Примечание:** Только нормализованные кватернионы представляют вращение; если эти значения не нормализованы, новый **Quaternion** не будет допустимым для вращения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Quaternion_method_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **angle_to**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_angle_to>`

Возвращает угол между этим кватернионом и ``to``. Это величина угла, на который вам нужно повернуть, чтобы перейти от одного к другому.

\ **Примечание:** Величина ошибки с плавающей точкой для этого метода аномально высока, поэтому такие методы, как ``is_zero_approx``, не будут работать надежно.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_dot:

.. rst-class:: classref-method

:ref:`float<class_float>` **dot**\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_dot>`

Возвращает скалярное произведение между этим кватернионом и ``with``.

Это эквивалентно ``(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_exp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **exp**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_exp>`

Возвращает экспоненту этого кватерниона. Ось вращения результата — нормализованная ось вращения этого кватерниона, угол результата — длина векторной части этого кватерниона.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_from_euler:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Quaternion_method_from_euler>`

Constructs a new **Quaternion** from the given :ref:`Vector3<class_Vector3>` of `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians. In Godot, Euler angles always use intrinsic order. This method always uses the intrinsic YXZ convention (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_angle>`

Возвращает угол поворота, представленный этим кватернионом.

\ **Примечание:** Кватернион должен быть нормализован.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_axis**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_axis>`

Возвращает ось вращения, представленную этим кватернионом.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Quaternion_method_get_euler>`

Returns this quaternion's rotation as a :ref:`Vector3<class_Vector3>` of `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians.

The order of each consecutive rotation can be changed with ``order`` (see :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` constants). In Godot, Euler angles always use intrinsic order. By default, the intrinsic YXZ convention is used (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): since we are decomposing, local Z (roll) is calculated first, then local X (pitch), and lastly local Y (yaw). When using the opposite method :ref:`from_euler()<class_Quaternion_method_from_euler>` to compose a rotation, this order is reversed.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_inverse:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **inverse**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_inverse>`

Возвращает обратную версию этого кватерниона, инвертируя знак каждого компонента, кроме :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_is_equal_approx>`

Возвращает ``true``, если этот кватернион и ``to`` приблизительно равны, вызывая :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_finite>`

Возвращает ``true``, если этот кватернион конечен, вызывая :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_normalized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_normalized>`

Возвращает ``true``, если этот кватернион нормализован. См. также :ref:`normalized()<class_Quaternion_method_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length>`

Возвращает длину этого кватерниона, также называемую величиной.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length_squared:

.. rst-class:: classref-method

:ref:`float<class_float>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length_squared>`

Возвращает длину этого кватерниона, возведенную в квадрат.

\ **Примечание:** Этот метод быстрее, чем :ref:`length()<class_Quaternion_method_length>`, поэтому предпочитайте его, если вам нужно только сравнить длины кватернионов.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_log:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **log**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_log>`

Возвращает логарифм этого кватерниона. Умножает ось вращения этого кватерниона на его угол вращения и сохраняет результат в векторной части возвращаемого кватерниона (:ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>` и :ref:`z<class_Quaternion_property_z>`). Действительная часть возвращаемого кватерниона (:ref:`w<class_Quaternion_property_w>`) всегда равна ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_normalized:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_normalized>`

Возвращает копию этого кватерниона, нормализованную так, что ее длина равна ``1.0``. См. также :ref:`is_normalized()<class_Quaternion_method_is_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerp**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerp>`

Выполняет сферически-линейную интерполяцию с кватернионом ``to``, заданным ``weight`` и возвращает результат. И этот кватернион, и ``to`` должны быть нормализованы.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerpni:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerpni**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerpni>`

Выполняет сферически-линейную интерполяцию с кватернионом ``to``, заданным ``weight`` и возвращает результат. В отличие от :ref:`slerp()<class_Quaternion_method_slerp>`, этот метод не проверяет, является ли путь вращения меньше 90 градусов. И этот кватернион, и ``to`` должны быть нормализованы.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate>`

Выполняет сферическую кубическую интерполяцию между кватернионами ``pre_a``, данным вектором, ``b`` и ``post_b`` на заданную величину ``weight``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate_in_time:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate_in_time**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate_in_time>`

Выполняет сферическую кубическую интерполяцию между кватернионами ``pre_a``, этим вектором, ``b`` и ``post_b`` на заданную величину ``weight``.

Он может выполнять более плавную интерполяцию, чем ``methodspheric_cubic_interpolate`` по значениям времени.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Quaternion_operator_neq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_neq_Quaternion>`

Возвращает ``true``, если компоненты обоих кватернионов не совсем равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Quaternion>`

Составляет (умножает) два кватерниона. Это вращает кватернион ``right`` (потомок) этим кватернионом (родитель).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Vector3>`

Поворачивает (умножает) вектор ``right`` на этот кватернион, возвращая :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_mul_float>`

Умножает каждый компонент **Quaternion** на правильное значение :ref:`float<class_float>`.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть большего выражения.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_mul_int>`

Умножает каждый компонент **Quaternion** на правильное значение :ref:`int<class_int>`.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть более крупного выражения.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_sum_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator +**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_sum_Quaternion>`

Добавляет каждый компонент левого **Quaternion** к правому **Quaternion**.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть большего выражения, например, аппроксимации промежуточного поворота между двумя соседними поворотами.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_dif_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator -**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_dif_Quaternion>`

Вычитает каждый компонент левого **Quaternion** из правого **Quaternion**.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть большего выражения.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_div_float>`

Делит каждый компонент **Quaternion** на правое значение :ref:`float<class_float>`.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть более крупного выражения.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_div_int>`

Делит каждый компонент **Quaternion** на правое значение :ref:`int<class_int>`.

Эта операция сама по себе не имеет смысла, но ее можно использовать как часть более крупного выражения.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_eq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_eq_Quaternion>`

Возвращает ``true``, если компоненты обоих кватернионов в точности равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_idx_int>`

Доступ к каждому компоненту этого кватерниона по их индексу.

Индекс ``0`` такой же, как :ref:`x<class_Quaternion_property_x>`, индекс ``1`` такой же, как :ref:`y<class_Quaternion_property_y>`, индекс ``2`` такой же, как :ref:`z<class_Quaternion_property_z>`, а индекс ``3`` такой же, как :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unplus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary+**\ (\ ) :ref:`🔗<class_Quaternion_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unminus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary-**\ (\ ) :ref:`🔗<class_Quaternion_operator_unminus>`

Возвращает отрицательное значение **Quaternion**. Это то же самое, что умножить все компоненты на ``-1``. Эта операция приводит к кватерниону, который представляет то же вращение.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
