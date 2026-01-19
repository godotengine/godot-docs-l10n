:github_url: hide

.. _class_Vector3i:

Vector3i
========

3D-вектор з цілочисельними координатами.

.. rst-class:: classref-introduction-group

Опис
--------

3-елементна структура, яка може бути використана для представлення 3D-координат сітки або будь-якого іншого потрійного цілого.

Він використовує цілі координати і тому бажано :ref:`Vector3<class_Vector3>`, коли потрібна точність. Зауважте, що значення обмежені 32 біт, і на відміну від :ref:`Vector3<class_Vector3>` це не можна налаштувати варіантом побудови двигуна. Використовуйте :ref:`int<class_int>` або :ref:`PackedInt64Array<class_PackedInt64Array>`, якщо потрібні значення 64-бітних.

\ **Примітка:** У булевому контексті Вектор3i оцінюватиме ``false``, якщо це дорівнює ``Vector3i(0, 0)``. Вектор3i завжди оцінять ``true``.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

- :doc:`Векторна математика <../tutorials/math/vector_math>`

- `3Blue1Brown Сутність лінійної алгебри <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector3i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector3i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector3i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ )                                                                                  |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3<class_Vector3>`\ )                                            |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`abs<class_Vector3i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clamp<class_Vector3i_method_clamp>`\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clampi<class_Vector3i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector3i_method_distance_squared_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector3i_method_distance_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector3i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector3i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`max<class_Vector3i_method_max>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector3i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`maxi<class_Vector3i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`min<class_Vector3i_method_min>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector3i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`mini<class_Vector3i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`sign<class_Vector3i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snapped<class_Vector3i_method_snapped>`\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snappedi<class_Vector3i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector3i_operator_neq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator *<class_Vector3i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator +<class_Vector3i_operator_sum_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator -<class_Vector3i_operator_dif_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator /<class_Vector3i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector3i_operator_lt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector3i_operator_lte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector3i_operator_eq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector3i_operator_gt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector3i_operator_gte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector3i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary+<class_Vector3i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary-<class_Vector3i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Vector3i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector3i_Axis>`

.. _class_Vector3i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_X** = ``0``

Значення переліку для осі X. Повертається методами :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. _class_Vector3i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Y** = ``1``

Значення переліку для осі Y. Повертається методами :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. _class_Vector3i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Z** = ``2``

Значення переліку для осі Z. Повертається методами :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Vector3i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector3i(0, 0, 0)`` :ref:`🔗<class_Vector3i_constant_ZERO>`

Нульовий вектор — вектор, у якого всі компоненти встановлені в ``0``.

.. _class_Vector3i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector3i(1, 1, 1)`` :ref:`🔗<class_Vector3i_constant_ONE>`

Одиничний вектор — вектор, у якого всі компоненти встановлені в ``1``.

.. _class_Vector3i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector3i(-2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector3i_constant_MIN>`

Мінімальний вектор, вектор з усіма компонентами, що дорівнює ``INT32_MIN``. Може використовуватися як негативний цілий еквівалент :ref:`Vector3.INF<class_Vector3_constant_INF>`.

.. _class_Vector3i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector3i(2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector3i_constant_MAX>`

Max векторний, вектор з усіма компонентами, що дорівнює ``INT32_MAX``. Може використовуватися в якості цілого еквівалента :ref:`Vector3.INF<class_Vector3_constant_INF>`.

.. _class_Vector3i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector3i(-1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_LEFT>`

Вектор лівої одиниці. Представляє місцевий напрямок зліва, а також глобальний напрямок заходу.

.. _class_Vector3i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector3i(1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_RIGHT>`

Вектор правого блоку. Представляє місцевий напрямок права, а також глобальний напрямок на схід.

.. _class_Vector3i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector3i(0, 1, 0)`` :ref:`🔗<class_Vector3i_constant_UP>`

Одиничний вектор вверх.

.. _class_Vector3i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector3i(0, -1, 0)`` :ref:`🔗<class_Vector3i_constant_DOWN>`

Одиничний вектор вниз.

.. _class_Vector3i_constant_FORWARD:

.. rst-class:: classref-constant

**FORWARD** = ``Vector3i(0, 0, -1)`` :ref:`🔗<class_Vector3i_constant_FORWARD>`

Одиничний вектор вперед. Представляє локальний напрямок вперед і глобальний напрямок на північ.

.. _class_Vector3i_constant_BACK:

.. rst-class:: classref-constant

**BACK** = ``Vector3i(0, 0, 1)`` :ref:`🔗<class_Vector3i_constant_BACK>`

Одиничний вектор назад. Представляє локальний напрямок назад і глобальний напрямок на південь.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Vector3i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector3i_property_x>`

Векторний компонент X. Також доступний за допомогою індексної позиції ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector3i_property_y>`

Векторний компонент Y. Також доступний за допомогою індексної позиції ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector3i_property_z>`

Векторний компонент Z. Також доступний за допомогою індексної позиції ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Vector3i_constructor_Vector3i:

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ ) :ref:`🔗<class_Vector3i_constructor_Vector3i>`

**Vector3i** з усіма компонентами, встановленими до ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )

**Vector3i** як копія даної **Vector3i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3<class_Vector3>`\ )

Конструює новий **Vector3i** з заданого :ref:`Vector3<class_Vector3>` шляхом скорочення дробових частин компонентів (округлення до нуля). Для іншої поведінки розгляньте можливість передачі результату :ref:`Vector3.ceil()<class_Vector3_method_ceil>`, :ref:`Vector3.floor()<class_Vector3_method_floor>` або :ref:`Vector3.round()<class_Vector3_method_round>` до цього конструктора.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ )

Повернення **Vector3i** з заданими компонентами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Vector3i_method_abs:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_abs>`

