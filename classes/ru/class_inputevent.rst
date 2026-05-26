:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

Абстрактный базовый класс для событий ввода.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс всех типов событий ввода. См. :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Преобразования области просмотра и холста <../tutorials/2d/2d_transforms>`

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

Идентификатор устройства, используемый для эмулированного ввода мыши с сенсорного экрана или для эмулированного сенсорного ввода с мыши. Это может использоваться для различения эмулированного ввода мыши от физического ввода мыши или эмулированного сенсорного ввода от физического сенсорного ввода.

.. _class_InputEvent_constant_DEVICE_ID_KEYBOARD:

.. rst-class:: classref-constant

**DEVICE_ID_KEYBOARD** = ``16`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_KEYBOARD>`

Device ID used for input from a keyboard. This can be used to distinguish keyboard input events from joypad input events.

.. _class_InputEvent_constant_DEVICE_ID_MOUSE:

.. rst-class:: classref-constant

**DEVICE_ID_MOUSE** = ``32`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_MOUSE>`

Device ID used for input from a mouse. This can be used to distinguish mouse input events from joypad input events.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

Идентификатор устройства события.

\ **Примечание:** :ref:`device<class_InputEvent_property_device>` может быть отрицательным для особых случаев использования, которые не относятся к устройствам, физически присутствующим в системе. См. :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

Возвращает ``true``, если данное событие ввода и это событие ввода можно сложить (только для событий типа :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`).

Будут скопированы позиция данного события ввода, глобальная позиция и скорость. Результирующий ``relative`` является суммой обоих событий. Модификаторы обоих событий должны быть идентичными.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

Возвращает :ref:`String<class_String>`-представление события.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

Возвращает значение от 0,0 до 1,0 в зависимости от состояния заданных действий. Полезно для получения значения событий типа :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

Если ``exact_match`` равен ``false``, он игнорирует дополнительные модификаторы ввода для событий :ref:`InputEventKey<class_InputEventKey>` и :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а также направление для событий :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

Возвращает ``true``, если это событие ввода соответствует предопределенному действию любого типа.

Если ``exact_match`` равно ``false``, он игнорирует дополнительные модификаторы ввода для событий :ref:`InputEventKey<class_InputEventKey>` и :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а также направление для событий :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Возвращает ``true``, если заданное действие соответствует данному событию и нажимается (и не является событием echo для событий :ref:`InputEventKey<class_InputEventKey>`, если только ``allow_echo`` не равен ``true``). Не применимо для событий типа :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` или :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Если ``exact_match`` равен ``false``, он игнорирует дополнительные модификаторы ввода для событий :ref:`InputEventKey<class_InputEventKey>` и :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а также направление для событий :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Примечание:** Из-за эффекта «фантомного нажатия» клавиатуры :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` может возвращать ``false``, даже если нажата одна из клавиш действия. Для получения дополнительной информации см. `Примеры ввода <../tutorials/inputs/input_examples.html#keyboard-events>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Возвращает ``true``, если заданное действие соответствует данному событию и отпущено (т.е. не нажато). Не применимо к событиям типа :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` или :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Если ``exact_match`` равен ``false``, он игнорирует дополнительные модификаторы ввода для событий :ref:`InputEventKey<class_InputEventKey>` и :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а также направление для событий :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Возвращает ``true``, если тип этого события ввода можно назначить действию ввода: :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Возвращает ``false`` для всех остальных типов событий ввода.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

Возвращает ``true``, если это событие ввода было отменено.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Возвращает ``true``, если это событие ввода является событием эха (только для событий типа :ref:`InputEventKey<class_InputEventKey>`). Событие эха — это повторяющееся событие клавиши, отправляемое, когда пользователь удерживает клавишу. Любой другой тип события возвращает ``false``.

\ **Примечание:** Скорость отправки событий эха обычно составляет около 20 событий в секунду (после удержания клавиши примерно полсекунды). Однако пользователь может изменить задержку/скорость повтора клавиши или полностью отключить ее в настройках операционной системы. Чтобы убедиться, что ваш проект работает правильно во всех конфигурациях, не предполагайте, что у пользователя есть определенная конфигурация повтора клавиши в поведении вашего проекта.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Возвращает ``true``, если указанный параметр ``event`` соответствует данному событию. Действительно только для событий действия, включая события клавиши (:ref:`InputEventKey<class_InputEventKey>`), кнопки (:ref:`InputEventMouseButton<class_InputEventMouseButton>` или :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), оси :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` и действия (:ref:`InputEventAction<class_InputEventAction>`).

Если ``exact_match`` равен ``false``, проверка игнорирует дополнительные модификаторы ввода для событий :ref:`InputEventKey<class_InputEventKey>` и :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а также направление для событий :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Примечание:** Этот метод учитывает только конфигурацию события (например, клавишу клавиатуры или ось джойстика), а не информацию о состоянии, такую как :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>` или :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

Возвращает ``true``, если нажато это событие ввода. Неактуально для событий типа :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` или :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

\ **Примечание:** Из-за фантомного нажатия клавиатуры :ref:`is_pressed()<class_InputEvent_method_is_pressed>` может возвращать ``false``, даже если нажата одна из клавиш действия. Для получения дополнительной информации см. `Примеры ввода <../tutorials/inputs/input_examples.html#keyboard-events>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

Возвращает ``true``, если это событие ввода отпущено. Не имеет значения для событий типа :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` или :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

Возвращает копию указанного события ввода, смещенного на ``local_ofs`` и преобразованного на ``xform``. Относится к событиям типа :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` и :ref:`InputEventPanGesture<class_InputEventPanGesture>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
