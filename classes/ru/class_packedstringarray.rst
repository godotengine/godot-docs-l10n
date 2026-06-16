:github_url: hide

.. _class_PackedStringArray:

PackedStringArray
=================

Упакованный массив :ref:`String<class_String>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Массив, специально предназначенный для хранения строк :ref:`String<class_String>`. Плотно упаковывает данные, поэтому экономит память при больших размерах массива.

Если вы хотите объединить строки в массиве, используйте метод :ref:`String.join()<class_String_method_join>`.

::

    var string_array = PackedStringArray(["hello", "world"])
    var string = "".join(string_array)
    print(string) # "hello world"

\ **Различия между упакованными массивами, типизированными массивами и нетипизированными массивами:** Упакованные массивы, как правило, быстрее итерируются и изменяются по сравнению с типизированным массивом того же типа (например, **PackedStringArray** против ``Array[String]``). Кроме того, упакованные массивы потребляют меньше памяти. В качестве недостатка, упакованные массивы менее гибкие, поскольку они не предлагают столько удобных методов, таких как :ref:`Array.map()<class_Array_method_map>`. Типизированные массивы, в свою очередь, быстрее итерируются и изменяются, чем нетипизированные массивы.

\ **Примечание:** Упакованные массивы всегда передаются по ссылке. Чтобы получить копию массива, которую можно изменять независимо от исходного массива, используйте :ref:`duplicate()<class_PackedStringArray_method_duplicate>`. Это *не* относится к встроенным свойствам и методам. В этих случаях возвращаемый упакованный массив является копией, и его изменение *не* повлияет на исходное значение. Чтобы обновить встроенное свойство этого типа, измените возвращаемый массив, а затем снова присвойте его свойству.

\ **Примечание:** В логическом контексте упакованный массив будет оцениваться как ``false``, если он пуст. В противном случае упакованный массив всегда будет оцениваться как ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация тестирования операционной системы <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ )                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`Array<class_Array>`\ )                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`append<class_PackedStringArray_method_append>`\ (\ value\: :ref:`String<class_String>`\ )                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`append_array<class_PackedStringArray_method_append_array>`\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`bsearch<class_PackedStringArray_method_bsearch>`\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_PackedStringArray_method_clear>`\ (\ )                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`count<class_PackedStringArray_method_count>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`duplicate<class_PackedStringArray_method_duplicate>`\ (\ ) |const|                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`erase<class_PackedStringArray_method_erase>`\ (\ value\: :ref:`String<class_String>`\ )                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`fill<class_PackedStringArray_method_fill>`\ (\ value\: :ref:`String<class_String>`\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`find<class_PackedStringArray_method_find>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get<class_PackedStringArray_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has<class_PackedStringArray_method_has>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`insert<class_PackedStringArray_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_empty<class_PackedStringArray_method_is_empty>`\ (\ ) |const|                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`push_back<class_PackedStringArray_method_push_back>`\ (\ value\: :ref:`String<class_String>`\ )                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_at<class_PackedStringArray_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`resize<class_PackedStringArray_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reverse<class_PackedStringArray_method_reverse>`\ (\ )                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`rfind<class_PackedStringArray_method_rfind>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set<class_PackedStringArray_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`size<class_PackedStringArray_method_size>`\ (\ ) |const|                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`slice<class_PackedStringArray_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`sort<class_PackedStringArray_method_sort>`\ (\ )                                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`to_byte_array<class_PackedStringArray_method_to_byte_array>`\ (\ ) |const|                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator !=<class_PackedStringArray_operator_neq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`operator +<class_PackedStringArray_operator_sum_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator ==<class_PackedStringArray_operator_eq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`operator []<class_PackedStringArray_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_PackedStringArray_constructor_PackedStringArray:

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ ) :ref:`🔗<class_PackedStringArray_constructor_PackedStringArray>`

Создает пустой **PackedStringArray**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Создает **PackedStringArray** как копию заданного **PackedStringArray**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`Array<class_Array>`\ )

Создает новый **PackedStringArray**. При желании можно передать универсальный :ref:`Array<class_Array>`, который будет преобразован.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedStringArray_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_append>`

Добавляет элемент в конец массива (псевдоним :ref:`push_back()<class_PackedStringArray_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_method_append_array>`

Добавляет **PackedStringArray** в конец этого массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedStringArray_method_bsearch>`

Находит индекс существующего значения (или индекс вставки, который поддерживает порядок сортировки, если значение еще не присутствует в массиве) с помощью бинарного поиска. При желании можно передать спецификатор ``before``. Если ``false``, возвращаемый индекс следует после всех существующих записей значения в массиве.

