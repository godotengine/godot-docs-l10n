:github_url: hide

.. _class_PackedVector3Array:

PackedVector3Array
==================

Упакованный массив :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Массив, специально предназначенный для хранения :ref:`Vector3<class_Vector3>`. Плотно упаковывает данные, поэтому экономит память при больших размерах массивов.

\ **Различия между упакованными массивами, типизированными массивами и нетипизированными массивами:** Упакованные массивы, как правило, быстрее итерируются и изменяются по сравнению с типизированным массивом того же типа (например, **PackedVector3Array** против ``Array[Vector3]``). Кроме того, упакованные массивы потребляют меньше памяти. В качестве недостатка, упакованные массивы менее гибкие, поскольку они не предлагают столько удобных методов, таких как :ref:`Array.map()<class_Array_method_map>`. Типизированные массивы, в свою очередь, быстрее итерируются и изменяются, чем нетипизированные массивы.

\ **Примечание:** Упакованные массивы всегда передаются по ссылке. Чтобы получить копию массива, которую можно изменять независимо от исходного массива, используйте :ref:`duplicate()<class_PackedVector3Array_method_duplicate>`. Это *не* относится к встроенным свойствам и методам. В этих случаях возвращаемый упакованный массив является копией, и его изменение *не* повлияет на исходное значение. Чтобы обновить встроенное свойство этого типа, измените возвращаемый массив, а затем снова присвойте его свойству.

