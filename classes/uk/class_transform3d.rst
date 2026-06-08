:github_url: hide

.. _class_Transform3D:

Transform3D
===========

3×4 матриця, що представляє трансформацію 3D.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип :ref:`Variant<class_Variant>` **Transform3D** — це матриця розміром 3×4, що представляє перетворення у тривимірному просторі. Вона містить :ref:`Basis<class_Basis>`, який сам по собі може представляти обертання, масштабування та зсув. Крім того, у поєднанні з власним :ref:`origin<class_Transform3D_property_origin>` це перетворення може також представляти паралельне переміщення.

Загальне введення дивіться у підручнику :doc:`Матриці та перетворення <../tutorials/math/matrices_and_transforms>`.

\ **Примітка:** Godot використовує `праворучну систему координат <https://en.wikipedia.org/wiki/Right-hand_rule>`__, що є загальноприйнятим стандартом. Щодо напрямків, у вбудованих типах, таких як :ref:`Camera3D<class_Camera3D>`, прийнято, що вісь -Z спрямована вперед (+X — праворуч, +Y — вгору, а +Z — назад). Інші об'єкти можуть використовувати інші угоди щодо напрямків. Для отримання додаткової інформації дивіться підручник `Угоди щодо напрямків 3D-ресурсів <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

\ **Примітка:** У булевому контексті Transform3D обчислюється як ``false``, якщо дорівнює :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`. В іншому випадку Transform3D завжди обчислюється як ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

- :doc:`Матриці та перетворення <../tutorials/math/matrices_and_transforms>`

- :doc:`Використання 3D трансформацій <../tutorials/3d/using_transforms>`

- `Демонстраційне перетворення матриці <https://godotengine.org/asset-library/asset/2787>`__

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрація гри 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Конструктори
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

Методи
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

Оператори
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

Константи
------------------

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

Тотожність **Transform3D**. Це перетворення без переміщення, без обертання та з масштабом :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Його :ref:`basis<class_Transform3D_property_basis>` дорівнює :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. Це також означає, що:

