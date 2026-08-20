:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет методы генерации псевдослучайных чисел.

.. rst-class:: classref-introduction-group

Описание
----------------

RandomNumberGenerator — это класс для генерации псевдослучайных чисел. В настоящее время он использует `PCG32 <https://www.pcg-random.org/>`__.

\ **Примечание:** Базовый алгоритм является деталью реализации и не должен зависеть от него.

Для генерации случайного числа с плавающей точкой (в заданном диапазоне) на основе зависящего от времени начального числа:

::

    var rng = RandomNumberGenerator.new()
    func _ready():
    var my_random_number = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Генерация случайных чисел <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`rand_weighted<class_RandomNumberGenerator_method_rand_weighted>`\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf<class_RandomNumberGenerator_method_randf>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf_range<class_RandomNumberGenerator_method_randf_range>`\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ )          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randfn<class_RandomNumberGenerator_method_randfn>`\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi<class_RandomNumberGenerator_method_randi>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi_range<class_RandomNumberGenerator_method_randi_range>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`randomize<class_RandomNumberGenerator_method_randomize>`\ (\ )                                                                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Инициализирует состояние генератора случайных чисел на основе заданного начального значения. Заданное начальное значение даст воспроизводимую последовательность псевдослучайных чисел.

\ **Примечание:** Генератор случайных чисел (RNG) не имеет эффекта лавины и может выдавать похожие потоки случайных чисел при одинаковых начальных значениях. Рекомендуется использовать хеш-функцию для улучшения качества начальных значений, если они получены извне.

\ **Примечание:** Значение по умолчанию для этого свойства — псевдослучайное, и оно изменяется при вызове :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. Значение ``0``, указанное здесь, является заполнителем, а не фактическим начальным значением по умолчанию.

\ **Примечание:** Установка этого свойства приводит к побочному эффекту — изменению внутреннего :ref:`state<class_RandomNumberGenerator_property_state>`, поэтому убедитесь, что вы инициализировали начальное значение *перед* изменением :ref:`state<class_RandomNumberGenerator_property_state>`:

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Восстановить до ранее сохраненного состояния.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

Текущее состояние генератора случайных чисел. Сохраните и восстановите это свойство, чтобы восстановить генератор в предыдущее состояние:

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # Сохранить текущее состояние.
    print(rng.randf()) # Продвинутое внутреннее состояние.
    rng.state = saved_state # Восстановите состояние.
    print(rng.randf()) # Печатает то же значение, что и ранее.

\ **Примечание:** Не устанавливайте state в произвольные значения, так как генератор случайных чисел требует, чтобы состояние имело определенные качества для правильного поведения. Его следует устанавливать только в значения, которые получены из самого свойства state. Чтобы инициализировать генератор случайных чисел с произвольным вводом, используйте вместо этого :ref:`seed<class_RandomNumberGenerator_property_seed>`.

\ **Примечание:** Значение этого свойства по умолчанию — псевдослучайное и изменяется при вызове :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. Значение ``0``, задокументированное здесь, является заполнителем, а не фактическим состоянием по умолчанию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Returns a random integer between ``0`` and the size of the array that is passed as a parameter. Each value in the array should be a non-negative floating-point number that represents the relative likelihood that it will be returned as an index. A higher value means the value is more likely to be returned as an index, while a value of ``0`` means it will never be returned as an index.

For example, if ``[0.5, 1, 1, 2]`` is passed as a parameter, then the method is twice as likely to return ``3`` (the index of the value ``2``) and twice as unlikely to return ``0`` (the index of the value ``0.5``) compared to the indices ``1`` and ``2``.

Prints an error and returns ``-1`` if the array is empty or contains any negative values.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Prints one of the four elements in `my_array`.
    # It is more likely to print "four", and less likely to print "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

Возвращает псевдослучайное число с плавающей точкой между ``0.0`` и ``1.0`` (включительно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

Возвращает псевдослучайное число с плавающей точкой между ``from`` и ``to`` (включительно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

Возвращает `нормально распределенное <https://en.wikipedia.org/wiki/Normal_distribution>`__, псевдослучайное число с плавающей точкой из указанного ``mean`` и стандартного ``offset``. Это также известно как распределение Гаусса.

\ **Примечание:** Этот метод использует алгоритм `преобразование Box-Muller <https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform>`__.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

Возвращает псевдослучайное 32-битное целое число без знака в диапазоне от ``0`` до ``4294967295`` (включительно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

Возвращает псевдослучайное 32-битное целое число со знаком в диапазоне от ``from`` до ``to`` (включительно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

Устанавливает основанное на времени начальное значение для этого экземпляра **RandomNumberGenerator**. В отличие от функций генерации случайных чисел :ref:`@GlobalScope<class_@GlobalScope>`, разные экземпляры **RandomNumberGenerator** могут использовать разные начальные значения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
