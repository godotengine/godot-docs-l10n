:github_url: hide

.. _class_InputEventWithModifiers:

InputEventWithModifiers
=======================

**Наследует:** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`InputEventGesture<class_InputEventGesture>`, :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouse<class_InputEventMouse>`

Абстрактный базовый класс для событий ввода, на которые влияют клавиши-модификаторы, такие как :kbd:`Shift` и :kbd:`Alt`.

.. rst-class:: classref-introduction-group

Описание
----------------

Сохраняет информацию о событиях ввода с помощью мыши, клавиатуры и сенсорных жестов. Сюда входит информация о том, какие клавиши-модификаторы нажаты, например :kbd:`Shift` или :kbd:`Alt`. См. :ref:`Node._input()<class_Node_private_method__input>`.

\ **Примечание:** Клавиши-модификаторы считаются модификаторами только при использовании в сочетании с другой клавишей. В результате соответствующие им переменные-члены, например :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`, вернут ``false``, если клавиша нажата сама по себе.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`alt_pressed<class_InputEventWithModifiers_property_alt_pressed>`                                   | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`command_or_control_autoremap<class_InputEventWithModifiers_property_command_or_control_autoremap>` | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | device                                                                                                   | ``16`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`shift_pressed<class_InputEventWithModifiers_property_shift_pressed>`                               | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] | :ref:`get_modifiers_mask<class_InputEventWithModifiers_method_get_modifiers_mask>`\ (\ ) |const|                       |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`is_command_or_control_pressed<class_InputEventWithModifiers_method_is_command_or_control_pressed>`\ (\ ) |const| |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventWithModifiers_property_alt_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alt_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_alt_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_alt_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_alt_pressed**\ (\ )

Состояние модификатора :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_command_or_control_autoremap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **command_or_control_autoremap** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_command_or_control_autoremap>`

.. rst-class:: classref-property-setget

- |void| **set_command_or_control_autoremap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_command_or_control_autoremap**\ (\ )

Автоматически использовать :kbd:`Meta` (:kbd:`Cmd`) на macOS и :kbd:`Ctrl` на других платформах. Если ``true``, :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` и :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>` не могут быть установлены.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_ctrl_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ctrl_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_ctrl_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_ctrl_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ctrl_pressed**\ (\ )

Состояние модификатора :kbd:`Ctrl`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_meta_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meta_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_meta_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_meta_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_meta_pressed**\ (\ )

Состояние модификатора :kbd:`Meta`. В Windows и Linux это представляет клавишу Windows (иногда называемую «meta» или «super» в Linux). В macOS это представляет клавишу Command.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_shift_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shift_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_shift_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_shift_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shift_pressed**\ (\ )

Состояние модификатора :kbd:`Shift`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_InputEventWithModifiers_method_get_modifiers_mask:

.. rst-class:: classref-method

|bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] **get_modifiers_mask**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_get_modifiers_mask>`

Возвращает комбинацию кодов клавиш-модификаторов.

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_method_is_command_or_control_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_command_or_control_pressed**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_is_command_or_control_pressed>`

На macOS возвращает ``true``, если нажата :kbd:`Meta` (:kbd:`Cmd`). 

На других платформах возвращает ``true``, если нажата :kbd:`Ctrl`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
