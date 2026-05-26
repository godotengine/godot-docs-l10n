:github_url: hide

.. _class_Vector2i:

Vector2i
========

Двумерный вектор, использующий целочисленные координаты.

.. rst-class:: classref-introduction-group

Описание
----------------

Структура из 2 элементов, которая может использоваться для представления координат 2D-сетки или любой другой пары целых чисел.

Она использует целочисленные координаты и поэтому предпочтительнее :ref:`Vector2<class_Vector2>`, когда требуется наивысшая точность. Обратите внимание, что значения ограничены 32 битами, и в отличие от :ref:`Vector2<class_Vector2>` это нельзя настроить с помощью параметра сборки движка. Используйте :ref:`int<class_int>` или :ref:`PackedInt64Array<class_PackedInt64Array>`, если требуются 64-битные значения.

\ **Примечание:** В булевом контексте Vector2i будет оцениваться как ``false``, если он равен ``Vector2i(0, 0)``. В противном случае Vector2i всегда будет оцениваться как ``true``.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Векторная математика <../tutorials/math/vector_math>`

- `3Blue1Brown Суть линейной алгебры <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector2i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector2i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструкторы
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

Методы
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

Операторы
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

Перечисления
------------------------

.. _enum_Vector2i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector2i_Axis>`

.. _class_Vector2i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_X** = ``0``

Перечисленное значение для оси X. Возвращается :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. _class_Vector2i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_Y** = ``1``

Перечисленное значение для оси Y. Возвращается :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Vector2i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector2i(0, 0)`` :ref:`🔗<class_Vector2i_constant_ZERO>`

Нулевой вектор — вектор у которого все координаты равны ``0``.

.. _class_Vector2i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector2i(1, 1)`` :ref:`🔗<class_Vector2i_constant_ONE>`

Вектор-единица — вектор у которого все координаты равны ``1``.

.. _class_Vector2i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector2i(-2147483648, -2147483648)`` :ref:`🔗<class_Vector2i_constant_MIN>`

Вектор Min, вектор, все компоненты которого равны ``INT32_MIN``. Может использоваться как отрицательный целочисленный эквивалент :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector2i(2147483647, 2147483647)`` :ref:`🔗<class_Vector2i_constant_MAX>`

Вектор Max, вектор, все компоненты которого равны ``INT32_MAX``. Может использоваться как целочисленный эквивалент :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector2i(-1, 0)`` :ref:`🔗<class_Vector2i_constant_LEFT>`

Левый единичный вектор. Представляет направление влево.

.. _class_Vector2i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector2i(1, 0)`` :ref:`🔗<class_Vector2i_constant_RIGHT>`

Правый единичный вектор. Представляет направление вправо.

.. _class_Vector2i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector2i(0, -1)`` :ref:`🔗<class_Vector2i_constant_UP>`

Up единичный вектор вверх. Y направлен вниз в 2D, поэтому этот вектор указывает на -Y.

.. _class_Vector2i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector2i(0, 1)`` :ref:`🔗<class_Vector2i_constant_DOWN>`

Down - единичный вектор вниз. Y направлен вниз в 2D, поэтому этот вектор указывает на +Y.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Vector2i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector2i_property_x>`

X компонент вектора. Может быть доступен через индекс ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector2i_property_y>`

Y компонент вектора. Может быть доступен через индекс ``[1]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Vector2i_constructor_Vector2i:

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ ) :ref:`🔗<class_Vector2i_constructor_Vector2i>`

Создает инициализированный по умолчанию **Vector2i** со всеми компонентами, установленными в ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )

Создает **Vector2i** как копию заданного **Vector2i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2<class_Vector2>`\ )

Создает новый **Vector2i** из заданного :ref:`Vector2<class_Vector2>` путем усечения дробных частей компонентов (округление в сторону нуля). Для другого поведения рассмотрите возможность передачи результата :ref:`Vector2.ceil()<class_Vector2_method_ceil>`, :ref:`Vector2.floor()<class_Vector2_method_floor>` или :ref:`Vector2.round()<class_Vector2_method_round>` этому конструктору.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ )

Создает новый **Vector2i** из заданных ``x`` и ``y``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Vector2i_method_abs:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_abs>`

Возвращает новый вектор в котором все компоненты будут абсолютными значениями (т.е положительными).

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **aspect**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_aspect>`

Возвращает соотношение сторон данного вектора, отношение :ref:`x<class_Vector2i_property_x>` к :ref:`y<class_Vector2i_property_y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clamp**\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_clamp>`

Возвращает новый вектор со всеми компонентами, зажатыми между компонентами ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_clampi>`

Возвращает новый вектор со всеми компонентами, зажатыми между ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_squared_to>`

