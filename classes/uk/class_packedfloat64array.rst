:github_url: hide

.. _class_PackedFloat64Array:

PackedFloat64Array
==================

Упакований масив 64-розрядних значень точки плавлення.

.. rst-class:: classref-introduction-group

Опис
--------

Масив, спеціально розроблений для зберігання 64-бітних значень з плаваючою комою (double). Щільно упаковує дані, що економить пам'ять для масивів великого розміру.

Якщо вам потрібно щільно упаковувати лише 32-бітні числа з плаваючою комою, див. :ref:`PackedFloat32Array<class_PackedFloat32Array>` для більш зручної для пам'яті альтернативи.

\ **Відмінності між упакованими масивами, типізованими масивами та нетипізованими масивами:** Упаковані масиви, як правило, швидше обробляються та модифікуються порівняно з типізованим масивом того ж типу (наприклад, **PackedFloat64Array** проти ``Array[float]``). Крім того, упаковані масиви споживають менше пам'яті. Недоліком є те, що упаковані масиви менш гнучкі, оскільки вони не пропонують стільки зручних методів, таких як :ref:`Array.map()<class_Array_method_map>`. Типізовані масиви, у свою чергу, швидше обробляються та модифікуються, ніж нетипізовані масиви.

\ **Примітка:** Упаковані масиви завжди передаються за посиланням. Щоб отримати копію масиву, яку можна змінювати незалежно від оригінального масиву, використовуйте метод :ref:`duplicate()<class_PackedFloat64Array_method_duplicate>`. Це *не* стосується вбудованих властивостей і методів. У цих випадках повернутий упакований масив є копією, і його зміна *не* вплине на оригінальне значення. Щоб оновити вбудовану властивість цього типу, змініть повернутий масив, а потім знову призначте його властивості.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedFloat64Array_method_append>`\ (\ value\: :ref:`float<class_float>`\ )                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedFloat64Array_method_append_array>`\ (\ array\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedFloat64Array_method_bsearch>`\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedFloat64Array_method_clear>`\ (\ )                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedFloat64Array_method_count>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`duplicate<class_PackedFloat64Array_method_duplicate>`\ (\ ) |const|                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedFloat64Array_method_erase>`\ (\ value\: :ref:`float<class_float>`\ )                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedFloat64Array_method_fill>`\ (\ value\: :ref:`float<class_float>`\ )                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedFloat64Array_method_find>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get<class_PackedFloat64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedFloat64Array_method_has>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedFloat64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedFloat64Array_method_is_empty>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedFloat64Array_method_push_back>`\ (\ value\: :ref:`float<class_float>`\ )                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedFloat64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedFloat64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedFloat64Array_method_reverse>`\ (\ )                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedFloat64Array_method_rfind>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedFloat64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedFloat64Array_method_size>`\ (\ ) |const|                                                                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`slice<class_PackedFloat64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedFloat64Array_method_sort>`\ (\ )                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedFloat64Array_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedFloat64Array_operator_neq_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`operator +<class_PackedFloat64Array_operator_sum_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedFloat64Array_operator_eq_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`operator []<class_PackedFloat64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_PackedFloat64Array_constructor_PackedFloat64Array:

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ ) :ref:`🔗<class_PackedFloat64Array_constructor_PackedFloat64Array>`

Будуємо порожній **PackedFloat64Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

Constructs a **PackedFloat64Array** як копія даної **PackedFloat64Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Constructs a new **PackedFloat64Array**. Додатково ви можете пройти в загальній :ref:`Array<class_Array>`, яка буде перетворена.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedFloat64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_append>`

Додає елемент у кінець масиву (псевдонім :ref:`push_back()<class_PackedFloat64Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_method_append_array>`

Додаток **PackedFloat64Array** в кінці цього масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_bsearch>`

Знаходить індекс існуючого значення (або індекс вставки, який підтримує порядок сортування, якщо значення ще не присутнє в масиві) за допомогою бінарного пошуку. За бажанням можна передати специфікатор ``before``. Якщо ``false``, індекс, що повертається, йде після всіх існуючих записів значення в масиві.

\ **Примітка:** Виклик :ref:`bsearch()<class_PackedFloat64Array_method_bsearch>` на невідсортованому масиві призводить до неочікуваної поведінки.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_clear>`

Очищає масив. Еквівалентно використанню :ref:`resize()<class_PackedFloat64Array_method_resize>` з розміром ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_count>`

Повертає кількість разів елемент знаходиться в масиві.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_duplicate>`

Створює копію масиву і повертає його.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_erase>`

Видаляє перше входження значення з масиву та повертає ``true``. Якщо значення не існує в масиві, нічого не відбувається, і повертається ``false``. Щоб видалити елемент за індексом, використовуйте метод :ref:`remove_at()<class_PackedFloat64Array_method_remove_at>`.

\ **Примітка:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` поводиться не так, як інші числа. Тому результати цього методу можуть бути неточними, якщо включені NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_fill>`

Присвоює задане значення всім елементам масиву. Зазвичай це можна використовувати разом з :ref:`resize()<class_PackedFloat64Array_method_resize>` для створення масиву заданого розміру та ініціалізованих елементів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_find>`

Шукає значення в масиві та повертає індекс або ``-1``, якщо не знайдено. Додатково може бути переданий початковий індекс пошуку.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_get:

.. rst-class:: classref-method

:ref:`float<class_float>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_get>`

Повертає 64-бітне число з плаваючою комою за заданим значенням ``index`` у масиві. Якщо значення ``index`` виходить за межі або є від'ємним, цей метод завершується невдачею та повертає значення ``0.0``.

Цей метод схожий (але не ідентичний) на оператор ``[]``. Найголовніше, що коли цей метод завершується невдачею, він не призупиняє виконання проекту, якщо його запускати з редактора.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_has>`

Повертає ``true``, якщо масив містить ``value``.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_insert>`

Вставте новий елемент на даній позиції в масиві. Посада повинна бути дійсна, або в кінці масиву (``idx == розмір()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_is_empty>`

Повертає ``true``, якщо масив порожній.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_push_back>`

Додаток елемента в кінці масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_method_remove_at>`

Видаляє елемент з масиву за індексом.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_method_resize>`

Встановлює розмір масиву. Якщо масив збільшується, резервує елементи в кінці масиву. Якщо масив скорочується, обрізає масив до нового розміру. Виклик методу :ref:`resize()<class_PackedFloat64Array_method_resize>` один раз і призначення нових значень відбувається швидше, ніж додавання нових елементів по одному.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або одну з наступних констант :ref:`Error<enum_@GlobalScope_Error>`, якщо цей метод не працює: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, якщо розмір від'ємний, або :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, якщо розподіл пам'яті не вдається. Використовуйте метод :ref:`size()<class_PackedFloat64Array_method_size>`, щоб знайти фактичний розмір масиву після зміни розміру.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_reverse>`

Змінює порядок елементів у масиві на протилежний.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_rfind>`

Шукає значення в масиві у зворотному порядку. Додатково може бути переданий початковий індекс пошуку. Якщо негативний, початковий індекс вважається відносним до кінця масиву.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_set>`

Змінює число з рухомою комою в даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_size>`

Повертає кількість елементів у масиві.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_slice>`

Повертає розріз **PackedFloat64Array**, з ``start`` (включно) до ``end`` (виключно), як новий **PackedFloat64Array**.

Абсолютне значення ``start`` і ``end`` буде зафіксовано до розміру масиву, тому значення за замовчуванням для ``end`` робить кінець розрізу кінцем масиву за замовчуванням (тобто ``arr.slice(1)`` є скороченим записом для ``arr.slice(1, arr.size())``).

Якщо ж ``start`` або ``end`` є негативними, вони будуть відносно кінця масиву (тобто ``arr.slice(0, -2)`` є скороченим записом для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_sort>`

Сортує елементи масиву в порядку зростання.

\ **Примітка:** Поведінка :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших чисел. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_to_byte_array>`

Повертає копію даних, перетворених у :ref:`PackedByteArray<class_PackedByteArray>`, де кожен елемент закодовано як 8 байтів.

Розмір нового масиву буде ``float64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_PackedFloat64Array_operator_neq_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_neq_PackedFloat64Array>`

Повертає ``true``, якщо вміст масивів відрізняється.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_sum_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **operator +**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_sum_PackedFloat64Array>`

Повертає новий **PackedFloat64Array** з вмістом ``right`` додано в кінці цього масиву. Для кращої роботи розглянемо використання :ref:`append_array()<class_PackedFloat64Array_method_append_array>` замість.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_eq_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_eq_PackedFloat64Array>`

Повертає ``true``, якщо вміст обох масивів однаковий, тобто вони мають всі рівні подвійні коефіцієнти за відповідними показниками.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_idx_int>`

Повернення :ref:`float<class_float>` в індекс ``index``. Негативні індекси можуть використовуватися для доступу до елементів з кінця. Використання індексу з меж масиву призведе до помилки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
