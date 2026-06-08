:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує методи створення псевдо-рандомних чисел.

.. rst-class:: classref-introduction-group

Опис
--------

RandomNumberGenerator — це клас для генерації псевдовипадкових чисел. Зараз використовується `PCG32 <https://www.pcg-random.org/>`__. 

\ **Примітка.** Основний алгоритм є деталлю реалізації, і на нього не слід покладатися. 

Щоб згенерувати випадкове число з плаваючою точкою (у заданому діапазоні) на основі початкового числа, що залежить від часу: 

::
 
    var rng = RandomNumberGenerator.new() 
    func _ready(): 
        var my_random_number = rng.randf_range(-10.0, 10.0) 

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Генерація випадкових чисел <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Ініціалізує стан генератора випадкових чисел на основі вказаного початкового значення. Вказане початкове значення забезпечить відтворювану послідовність псевдовипадкових чисел.

\ **Примітка:** Генератор випадкових чисел (RNG) не має ефекту лавини і може генерувати схожі потоки випадкових чисел при використанні схожих початкових значень. Якщо початкові значення отримуються ззовні, рекомендується використовувати хеш-функцію для підвищення їхньої якості.

\ **Примітка:** Значенням за замовчуванням для цієї властивості є псевдовипадкове число, яке змінюється при виклику ``методу randomize``. Значення ``0``, зазначене тут, є заповнювачем, а не фактичним початковим значенням за замовчуванням.

\ **Примітка:** Встановлення цього властивості має побічний ефект у вигляді зміни внутрішнього :ref:`state<class_RandomNumberGenerator_property_state>`, тому переконайтеся, що ви ініціалізували початкове значення *перед* модифікацією :ref:`state<class_RandomNumberGenerator_property_state>`:

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Відновлення до попередньо збереженого стану.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

Поточний стан генератора випадкових чисел. Збережіть та відновіть цю властивість, щоб повернути генератор до попереднього стану:

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var saved_state = rng.state # Збереження поточного стану.
    print(rng.randf()) # Зміна внутрішнього стану.
    rng.state = saved_state # Відновлення стану.
    print(rng.randf()) # Друкує те саме значення, що й раніше.

\ **Примітка:** Не встановлюйте для стану довільні значення, оскільки генератор випадкових чисел вимагає певних якостей для належної роботи. Його слід встановлювати лише значення, отримані з самої властивості стану. Щоб ініціалізувати генератор випадкових чисел довільними вхідними даними, використовуйте замість цього :ref:`seed<class_RandomNumberGenerator_property_seed>`.

\ **Примітка:** Значення цієї властивості за замовчуванням є псевдовипадковим і змінюється під час виклику методу ``randomize``. Значення ``0``, задокументоване тут, є тимчасовим, а не фактичним станом за замовчуванням.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Повертає випадкове ціле число в діапазоні від ``0`` до розміру масиву, переданого як параметр. Кожне значення в масиві має бути числом з плаваючою комою, яке відображає відносну ймовірність того, що воно буде повернено як індекс. Більше значення означає, що ймовірність повернення цього значення як індексу вища, тоді як значення ``0`` означає, що воно ніколи не буде повернено як індекс.

Наприклад, якщо ``[0.5, 1, 1, 2] `` передається як параметр, то ймовірність того, що метод поверне ``3`` (індекс значення ``2``), удвічі вища, а ймовірність повернення ``0`` (індекс значення ``0.5``) удвічі нижча порівняно з індексами ``1`` та ``2``.

Виводить помилку та повертає ``-1``, якщо масив порожній.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Виводить один із чотирьох елементів у `my_array`.
    # Імовірніше, що буде виведено "four", а менш імовірно — "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

Повертає псевдо-рандом float між ``0.0`` і ``1.0`` (включаючи).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

Повертає псевдо-рандом, плаваючи між ``паром`` і ``парм до`` (включно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

Повертає `нормально розподілене <https://en.wikipedia.org/wiki/Normal_distribution>`__ псевдовипадкове число з плаваючою комою з заданого ``mean`` та стандартного ``deviation``. Це також відоме як гаусівський розподіл.

\ **Примітка:** Цей метод використовує алгоритм `перетворення Бокса-Мюллера <https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform>`__.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

Повертає псевдо-рандом 32-бітове ціле між ``0`` і ``4294967295`` (включаючи).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

Повертає псевдо-рандом 32-біт, підписаний цілим між ``парм`` і ``парм до`` (включно).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

Налаштовує часову насінню для цього ``RandomКількістьGenerator``. На відміну від :ref:`@GlobalScope<class_@GlobalScope>` функції випадкових чисел, різні ``RandomКількістьGenerator`` екземпляри можуть використовувати різні насіння.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
