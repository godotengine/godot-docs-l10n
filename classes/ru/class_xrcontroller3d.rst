:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**Наследует:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Трехмерный узел, представляющий собой пространственно отслеживаемый контроллер.

.. rst-class:: classref-introduction-group

Описание
----------------

Это вспомогательный 3D-узел, связанный с отслеживанием контроллеров. Он также предлагает несколько удобных проходов к состоянию кнопок и т. п. на контроллерах.

Контроллеры связаны по их ID идентификатору. Вы можете создать узлы контроллеров до того, как контроллеры станут доступны. Если в вашей игре всегда используются два контроллера (по одному для каждой руки), вы можете заранее определить контроллеры с идентификаторами 1 и 2; они станут активными, как только контроллеры будут идентифицированы. Если вы ожидаете использования дополнительных контроллеров, вы должны отреагировать на сигналы и добавить узлы XRController3D в вашу сцену.

Положение узла контроллера автоматически обновляется :ref:`XRServer<class_XRServer>`. Это делает этот узел идеальным для добавления дочерних узлов для визуализации контроллера.

Текущий :ref:`XRInterface<class_XRInterface>` определяет имена входов. В случае OpenXR это имена действий в текущем наборе действий из карты действий OpenXR.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

Издается при нажатии кнопки на этом контроллере.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

Издается при отпускании кнопки на этом контроллере.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

Генерируется, когда триггер или аналогичный вход на этом контроллере изменяют значение.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

Издается при перемещении мини-джойстика или панели большого пальца на этом контроллере.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

Выдается при изменении профиля взаимодействия на этом контроллере.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

Возвращает числовое значение для входа с заданным ``name``. Используется для триггеров и датчиков захвата.

\ **Примечание:** Текущий :ref:`XRInterface<class_XRInterface>` определяет ``name`` для каждого входа. В случае OpenXR это имена действий в текущем наборе действий.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

Возвращает :ref:`Variant<class_Variant>` для ввода с заданным ``name``. Это работает для любого типа ввода, вариант будет типизирован в соответствии с конфигурацией действий.

\ **Примечание:** Текущий :ref:`XRInterface<class_XRInterface>` определяет ``name`` для каждого ввода. В случае OpenXR это имена действий в текущем наборе действий.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

Возвращает руку, держащую этот контроллер, если она известна.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

Возвращает :ref:`Vector2<class_Vector2>` для ввода с заданным ``name``. Используется для thumbsticks и thumbpads, имеющихся на многих контроллерах.

\ **Примечание:** Текущий :ref:`XRInterface<class_XRInterface>` определяет ``name`` для каждого ввода. В случае OpenXR это имена действий в текущем наборе действий.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

Возвращает ``true``, если нажата кнопка с заданным ``name``.

\ **Примечание:** Текущий :ref:`XRInterface<class_XRInterface>` определяет ``name`` для каждого входа. В случае OpenXR это имена действий в текущем наборе действий.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
