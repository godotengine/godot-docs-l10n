:github_url: hide

.. meta::
	:keywords: tray

.. _class_StatusIndicator:

StatusIndicator
===============

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Індикатор стану заявки (знака значка області повідомлення).

\ **Примітка:** Індикатор стану реалізується на macOS і Windows.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_StatusIndicator_property_icon>`       |                  |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`   | :ref:`menu<class_StatusIndicator_property_menu>`       | ``NodePath("")`` |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`String<class_String>`       | :ref:`tooltip<class_StatusIndicator_property_tooltip>` | ``""``           |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`           | :ref:`visible<class_StatusIndicator_property_visible>` | ``true``         |
   +-----------------------------------+--------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_StatusIndicator_method_get_rect>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_StatusIndicator_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ mouse_button\: :ref:`int<class_int>`, mouse_position\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_StatusIndicator_signal_pressed>`

Увімкнено при натисканні статусу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StatusIndicator_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_StatusIndicator_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_icon**\ (\ )

Ікона індикатора стану.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_menu:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **menu** = ``NodePath("")`` :ref:`🔗<class_StatusIndicator_property_menu>`

.. rst-class:: classref-property-setget

- |void| **set_menu**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_menu**\ (\ )

Власне спливаюче меню індикатора стану. Якщо це встановлено,** сигнал :ref:`pressed<class_StatusIndicator_signal_pressed>` не випромінюється.

\ **Примітка:** Власне спливаюче меню підтримується лише тоді, коли :ref:`NativeMenu<class_NativeMenu>` підтримує функцію :ref:`NativeMenu.FEATURE_POPUP_MENU<class_NativeMenu_constant_FEATURE_POPUP_MENU>`.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_tooltip:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip** = ``""`` :ref:`🔗<class_StatusIndicator_property_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip**\ (\ )

Інструмент для визначення стану.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_StatusIndicator_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Якщо ``true``, то індикатор стану видно.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StatusIndicator_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_StatusIndicator_method_get_rect>`

Повертаємо показник стану прямокутника в координатах екрана. Якщо цей показник стану не видно, повертає порожній :ref:`Rect2<class_Rect2>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
