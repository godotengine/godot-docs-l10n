:github_url: hide

.. _class_PackedVector4Array:

PackedVector4Array
==================

Пакетний масив :ref:`Vector4<class_Vector4>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Масив, спеціально розроблений для зберігання :ref:`Vector4<class_Vector4>`. Щільно упаковує дані, що економить пам'ять для масивів великого розміру.

\ **Відмінності між упакованими масивами, типізованими масивами та нетипізованими масивами:** Упаковані масиви, як правило, швидше перебираються та модифікуються порівняно з типізованим масивом того ж типу (наприклад, **PackedVector4Array** проти ``Array[Vector4]``). Крім того, упаковані масиви споживають менше пам'яті. Недоліком є те, що упаковані масиви менш гнучкі, оскільки вони не пропонують стільки зручних методів, як :ref:`Array.map()<class_Array_method_map>`. Типізовані масиви, у свою чергу, швидше перебираються та модифікуються, ніж нетипізовані масиви.

\ **Примітка:** Упаковані масиви завжди передаються за посиланням. Щоб отримати копію масиву, яку можна модифікувати незалежно від оригінального масиву, використовуйте :ref:`duplicate()<class_PackedVector4Array_method_duplicate>`. Це *не* стосується вбудованих властивостей та методів. У цих випадках повернутий упакований масив є копією, і його зміна *не* вплине на початкове значення. Щоб оновити вбудовану властивість цього типу, змініть повернутий масив, а потім знову призначте його властивості.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`PackedVector4Array<class_PackedVector4Array_constructor_PackedVector4Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector4Array_method_append>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector4Array_method_append_array>`\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector4Array_method_bsearch>`\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector4Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector4Array_method_count>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`duplicate<class_PackedVector4Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector4Array_method_erase>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector4Array_method_fill>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector4Array_method_find>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`get<class_PackedVector4Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector4Array_method_has>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector4Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector4Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector4Array_method_push_back>`\ (\ value\: :ref:`Vector4<class_Vector4>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector4Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector4Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector4Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector4Array_method_rfind>`\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector4Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector4Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`slice<class_PackedVector4Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector4Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector4Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector4Array_operator_neq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector4Array<class_PackedVector4Array>` | :ref:`operator +<class_PackedVector4Array_operator_sum_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector4Array_operator_eq_PackedVector4Array>`\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`                       | :ref:`operator []<class_PackedVector4Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_PackedVector4Array_constructor_PackedVector4Array:

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ ) :ref:`🔗<class_PackedVector4Array_constructor_PackedVector4Array>`

Будуємо порожній **PackedVector4Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Constructs a **PackedVector4Array** як копія даної **PackedVector4Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector4Array<class_PackedVector4Array>` **PackedVector4Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Створює новий **PackedVector4Array**. За бажанням ви можете передати загальний :ref:`Array<class_Array>`, який буде перетворено. 

\ **Примітка:** Під час ініціалізації **PackedVector4Array** з елементами, він повинен бути ініціалізований :ref:`Array<class_Array>` значень :ref:`Vector4<class_Vector4>`: 

::
 
    var array = PackedVector4Array([Vector4(12, 34, 56, 78), Vector4(90, 12, 34, 56)]) 

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedVector4Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_append>`

Додає елемент у кінець масиву (псевдонім :ref:`push_back()<class_PackedVector4Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_method_append_array>`

Додаток **PackedVector4Array** в кінці цього масиву.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector4<class_Vector4>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector4Array_method_bsearch>`

Знаходить індекс існуючого значення (або індекс вставки, який підтримує порядок сортування, якщо значення ще не присутнє в масиві) за допомогою бінарного пошуку. За бажанням можна передати специфікатор ``before``. Якщо ``false``, індекс, що повертається, йде після всіх існуючих записів значення в масиві.

\ **Примітка:** Виклик :ref:`bsearch()<class_PackedVector4Array_method_bsearch>` на невідсортованому масиві призводить до неочікуваної поведінки.

\ **Примітка:** Поведінка векторів з :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_clear>`

Очищає масив. Еквівалентно використанню :ref:`resize()<class_PackedVector4Array_method_resize>` з розміром ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_count>`

Повертає кількість разів елемент знаходиться в масиві.

\ **Примітка:** Поведінка векторів з :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_duplicate>`

Створює копію масиву і повертає його.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_erase>`

Видаляє перше входження значення з масиву та повертає ``true``. Якщо значення не існує в масиві, нічого не відбувається, і повертається ``false``. Щоб видалити елемент за індексом, використовуйте метод ``remove_at``.

\ **Примітка:** Вектори з елементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` поводяться інакше, ніж інші вектори. Тому результати цього методу можуть бути неточними, якщо включені NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_fill>`

