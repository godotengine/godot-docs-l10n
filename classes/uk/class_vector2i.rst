:github_url: hide

.. _class_Vector2i:

Vector2i
========

2D-вектор з цілочисельними координатами.

.. rst-class:: classref-introduction-group

Опис
--------

Двоелементна структура, яка може бути використана для представлення 2D сітчастих координат або будь-якої іншої пари цілих.

Він використовує цілі координати і тому бажано :ref:`Vector2<class_Vector2>`, коли потрібна точність. Зауважте, що значення обмежені 32 бітами, і на відміну від :ref:`Vector2<class_Vector2>` це не можна налаштувати варіантом побудови двигуна. Використовуйте :ref:`int<class_int>` або :ref:`PackedInt64Array<class_PackedInt64Array>`, якщо потрібні значення 64-бітних.

\ **Примітка:** У булевому контексті Vector2i оцінюватиме ``false``, якщо це дорівнює ``Vector2i(0, 0)``. Вектор2i завжди оцінять ``true``.

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
   | :ref:`int<class_int>` | :ref:`x<class_Vector2i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector2i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ )                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )               |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2<class_Vector2>`\ )                 |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`abs<class_Vector2i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`aspect<class_Vector2i_method_aspect>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clamp<class_Vector2i_method_clamp>`\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clampi<class_Vector2i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector2i_method_distance_squared_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector2i_method_distance_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector2i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector2i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`max<class_Vector2i_method_max>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector2i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`maxi<class_Vector2i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`min<class_Vector2i_method_min>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector2i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`mini<class_Vector2i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`sign<class_Vector2i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snapped<class_Vector2i_method_snapped>`\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snappedi<class_Vector2i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector2i_operator_neq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator *<class_Vector2i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator +<class_Vector2i_operator_sum_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator -<class_Vector2i_operator_dif_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator /<class_Vector2i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector2i_operator_lt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector2i_operator_lte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector2i_operator_eq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector2i_operator_gt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector2i_operator_gte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector2i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary+<class_Vector2i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary-<class_Vector2i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Vector2i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector2i_Axis>`

.. _class_Vector2i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_X** = ``0``

Значення переліку для осі X. Повертається методами :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. _class_Vector2i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_Y** = ``1``

Значення переліку для осі Y. Повертається методами :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Vector2i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector2i(0, 0)`` :ref:`🔗<class_Vector2i_constant_ZERO>`

Нульовий вектор — вектор, у якого всі компоненти встановлені в ``0``.

.. _class_Vector2i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector2i(1, 1)`` :ref:`🔗<class_Vector2i_constant_ONE>`

Одиничний вектор — вектор, у якого всі компоненти встановлені в ``1``.

.. _class_Vector2i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector2i(-2147483648, -2147483648)`` :ref:`🔗<class_Vector2i_constant_MIN>`

Мінімальний вектор, вектор з усіма компонентами, що дорівнює ``INT32_MIN``. Може використовуватися як негативний цілий еквівалент :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector2i(2147483647, 2147483647)`` :ref:`🔗<class_Vector2i_constant_MAX>`

Max векторний, вектор з усіма компонентами, що дорівнює ``INT32_MAX``. Може використовуватися в якості цілого еквівалента :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector2i(-1, 0)`` :ref:`🔗<class_Vector2i_constant_LEFT>`

Одиничний вектор ліворуч. Представляє напрямок ліворуч.

.. _class_Vector2i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector2i(1, 0)`` :ref:`🔗<class_Vector2i_constant_RIGHT>`

Одиничний вектор праворуч. Представляє напрямок праворуч.

.. _class_Vector2i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector2i(0, -1)`` :ref:`🔗<class_Vector2i_constant_UP>`

Вектор блоку. Я вниз в 2D, тому це векторні точки -Y.

.. _class_Vector2i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector2i(0, 1)`` :ref:`🔗<class_Vector2i_constant_DOWN>`

Вектор внизу. Я вниз в 2D, так що це векторні точки +Y.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Vector2i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector2i_property_x>`

Векторний компонент X. Також доступний за допомогою індексної позиції ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector2i_property_y>`

Векторний компонент Y. Також доступний за допомогою індексної позиції ``[1]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Vector2i_constructor_Vector2i:

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ ) :ref:`🔗<class_Vector2i_constructor_Vector2i>`

**Vector2i** з усіма компонентами, встановленими до ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )

**Vector2i** як копія даної **Vector2i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2<class_Vector2>`\ )

Конструює новий **Vector2i** з заданого :ref:`Vector2<class_Vector2>` шляхом скорочення дробових частин компонентів (округлення до нуля). Для іншої поведінки розгляньте можливість передачі результату :ref:`Vector2.ceil()<class_Vector2_method_ceil>`, :ref:`Vector2.floor()<class_Vector2_method_floor>` або :ref:`Vector2.round()<class_Vector2_method_round>` до цього конструктора.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ )

Constructs a new **Vector2i** з ``x`` і ``y``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Vector2i_method_abs:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_abs>`

Повертає новий вектор з усіма компонентами в абсолютних значеннях (тобто позитиву).

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **aspect**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_aspect>`

Повертаємо співвідношення сторін цього вектора, співвідношення :ref:`x<class_Vector2i_property_x>` до :ref:`y<class_Vector2i_property_y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clamp**\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_clamp>`

Повертає новий вектор, у якого всі компоненти обмежені між відповідними компонентами ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_clampi>`

