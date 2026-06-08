:github_url: hide

.. _class_Thread:

Thread
======

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Блок виконання в процесі.

.. rst-class:: classref-introduction-group

Опис
--------

Одиниця виконання в процесі. Може одночасно запускати методи на :ref:`Object<class_Object>`. Використання синхронізації через :ref:`Mutex<class_Mutex>` або :ref:`Semaphore<class_Semaphore>` рекомендується при роботі зі спільними об'єктами.

\ **Попередження:** Щоб забезпечити належне очищення без збоїв або блокувань, коли кількість посилань ``Потоку`` досягає нуля і, таким чином, він знищується, повинні бути виконані такі умови:

- Він не повинен мати заблокованих об'єктів :ref:`Mutex<class_Mutex>`.

- Він не повинен очікувати на жодних об'єктах :ref:`Semaphore<class_Semaphore>`.

- Для нього мав бути викликаний :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання кількох потоків <../tutorials/performance/using_multiple_threads>`

- :doc:`Нитка-безпечні API <../tutorials/performance/thread_safe_apis>`

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_id<class_Thread_method_get_id>`\ (\ ) |const|                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_alive<class_Thread_method_is_alive>`\ (\ ) |const|                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_main_thread<class_Thread_method_is_main_thread>`\ (\ ) |static|                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_started<class_Thread_method_is_started>`\ (\ ) |const|                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_thread_safety_checks_enabled<class_Thread_method_set_thread_safety_checks_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start<class_Thread_method_start>`\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`wait_to_finish<class_Thread_method_wait_to_finish>`\ (\ )                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

Нитка, що працює з меншим пріоритетом, ніж зазвичай.

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

Нитка з стандартним пріоритетом.

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

Нитка, що працює з вищим пріоритетом, ніж зазвичай.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

Повертає ідентифікатор поточного потоку **Thread**, унікально ідентифікуючи його серед усіх потоків. Якщо **Thread** ще не розпочав роботу або якщо викликано метод :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`, повертається порожній рядок.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

Повертаємо ``true``, якщо це **Thread** наразі працює надана функція. Це корисно для визначення, якщо :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` можна назвати без блокування викличної нитки.

Щоб перевірити, чи є **Thread**, скористайтеся :ref:`is_started()<class_Thread_method_is_started>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_main_thread:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_main_thread**\ (\ ) |static| :ref:`🔗<class_Thread_method_is_main_thread>`

Повертає ``true``, якщо потік, з якого було викликано цей метод, є основним потоком.

\ **Примітка:** Це статичний метод, який не пов'язаний з певним об'єктом **Thread**.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_started>`

Повертає ``true``, якщо цей **Thread** було запущено. Після запуску повертатиме ``true``, доки до нього не буде приєднано за допомогою :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`. Щоб перевірити, чи **Thread** все ще виконує своє завдання, використовуйте :ref:`is_alive()<class_Thread_method_is_alive>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

Встановлює, чи повинні перевірки безпеки потоків, які рушій зазвичай виконує в методах певних класів (наприклад, :ref:`Node<class_Node>`), виконуватися **у поточному потоці**.

За замовчуванням для кожного потоку вони ввімкнені (ніби викликаються зі значенням ``enabled``, що дорівнює ``true``).

Ці перевірки є консервативними. Це означає, що вони успішно вважатимуть виклик безпечним для потоків (і, отже, дозволять йому відбутися), лише якщо рушій може гарантувати таку безпеку.

Через це можуть бути випадки, коли користувач може захотіти вимкнути їх (``enabled`` зі значенням ``false``), щоб знову дозволити певні операції. Роблячи це, користувач несе відповідальність за забезпечення безпеки потоків (наприклад, використовуючи :ref:`Mutex<class_Mutex>`) для тих об'єктів, які в іншому випадку захищені рушієм.

\ **Примітка:** Це розширене використання рушія. Рекомендується використовувати його лише тоді, коли ви знаєте, що робите, і немає безпечнішого способу.

\ **Примітка:** Це корисно для скриптів, що працюють на довільних об'єктах **Thread** або завданнях, що надсилаються до :ref:`WorkerThreadPool<class_WorkerThreadPool>`. Це не стосується коду, що виконується під час обробки групи :ref:`Node<class_Node>`, де перевірки будуть виконуватися завжди.

\ **Примітка:** Навіть у випадку вимкнення перевірок у завданні :ref:`WorkerThreadPool<class_WorkerThreadPool>` немає потреби повторно вмикати їх після завершення. Двигун зробить це сам.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

Запускає новий **Thread**, який викликає ``callable``.

Якщо метод приймає деякі аргументи, ви можете передати їх за допомогою :ref:`Callable.bind()<class_Callable_method_bind>`.

\ ``Param priority`` **Thread** можна змінити, передавши значення з переліку :ref:`Priority<enum_Thread_Priority>`.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` у разі невдачі.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

Приєднується до **Thread** та очікує його завершення. Повертає вивід :ref:`Callable<class_Callable>`, переданого до :ref:`start()<class_Thread_method_start>`.

Слід використовувати або тоді, коли потрібно отримати значення, повернене методом, викликаним **Thread**, або перед звільненням екземпляра, який містить **Thread**.

Щоб визначити, чи можна викликати це без блокування викликаючого потоку, перевірте, чи :ref:`is_alive()<class_Thread_method_is_alive>` має значення ``false``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
