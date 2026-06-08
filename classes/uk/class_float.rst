:github_url: hide

.. _class_float:

float
=====

Вбудований тип для плавно-точкових чисел.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип **float** — це 64-бітне число з плаваючою комою подвійної точності, еквівалентне типу ``double`` у C++. Цей тип має 14 надійних десяткових знаків точності. Максимальне значення **float** становить приблизно ``1.79769e308``, а мінімальне — приблизно ``-1.79769e308``.

Багато методів та властивостей у рушії використовують натомість 32-бітні числа з плаваючою комою одинарної точності, еквівалентні ``float`` у C++, які мають 6 надійних десяткових знаків точності. Для таких структур даних, як :ref:`Vector2<class_Vector2>` та :ref:`Vector3<class_Vector3>`, Godot за замовчуванням використовує 32-бітні числа з плаваючою комою, але це можна змінити на використання 64-бітних чисел з подвійною точністю, якщо Godot скомпільовано з опцією ``precision=double``.

Точність математичних обчислень, виконаних з використанням типу **float**, не гарантується і часто призводить до невеликих похибок. Зазвичай для порівняння значень **float** на рівність слід використовувати методи :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` та :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>` замість ``==``.

\ **Примітка:** У булевому контексті **float** буде обчислюватися як ``false``, якщо воно точно дорівнює ``0.0``, і як ``true`` в іншому випадку.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Вікіпедія: Дворазовий плаваючий формат точки <https://en.wikipedia.org/wiki/Double-precision_floating-point_format>`__

- `Вікіпедія: Одиночна плаваюча точка <https://en.wikipedia.org/wiki/Single-precision_floating-point_format>`__

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ )                                     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +---------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_float_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_float_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary+<class_float_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary-<class_float_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_float_constructor_float:

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ ) :ref:`🔗<class_float_constructor_float>`

``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`float<class_float>`\ )

Constructs a **float** як копія даної **float**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`String<class_String>`\ )

Перетворення :ref:`String<class_String>` в **float**, наступні ті ж правила, як :ref:`String.to_float()<class_String_method_to_float>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`bool<class_bool>`\ )

У ролях :ref:`bool<class_bool>` значення для плавучої точки значення ``float(true)`` буде дорівнює 1.0 і ``float(false)`` будуть рівні 0.0.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`int<class_int>`\ )

У ролях :ref:`int<class_int>` значення до плаваючої точки значення ``float(1)`` будуть рівні ``1.0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_float_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_neq_float>`

Повертає ``true``, якщо два числа з рухомою комою відрізняються один від одного.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього оператора можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_neq_int>`

Повертає ``true``, якщо значення цілого числа відрізняється від числа з плаваючою точкою.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_float_operator_mul_Color>`

Множить кожен компонент :ref:`Color<class_Color>`, включаючи альфа, на заданий **float**.

::

    print(1.5 * Color(0.5, 0.5, 0.5)) # Prints (0.75, 0.75, 0.75, 1.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_float_operator_mul_Quaternion>`

Множення кожного компонента :ref:`Quaternion<class_Quaternion>` за умови **float**. Ця операція не має значення самостійно, але її можна використовувати в складі більшого виразу.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_float_operator_mul_Vector2>`

Множить кожен компонент :ref:`Vector2<class_Vector2>` на заданий **float**.

::

    print(2.5 * Vector2(1, 3)) # Prints (2.5, 7.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_float_operator_mul_Vector2i>`

Множить кожен компонент :ref:`Vector2i<class_Vector2i>` на заданий **float**. Повертає :ref:`Vector2<class_Vector2>`.

::

    print(0.9 * Vector2i(10, 15)) # Друкує (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_float_operator_mul_Vector3>`

Множення кожного компонента :ref:`Vector3<class_Vector3>` заданими **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_float_operator_mul_Vector3i>`

Множить кожен компонент :ref:`Vector3i<class_Vector3i>` на заданий **float**. Повертає ``Вектор3``.

::

    print(0.9 * Vector3i(10, 15, 20)) # Prints (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_float_operator_mul_Vector4>`

Множення кожного компонента :ref:`Vector4<class_Vector4>` заданими **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_float_operator_mul_Vector4i>`

Множить кожен компонент :ref:`Vector4i<class_Vector4i>` на заданий **float**. Повертає :ref:`Vector4<class_Vector4>`.

::

    print(0.9 * Vector4i(10, 15, 20, -10)) # Друкує (9.0, 13.5, 18.0, -9.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_mul_float>`

Множить два **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_mul_int>`

Множиці **float** і :ref:`int<class_int>`. Результатом є **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_pow_float>`

Підводить число з **float** до степеня числа з **float**.

::

    print(39.0625**0.25) # 2.5

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_pow_int>`

Знімає **float** на потужність :ref:`int<class_int>`. Результатом є **float**.

::

    print (0.9***3) # 0.729

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_sum_float>`

Додає дві плавки.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_sum_int>`

Додати **float** і :ref:`int<class_int>`. Результатом є **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_dif_float>`

Відстежуйте плавку з плавки.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_dif_int>`

Відстежуйте ``вміст`` з **float**. Результатом є **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_div_float>`

Дивиди дві плавки.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_div_int>`

Дивиди **float** :ref:`int<class_int>`. Результатом є **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lt_float>`

Повертає ``true``, якщо ліве число з рухомою комою менше від правого.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього оператора можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lt_int>`

Повертає ``true``, якщо цей **float** менше заданого :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lte_float>`

Повертає ``true``, якщо ліве число з рухомою комою менше або дорівнює правому.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього оператора можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lte_int>`

Повертає ``true``, якщо цей **float** менший або дорівнює заданому :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_eq_float>`

Повертає ``true``, якщо обидва числа з рухомою комою точно рівні.

\ **Примітка:** У зв'язку з похибками чисел з рухомою комою, розгляньте використання :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` або :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>`, що є більш надійними.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього оператора можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_eq_int>`

Повертає ``true``, якщо **float** і вказане :ref:`int<class_int>` рівні.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gt_float>`

Повертає ``true``, якщо ліве число з рухомою комою більше правого.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього оператора можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gt_int>`

Повертає ``true``, якщо цей **float** більший за заданий :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gte_float>`

Повертає ``true``, якщо ліве число з рухомою комою більше або дорівнює правому.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gte_int>`

Повертає ``true``, якщо цей **float** більший або дорівнює вказаному :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unplus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary+**\ (\ ) :ref:`🔗<class_float_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unminus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary-**\ (\ ) :ref:`🔗<class_float_operator_unminus>`

Повертає негативне значення **float**. Якщо позитивне, то виходить число негативно. Якщо негативно, то виходить число позитивним. З поплавками число нуль може бути або позитивним або негативним.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
