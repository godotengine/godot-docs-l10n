:github_url: hide

.. _class_Vector4i:

Vector4i
========

4D вектор з цілочисельними координатами.

.. rst-class:: classref-introduction-group

Опис
--------

4-елементна структура, яка може бути використана для представлення координат 4D сітки або будь-якого іншого квадроцикла цілих чисел.

Він використовує цілі координати і тому бажано :ref:`Vector4<class_Vector4>`, коли потрібна точність. Зауважте, що значення обмежені 32 бітами, і на відміну від :ref:`Vector4<class_Vector4>` це не можна налаштувати варіантом побудови двигуна. Використовуйте :ref:`int<class_int>` або :ref:`PackedInt64Array<class_PackedInt64Array>`, якщо потрібні значення 64-бітних.

\ **Примітка:** У булевому контексті Vector4i оцінюватиме ``false``, якщо це дорівнює ``Vector4i(0, 0, 0)``. Вектор4i завжди оцінять ``true``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`w<class_Vector4i_property_w>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector4i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector4i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector4i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ )                                                                                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4<class_Vector4>`\ )                                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`abs<class_Vector4i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clamp<class_Vector4i_method_clamp>`\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clampi<class_Vector4i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector4i_method_distance_squared_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector4i_method_distance_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector4i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector4i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`max<class_Vector4i_method_max>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector4i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`maxi<class_Vector4i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`min<class_Vector4i_method_min>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector4i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`mini<class_Vector4i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`sign<class_Vector4i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snapped<class_Vector4i_method_snapped>`\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snappedi<class_Vector4i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector4i_operator_neq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator *<class_Vector4i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator +<class_Vector4i_operator_sum_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator -<class_Vector4i_operator_dif_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator /<class_Vector4i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector4i_operator_lt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector4i_operator_lte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector4i_operator_eq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector4i_operator_gt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector4i_operator_gte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector4i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary+<class_Vector4i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary-<class_Vector4i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Vector4i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector4i_Axis>`

.. _class_Vector4i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_X** = ``0``

Значення переліку для осі X. Повертається методами :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Y** = ``1``

Значення переліку для осі Y. Повертається методами :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Z** = ``2``

Значення переліку для осі Z. Повертається методами :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_W:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_W** = ``3``

Значення переліку для осі W. Повертається методами :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` і :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Vector4i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector4i(0, 0, 0, 0)`` :ref:`🔗<class_Vector4i_constant_ZERO>`

Нульовий вектор — вектор, у якого всі компоненти встановлені в ``0``.

.. _class_Vector4i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector4i(1, 1, 1, 1)`` :ref:`🔗<class_Vector4i_constant_ONE>`

Одиничний вектор — вектор, у якого всі компоненти встановлені в ``1``.

.. _class_Vector4i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector4i_constant_MIN>`

Мінімальний вектор, вектор з усіма компонентами, що дорівнює ``INT32_MIN``. Може використовуватися як негативний цілий еквівалент :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. _class_Vector4i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector4i(2147483647, 2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector4i_constant_MAX>`

Max векторний, вектор з усіма компонентами, що дорівнює ``INT32_MAX``. Може використовуватися в якості цілого еквівалента :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Vector4i_property_w:

.. rst-class:: classref-property

:ref:`int<class_int>` **w** = ``0`` :ref:`🔗<class_Vector4i_property_w>`

Компонент Вектора W. Також доступні за допомогою індексного положення `` [3]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector4i_property_x>`

Векторний компонент X. Також доступний за допомогою індексної позиції ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector4i_property_y>`

Векторний компонент Y. Також доступний за допомогою індексної позиції ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector4i_property_z>`

Векторний компонент Z. Також доступний за допомогою індексної позиції ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Vector4i_constructor_Vector4i:

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ ) :ref:`🔗<class_Vector4i_constructor_Vector4i>`

**Vector4i** з усіма компонентами, встановленими до ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )

**Vector4i** як копія даної **Vector4i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4<class_Vector4>`\ )

Конструює новий **Vector4i** з заданого :ref:`Vector4<class_Vector4>` шляхом скорочення дробових частин компонентів (округлення до нуля). Для іншої поведінки розгляньте можливість передачі результату :ref:`Vector4.ceil()<class_Vector4_method_ceil>`, :ref:`Vector4.floor()<class_Vector4_method_floor>` або :ref:`Vector4.round()<class_Vector4_method_round>` до цього конструктора.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ )

Повернення **Vector4i** з заданими компонентами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Vector4i_method_abs:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_abs>`

Повертає новий вектор з усіма компонентами в абсолютних значеннях (тобто позитиву).

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clamp**\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_clamp>`

Повертає новий вектор, у якого всі компоненти обмежені між відповідними компонентами ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_clampi>`

Повертає новий вектор, у якого всі компоненти обмежені між ``min`` і ``max``, викликаючи :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для кожного компоненту.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_squared_to>`

Повертає квадрат відстані між цим вектором і ``to``.

Цей метод працює швидше, ніж :ref:`distance_to()<class_Vector4i_method_distance_to>`, тому надавайте йому перевагу, якщо потрібно порівнювати вектори або використовувати квадрат відстані у формулі.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_to>`

Повертає відстань між цим вектором і ``до``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length>`