Returns the squared `Euclidean distance <https://en.wikipedia.org/wiki/Euclidean_distance>`__ between this vector and ``to``.

This method runs faster than :ref:`distance_to()<class_Vector2i_method_distance_to>`, so prefer it if you need to compare vectors or need the squared distance for some formula.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_to>`

Returns the `Euclidean distance <https://en.wikipedia.org/wiki/Euclidean_distance>`__ between this vector and ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length>`

Возвращает длину (величину) данного вектора.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length_squared>`

Возвращает длину данного вектора в квадрате.

Этот метод выполняется быстрее, чем :ref:`length()<class_Vector2i_method_length>`, поэтому он предпочтительнее если вам нужно сравнить векторы или нужно расстояние в квадрате для какой-либо формулы.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **max**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_max>`

Возвращает покомпонентный максимум этого и ``with``, что эквивалентно ``Vector2i(maxi(x, with.x), maxi(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_max_axis_index>`

Возвращает ось наибольшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_X<class_Vector2i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_maxi>`

Возвращает покомпонентный максимум этого и ``with``, что эквивалентно ``Vector2i(maxi(x, with), maxi(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **min**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_min>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентный ``Vector2i(mini(x, with.x), mini(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_min_axis_index>`

Возвращает ось наименьшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_Y<class_Vector2i_constant_AXIS_Y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_mini:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_mini>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентно ``Vector2i(mini(x, with), mini(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_sign:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_sign>`

Возвращает новый вектор, в котором каждый компонент установлен на ``1``, если он положительный, ``-1``, если он отрицательный, и ``0``, если он равен нулю. Результат идентичен вызову :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snapped**\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_snapped>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному соответствующего компонента в ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_snappedi>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Vector2i_operator_neq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_neq_Vector2i>`

Возвращает ``true``, если векторы не равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mod_Vector2i>`

Получает остаток каждого компонента **Vector2i** с компонентами заданного **Vector2i**. Эта операция использует усеченное деление, которое часто нежелательно, поскольку оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector2i(10, -20) % Vector2i(7, 8)) # Prints (3, -4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mod_int>`

Получает остаток каждого компонента **Vector2i** с заданным :ref:`int<class_int>`. Эта операция использует усеченное деление, которое часто нежелательно, поскольку оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector2i(10, -20) % 7) # Prints (3, -6)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mul_Vector2i>`

Умножает каждый компонент **Vector2i** на компоненты заданного **Vector2i**.

::

    print(Vector2i(10, 20) * Vector2i(3, 4)) # Выводит (30, 80)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_mul_float>`

Умножает каждый компонент **Vector2i** на заданный :ref:`float<class_float>`. Возвращает :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(10, 15) * 0.9) # Выводит (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mul_int>`

Умножает каждый компонент **Vector2i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_sum_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator +**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_sum_Vector2i>`

Добавляет каждый компонент **Vector2i** к компонентам указанного **Vector2i**.

::

    print(Vector2i(10, 20) + Vector2i(3, 4)) # Prints (13, 24)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_dif_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator -**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_dif_Vector2i>`

Вычитает каждый компонент **Vector2i** из компонентов заданного **Vector2i**.

::

    print(Vector2i(10, 20) - Vector2i(3, 4)) # Prints (7, 16)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_div_Vector2i>`

Делит каждый компонент **Vector2i** на компоненты заданного **Vector2i**.

::

    print(Vector2i(10, 20) / Vector2i(2, 5)) # Prints (5, 4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_div_float>`

Делит каждый компонент **Vector2i** на заданное значение :ref:`float<class_float>`. Возвращает :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(1, 2) / 2.5) # Выводит (0.4, 0.8)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_div_int>`

Делит каждый компонент **Vector2i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lt_Vector2i>`

Сравнивает два вектора **Vector2i**, сначала проверяя, меньше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lte_Vector2i>`

Сравнивает два вектора **Vector2i**, сначала проверяя, меньше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_eq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_eq_Vector2i>`

Возвращает ``true`` если векторы равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gt_Vector2i>`

Сравнивает два вектора **Vector2i**, сначала проверяя, больше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gte_Vector2i>`

Сравнивает два вектора **Vector2i**, сначала проверяя, больше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_idx_int>`

Доступ к компонентам вектора осуществляется с помощью их ``index``. ``v[0]`` эквивалентно ``v.x``, а ``v[1]`` эквивалентно ``v.y``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector2i_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector2i_operator_unminus>`

Возвращает отрицательное значение **Vector2i**. Это то же самое, что и запись ``Vector2i(-v.x, -v.y)``. Эта операция меняет направление вектора, сохраняя ту же величину.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
