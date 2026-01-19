:github_url: hide

.. _class_Timer:

Timer
=====

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Обратный таймер.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел **Timer** — это таймер обратного отсчета, представляющий собой простейший способ обработки временной логики в движке. Когда таймер достигает конца своего :ref:`wait_time<class_Timer_property_wait_time>`, он испускает сигнал :ref:`timeout<class_Timer_signal_timeout>`.

После добавления таймера в дерево сцены его можно запустить вручную с помощью :ref:`start()<class_Timer_method_start>`. Узел таймера также запускается автоматически, если :ref:`autostart<class_Timer_property_autostart>` имеет значение ``true``.

Без большого количества кода узел таймера можно добавить и настроить в редакторе. Сигнал :ref:`timeout<class_Timer_signal_timeout>`, который он испускает, также можно подключить через панель сигналов в редакторе:

::

    func _on_timer_timeout():
        print("Пора атаковать!")

\ **Примечание:** Чтобы создать одноразовый таймер без создания экземпляра узла, используйте :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Примечание:** Таймеры зависят от :ref:`Engine.time_scale<class_Engine_property_time_scale>`, если только :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` не имеет значения ``true``. Чем выше временной масштаб, тем быстрее закончатся таймеры. Частота обработки таймера может зависеть от частоты кадров или :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Издается, когда таймер достигает конца.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Обновлять таймер каждый кадр физического процесса (см. :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Обновлять таймер каждый обработанный (отрисованный) кадр (см. :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

Если ``true``, таймер запустится немедленно при входе в дерево сцены.

\ **Примечание:** После того, как таймер входит в дерево, это свойство автоматически устанавливается в ``false``.

\ **Примечание:** Это свойство ничего не делает, когда таймер работает в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

Если ``true``, таймер проигнорирует :ref:`Engine.time_scale<class_Engine_property_time_scale>` и обновит значение реального прошедшего времени.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

Если ``true``, таймер остановится после достижения конца. В противном случае, как и по умолчанию, таймер автоматически перезапустится.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Если ``true``, таймер приостанавливается. Приостановленный таймер не будет выполняться, пока это свойство не будет возвращено к значению ``false``, даже при вызове :ref:`start()<class_Timer_method_start>`. См. также :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Указывает, когда обновляется таймер во время основного цикла.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

Оставшееся время таймера в секундах. Это всегда ``0``, если таймер остановлен.

\ **Примечание:** Это свойство доступно только для чтения и не может быть изменено. Оно основано на :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

Время, необходимое для завершения таймера, в секундах. Это свойство также можно устанавливать каждый раз при вызове :ref:`start()<class_Timer_method_start>`.

\ **Примечание:** Таймеры могут обрабатываться только один раз на физический или процессный кадр (в зависимости от :ref:`process_callback<class_Timer_property_process_callback>`). Нестабильная частота кадров может привести к неравномерному завершению таймера, что особенно заметно, если время ожидания меньше примерно ``0.05`` секунд. Для очень коротких таймеров рекомендуется писать собственный код вместо использования узла **Timer**. На таймеры также влияет :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Возвращает ``true``, если таймер остановлен или не запущен.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Запускает таймер или сбрасывает его, если он уже был запущен. Завершается сбоем, если таймер не находится внутри дерева сцены. Если ``time_sec`` больше ``0``, это значение используется для :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Примечание:** Этот метод не возобновляет приостановленный таймер. См. :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Останавливает таймер. См. также :ref:`paused<class_Timer_property_paused>`. В отличие от :ref:`start()<class_Timer_method_start>`, этот метод можно безопасно вызывать, если таймер не находится внутри дерева сцены.

\ **Примечание:** Вызов :ref:`stop()<class_Timer_method_stop>` не генерирует сигнал :ref:`timeout<class_Timer_signal_timeout>`, поскольку считается, что таймер не истёк. Если это необходимо, используйте ``$Timer.timeout.emit()`` после вызова :ref:`stop()<class_Timer_method_stop>`, чтобы вручную сгенерировать сигнал.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
