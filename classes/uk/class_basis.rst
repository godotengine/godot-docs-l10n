:github_url: hide

.. _class_Basis:

Basis
=====

Матриця 3×3 для представлення тривимірного обертання та масштабу.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип **Basis** :ref:`Variant<class_Variant>` — це `матриця <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ розміром 3×3, яка використовується для представлення 3D-обертання, масштабування та зсуву. Вона часто застосовується в об’єкті :ref:`Transform3D<class_Transform3D>`.

\ **Basis** складається з 3 векторів осей, кожен з яких представляє стовпець матриці: :ref:`x<class_Basis_property_x>`, :ref:`y<class_Basis_property_y>` та :ref:`z<class_Basis_property_z>`. Довжина кожної осі (:ref:`Vector3.length()<class_Vector3_method_length>`) впливає на масштаб базису, тоді як напрямок усіх осей впливає на обертання. Зазвичай ці осі перпендикулярні одна до одної. Однак, коли ви обертаєте будь-яку вісь окремо, базис зазнає зсуву. Застосування зсунутого базису до 3D-моделі призведе до спотворення моделі.

\ **Basis** є:

- **Ортогональним**, якщо його осі перпендикулярні одна до одної.

- **Нормованим**, якщо довжина кожної осі дорівнює ``1.0``.

- **Однорідною**, якщо всі осі мають однакову довжину (див. ``метод get_scale``).

- **Ортонормованою**, якщо вона є одночасно ортогональною та нормалізованою, що дозволяє їй відображати лише обертання (див. ``метод orthonormalized``).

- **Конформна**, якщо вона є одночасно ортогональною та рівномірною, що гарантує відсутність спотворень.

Загальне введення дивіться у підручнику :doc:`Матриці та перетворення <../tutorials/math/matrices_and_transforms>`.

\ **Примітка:** Godot використовує `праворучну систему координат <https://en.wikipedia.org/wiki/Right-hand_rule>`__, що є загальноприйнятим стандартом. Щодо напрямків, у вбудованих типах, таких як :ref:`Camera3D<class_Camera3D>`, прийнято, що вісь -Z спрямована вперед (+X — праворуч, +Y — вгору, а +Z — назад). Інші об'єкти можуть використовувати інші угоди щодо напрямків. Для отримання додаткової інформації дивіться підручник `Угоди щодо напрямків 3D-ресурсів <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

\ **Примітка:** Матриці бази представлені у порядку `column-major <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__, що відповідає OpenGL. Однак внутрішньо вони зберігаються у порядку row-major, що відповідає DirectX.

\ **Примітка:** У булевому контексті базис буде обчислюватися як ``false``, якщо він дорівнює :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. В іншому випадку базис завжди обчислюватиметься як ``true``.

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

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

- `Демонстрація гри 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Конструктори
------------------------

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

Методи
------------

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

Оператори
------------------

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

Константи
------------------

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

Ідентичність ``Основа``. Це ортонормований базис без обертання, без зсуву та масштабом :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Це також означає, що: 

- :ref:`x<class_Basis_property_x>` вказує праворуч (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`); 

- :ref:`y<class_Basis_property_y>` вказує вгору (:ref:`Vector3.UP<class_Vector3_constant_UP>`); 

- :ref:`z<class_Basis_property_z>` вказує назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`). 

::
 
    var basis = Basis.IDENTITY 
    print("| X | Y | Z") 
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x]) 
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y]) 
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z]) 
    # Відбитки: 
    # | X | Y | Z 
    # | 1 | 0 | 0 
    # | 0 | 1 | 0 
    # | 0 | 0 | 1  

Якщо :ref:`Vector3<class_Vector3>` або інший **Basis** трансформується (помножується) на цю константу, перетворення не відбувається. 

\ **Примітка:** у GDScript ця константа еквівалентна створенню ``основи конструктора`` без будь-яких аргументів. Його можна використовувати, щоб зробити ваш код зрозумілішим і узгоджено з C#.

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

Коли будь-який базис множиться на :ref:`FLIP_X<class_Basis_constant_FLIP_X>`, він заперечує всі компоненти осі :ref:`x<class_Basis_property_x>` (стовпець X).

 Коли :ref:`FLIP_X<class_Basis_constant_FLIP_X>` помножити на будь-яку основу, вона заперечує компонент :ref:`Vector3.x<class_Vector3_property_x>` усіх осей (рядок X).

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