Повертає новий вектор, у якого всі компоненти обмежені між ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_squared_to>`

Повертає квадрат відстані між цим вектором і ``to``.

Цей метод працює швидше, ніж :ref:`distance_to()<class_Vector2i_method_distance_to>`, тому надавайте йому перевагу, якщо потрібно порівнювати вектори або використовувати квадрат відстані у формулі.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_to>`

Повертає відстань між цим вектором і ``до``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length>`

Повертає довжину (величину) цього вектору.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length_squared>`

Повертає квадрат довжини (квадрат величини) цього вектора.

Цей метод працює швидше, ніж :ref:`length()<class_Vector2i_method_length>`, тому віддавайте йому перевагу, якщо вам потрібно порівняти вектори або потрібен квадрат відстані для якоїсь формули.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **max**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_max>`

Повертає вектор, кожен компонент якого є максимальним серед відповідних компонентів цього вектора та вектора ``with``. Еквівалентно ``Vector2i(maxi(x, with.x), maxi(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_max_axis_index>`

Повертає вісь найвищого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_X<class_Vector2i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_maxi>`

Повертає компонентний максимум цього вектора і ``with``, еквівалентно ``Vector2i(maxi(x, with), maxi(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **min**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_min>`

Повертає вектор, кожен компонент якого є мінімальним серед відповідного компонента цього вектора та вектора ``with``. Еквівалентно ``Vector2i(mini(x, with.x), mini(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_min_axis_index>`

Повертає вісь найнижчого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_Y<class_Vector2i_constant_AXIS_Y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_mini:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_mini>`

Повертає компонентний мінімум цього вектора та ``with``. Еквівалентно ``Vector2i(mini(x, with), mini(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_sign:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_sign>`

Повертає новий вектор, у якому кожен компонент приймає значення ``1``, якщо він додатний, ``-1``, якщо від'ємний, і ``0``, якщо нульовий. Результат ідентичний виклику :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для кожного компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snapped**\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_snapped>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох відповідних компонентів ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_snappedi>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Vector2i_operator_neq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_neq_Vector2i>`

Повертає ``true``, якщо вектори не рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mod_Vector2i>`

Отримує залишок кожного компонента **Vector2i** з компонентами даного **Vector2i**. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector2i(10, -20) % Vector2i(7, 8)) # Вивести (3, -4) 

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mod_int>`

Отримує залишок кожного компонента **Vector2i** із заданим :ref:`int<class_int>`. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector2i(10, -20) % 7) # Виводить (3, -6) 

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mul_Vector2i>`

Множить кожен компонент **Vector2i** на компоненти заданого **Vector2i**.

::

    print(Vector2i(10, 20) * Vector2i(3, 4)) # Виводить (30, 80)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_mul_float>`

Множить кожен компонент **Vector2i** на заданий :ref:`float<class_float>`. Повертає :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(10, 15) * 0.9) # Виводить (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mul_int>`

Множення кожного компонента **Vector2i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_sum_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator +**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_sum_Vector2i>`

Додає кожен компонент **Vector2i** за допомогою компонентів заданого **Vector2i**.

::

    print(Vector2i(10, 20) + Vector2i(3, 4)) # Виводить (13, 24)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_dif_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator -**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_dif_Vector2i>`

Віднімає кожен компонент **Vector2i** на компоненти заданого **Vector2i**.

::

    print(Vector2i(10, 20) - Vector2i(3, 4)) # Виводить (7, 16)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_div_Vector2i>`

Розділяє кожен компонент **Vector2i** на компоненти заданого **Vector2i**.

::

    print(Vector2i(10, 20) / Vector2i(2, 5)) # Виводить (5, 4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_div_float>`

Ділить кожен компонент **Vector2i** на задане число з плаваючою комою :ref:`float<class_float>`. Повертає :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(1, 2) / 2.5) # Prints (0.4, 0.8)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_div_int>`

Дивиди кожного компонента **Vector2i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lt_Vector2i>`

Порівняти два **Vector2i** вектори за першою перевіркою, якщо значення X лівого вектора менше X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку значеннями Y двох векторів. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lte_Vector2i>`

Порівняти два **Vector2i** вектори за першою перевіркою, якщо значення X лівого вектора менше або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку значеннями Y двох векторів. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_eq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_eq_Vector2i>`

Повертає ``true``, якщо вектори рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gt_Vector2i>`

Порівняйте два **Vector2i** вектори спочатку перевіряють, якщо значення X лівого вектора перевищує X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку значеннями Y двох векторів. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gte_Vector2i>`

Порівняйте два **Vector2i** вектори спочатку перевіряють, якщо значення X лівого вектора перевищує або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку значеннями Y двох векторів. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_idx_int>`

Доступ до векторних компонентів за допомогою їх ``index``. ``v[0]`` еквівалент ``v.x``, і ``v[1]`` еквівалент ``v.y``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector2i_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector2i_operator_unminus>`

Повертає негативне значення **Vector2i**. ``Vector2i(-v.x, -v.y)``. Ця операція закріплює напрямок вектора, зберігаючи однакову величину.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
