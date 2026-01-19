:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**Наследует:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой нажатие или отпускание клавиши на клавиатуре.

.. rst-class:: classref-introduction-group

Описание
----------------

Событие ввода для клавиш на клавиатуре. Поддерживает нажатия клавиш, отпускания клавиш и события :ref:`echo<class_InputEventKey_property_echo>`. Его также можно получить в :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Примечание:** События, полученные с клавиатуры, обычно имеют все установленные свойства. Сопоставления событий должны иметь только один из :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` или :ref:`unicode<class_InputEventKey_property_unicode>`.

При сравнении событий свойства проверяются в следующем приоритете - :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` и :ref:`unicode<class_InputEventKey_property_unicode>`. События с первым совпадающим значением будут считаться равными.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`echo<class_InputEventKey_property_echo>`                         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`key_label<class_InputEventKey_property_key_label>`               | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`keycode<class_InputEventKey_property_keycode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` | :ref:`location<class_InputEventKey_property_location>`                 | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventKey_property_pressed>`                   | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`unicode<class_InputEventKey_property_unicode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_key_label<class_InputEventKey_method_as_text_key_label>`\ (\ ) |const|                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_keycode<class_InputEventKey_method_as_text_keycode>`\ (\ ) |const|                                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_location<class_InputEventKey_method_as_text_location>`\ (\ ) |const|                                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_physical_keycode<class_InputEventKey_method_as_text_physical_keycode>`\ (\ ) |const|                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_key_label_with_modifiers<class_InputEventKey_method_get_key_label_with_modifiers>`\ (\ ) |const|               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_keycode_with_modifiers<class_InputEventKey_method_get_keycode_with_modifiers>`\ (\ ) |const|                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_physical_keycode_with_modifiers<class_InputEventKey_method_get_physical_keycode_with_modifiers>`\ (\ ) |const| |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

Если ``true``, клавиша уже была нажата до этого события. Событие эха — это повторяющееся событие клавиши, отправляемое, когда пользователь удерживает клавишу.

\ **Примечание:** Скорость отправки событий эха обычно составляет около 20 событий в секунду (после удержания клавиши примерно полсекунды). Однако пользователь может изменить задержку/скорость повтора клавиши или полностью отключить ее в настройках операционной системы. Чтобы убедиться, что ваш проект работает правильно во всех конфигурациях, не предполагайте, что у пользователя есть определенная конфигурация повтора клавиши в поведении вашего проекта.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

Представляет локализованную метку, напечатанную на клавише в текущей раскладке клавиатуры, которая соответствует одной из констант :ref:`Key<enum_@GlobalScope_Key>` или любому допустимому символу Unicode. Метки клавиш предназначены для подсказок при нажатии клавиш.

Для раскладок клавиатуры с одной меткой на клавише это эквивалентно :ref:`keycode<class_InputEventKey_property_keycode>`.

Чтобы получить удобочитаемое представление **InputEventKey**, используйте ``OS.get_keycode_string(event.key_label)``, где ``event`` — это **InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

Латинская метка, напечатанная на клавише в текущей раскладке клавиатуры, соответствует одной из констант :ref:`Key<enum_@GlobalScope_Key>`. Коды клавиш предназначены для сочетаний клавиш, выражаемых с помощью стандартной латинской клавиатуры, например, :kbd:`Ctrl + S` для сочетания клавиш «Сохранить».

Чтобы получить удобочитаемое представление **InputEventKey**, используйте ``OS.get_keycode_string(event.keycode)``, где ``event`` — это **InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

Обозначает расположение клавиши, которая имеет как левую, так и правую версии, например :kbd:`Shift` или :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

Представляет физическое местоположение клавиши на 101/102-клавишной американской клавиатуре QWERTY, соответствующее одной из констант :ref:`Key<enum_@GlobalScope_Key>`. Физические коды клавиш, предназначенные для игрового ввода, например, для перемещения с помощью WASD, где важно только местоположение клавиш.

Для получения удобочитаемого представления **InputEventKey** используйте :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` в сочетании с :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>` или :ref:`DisplayServer.keyboard_get_label_from_physical()<class_DisplayServer_method_keyboard_get_label_from_physical>`:


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            var label = DisplayServer.keyboard_get_label_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))
            print(OS.get_keycode_string(label))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            var label = DisplayServer.KeyboardGetLabelFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
            GD.Print(OS.GetKeycodeString(label));
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventKey_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Если ``true``, состояние клавиши нажато. Если ``false``, состояние клавиши отпущено.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

Основной код символа Unicode (если применимо), сдвинутый клавишами-модификаторами. Коды символов Unicode для составных символов и сложных шрифтов могут быть недоступны, если не активен режим ввода IME. См. :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>` для получения дополнительной информации. Коды символов Unicode предназначены для ввода текста.

\ **Примечание:** Это свойство устанавливается движком только для события нажатия. Если событие отправляется IME или виртуальной клавиатурой, соответствующее событие отпускания клавиши не отправляется.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

Возвращает :ref:`String<class_String>`-представление :ref:`key_label<class_InputEventKey_property_key_label>` события и модификаторов.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

Возвращает :ref:`String<class_String>` представление :ref:`keycode<class_InputEventKey_property_keycode>` и модификаторов события.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

Возвращает :ref:`String<class_String>` представление :ref:`location<class_InputEventKey_property_location>` события. Это будет пустая строка, если событие не относится к конкретному местоположению.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

Возвращает :ref:`String<class_String>`-представление :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` события и модификаторов.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

Возвращает локализованную метку клавиши в сочетании с модификаторами, такими как :kbd:`Shift` или :kbd:`Alt`. См. также :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Чтобы получить понятное человеку представление **InputEventKey** с модификаторами, используйте ``OS.get_keycode_string(event.get_key_label_with_modifiers())``, где ``event`` — это **InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

Возвращает латинский код клавиши в сочетании с модификаторами, такими как :kbd:`Shift` или :kbd:`Alt`. См. также :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Чтобы получить понятное человеку представление **InputEventKey** с модификаторами, используйте ``OS.get_keycode_string(event.get_keycode_with_modifiers())``, где ``event`` — это **InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

Возвращает физический код клавиши в сочетании с модификаторами, такими как :kbd:`Shift` или :kbd:`Alt`. См. также :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Чтобы получить понятное человеку представление **InputEventKey** с модификаторами, используйте ``OS.get_keycode_string(event.get_physical_keycode_with_modifiers())``, где ``event`` — это **InputEventKey**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