Коли будь-який базис множиться на :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>`, він заперечує всі компоненти осі :ref:`y<class_Basis_property_y>` (стовпець Y).

 Коли :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` помножити на будь-яку основу, вона заперечує компонент :ref:`Vector3.y<class_Vector3_property_y>` усіх осей (рядка Y).

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

Коли будь-який базис множиться на :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>`, він заперечує всі компоненти осі :ref:`z<class_Basis_property_z>` (стовпець Z).

 Коли :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` помножити на будь-яку основу, вона заперечує компонент :ref:`Vector3.z<class_Vector3_property_z>` усіх осей (рядок Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

Вісь X основи та стовпець ``0`` матриці.

 На основі тотожності цей вектор вказує праворуч (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

Вісь Y основи та стовпець ``1`` матриці.

 На основі тотожності цей вектор вказує вгору (:ref:`Vector3.UP<class_Vector3_constant_UP>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

Вісь Z основи та стовпець ``2`` матриці.

 На основі тотожності цей вектор вказує назад (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

Створює **Basis**, ідентичний :ref:`IDENTITY<class_Basis_constant_IDENTITY>`.

\ **Примітка:** у C# це створює **Basis** з усіма його компонентами, встановленими на :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Створює **Basis** як копію даного **Basis**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Будує **Basis**, який представляє лише обертання, обертаючись навколо осі ``axis`` на заданий ``angle``, у радіанах. Вісь має бути нормалізованим вектором.

\ **Примітка:** це те саме, що використовувати :ref:`rotated()<class_Basis_method_rotated>` на основі :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. З більш ніж одним кутом краще використовувати :ref:`from_euler()<class_Basis_method_from_euler>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Будує **Basis**, який представляє лише обертання від даного :ref:`Quaternion<class_Quaternion>`.

\ **Примітка: ** Кватерніони *лише* зберігають обертання, а не масштаб. Через це перетворення з **Basis** на :ref:`Quaternion<class_Quaternion>` не завжди можна скасувати.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

Будує **Basis** із 3-х осьових векторів. Це стовпці базисної матриці.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

Повертає `визначник <https://en.wikipedia.org/wiki/Determinant>`__ матриці цієї бази. Для просунутої математики це число може бути використане для визначення декількох атрибутів:

- Якщо визначник дорівнює точно ``0.0``, база не є оберненою (див. :ref:`inverse()<class_Basis_method_inverse>`).

- Якщо визначник є від'ємним числом, основа представляє від'ємну шкалу.

\ **Примітка:** Якщо шкала основи однакова для кожної осі, її визначник завжди дорівнює цій шкалі, піднесеної до степеня 3.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

Створює новий об’єкт **Basis**, який відображає лише обертання навколо заданого :ref:`Vector3<class_Vector3>` з `кутів Ейлера <https://en.wikipedia.org/wiki/Euler_angles>`__ у радіанах.

- :ref:`Vector3.x<class_Vector3_property_x>` повинен містити кут навколо осі :ref:`x<class_Basis_property_x>` (нахил);

- :ref:`Vector3.y<class_Vector3_property_y>` повинен містити кут навколо осі :ref:`y<class_Basis_property_y>` (відхилення);

- :ref:`Vector3.z<class_Vector3_property_z>` повинен містити кут навколо осі :ref:`z<class_Basis_property_z>` (крен).


.. tabs::

 .. code-tab:: gdscript

    # Створює Basis, вісь z якого спрямована вниз.
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # Виводить (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // Створює базис, вісь z якого спрямована вниз.
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // Виводить (0, -1, 0)



Порядок кожного послідовного обертання можна змінити за допомогою ``order`` (див. константи :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). У Godot кути Ейлера завжди використовують внутрішній порядок. За замовчуванням використовується внутрішня конвенція YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): базис спочатку обертається навколо локальної осі Y (рискання), потім навколо локальної осі X (нахил) і, нарешті, навколо локальної осі Z (крен). При використанні протилежного методу :ref:`get_euler()<class_Basis_method_get_euler>` для розкладання обертання цей порядок змінюється на зворотний.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

Створює новий **Basis**, який представляє лише масштаб, без обертання чи зсуву, із заданого вектора ``scale``.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))

    print(my_basis.x) # Виводить (2, 0, 0).
    print(my_basis.y) # Виводить (0, 4, 0).
    print(my_basis.z) # Виводить (0, 0, 8).

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(myBasis.X); // Виводить (2, 0, 0).
    GD.Print(myBasis.Y); // Виводить (0, 4, 0).
    GD.Print(myBasis.Z); // Виводить (0, 0, 8).



