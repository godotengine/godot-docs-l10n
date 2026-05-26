:github_url: hide

.. _class_InputEventGesture:

InputEventGesture
=================

**Наследует:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`, :ref:`InputEventPanGesture<class_InputEventPanGesture>`

Абстрактный базовый класс для сенсорных жестов.

.. rst-class:: classref-introduction-group

Описание
----------------

InputEventGestures отправляются, когда пользователь выполняет поддерживаемый жест на сенсорном экране. Жесты не могут быть эмулированы с помощью мыши, поскольку они обычно требуют мультитач.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`         | device                                                     | ``0`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventGesture_property_position>` | ``Vector2(0, 0)``                                                     |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventGesture_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventGesture_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Локальная позиция жеста относительно :ref:`Viewport<class_Viewport>`. Если используется в :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, позиция определяется относительно текущего :ref:`Control<class_Control>`, который получил этот жест.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
