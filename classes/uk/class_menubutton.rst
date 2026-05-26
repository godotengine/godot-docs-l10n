:github_url: hide

.. meta::
	:keywords: dropdown

.. _class_MenuButton:

MenuButton
==========

**Успадковує:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, яка виводить :ref:`PopupMenu<class_PopupMenu>` при натисканні.

.. rst-class:: classref-introduction-group

Опис
--------

Кнопка, яка виводить :ref:`PopupMenu<class_PopupMenu>` при натисканні. ``get_popup().add_item("Моя назва виробу")``. Ви також можете створювати їх безпосередньо з інспектора редактора Godot.

Дивись також :ref:`BaseButton<class_BaseButton>` які містять загальні властивості та методи, пов'язані з цим вершиною.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>` | action_mode                                                                                 | ``0`` (overrides :ref:`BaseButton<class_BaseButton_property_action_mode>`)    |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | flat                                                                                        | ``true`` (overrides :ref:`Button<class_Button_property_flat>`)                |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                                                  | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`item_count<class_MenuButton_property_item_count>`                                     | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/checkable<class_MenuButton_property_popup/item_{index}/checkable>` | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/checked<class_MenuButton_property_popup/item_{index}/checked>`     | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/disabled<class_MenuButton_property_popup/item_{index}/disabled>`   | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`             | :ref:`popup/item_{index}/icon<class_MenuButton_property_popup/item_{index}/icon>`           |                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`popup/item_{index}/id<class_MenuButton_property_popup/item_{index}/id>`               | ``0``                                                                         |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`popup/item_{index}/separator<class_MenuButton_property_popup/item_{index}/separator>` | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`popup/item_{index}/text<class_MenuButton_property_popup/item_{index}/text>`           | ``""``                                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>`                           | ``false``                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | toggle_mode                                                                                 | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_popup<class_MenuButton_method_get_popup>`\ (\ ) |const|                                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuButton_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`show_popup<class_MenuButton_method_show_popup>`\ (\ )                                                           |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_MenuButton_signal_about_to_popup:

.. rst-class:: classref-signal

**about_to_popup**\ (\ ) :ref:`🔗<class_MenuButton_signal_about_to_popup>`

Увімкніть, коли :ref:`PopupMenu<class_PopupMenu>` цієї кнопки Меню про показати.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MenuButton_property_item_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **item_count** = ``0`` :ref:`🔗<class_MenuButton_property_item_count>`

.. rst-class:: classref-property-setget

- |void| **set_item_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_count**\ (\ )

Кількість елементів в даний час в списку.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checkable:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/checkable** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checkable>`

The checkable item type of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/checked** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/checked>`

If ``true``, the item at ``index`` is checked.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/disabled** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/disabled>`

If ``true``, the item at ``index`` is disabled.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **popup/item_{index}/icon** :ref:`🔗<class_MenuButton_property_popup/item_{index}/icon>`

The icon of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/id:

.. rst-class:: classref-property

:ref:`int<class_int>` **popup/item_{index}/id** = ``0`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/id>`

The ID of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/separator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **popup/item_{index}/separator** = ``false`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/separator>`

If ``true``, the item at ``index`` is a separator.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_popup/item_{index}/text:

.. rst-class:: classref-property

:ref:`String<class_String>` **popup/item_{index}/text** = ``""`` :ref:`🔗<class_MenuButton_property_popup/item_{index}/text>`

The text of the item at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. item_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``false`` :ref:`🔗<class_MenuButton_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Якщо ``true``, коли курсор висить над іншим **MenuButton** в одному з батьків, який також має :ref:`switch_on_hover<class_MenuButton_property_switch_on_hover>`, він закриє струм **MenuButton** і відкриє інший.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MenuButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_popup**\ (\ ) |const| :ref:`🔗<class_MenuButton_method_get_popup>`

Повертаємо :ref:`PopupMenu<class_PopupMenu>`, що міститься в цій кнопці.

\ **Попередження:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете приховати його або будь-який з своїх дітей, скористайтеся їх ``пам'ятне вікно.видиме``.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuButton_method_set_disable_shortcuts>`

Якщо ``true``, ярлики вимкнені і не можна використовувати для запуску кнопки.

.. rst-class:: classref-item-separator

----

.. _class_MenuButton_method_show_popup:

.. rst-class:: classref-method

|void| **show_popup**\ (\ ) :ref:`🔗<class_MenuButton_method_show_popup>`

Налаштовує позицію пікапу і sizing для **MenuButton**, потім показує :ref:`PopupMenu<class_PopupMenu>`. За допомогою ``get_popup().popup()``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