\ **Примітка.** У лінійній алгебрі матриця цього базису також відома як `діагональна матриця <https://en.wikipedia.org/wiki/Diagonal_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

Повертає обертання цієї бази у вигляді :ref:`Vector3<class_Vector3>` з `кутами Ейлера <https://en.wikipedia.org/wiki/Euler_angles>`__ у радіанах. Щодо повернутого значення:

- :ref:`Vector3.x<class_Vector3_property_x>` містить кут обертання навколо осі :ref:`x<class_Basis_property_x>` (нахил);

- :ref:`Vector3.y<class_Vector3_property_y>` містить кут навколо осі :ref:`y<class_Basis_property_y>` (відхилення);

- :ref:`Vector3.z<class_Vector3_property_z>` містить кут навколо осі :ref:`z<class_Basis_property_z>` (крен).

Порядок кожного послідовного обертання можна змінити за допомогою ``order`` (див. константи :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). У Godot кути Ейлера завжди використовують внутрішній порядок. За замовчуванням використовується внутрішня конвенція YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): оскільки ми розкладаємо, спочатку обчислюється локальна Z (крен), потім локальна X (нахил), і нарешті локальна Y (відхилення). При використанні протилежного методу :ref:`from_euler()<class_Basis_method_from_euler>` для складання обертання цей порядок змінюється на зворотний.

\ ** Примітка:** Щоб цей метод повертав правильний результат, базис повинен бути *ортонормальним* (див. ``метод orthonormalized``).

\ **Примітка:** Кути Ейлера набагато інтуїтивніші, але не підходять для 3D-математики. З огляду на це, розгляньте можливість використання методу :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>` замість цього, який повертає :ref:`Quaternion<class_Quaternion>`.

\ **Примітка:** У доці Inspector обертання бази часто відображається в кутах Ейлера (у градусах), як це відбувається у випадку властивості :ref:`Node3D.rotation<class_Node3D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

Повертає обертання бази як :ref:`Quaternion<class_Quaternion>`.

\ **Примітка:** Кватеніони набагато більше підходять для 3D-математики, але менш інтуїтивно зрозумілі. Для інтерфейсів користувача розгляньте можливість використання методу :ref:`get_euler()<class_Basis_method_get_euler>`, який повертає кути Ейлера.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

Повертає довжину кожної осі базису як :ref:`Vector3<class_Vector3>`. Якщо основа не зрізана, це коефіцієнт масштабування. На нього не впливає обертання.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
         Vector3(2, 0, 0),
         Vector3(0, 4, 0),
         Vector3(0, 0, 8)
     )
     # Обертання основи будь-яким способом зберігає її масштаб.
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # Друк (2, 4, 8).

 .. code-tab:: csharp

    var myBasis = new Basis(
         Vector3(2.0f, 0.0f, 0.0f),
         Vector3(0.0f, 4.0f, 0.0f),
         Vector3(0.0f, 0.0f, 8.0f)
     );
     // Обертання основи будь-яким способом зберігає її масштаб.
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(myBasis.Scale); // Виводить (2, 4, 8).



\ **Примітка.** Якщо значення, яке повертає :ref:`determinant()<class_Basis_method_determinant>`, є негативним, шкала також є негативною.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

Повертає `обернену до базисної матриці <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

Повертає ``true``, якщо цей базис конформний. Конформна основа є як *ортогональною* (осі перпендикулярні одна до одної), так і *однорідною* (осі мають однакову довжину). Цей метод може бути особливо корисним під час фізичних розрахунків.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

Повертає ``true``, якщо ця основа та ``b`` приблизно рівні, шляхом виклику :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для всіх компонентів вектора.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

Повертає ``true``, якщо ця основа скінченна, за викликом :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` на всіх векторних компонентах.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_orthonormal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthonormal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_orthonormal>`

Повертає ``true``, якщо цей базис є ортонормальним. Ортонормальний базис є одночасно *ортогональним* (осі перпендикулярні одна до одної) та *нормалізованим* (довжина кожної осі дорівнює ``1.0``). Цей метод може бути особливо корисним під час фізичних розрахунків.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

Створює нову ``основу`` з обертанням таким чином, що передня вісь (-Z) вказує на позицію ``target``. 

За замовчуванням вісь -Z (передня камера) розглядається як передня (вказує на те, що +X правильна). Якщо ``use_model_front`` має значення ``true``, вісь +Z (фронт активу) розглядається як передня (означає, що +X ліворуч) і вказує на позицію ``target``. 

Вісь вгору (+Y) спрямована якомога ближче до вектора ``up``, залишаючись перпендикулярною до передньої осі. Повернений базис є ортонормованим (див. :ref:`orthonormalized()<class_Basis_method_orthonormalized>`). 

\ ``target`` і ``up`` не можуть бути :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>` і не повинні бути колінеарними, щоб уникнути ненавмисного обертання навколо локальної осі Z.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