- Його :ref:`Basis.x<class_Basis_property_x>` вказує праворуч (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Його :ref:`Basis.y<class_Basis_property_y>` вказує вгору (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Його :ref:`Basis.z<class_Basis_property_z>` вказує назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | Походження")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # Виводить:
    # | X | Y | Z | Походження
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

Якщо :ref:`Vector3<class_Vector3>`, :ref:`AABB<class_AABB>`, :ref:`Plane<class_Plane>`, :ref:`PackedVector3Array<class_PackedVector3Array>` або інший **Transform3D** перетворюється (множиться) на цю константу, перетворення не відбувається.

\ **Примітка:** У GDScript ця константа еквівалентна створенню **Transform3D** без будь-яких аргументів. Її можна використовувати для того, щоб зробити ваш код зрозумілішим та для узгодженості з C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

**Transform3D** з дзеркальним відображенням, застосованим перпендикулярно до площини YZ. Його :ref:`basis<class_Transform3D_property_basis>` дорівнює :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`.

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

**Transform3D** з дзеркалами наноситься перпендикулярно до площини XZ. Його :ref:`basis<class_Transform3D_property_basis>` дорівнює :ref:`Basis. FLIP_Y<class_Basis_constant_ FLIP_Y>`.

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

**Transform3D** з дзеркалами наноситься перпендикулярно до площини XY. Його :ref:`basis<class_Transform3D_property_basis>` дорівнює :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

:ref:`Basis<class_Basis>` цього перетворення. Вона складається з 3 осей (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>`, і :ref:`Basis.z<class_Basis_property_z>`). Разом вони представляють обертання, масштаб та зсув перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

Переклад цього перетворення. У 3D-просторі це можна побачити як позицію.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Створює **Transform3D**, ідентичний :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`. 

\ **Примітка:** У C# це створює **Transform3D** із :ref:`origin<class_Transform3D_property_origin>` і компонентами його :ref:`basis<class_Transform3D_property_basis>`, встановленим у :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Конструює **Transform3D** як копію заданого **Transform3D**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Конструює **Transform3D** з :ref:`Basis<class_Basis>` та :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Створює **Transform3D** з :ref:`Projection<class_Projection>`. Оскільки **Transform3D** — це матриця 3×4, а :ref:`Projection<class_Projection>` — матриця 4×4, ця операція обрізає останній рядок матриці проекцій (``from.x.w``, ``from.y.w``, ``from.z.w`` та ``from.w.w`` не включені до нового перетворення).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Constructs a **Transform3D** з чотирьох :ref:`Vector3<class_Vector3>` значення (також називається матриці стовпчиків).

Перші три аргументи — ось :ref:`basis<class_Transform3D_property_basis>` (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>`, і :ref:`Basis.z<class_Basis_property_z>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Повертає інвертовану версію цього перетворення. На відміну від :ref:`inverse()<class_Transform3D_method_inverse>`, цей метод працює майже з будь-яким :ref:`basis<class_Transform3D_property_basis>`, включно з неоднорідними, але повільніше. Дивіться також :ref:`Basis.inverse()<class_Basis_method_inverse>`. 

\ **Примітка:** Щоб цей метод повертав належні результати, ``база-член`` перетворення повинна мати визначник, який не є точно ``0.0`` (див. :ref:`Basis.determinant()<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

Повертає результат лінійної інтерполяції між цим перетворенням і ``xform`` за заданим ``weight``.

\ ``weight`` має бути між ``0.0`` і ``1.0`` (включно). Значення за межами цього діапазону дозволені, і натомість їх можна використовувати для *екстраполяції*.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Повертає `інвертовану версію цього перетворення <https://en.wikipedia.org/wiki/Invertible_matrix>`__. Дивіться також :ref:`Basis.inverse()<class_Basis_method_inverse>`. 

\ **Примітка:** Щоб цей метод повертав належним чином, ``базис-член`` перетворення має бути *ортонормованим* (див. :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`). Це означає, що основа повинна представляти лише обертання. Якщо це не так, замість цього використовуйте :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

Повертає ``true``, якщо це перетворення і ``xform`` є приблизно рівні, запустивши :ref:`@GlobalScope.is_equal_about()<class_@GlobalScope_method_is_equal_about>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

Повертає ``true``, якщо це перетворення скінченно, викликаючи :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

Повертає копію цього перетворення, повернуту так, що вісь вперед (-Z) вказує на позицію ``target``.

Вісь вгору (+Y) вказує якомога ближче до вектора ``up``, залишаючись перпендикулярною до осі вперед. Отримане перетворення ортонормується. Існуюча інформація про обертання, масштаб та нахил з початкового перетворення відкидається. Вектори ``target`` та ``up`` не можуть бути нульовими, не можуть бути паралельними один одному та визначені в глобальному/батьківському просторі.

Якщо ``use_model_front`` має значення ``true``, вісь +Z (спереду ресурсу) розглядається як вперед (мається на увазі, що +X ліворуч) та вказує на позицію ``target``. За замовчуванням вісь -Z (вперед камери) розглядається як вперед (мається на увазі, що +X праворуч).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Повертає копію цього перетворення з ортонормованим :ref:`basis<class_Transform3D_property_basis>`. Ортонормований базис є як *ортогональним* (осі перпендикулярні одна до одної), так і *нормованим* (осі мають довжину ``1.0``), що також означає, що він може представляти лише обертання. Дивіться також :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Повертає копію цього перетворення, повернуту навколо заданої ``axis`` на заданий ``angle`` (у радіанах). 

\ ``axis`` має бути нормалізованим вектором (див. :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Якщо ``angle`` додатний, базис обертається проти годинникової стрілки навколо осі. 

Цей метод є оптимізованою версією множення заданого перетворення ``X`` на відповідне перетворення обертання ``R`` зліва, тобто ``R * X``. 

Це можна розглядати як трансформацію щодо глобального/батьківського кадру.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Повертає копію цього перетворення, повернуту навколо заданої ``axis`` на заданий ``angle`` (у радіанах). 

\ ``axis`` має бути нормалізованим вектором у локальній системі координат перетворення. Наприклад, щоб обертати навколо локальної осі X, використовуйте :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`. 

Цей метод є оптимізованою версією множення заданого перетворення ``X`` на відповідне перетворення обертання ``R`` справа, тобто ``X * R``. 

Це можна розглядати як трансформацію відносно локальної рамки.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

Повертає копію цього трансформаційного вагового коефіцієнта ``scale``.

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перетворенням масштабування ``S`` з лівого, тобто ``S * X``.

Це може бути перетворена з точки зору глобального/парентного каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

Повертає копію цього трансформаційного вагового коефіцієнта ``scale``.

Цей метод є оптимізованим варіантом помноження даної трансформації ``X`` з відповідним перетворенням масштабування ``S`` з правого, тобто ``X * S``.

Це можна побачити як перетворювати по відношенню до локального каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

Повертає копію цього перетворення, що перекладається з вказаного ``offset``.

Цей метод є оптимізованим варіантом розмноження даної трансформації ``X`` з відповідним перекладом ``T`` з лівого, тобто ``T * X``.

Це може бути перетворена з точки зору глобального/парентного каркасу.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

Повертає копію цього перетворення, що перекладається з вказаного ``offset``.

Цей метод є оптимізованим варіантом розмноження даної трансформації ``X`` з відповідним перекладом ``T`` з правого, тобто ``X * T``.

Це можна побачити як перетворювати по відношенню до локального каркасу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

Повертаємо ``true``, якщо компоненти обох трансформаторів не рівні.

\ **Примітка:** У зв'язку з похибками з плаваючою точкою, розглянемо використання :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` замість того, яка є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

Трансформи (multiplies) :ref:`AABB<class_AABB>` за допомогою цієї матриці перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

Трансформи (multiplies) кожен :ref:`Vector3<class_Vector3>` елемент даної :ref:`PackedVector3Array<class_PackedVector3Array>` за допомогою цієї матриці перетворення.

На більших масивах ця операція набагато швидше, ніж перетворення кожного :ref:`Vector3<class_Vector3>` індивідуально.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

Трансформи (multiplies) :ref:`Plane<class_Plane>` цієї матриці перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

Перетворює (множить) це перетворення на перетворення ``right``.

Це операція, що виконується між батьківським та дочірнім :ref:`Node3D<class_Node3D>`.

\ **Примітка:** Якщо вам потрібно змінити лише один атрибут цього перетворення, розгляньте можливість використання одного з наступних методів:

- Щодо перетворення див. :ref:`translated()<class_Transform3D_method_translated>` або :ref:`translated_local()<class_Transform3D_method_translated_local>`.

- Щодо обертання див. :ref:`rotated()<class_Transform3D_method_rotated>` або :ref:`rotated_local()<class_Transform3D_method_rotated_local>`.

- Щодо масштабування див. :ref:`scaled()<class_Transform3D_method_scaled>` або :ref:`scaled_local()<class_Transform3D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

:ref:`Vector3<class_Vector3>` за допомогою цієї матриці перетворення.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

Множить всі компоненти **Transform3D** на задане :ref:`float<class_float>`, включаючи :ref:`origin<class_Transform3D_property_origin>`. This рівномірно впливає на масштаб перетворення, масштабуючи :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

Багатофункціональні всі компоненти **Transform3D** заданими :ref:`int<class_int>`, включаючи :ref:`origin<class_Transform3D_property_origin>`. Це впливає на шкалу трансформатора рівномірно, масштабування :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

Дивиди всі компоненти ``Трансформ3D``, в тому числі :ref:`origin<class_Transform3D_property_origin>`. Це впливає на шкалу трансформатора рівномірно, масштабування :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

Дивиди всі компоненти ``Трансформ3D``, в тому числі :ref:`origin<class_Transform3D_property_origin>`. Це впливає на шкалу трансформатора рівномірно, масштабування :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

Повертає ``true``, якщо компоненти обох перетворень абсолютно рівні.

\ **Примітка:** Через помилки точності чисел з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` замість цього, що є більш реалістичним.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
