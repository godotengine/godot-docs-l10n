:github_url: hide

.. _class_Mutex:

Mutex
=====

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Для синхронізації кількох :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

М'ютекс синхронізації (взаємне виключення). Використовується для синхронізації кількох :ref:`Thread<class_Thread>` і еквівалентний двійковому :ref:`Semaphore<class_Semaphore>`. Він гарантує, що лише один потік може отримати доступ до критичної секції одночасно.

Це реентерантний м'ютекс, що означає, що він може бути заблокований кілька разів одним потоком, за умови, що він також розблокує його стільки ж разів.

\ **Попередження:** Щоб забезпечити належне очищення без збоїв або глухих блокувань, повинні бути виконані такі умови:

- Коли кількість посилань **Mutex** досягає нуля і тому він знищується, жоден потік (включаючи той, в якому відбудеться знищення) не повинен мати його заблоковано.

- Коли кількість посилань :ref:`Thread<class_Thread>` досягає нуля і тому він знищується, він не повинен мати жодного заблокованого м'ютексу.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання кількох потоків <../tutorials/performance/using_multiple_threads>`

- :doc:`Нитка-безпечні API <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`lock<class_Mutex_method_lock>`\ (\ )         |
   +-------------------------+----------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_lock<class_Mutex_method_try_lock>`\ (\ ) |
   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`unlock<class_Mutex_method_unlock>`\ (\ )     |
   +-------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Locks this **Mutex**, блоки до тих пір, поки він не розблокував поточний власник.

\ **Примітка:** Ця функція повертається без блокування, якщо нитка вже має право власності на грязь.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Перемикаючи це **Mutex**, але не блокує. ``true`` на успіх, ``false`` інакше.

\ **Примітка:** Ця функція повертає ``true``, якщо нитка вже має право власності на мутекс.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Розблоковує цей **Mutex**, залишаючи його іншим потокам.

\ **Примітка:** Якщо потік викликав :ref:`lock()<class_Mutex_method_lock>` або :ref:`try_lock()<class_Mutex_method_try_lock>` кілька разів, вже маючи право власності на мьютекс, він також повинен викликати :ref:`unlock()<class_Mutex_method_unlock>` таку ж кількість разів, щоб правильно його розблокувати.

\ **Попередження:** Виклик :ref:`unlock()<class_Mutex_method_unlock>` більше разів, ніж :ref:`lock()<class_Mutex_method_lock>` у даному потоці, що призводить до спроби розблокувати незаблокований мьютекс, є неправильним і може призвести до збоїв або взаємоблокувань.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
