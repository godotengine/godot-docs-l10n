:github_url: hide

.. _class_EditorResourcePicker:

EditorResourcePicker
====================

**Успадковує:** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorScriptPicker<class_EditorScriptPicker>`

Контроль редактора Godot для вибору параметрів :ref:`Resource<class_Resource>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей вузол :ref:`Control<class_Control>` використовується в ідентифікаторі редактора, щоб дозволити редагування властивостей :ref:`Resource<class_Resource>`. Для створення, завантаження, збереження та перетворення ресурсів. Може використовуватися з :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` для відтворення тієї ж поведінки.

\ **Примітка:** Цей :ref:`Control<class_Control>` не включає в себе будь-якого редактора для ресурсу, оскільки редагування контролюється самими інспекторами.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`     | :ref:`base_type<class_EditorResourcePicker_property_base_type>`             | ``""``    |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`editable<class_EditorResourcePicker_property_editable>`               | ``true``  |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Resource<class_Resource>` | :ref:`edited_resource<class_EditorResourcePicker_property_edited_resource>` |           |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>`         | ``false`` |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handle_menu_selected<class_EditorResourcePicker_private_method__handle_menu_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_set_create_options<class_EditorResourcePicker_private_method__set_create_options>`\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_allowed_types<class_EditorResourcePicker_method_get_allowed_types>`\ (\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_toggle_pressed<class_EditorResourcePicker_method_set_toggle_pressed>`\ (\ pressed\: :ref:`bool<class_bool>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorResourcePicker_signal_resource_changed:

.. rst-class:: classref-signal

**resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_changed>`

При зміні значення редагованого ресурсу.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, inspect\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_selected>`

Увімкнено, коли було встановлено значення ресурсу і користувач натискав на його редагування. Коли ``inspect`` є ``true``, сигнал був викликаний контекстним меню "Редагувати" або "Інспект" варіант.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorResourcePicker_property_base_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_type** = ``""`` :ref:`🔗<class_EditorResourcePicker_property_base_type>`

.. rst-class:: classref-property-setget

- |void| **set_base_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_type**\ (\ )

Базовий тип дозволених типів ресурсів. Чи може бути окремий список декількох варіантів.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_EditorResourcePicker_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Якщо ``true``, значення можна вибрати і редагувати.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_edited_resource:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **edited_resource** :ref:`🔗<class_EditorResourcePicker_property_edited_resource>`

.. rst-class:: classref-property-setget

- |void| **set_edited_resource**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_edited_resource**\ (\ )

Відредаговано значення ресурсу.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_EditorResourcePicker_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

Якщо ``true``, основна кнопка з ресурсом попереднього перегляду працює в режимі перемикання. Використовуйте :ref:`set_toggle_pressed()<class_EditorResourcePicker_method_set_toggle_pressed>` для вручну встановити стан.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorResourcePicker_private_method__handle_menu_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handle_menu_selected**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__handle_menu_selected>`

Цей віртуальний метод може бути реалізований для обробки елементів контекстного меню, які не обробляються за замовчуванням. Подивитися :ref:`_create_options()<class_EditorResourcePicker_private_method__create_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_private_method__set_create_options:

.. rst-class:: classref-method

|void| **_set_create_options**\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__set_create_options>`

This virtual method is called when updating the context menu of an :ref:`editable<class_EditorResourcePicker_property_editable>` **EditorResourcePicker**. Implement this method to override the "New" items section with your own options. ``menu_node`` is a reference to the :ref:`PopupMenu<class_PopupMenu>` node.

\ **Note:** Implement :ref:`_handle_menu_selected()<class_EditorResourcePicker_private_method__handle_menu_selected>` to handle these custom items.

\ **Note:** Relevant built-in options ("Load", "Copy", "Paste", etc.) are automatically added to the ``menu_node`` afterwards, using their hard-coded IDs starting from ``0``. Custom options need to use non-colliding IDs to be handled properly. Using ``id = 100 + custom_option_index`` is safe (this is what the default items in the "New" section use).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_get_allowed_types:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_allowed_types**\ (\ ) |const| :ref:`🔗<class_EditorResourcePicker_method_get_allowed_types>`

Повертає список всіх дозволених типів і підтипів, що відповідають :ref:`base_type<class_EditorResourcePicker_property_base_type>`. Якщо :ref:`base_type<class_EditorResourcePicker_property_base_type>` порожній, повертається порожній список.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_set_toggle_pressed:

.. rst-class:: classref-method

|void| **set_toggle_pressed**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_method_set_toggle_pressed>`

Встановлює стан режимів перемикання для головної кнопки. ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
