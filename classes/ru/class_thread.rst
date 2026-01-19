:github_url: hide

.. _class_Thread:

Thread
======

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Единица выполнения в процессе.

.. rst-class:: classref-introduction-group

Описание
----------------

Единица выполнения в процессе. Может одновременно выполнять методы объектов :ref:`Object<class_Object>`. При работе с разделяемыми объектами рекомендуется использовать синхронизацию через :ref:`Mutex<class_Mutex>` или :ref:`Semaphore<class_Semaphore>`.

\ **Предупреждение:** Для обеспечения надлежащей очистки без сбоев или взаимоблокировок, когда счетчик ссылок **Thread** достигает нуля и, следовательно, уничтожается, должны быть выполнены следующие условия:

- В нем не должно быть заблокированных объектов :ref:`Mutex<class_Mutex>`.

- Он не должен ожидать завершения от каких-либо объектов :ref:`Semaphore<class_Semaphore>`.

- На нем должен быть вызван метод :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование многопоточности <../tutorials/performance/using_multiple_threads>`

- :doc:`Потокобезопасные API <../tutorials/performance/thread_safe_apis>`

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Методы
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

Перечисления
------------------------

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

Поток, работающий с более низким приоритетом, чем обычно.

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

Поток со стандартным приоритетом.

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

Поток, работающий с более высоким приоритетом, чем обычно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

Возвращает ID текущего **Thread**, уникально идентифицируя его среди всех потоков. Если **Thread** не начал работу или был вызван :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`, возвращается пустая строка.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

Возвращает ``true``, если этот **Thread** в данный момент выполняет предоставленную функцию. Это полезно для определения того, можно ли вызвать :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` без блокировки вызывающего потока.

Чтобы проверить, можно ли присоединиться к **Thread**, используйте :ref:`is_started()<class_Thread_method_is_started>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_main_thread:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_main_thread**\ (\ ) |static| :ref:`🔗<class_Thread_method_is_main_thread>`

Возвращает ``true``, если поток, из которого был вызван этот метод, является основным потоком.

\ **Примечание:** Это статический метод, не связанный с конкретным объектом **Thread**.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_started>`

Возвращает ``true``, если этот **Thread** был запущен. После запуска он будет возвращать ``true``, пока не будет присоединен с помощью :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`. Для проверки того, выполняет ли **Thread** свою задачу, используйте :ref:`is_alive()<class_Thread_method_is_alive>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

Устанавливает, должны ли проверки безопасности потока, которые движок обычно выполняет в методах определенных классов (например, :ref:`Node<class_Node>`), происходить **в текущем потоке**.

По умолчанию для каждого потока они включены (как если бы они были вызваны с ``enabled``, равным ``true``).

Эти проверки консервативны. Это означает, что они будут успешно считать вызов потокобезопасным (и, следовательно, позволят ему произойти), только если движок может гарантировать такую безопасность.

Из-за этого могут быть случаи, когда пользователь может захотеть отключить их (``enabled``, равным ``false``), чтобы снова разрешить определенные операции. При этом на пользователя ложится ответственность за обеспечение безопасности потока (например, с помощью :ref:`Mutex<class_Mutex>`) для тех объектов, которые в противном случае защищены движком.

\ **Примечание:** Это расширенное использование движка. Вам рекомендуется использовать его, только если вы знаете, что делаете, и нет более безопасного способа.

\ **Примечание:** Это полезно для скриптов, работающих либо на произвольных объектах **Thread**, либо на задачах, отправленных в :ref:`WorkerThreadPool<class_WorkerThreadPool>`. Это не относится к коду, работающему во время групповой обработки :ref:`Node<class_Node>`, где проверки будут выполняться всегда.

\ **Примечание:** Даже в случае отключения проверок в задаче :ref:`WorkerThreadPool<class_WorkerThreadPool>` нет необходимости включать их снова в конце. Движок сделает это.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

Запускает новый **Thread**, который вызывает ``callable``.

Если метод принимает некоторые аргументы, вы можете передать их с помощью :ref:`Callable.bind()<class_Callable_method_bind>`.

\ ``priority`` **Thread** можно изменить, передав значение из перечисления :ref:`Priority<enum_Thread_Priority>`.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха или :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` в случае неудачи.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

Присоединяется к **Thread** и ждет его завершения. Возвращает вывод :ref:`Callable<class_Callable>`, переданный в :ref:`start()<class_Thread_method_start>`.

Следует использовать либо когда вы хотите получить значение, возвращаемое из метода, вызванного **Thread**, либо перед освобождением экземпляра, содержащего **Thread**.

Чтобы определить, можно ли вызвать это без блокировки вызывающего потока, проверьте, является ли :ref:`is_alive()<class_Thread_method_is_alive>` ``false``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
