:github_url: hide

.. _class_TouchScreenButton:

TouchScreenButton
=================

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка сенсорних екранних пристроїв для ігрового використання.

.. rst-class:: classref-introduction-group

Опис
--------

TouchScreenButton дозволяє створювати екранні кнопки для сенсорних пристроїв. Він призначений для використання в іграх, як-от одиниця, яку потрібно торкнутися, щоб переміститися. На відміну від :ref:`Button<class_Button>`, TouchScreenButton підтримує мультидотик із коробки. За допомогою сенсорного введення можна одночасно натискати кілька кнопок TouchScreenButton. 

Цей вузол успадковується від :ref:`Node2D<class_Node2D>`. На відміну від вузлів :ref:`Control<class_Control>`, на ньому не можна встановити прив’язки. Якщо ви хочете створити меню або інтерфейси користувача, ви можете замість цього використовувати вузли :ref:`Button<class_Button>`. Щоб вузли кнопок реагували на події дотику, можна ввімкнути :ref:`ProjectSettings.input_devices/pointing/emulate_mouse_from_touch<class_ProjectSettings_property_input_devices/pointing/emulate_mouse_from_touch>` у налаштуваннях проекту. 

Ви можете налаштувати TouchScreenButton так, щоб він був видимий лише на сенсорних пристроях, що допоможе вам розробити гру як для настільних, так і для мобільних пристроїв.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                  | :ref:`action<class_TouchScreenButton_property_action>`                   | ``""``    |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                                  | :ref:`bitmask<class_TouchScreenButton_property_bitmask>`                 |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`passby_press<class_TouchScreenButton_property_passby_press>`       | ``false`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Shape2D<class_Shape2D>`                                | :ref:`shape<class_TouchScreenButton_property_shape>`                     |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_centered<class_TouchScreenButton_property_shape_centered>`   | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_visible<class_TouchScreenButton_property_shape_visible>`     | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_normal<class_TouchScreenButton_property_texture_normal>`   |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_pressed<class_TouchScreenButton_property_texture_pressed>` |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` | :ref:`visibility_mode<class_TouchScreenButton_property_visibility_mode>` | ``0``     |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_pressed<class_TouchScreenButton_method_is_pressed>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_TouchScreenButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_pressed>`

При натисканні кнопки (завантажити).

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_signal_released:

.. rst-class:: classref-signal

**released**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_released>`

Увімкніть, коли кнопка випускається (до).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_TouchScreenButton_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_TouchScreenButton_VisibilityMode>`

.. _class_TouchScreenButton_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Завжди видимий.

.. _class_TouchScreenButton_constant_VISIBILITY_TOUCHSCREEN_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_TOUCHSCREEN_ONLY** = ``1``

Вимкнено тільки на сенсорних екранах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TouchScreenButton_property_action:

.. rst-class:: classref-property

:ref:`String<class_String>` **action** = ``""`` :ref:`🔗<class_TouchScreenButton_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_action**\ (\ )

Дія кнопки. Дії можна обробити :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_bitmask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **bitmask** :ref:`🔗<class_TouchScreenButton_property_bitmask>`

.. rst-class:: classref-property-setget

- |void| **set_bitmask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_bitmask**\ (\ )

Укус кнопки.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_passby_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **passby_press** = ``false`` :ref:`🔗<class_TouchScreenButton_property_passby_press>`

.. rst-class:: classref-property-setget

- |void| **set_passby_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_passby_press_enabled**\ (\ )

Якщо ``true``, сигнали :ref:`pressed<class_TouchScreenButton_signal_pressed>` та :ref:`released<class_TouchScreenButton_signal_released>` випромінюються щоразу, коли натиснутий палець входить у кнопку та виходить з неї, навіть якщо тиск почався поза активною зоною кнопки.

\ **Примітка:** Це режим натискання "пропуску" (не "обходу").

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_TouchScreenButton_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

Форма кнопки.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_centered** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_centered>`

.. rst-class:: classref-property-setget

- |void| **set_shape_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_centered**\ (\ )

Якщо ``true``, форма кнопки знаходиться в заданій текстурі. Якщо не використовується текстура, це властивість не впливає.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_visible** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_visible>`

.. rst-class:: classref-property-setget

- |void| **set_shape_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_visible**\ (\ )

Якщо ``true``, форма кнопки видно в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TouchScreenButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

Текстура кнопки для нормального стану.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TouchScreenButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

Текстура кнопки для пресованого стану.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_TouchScreenButton_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **get_visibility_mode**\ (\ )

Режим видимості кнопки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TouchScreenButton_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_TouchScreenButton_method_is_pressed>`

Повертаємо ``true``, якщо ця кнопка в даний час натискається.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