Повертає ортонормовану версію цього базису. Ортонормований базис є як *ортогональним* (осі перпендикулярні одна до одної), так і *нормованим* (осі мають довжину ``1``), що також означає, що він може представляти лише обертання.

Часто корисно викликати цей метод, щоб уникнути помилок округлення на ротаційній основі:


.. tabs::

 .. code-tab:: gdscript

    # Обертайте цей Node3D кожен кадр.
    func _process(delta):
        base = basis.rotated(Vector3.UP, TAU * delta)
        base = basis.rotated(Vector3.RIGHT, TAU * delta)
        base = basis.orthonormalized()

 .. code-tab:: csharp

    // Обертати цей Node3D кожен кадр.
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

Повертає цей базис, повернутий навколо заданої ``axis`` на ``angle`` (у радіанах). ``axis`` має бути нормалізованим вектором (див. :ref:`Vector3.normalized()<class_Vector3_method_normalized>`).

 Додатні значення повертають цей базис за годинниковою стрілкою навколо осі, а від’ємні значення обертають його проти годинникової стрілки.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2

    my_basis = my_basis.rotated(Vector3.UP, angle) # Обертання навколо осі вгору (yaw).
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # Обертання навколо правої осі (крок).
    my_basis = my_basis.rotated(Vector3.BACK, angle) # Обертання навколо задньої осі (перекочування).

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var angle= Mathf.Tau / 2.0f;

    myBasis = myBasis.Rotated(Vector3.Up, кут); // Обертання навколо осі вгору (рискання).
    myBasis = myBasis.Rotated(Vector3.Right, angle); // Поворот навколо правої осі (тангаж).
    myBasis = myBasis.Rotated(Vector3.Back, angle); // Поворот навколо задньої осі (перекат).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

Повертає цю базу з компонентами кожної осі, масштабованими за заданими компонентами ``scale``.

 Рядки базової матриці множаться на компоненти ``scale``. Ця операція має глобальний масштаб (щодо батьківської).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Основа(
         Vector3(1, 1, 1),Basis
         Vector3(2, 2, 2),
         Vector3(3, 3, 3)
     )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # Виводить (0, 2, -2).
    print(my_basis.y) # Виводить (0, 4, -4).
    print(my_basis.z) # Виводить (0, 6, -6).

 .. code-tab:: csharp

    var myBasis = new Basis(
         new Vector3(1.0f, 1.0f, 1.0f),
         new Vector3 (2.0f, 2.0f, 2.0f),
         new Vector3 (3.0f, 3.0f, 3.0f)
     );
    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Виводить (0, 2, -2).
    GD.Print(myBasis.Y); // Виводить (0, 4, -4).
    GD.Print(myBasis.Z); // Виводить (0, 6, -6).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

Повертає цей basis, при цьому кожна вісь масштабується на відповідний компонент у заданому ``scale``.

Стовпці базисної матриці множаться на компоненти ``scale``. Ця операція є локальним масштабуванням (відносно себе).

::

    [gdscript]
    var my_basis = Basis(
    Vector3(1, 1, 1),
    Vector3(2, 2, 2),
    Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

    print(my_basis.x) # Виводить (0.0, 0.0, 0.0)
    print(my_basis.y) # Виводить (4.0, 4.0, 4.0)
    print(my_basis.z) # Виводить (-6.0, -6.0, -6.0)
    [/gdscript]
    [csharp]
    var myBasis = new Basis(
    new Vector3(1.0f, 1.0f, 1.0f),
    new Vector3(2.0f, 2.0f, 2.0f),
    new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Виводить (0, 0, 0)
    GD.Print(myBasis.Y); // Виводить (4, 4, 4)
    GD.Print(myBasis.Z); // Виводить (-6, -6, -6)
    [/csharp][/codeblocks]

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

Виконує сферично-лінійну інтерполяцію з основою ``to`` із заданою вагою ``weight``. І цей базис, і ``to`` мають представляти обертання.

\ **Приклад: ** Плавно повертайте :ref:`Node3D<class_Node3D>` до цільової основи з часом за допомогою :ref:`Tween<class_Tween>`.


.. tabs::

var start_basis = Basis.IDENTITY

var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)



func _ready():

 create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)