\ **Примечание:** В логическом контексте упакованный массив будет оцениваться как ``false``, если он пуст. В противном случае упакованный массив всегда будет оцениваться как ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector3Array_method_append>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector3Array_method_append_array>`\ (\ array\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector3Array_method_bsearch>`\ (\ value\: :ref:`Vector3<class_Vector3>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector3Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector3Array_method_count>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`duplicate<class_PackedVector3Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector3Array_method_erase>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector3Array_method_fill>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector3Array_method_find>`\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get<class_PackedVector3Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector3Array_method_has>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector3Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector3Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector3Array_method_push_back>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector3Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector3Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector3Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector3Array_method_rfind>`\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector3Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector3Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`slice<class_PackedVector3Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector3Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector3Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector3Array_operator_neq_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_PackedVector3Array_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator +<class_PackedVector3Array_operator_sum_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector3Array_operator_eq_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator []<class_PackedVector3Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_PackedVector3Array_constructor_PackedVector3Array:

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ ) :ref:`🔗<class_PackedVector3Array_constructor_PackedVector3Array>`

Создает пустой **PackedVector3Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

Создает **PackedVector3Array** как копию заданного **PackedVector3Array**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Создает новый **PackedVector3Array**. При желании вы можете передать общий :ref:`Array<class_Array>`, который будет преобразован.

\ **Примечание:** При инициализации **PackedVector3Array** элементами он должен быть инициализирован :ref:`Array<class_Array>` значений :ref:`Vector3<class_Vector3>`:

::

    var array = PackedVector3Array([Vector3(12, 34, 56), Vector3(78, 90, 12)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedVector3Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_append>`

Добавляет элемент в конец массива (псевдоним :ref:`push_back()<class_PackedVector3Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_method_append_array>`

Добавляет **PackedVector3Array** в конец этого массива.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector3<class_Vector3>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector3Array_method_bsearch>`

Находит индекс существующего значения (или индекс вставки, который поддерживает порядок сортировки, если значение еще не присутствует в массиве) с помощью бинарного поиска. При желании можно передать спецификатор ``before``. Если ``false``, возвращаемый индекс следует после всех существующих записей значения в массиве.

\ **Примечание:** Вызов :ref:`bsearch()<class_PackedVector3Array_method_bsearch>` для несортированного массива приводит к неожиданному поведению.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_clear>`

Очищает массив. Это эквивалентно использованию :ref:`resize()<class_PackedVector3Array_method_resize>` с размером ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_count>`

Возвращает количество раз, когда элемент находится в массиве.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_duplicate>`

Создает копию массива и возвращает ее.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_erase>`

Удаляет первое вхождение значения из массива и возвращает ``true``. Если значение не существует в массиве, ничего не происходит и возвращается ``false``. Чтобы удалить элемент по индексу, используйте :ref:`remove_at()<class_PackedVector3Array_method_remove_at>`.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_fill>`

Присваивает заданное значение всем элементам массива. Обычно это можно использовать вместе с :ref:`resize()<class_PackedVector3Array_method_resize>` для создания массива с заданным размером и инициализированными элементами.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector3Array_method_find>`

Выполняет поиск значения в массиве и возвращает его индекс или ``-1``, если не найдено. При желании можно передать начальный индекс поиска.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_get:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_get>`

Возвращает :ref:`Vector3<class_Vector3>` по заданному ``index`` в массиве. Если ``index`` выходит за пределы массива или имеет отрицательное значение, этот метод завершается с ошибкой и возвращает ``Vector3(0, 0, 0)``.

Этот метод похож (но не идентичен) оператору ``[]``. Наиболее примечательно то, что при сбое этого метода выполнение проекта не приостанавливается, если он запускается из редактора.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_has>`

Возвращает ``true``, если массив содержит ``value``.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_insert>`

Вставляет новый элемент в указанную позицию в массиве. Позиция должна быть допустимой или в конце массива (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_is_empty>`

Возвращает ``true`` если массив пустой.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_push_back>`

Вставляет :ref:`Vector3<class_Vector3>` в конец.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_method_remove_at>`

Удаляет элемент из массива по индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_method_resize>`

Устанавливает размер массива. Если массив увеличивается, резервирует элементы в конце массива. Если массив уменьшается, усекает массив до нового размера. Вызов :ref:`resize()<class_PackedVector3Array_method_resize>` один раз и назначение новых значений быстрее, чем добавление новых элементов по одному. 

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или одну из следующих констант :ref:`Error<enum_@GlobalScope_Error>`, если этот метод не удался: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если размер отрицательный, или :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`, если выделение памяти не удается. Используйте :ref:`size()<class_PackedVector3Array_method_size>`, чтобы узнать фактический размер массива после изменения размера.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_reverse>`

Инвертирует порядок элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector3Array_method_rfind>`

Выполняет поиск в массиве в обратном порядке. При желании можно передать начальный индекс поиска. Если он отрицательный, начальный индекс считается относительно конца массива.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_set>`

Изменяет :ref:`Vector3<class_Vector3>` по указанному индексу.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_size>`

Возвращает число элементов в массиве.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector3Array_method_slice>`

Возвращает срез **PackedVector3Array** от ``begin`` (включительно) до ``end`` (исключительно) как новый **PackedVector3Array**.

Абсолютное значение ``begin`` и ``end`` будет ограничено размером массива, поэтому значение по умолчанию для ``end`` делает его срезом по размеру массива по умолчанию (т. е. ``arr.slice(1)`` является сокращением для ``arr.slice(1, arr.size())``).

Если ``begin`` или ``end`` отрицательны, они будут относительными к концу массива (т. е. ``arr.slice(0, -2)`` является сокращением для ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_sort>`

Сортирует элементы массива в порядке возрастания.

\ **Примечание:** Векторы с элементами :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведут себя не так, как другие векторы. Поэтому результаты этого метода могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_to_byte_array>`

Возвращает :ref:`PackedByteArray<class_PackedByteArray>`, где каждый вектор закодирован в байтах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_PackedVector3Array_operator_neq_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_neq_PackedVector3Array>`

Возвращает ``true``, если содержимое массивов различается.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_PackedVector3Array_operator_mul_Transform3D>`

Возвращает новый **PackedVector3Array** со всеми векторами в этом массиве, обратно преобразованными (умноженными) на заданную матрицу преобразования :ref:`Transform3D<class_Transform3D>`, при условии, что базис преобразования ортонормальный (т. е. поворот/отражение в порядке, масштабирование/перекос — нет).

\ ``array * transform`` эквивалентно ``transform.inverse() * array``. См. :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Для преобразования с помощью обратного аффинного преобразования (например, с масштабированием) вместо этого можно использовать ``transform.affine_inverse() * array``. См. :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_sum_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator +**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_sum_PackedVector3Array>`

Возвращает новый **PackedVector3Array** с содержимым ``right``, добавленным в конец этого массива. Для лучшей производительности рассмотрите возможность использования :ref:`append_array()<class_PackedVector3Array_method_append_array>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_eq_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_eq_PackedVector3Array>`

Возвращает ``true``, если содержимое обоих массивов одинаково, т.е. они имеют все одинаковые :ref:`Vector3<class_Vector3>` в соответствующих индексах.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_operator_idx_int>`

Возвращает :ref:`Vector3<class_Vector3>` по индексу ``index``. Отрицательные индексы можно использовать для доступа к элементам, начиная с конца. Использование индекса за пределами массива приведет к ошибке.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