Присвоює задане значення всім елементам масиву. Зазвичай це можна використовувати разом з :ref:`resize()<class_PackedVector4Array_method_resize>` для створення масиву заданого розміру та ініціалізованих елементів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector4Array_method_find>`

Шукаж значення в масиві та повертає індекс або ``-1``, якщо не знайдено. Додатково може бути переданий початковий індекс пошуку.

\ **Примітка:** Поведінка векторів з :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_get:

.. rst-class:: classref-method

:ref:`Vector4<class_Vector4>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_get>`

Повертає :ref:`Vector4<class_Vector4>` за заданим ``index`` у масиві. Якщо ``index`` виходить за межі або є від'ємним, цей метод завершується невдачею та повертає ``Vector4(0, 0, 0, 0)``.

Цей метод схожий (але не ідентичний) на оператор ``[]``. Найголовніше, що коли цей метод завершується невдачею, він не призупиняє виконання проекту, якщо його запускати з редактора.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) |const| :ref:`🔗<class_PackedVector4Array_method_has>`

Повертає ``true``, якщо масив містить ``value``.

\ **Примітка:** Вектори з елементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` не поводять себе так, як інші вектори. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_insert>`

Вставте новий елемент на даній позиції в масиві. Посада повинна бути дійсна, або в кінці масиву (``idx == розмір()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_is_empty>`

Повертає ``true``, якщо масив порожній.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_push_back>`

Вставте :ref:`Vector4<class_Vector4>` в кінці.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_remove_at>`

Видаляє елемент з масиву за індексом.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_method_resize>`

Встановлює розмір масиву. Якщо масив збільшується, резервує елементи в кінці масиву. Якщо масив скорочується, обрізає масив до нового розміру. Виклик методу :ref:`resize()<class_PackedVector4Array_method_resize>` один раз і призначення нових значень відбувається швидше, ніж додавання нових елементів по одному.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або одну з наступних констант :ref:`Error<enum_@GlobalScope_Error>`, якщо цей метод не працює: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, якщо розмір від'ємний, або :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, якщо розподіл пам'яті не вдається. Використовуйте метод :ref:`size()<class_PackedVector4Array_method_size>`, щоб знайти фактичний розмір масиву після зміни розміру.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_reverse>`

Змінює порядок елементів у масиві на протилежний.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector4<class_Vector4>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector4Array_method_rfind>`

Шукає значення в масиві у зворотному порядку. Додатково може бути переданий початковий індекс пошуку. Якщо негативний, початковий індекс вважається відносно кінця масиву.

\ **Примітка:** Поведінка векторів з :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_PackedVector4Array_method_set>`

Змінює :ref:`Vector4<class_Vector4>` в даній позиції.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_size>`

Повертає кількість елементів у масиві.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector4Array<class_PackedVector4Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector4Array_method_slice>`

Повертає розріз **PackedVector4Array**, з ``start`` (включно) до ``end`` (виключно), як новий **PackedVector4Array**.

Абсолютне значення ``start`` і ``end`` буде зафіксовано до розміру масиву, тому значення за замовчуванням для ``end`` робить кінець розрізу кінцем масиву за замовчуванням (тобто ``arr.slice(1)`` є скороченим записом для ``arr.slice(1, arr.size())``).

Якщо ж ``start`` або ``end`` є негативними, вони будуть відносно кінця масиву (тобто ``arr.slice(0, -2)`` є скороченим записом для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector4Array_method_sort>`

Сортує елементи масиву в порядку зростання.

\ **Примітка:** Поведінка векторів з :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` відрізняється від інших. Через це результати цього методу можуть бути неточними за наявності NaN-ів.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector4Array_method_to_byte_array>`

Повернення :ref:`PackedByteArray<class_PackedByteArray>` з кожним вектором закодовано як байти.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_PackedVector4Array_operator_neq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_neq_PackedVector4Array>`

Повертає ``true``, якщо вміст масивів відрізняється.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_sum_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`PackedVector4Array<class_PackedVector4Array>` **operator +**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_sum_PackedVector4Array>`

Повертає новий **PackedVector4Array** з вмістом ``right`` додано в кінці цього масиву. Для кращої роботи розглянемо використання :ref:`append_array()<class_PackedVector4Array_method_append_array>` замість.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_eq_PackedVector4Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ ) :ref:`🔗<class_PackedVector4Array_operator_eq_PackedVector4Array>`

Повертає ``true``, якщо вміст обох масивів однаковий, тобто вони мають всі рівні :ref:`Vector4<class_Vector4>` на відповідних показниках.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector4Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector4Array_operator_idx_int>`

Повернення :ref:`Vector4<class_Vector4>` в індекс ``index``. Негативні індекси можуть використовуватися для доступу до елементів з кінця. Використання індексу з меж масиву призведе до помилки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