func interpolate(weight):

 base = start_basis.slerp(target_basis, weight)


::


.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

Повертає транспонований скалярний добуток між ``with`` і віссю :ref:`x<class_Basis_property_x>` (див. :ref:`transponed()<class_Basis_method_transponed>`).

 Це еквівалентно ``basis.x.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

Повертає транспонований скалярний добуток між ``with`` і віссю :ref:`x<class_Basis_property_x>` (див. :ref:`transponed()<class_Basis_method_transponed>`).

 Це еквівалентно ``basis.x.dot(вектор)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

Повертає транспонований скалярний добуток між ``with`` і віссю :ref:`z<class_Basis_property_z>` (див. :ref:`transponed()<class_Basis_method_transponed>`).

 Це еквівалентно ``basis.z.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

Повертає транспоновану версію цієї основи. Це перетворює стовпці базової матриці на рядки, а її рядки – на стовпці.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
         Vector3(1, 2, 3),
         Vector3(4, 5, 6),
         Vector3(7, 8, 9)
     )
    my_basis = my_basis.transposed()

    print(my_basis.x) # Виводить (1, 4, 7).
    print(my_basis.y) # Виводить (2, 5, 8).
    print(my_basis.z) # Виводить (3, 6, 9).

 .. code-tab:: csharp

    var myBasis = new Basis(
         new Vector3 (1.0f, 2.0f, 3.0f),
         new Vector3 (4.0f, 5.0f, 6.0f),
         new Vector3 (7.0f, 8.0f, 9.0f)
     );
    myBasis = myBasis.Transposed();

    GD.Print(myBasis.X); // Виводить (1, 4, 7).
    GD.Print(myBasis.Y); // Виводить (2, 5, 8).
    GD.Print(myBasis.Z); // Виводить (3, 6, 9).



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

Повертає ``true``, якщо компоненти обох матриць **Basis** не рівні.

\ **Примітка:** Через помилки точності з плаваючою комою, краще використати :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, який є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

Перетворює (множить) основу ``right`` на цю основу.

 Це операція, яка виконується між батьківським і дочірнім :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

Перетворює (множить) вектор ``right`` на цю основу, повертаючи :ref:`Vector3<class_Vector3>`.

::

    [gdscript]
     # Основа, яка змінює місцями осі X/Z і подвоює масштаб.
    var my_basis = basis (Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # Prints (4, 2, 6)
    [/gdscript]
    [csharp]
     // Основа, яка змінює місцями осі X/Z і подвоює масштаб.
    var myBasis = new basis (new vector3(0, 2, 0), new vector3(2, 0, 0), new vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // Друкує (4, 2, 6)
    [/csharp][/codeblocks]

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

Множить усі компоненти **Basis** на заданий :ref:`float<class_float>`. Це рівномірно впливає на масштаб основи, змінюючи розмір усіх 3 осей на значення ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

Множить усі компоненти **Basis** на заданий :ref:`int<class_int>`. Це рівномірно впливає на масштаб основи, змінюючи розмір усіх 3 осей на значення ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

Розділяє всі компоненти **Basis** на заданий :ref:`float<class_float>`. Це рівномірно впливає на масштаб основи, змінюючи розмір усіх 3 осей на значення ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

Розділяє всі компоненти **Basis** на заданий :ref:`int<class_int>`. Це рівномірно впливає на масштаб основи, змінюючи розмір усіх 3 осей на значення ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

Повертає ``true``, якщо компоненти обох матриць **Basis** абсолютно рівні.

\ **Примітка:** Через помилки точності з плаваючою комою, краще використати :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>`, який є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

Звертається до кожної осі (стовпця) цього базису за їхнім індексом. Індекс ``0`` такий самий, як :ref:`x<class_Basis_property_x>`, індекс ``1`` такий самий, як :ref:`y<class_Basis_property_y>`, а індекс ``2`` такий самий, як :ref:`z<class_Basis_property_z>`.

\ **Примітка:** у C++ цей оператор звертається до рядків базисної матриці, *а не* до стовпців. Для такої самої поведінки, як і мови сценаріїв, використовуйте методи ``set_column`` і ``get_column``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