Повертає довжину (величину) цього вектору.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length_squared>`

Повертає квадрат довжини (квадрат величини) цього вектора.

Цей метод працює швидше, ніж :ref:`length()<class_Vector4i_method_length>`, тому віддавайте йому перевагу, якщо вам потрібно порівняти вектори або потрібен квадрат відстані для якоїсь формули.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **max**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_max>`

Повертає вектор, кожен компонент якого є максимальним серед відповідних компонентів цього вектора та вектора ``with``. Еквівалентно ``Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_max_axis_index>`

Повертає вісь найвищого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_X<class_Vector4i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_maxi>`

Повертає компонентний максимум цього вектора і ``with``, еквівалентно ``Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **min**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_min>`

Повертає вектор, кожен компонент якого є мінімальним серед відповідного компонента цього вектора та вектора ``with``. Еквівалентно ``Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_min_axis_index>`

Повертає вісь найнижчого значення вектора. ``AXIS_*`` константи. Якщо всі компоненти рівні, цей метод повертає :ref:`AXIS_W<class_Vector4i_constant_AXIS_W>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_mini:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_mini>`

Повертає компонентний мінімум цього вектора та ``with``. Еквівалентно ``Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_sign:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_sign>`

Повертає новий вектор, у якому кожен компонент приймає значення ``1``, якщо він додатний, ``-1``, якщо від'ємний, і ``0``, якщо нульовий. Результат ідентичний виклику :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для кожного компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snapped**\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_snapped>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох відповідних компонентів ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_snappedi>`

Повертає новий вектор з кожним компонентом, що здався до найближчого кількох ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Vector4i_operator_neq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_neq_Vector4i>`

Повертає ``true``, якщо вектори не рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mod_Vector4i>`

Отримує залишок кожного компонента **Vector4i** з компонентами даного **Vector4i**. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10)) # Друк (3, -4, 3, 0) 

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mod_int>`

Отримує залишок кожного компонента **Vector4i** із заданим :ref:`int<class_int>`. У цій операції використовується скорочене ділення, яке часто небажано, оскільки воно погано працює з від’ємними числами. Розгляньте можливість використання :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` натомість, якщо ви хочете обробляти від’ємні числа. 

::
 
    print(Vector4i(10, -20, 30, -40) % 7) # Друк (3, -6, 2, -5) 

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mul_Vector4i>`

Помножує кожен компонент **Vector4i** на компоненти заданого **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Виводить (30, 80, 150, 240)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_mul_float>`

Множить кожен компонент **Vector4i** на заданий :ref:`float<class_float>`.

Повертає значення Vector4 через операції з плаваючою комою.

::

    print(Vector4i(10, 20, 30, 40) * 2) # Виводить (20.0, 40.0, 60.0, 80.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mul_int>`

Множення кожного компонента **Vector4i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_sum_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator +**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_sum_Vector4i>`

Додає кожен компонент **Vector4i** за допомогою компонентів заданого **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Виводить (13, 24, 35, 46)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_dif_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator -**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_dif_Vector4i>`

Віднімає кожен компонент **Vector4i** на компоненти заданого **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Виводить (7, 16, 25, 34)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_div_Vector4i>`

Розділяє кожен компонент **Vector4i** на компоненти заданого **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Виводить (5, 4, 10, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_div_float>`

Ділить кожен компонент **Vector4i** на задане число з плаваючою комою :ref:`float<class_float>`.

Повертає значення Vector4 внаслідок операцій з плаваючою комою.

::

    print(Vector4i(1, 2, 3, 4) / 2.5) # Prints (0.4, 0.8, 1.2, 1.6)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_div_int>`

Дивиди кожного компонента **Vector4i** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lt_Vector4i>`

Порівняти два **Vector4i** вектори за першою перевіркою, якщо значення X лівого вектора менше X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, значення Z двох векторів, а потім значенням W. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lte_Vector4i>`

Порівняти два **Vector4i** вектори за першою перевіркою, якщо значення X лівого вектора менше або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, значення Z двох векторів, а потім значенням W. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_eq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_eq_Vector4i>`

Повертає ``true``, якщо вектори рівно рівні.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gt_Vector4i>`

Порівняйте два **Vector4i** вектори спочатку перевіряють, якщо значення X лівого вектора перевищує X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, значення Z двох векторів, а потім значенням W. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gte_Vector4i>`

Порівняти два **Vector4i** вектори за першою перевіркою, якщо значення X лівого вектора перевищує або дорівнює X значення ``right`` вектора. Якщо значення X однаково рівні, то він повторює цю перевірку з значеннями Y двох векторів, значення Z двох векторів, а потім значенням W. Цей оператор корисний для сортування векторів.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_idx_int>`

Доступ до векторних компонентів за допомогою їх ``параметр``. ``v[0]`` еквівалент ``v.x``, ``v`` еквівалент ``v.y``, ``v`` еквівалент ``v.z``, і ``v128`` еквівалент ``v.w``.w[/code].

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector4i_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector4i_operator_unminus>`

Повертає негативне значення **Vector4i**. ``Vector4i(-v.x, -v.y, -v.z, -v.w)``. Ця операція закріплює напрямок вектора, зберігаючи однакову величину.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