Повертає новий вектор з усіма компонентами в абсолютних значеннях (тобто позитиву).

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clamp**\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_clamp>`

Повертає новий вектор, у якого всі компоненти обмежені між відповідними компонентами ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_clampi>`

Повертає новий вектор, у якого всі компоненти обмежені між ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_squared_to>`

Повертає квадрат відстані між цим вектором і ``to``.

Цей метод працює швидше, ніж :ref:`distance_to()<class_Vector3i_method_distance_to>`, тому надавайте йому перевагу, якщо потрібно порівнювати вектори або використовувати квадрат відстані у формулі.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_to>`

Повертає відстань між цим вектором і ``до``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length>`

Повертає довжину (величину) цього вектору.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length_squared>`

Повертає квадрат довжини (квадрат величини) цього вектора.

Цей метод працює швидше, ніж :ref:`length()<class_Vector3i_method_length>`, тому віддавайте йому перевагу, якщо вам потрібно порівняти вектори або потрібен квадрат відстані для якоїсь формули.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **max**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_max>`

Повертає вектор, кожен компонент якого є максимальним серед відповідних компонентів цього вектора та вектора ``with``. Еквівалентно ``Vector3i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_max_axis_index>`

Повертає вісь найвищого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_X<class_Vector3i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_maxi>`

Повертає компонентний максимум цього вектора і ``with``, еквівалентно ``Vector3i(maxi(x, with), maxi(y, with), maxi(z, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **min**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_min>`

Повертає вектор, кожен компонент якого є мінімальним серед відповідного компонента цього вектора та вектора ``with``. Еквівалентно ``Vector3i(mini(x, with.x), mini(y, with.y), mini(z, with.z))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_min_axis_index>`

Повертає вісь найнижчого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_Z<class_Vector3i_constant_AXIS_Z>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_mini:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_mini>`

Повертає компонентний мінімум цього вектора та ``with``. Еквівалентно ``Vector3i(mini(x, with), mini(y, with), mini(z, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_sign:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_sign>`

Повертає новий вектор, у якому кожен компонент приймає значення ``1``, якщо він додатний, ``-1``, якщо від'ємний, і ``0``, якщо нульовий. Результат ідентичний виклику :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для кожного компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snapped**\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_snapped>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох відповідних компонентів ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_snappedi>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Vector3i_operator_neq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_neq_Vector3i>`

Повертає ``true``, якщо вектори не рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mod_Vector3i>`

Отримує залишок кожного компонента **Vector3i** з компонентами даного **Vector3i**. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector3i(10, -20, 30) % Vector3i(7, 8, 9)) # Друк (3, -4, 3) 

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mod_int>`

Отримує залишок кожного компонента **Vector3i** із заданим :ref:`int<class_int>`. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector3i(10, -20, 30) % 7) # Друк (3, -6, 2) 

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mul_Vector3i>`

Множить кожен компонент **Vector3i** на компоненти заданого **Vector3i**.

::

    print(Vector3i(10, 20, 30) * Vector3i(3, 4, 5)) # Виводить (30, 80, 150)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_mul_float>`

Множить кожен компонент **Vector3i** на задане число з плаваючою комою :ref:`float<class_float>`. Повертає :ref:`Vector3<class_Vector3>`.

::

    print(Vector3i(10, 15, 20) * 0.9) # Виводить (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mul_int>`

Множення кожного компонента **Vector3i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_sum_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator +**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_sum_Vector3i>`

Додає кожен компонент **Vector3i** до компонентів заданого **Vector3i**.

::

    print(Vector3i(10, 20, 30) + Vector3i(3, 4, 5)) # Виводить (13, 24, 35)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_dif_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator -**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_dif_Vector3i>`

Віднімає кожну компоненту **Vector3i** від компонентів заданого **Vector3i**.

::

    print(Vector3i(10, 20, 30) - Vector3i(3, 4, 5)) # Виводить (7, 16, 25)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_div_Vector3i>`

Ділить кожну компоненту **Vector3i** на компоненти заданого **Vector3i**.

::

    print(Vector3i(10, 20, 30) / Vector3i(2, 5, 3)) # Виводить (5, 4, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_div_float>`

Ділить кожен компонент **Vector3i** на задане число з плаваючою комою :ref:`float<class_float>`. Повертає :ref:`Vector3<class_Vector3>`.

::

    print(Vector3i(1, 2, 3) / 2.5) # Prints (0.4, 0.8, 1.2)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_div_int>`

Дивиди кожного компонента **Vector3i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lt_Vector3i>`

Порівняти два **Vector3i** вектори за першою перевіркою, якщо значення X лівого вектора менше X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, а потім з значеннями Z. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lte_Vector3i>`

Порівняйте два **Vector3i** вектори спочатку перевіряють, якщо значення X лівого вектора менше або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, а потім з значеннями Z. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_eq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_eq_Vector3i>`

Повертає ``true``, якщо вектори рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gt_Vector3i>`

Порівняйте два **Vector3i** вектори спочатку перевіряють, якщо значення X лівого вектора перевищує X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, а потім з значеннями Z. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gte_Vector3i>`

Порівняйте два **Vector3i** вектори спочатку перевіряють, якщо значення X лівого вектора перевищує або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, а потім з значеннями Z. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_idx_int>`

Доступ до векторних компонентів за допомогою їх ``index``. ``v[0]`` еквівалент ``v.x``, ``v`` еквівалент ``v.y``, і ``v[2]`` еквівалент ``v.z``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector3i_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector3i_operator_unminus>`

Повертає негативне значення **Vector3i**. Це так само, як написано ``Vector3i(-v.x, -v.y, -v.z)``. Ця операція закріплює напрямок вектора, зберігаючи однакову величину.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
