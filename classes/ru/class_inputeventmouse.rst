:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**Наследует:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

Базовый тип событий ввода для событий мыши.

.. rst-class:: classref-introduction-group

Описание
----------------

Сохраняет общую информацию о событиях мыши.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``                                                                  |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                   | device                                                                 | ``32`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

Идентификатор маски кнопки мыши, одна из масок кнопок :ref:`MouseButton<enum_@GlobalScope_MouseButton>` или их побитовая комбинация.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

При получении в :ref:`Node._input()<class_Node_private_method__input>` или :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` возвращает позицию мыши в корне :ref:`Viewport<class_Viewport>`, используя систему координат корневого :ref:`Viewport<class_Viewport>`.

При получении в :ref:`Control._gui_input()<class_Control_private_method__gui_input>` возвращает позицию мыши в :ref:`CanvasLayer<class_CanvasLayer>`, в котором находится :ref:`Control<class_Control>`, используя систему координат :ref:`CanvasLayer<class_CanvasLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

При получении в :ref:`Node._input()<class_Node_private_method__input>` или :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` возвращает позицию мыши в :ref:`Viewport<class_Viewport>`, в котором находится этот :ref:`Node<class_Node>`, используя систему координат этого :ref:`Viewport<class_Viewport>`.

При получении в :ref:`Control._gui_input()<class_Control_private_method__gui_input>` возвращает позицию мыши в :ref:`Control<class_Control>`, используя локальную систему координат :ref:`Control<class_Control>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