\ **Примечание:** Вызов :ref:`bsearch()<class_PackedStringArray_method_bsearch>` для несортированного массива приводит к неожиданному поведению.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedStringArray_method_clear>`

Очищает массив. Это эквивалентно использованию :ref:`resize()<class_PackedStringArray_method_resize>` с размером ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_count>`

Возвращает количество раз когда элемент встречается в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_duplicate>`

Создает копию массива и возвращает ее.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_erase>`

Удаляет первое вхождение значения из массива и возвращает ``true``. Если значение не существует в массиве, ничего не происходит и возвращается ``false``. Чтобы удалить элемент по индексу, используйте :ref:`remove_at()<class_PackedStringArray_method_remove_at>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_fill>`

Присваивает заданное значение всем элементам массива. Обычно это можно использовать вместе с :ref:`resize()<class_PackedStringArray_method_resize>` для создания массива с заданным размером и инициализированными элементами.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedStringArray_method_find>`

Ищет в массиве значение и возвращает его индекс или ``-1``, если не найдено. При желании можно передать начальный индекс поиска.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_get:

.. rst-class:: classref-method

:ref:`String<class_String>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_get>`

Возвращает строку :ref:`String<class_String>` по заданному ``index`` в массиве. Если ``index`` выходит за пределы массива или отрицателен, этот метод завершается с ошибкой и возвращает пустую строку.

Этот метод похож (но не идентичен) оператору ``[]``. Наиболее примечательно то, что при сбое этого метода выполнение проекта не приостанавливается, если он запускается из редактора.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_has>`

Возвращает ``true``, если массив содержит ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_insert>`

Вставляет новый элемент в указанную позицию в массиве. Позиция должна быть допустимой или в конце массива (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_is_empty>`

Возвращает ``true`` если массив пустой.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_push_back>`

Добавляет строковый элемент в конец массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_remove_at>`

Удаляет элемент из массива по индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_resize>`

Устанавливает размер массива. Если массив увеличивается, резервирует элементы в конце массива. Если массив уменьшается, усекает массив до нового размера. Вызов :ref:`resize()<class_PackedStringArray_method_resize>` один раз и назначение новых значений быстрее, чем добавление новых элементов по одному. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одну из следующих констант :ref:`Error<enum_@GlobalScope_Error>`, если этот метод не удался: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если размер отрицательный, или :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, если выделение памяти не удается. Используйте :ref:`size()<class_PackedStringArray_method_size>`, чтобы узнать фактический размер массива после изменения размера.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedStringArray_method_reverse>`

Инвертирует порядок элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedStringArray_method_rfind>`

Поиск в массиве в обратном порядке. При желании можно передать начальный индекс поиска. Если отрицательный, начальный индекс считается относительно конца массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_set>`

Изменяет :ref:`String<class_String>` по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_size>`

Возвращает число элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_slice:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedStringArray_method_slice>`

Возвращает срез **PackedStringArray** от ``begin`` (включительно) до ``end`` (исключительно) как новый **PackedStringArray**.

Абсолютное значение ``begin`` и ``end`` будет ограничено размером массива, поэтому значение по умолчанию для ``end`` делает его срезом по размеру массива по умолчанию (т. е. ``arr.slice(1)`` является сокращением для ``arr.slice(1, arr.size())``).

Если ``begin`` или ``end`` отрицательны, они будут относительными к концу массива (т. е. ``arr.slice(0, -2)`` является сокращением для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedStringArray_method_sort>`

Сортирует элементы массива в порядке возрастания.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_to_byte_array>`

Возвращает :ref:`PackedByteArray<class_PackedByteArray>` с каждой строкой, закодированной как UTF-8. Строки заканчиваются ``null``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_PackedStringArray_operator_neq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_neq_PackedStringArray>`

Возвращает ``true``, если содержимое массивов различается.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_sum_PackedStringArray:

.. rst-class:: classref-operator

:ref:`PackedStringArray<class_PackedStringArray>` **operator +**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_sum_PackedStringArray>`

Возвращает новый **PackedStringArray** с содержимым ``right``, добавленным в конец этого массива. Для лучшей производительности рассмотрите возможность использования :ref:`append_array()<class_PackedStringArray_method_append_array>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_eq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_eq_PackedStringArray>`

Возвращает ``true``, если содержимое обоих массивов одинаково, т.е. они имеют все одинаковые :ref:`String<class_String>` в соответствующих индексах.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_idx_int:

.. rst-class:: classref-operator

:ref:`String<class_String>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_operator_idx_int>`

Возвращает :ref:`String<class_String>` по индексу ``index``. Отрицательные индексы можно использовать для доступа к элементам, начиная с конца. Использование индекса за пределами массива приведет к ошибке.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
