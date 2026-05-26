:github_url: hide

.. _class_PackedInt64Array:

PackedInt64Array
================

Упакованный массив 64-битных целых чисел.

.. rst-class:: classref-introduction-group

Описание
----------------

An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.

\ **Note:** This type stores signed 64-bit integers, which means it can take values in the interval ``[-2^63, 2^63 - 1]``, i.e. ``[-9223372036854775808, 9223372036854775807]``. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see :ref:`PackedInt32Array<class_PackedInt32Array>` for a more memory-friendly alternative.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedInt64Array** versus ``Array[int]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedInt64Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedInt64Array_method_append>`\ (\ value\: :ref:`int<class_int>`\ )                                                    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedInt64Array_method_append_array>`\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedInt64Array_method_bsearch>`\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedInt64Array_method_clear>`\ (\ )                                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedInt64Array_method_count>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`duplicate<class_PackedInt64Array_method_duplicate>`\ (\ ) |const|                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedInt64Array_method_erase>`\ (\ value\: :ref:`int<class_int>`\ )                                                      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedInt64Array_method_fill>`\ (\ value\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedInt64Array_method_find>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get<class_PackedInt64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedInt64Array_method_has>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedInt64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedInt64Array_method_is_empty>`\ (\ ) |const|                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedInt64Array_method_push_back>`\ (\ value\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedInt64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedInt64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedInt64Array_method_reverse>`\ (\ )                                                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedInt64Array_method_rfind>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedInt64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedInt64Array_method_size>`\ (\ ) |const|                                                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`slice<class_PackedInt64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedInt64Array_method_sort>`\ (\ )                                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedInt64Array_method_to_byte_array>`\ (\ ) |const|                                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedInt64Array_operator_neq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`operator +<class_PackedInt64Array_operator_sum_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedInt64Array_operator_eq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`operator []<class_PackedInt64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_PackedInt64Array_constructor_PackedInt64Array:

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ ) :ref:`🔗<class_PackedInt64Array_constructor_PackedInt64Array>`

Создает пустой **PackedInt64Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Создает **PackedInt64Array** как копию заданного **PackedInt64Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Создает новый :ref:`PackedInt32Array<class_PackedInt32Array>`. При желании можно передать универсальный :ref:`Array<class_Array>`, который будет преобразован.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedInt64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_append>`

Добавляет элемент в конец массива (псевдоним :ref:`push_back()<class_PackedInt64Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_method_append_array>`

Добавляет **PackedInt64Array** в конец этого массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedInt64Array_method_bsearch>`

Находит индекс существующего значения (или индекс вставки, который поддерживает порядок сортировки, если значение еще не присутствует в массиве) с помощью бинарного поиска. При желании можно передать спецификатор ``before``. Если ``false``, возвращаемый индекс следует после всех существующих записей значения в массиве.

\ **Примечание:** Вызов :ref:`bsearch()<class_PackedInt64Array_method_bsearch>` для несортированного массива приводит к неожиданному поведению.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_clear>`

Очищает массив. Это эквивалентно использованию :ref:`resize()<class_PackedInt64Array_method_resize>` с размером ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_count>`

Возвращает количество раз когда элемент встречается в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_duplicate>`

Создает копию массива и возвращает ее.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_erase>`

Удаляет первое вхождение значения из массива и возвращает ``true``. Если значение не существует в массиве, ничего не происходит и возвращается ``false``. Чтобы удалить элемент по индексу, используйте :ref:`remove_at()<class_PackedInt64Array_method_remove_at>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_fill>`

Присваивает заданное значение всем элементам массива. Обычно это можно использовать вместе с :ref:`resize()<class_PackedInt64Array_method_resize>` для создания массива с заданным размером и инициализированными элементами.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedInt64Array_method_find>`

Ищет в массиве значение и возвращает его индекс или ``-1``, если не найдено. При желании можно передать начальный индекс поиска.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_get:

.. rst-class:: classref-method

:ref:`int<class_int>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_get>`

Возвращает 64-битное целое число по указанному ``index`` в массиве. Если ``index`` выходит за пределы или отрицателен, этот метод завершается ошибкой и возвращает ``0``. 

Этот метод похож (но не идентичен) оператору ``[]``. В частности, когда этот метод завершается ошибкой, он не приостанавливает выполнение проекта, если запущен из редактора.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_has>`

Возвращает ``true``, если массив содержит ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_insert>`

Вставляет новое целое число в указанную позицию в массиве. Позиция должна быть допустимой или находиться в конце массива (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_is_empty>`

Возвращает ``true`` если массив пустой.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_push_back>`

Добавляет значение в массив.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_remove_at>`

Удаляет элемент из массива по индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_resize>`

Устанавливает размер массива. Если массив увеличивается, резервирует элементы в конце массива. Если массив уменьшается, усекает массив до нового размера. Вызов :ref:`resize()<class_PackedInt64Array_method_resize>` один раз и назначение новых значений быстрее, чем добавление новых элементов по одному. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одну из следующих констант :ref:`Error<enum_@GlobalScope_Error>`, если этот метод не удался: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если размер отрицательный, или :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, если выделение памяти не удается. Используйте :ref:`size()<class_PackedInt64Array_method_size>`, чтобы узнать фактический размер массива после изменения размера.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_reverse>`

Инвертирует порядок элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedInt64Array_method_rfind>`

Поиск в массиве в обратном порядке. При желании можно передать начальный индекс поиска. Если отрицательный, начальный индекс считается относительно конца массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_set>`

Изменяет целое число по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_size>`

Возвращает число элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedInt64Array_method_slice>`

Возвращает срез **PackedInt64Array** от ``begin`` (включительно) до ``end`` (исключительно) как новый **PackedInt64Array**.

Абсолютное значение ``begin`` и ``end`` будет ограничено размером массива, поэтому значение по умолчанию для ``end`` делает его срезом по размеру массива по умолчанию (т. е. ``arr.slice(1)`` является сокращением для ``arr.slice(1, arr.size())``).

Если ``begin`` или ``end`` отрицательны, они будут относительными к концу массива (т. е. ``arr.slice(0, -2)`` является сокращением для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_sort>`

Сортирует элементы массива в порядке возрастания.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_to_byte_array>`

Возвращает копию данных, преобразованных в :ref:`PackedByteArray<class_PackedByteArray>`, где каждый элемент закодирован как 8 байтов.

Размер нового массива будет ``int64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_PackedInt64Array_operator_neq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_neq_PackedInt64Array>`

Возвращает ``true``, если содержимое массивов различается.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_sum_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`PackedInt64Array<class_PackedInt64Array>` **operator +**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_sum_PackedInt64Array>`

Возвращает новый **PackedInt64Array** с содержимым ``right``, добавленным в конец этого массива. Для лучшей производительности рассмотрите возможность использования :ref:`append_array()<class_PackedInt64Array_method_append_array>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_eq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_eq_PackedInt64Array>`

Возвращает ``true``, если содержимое обоих массивов одинаково, т. е. все они имеют одинаковые целые числа по соответствующим индексам.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_operator_idx_int>`

Возвращает :ref:`int<class_int>` по индексу ``index``. Отрицательные индексы можно использовать для доступа к элементам, начиная с конца. Использование индекса за пределами массива приведет к ошибке.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
