:github_url: hide

.. _class_ClassDB:

ClassDB
=======

**Успадковує:** :ref:`Object<class_Object>`

Репозиторій інформації про клас.

.. rst-class:: classref-introduction-group

Опис
--------

Надає доступ до метаданих, що зберігаються для кожного доступного класу двигуна.

\ **Примітка:** Класи, визначені скриптом за допомогою ``class_name``, не входять до складу **ClassDB**, тому вони не повертають дані рефлексії, такі як список методів або властивостей. Однак класи, визначені за допомогою :ref:`GDExtension<class_GDExtension>`, *входять* до складу **ClassDB**, тому вони повертають дані рефлексії.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_ClassDB_method_can_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_call_static<class_ClassDB_method_class_call_static>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_exists<class_ClassDB_method_class_exists>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`APIType<enum_ClassDB_APIType>`                             | :ref:`class_get_api_type<class_ClassDB_method_class_get_api_type>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_constants<class_ClassDB_method_class_get_enum_constants>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_list<class_ClassDB_method_class_get_enum_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_integer_constant<class_ClassDB_method_class_get_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_integer_constant_enum<class_ClassDB_method_class_get_integer_constant_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_integer_constant_list<class_ClassDB_method_class_get_integer_constant_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_method_argument_count<class_ClassDB_method_class_get_method_argument_count>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_method_list<class_ClassDB_method_class_get_method_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property<class_ClassDB_method_class_get_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property_default_value<class_ClassDB_method_class_get_property_default_value>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_getter<class_ClassDB_method_class_get_property_getter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_property_list<class_ClassDB_method_class_get_property_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_setter<class_ClassDB_method_class_get_property_setter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`class_get_signal<class_ClassDB_method_class_get_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_signal_list<class_ClassDB_method_class_get_signal_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_enum<class_ClassDB_method_class_has_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_integer_constant<class_ClassDB_method_class_has_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_method<class_ClassDB_method_class_has_method>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_signal<class_ClassDB_method_class_has_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`class_set_property<class_ClassDB_method_class_set_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const|                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_class_list<class_ClassDB_method_get_class_list>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_inheriters_from_class<class_ClassDB_method_get_inheriters_from_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_parent_class<class_ClassDB_method_get_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`instantiate<class_ClassDB_method_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enabled<class_ClassDB_method_is_class_enabled>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enum_bitfield<class_ClassDB_method_is_class_enum_bitfield>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_exposed<class_ClassDB_method_is_class_exposed>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_parent_class<class_ClassDB_method_is_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ClassDB_APIType:

.. rst-class:: classref-enumeration

enum **APIType**: :ref:`🔗<enum_ClassDB_APIType>`

.. _class_ClassDB_constant_API_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_CORE** = ``0``

Тип класу Native Core.

.. _class_ClassDB_constant_API_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR** = ``1``

Тип класу Native Editor.

.. _class_ClassDB_constant_API_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EXTENSION** = ``2``

Тип класу GDExtension.

.. _class_ClassDB_constant_API_EDITOR_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR_EXTENSION** = ``3``

Тип класу редактора GDExtension.

.. _class_ClassDB_constant_API_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_NONE** = ``4``

Невідомий тип класу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ClassDB_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_can_instantiate>`

Повертає ``true``, якщо об’єкти можуть бути створені з указаного ``class``, інакше повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_call_static:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_call_static**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_ClassDB_method_class_call_static>`

Викликає статичний метод класу.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_exists**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_exists>`

Повертає інформацію про те, чи доступний ``class`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_api_type:

.. rst-class:: classref-method

:ref:`APIType<enum_ClassDB_APIType>` **class_get_api_type**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_api_type>`

Повертає тип API зазначеного ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_constants:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_constants**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_constants>`

Повертає масив з усіма ключами в ``enum`` ``class`` або його предків.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_list>`

Повертає масив з усіма переліками ``class`` або його походження.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant>`

Повертає значення цілочисельної константи ``name`` класу ``class`` або його походження. Завжди повертає 0, якщо константу не вдалося знайти.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_enum:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_integer_constant_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_enum>`

Повертає перелік, до якого належить ціла константа ``name`` ``class``] або його походження.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_integer_constant_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_list>`

Повертає масив із іменами всіх цілих констант ``class`` або його предків.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_method_argument_count**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_argument_count>`

Повертає кількість аргументів методу ``method`` ``class`` або його походження, якщо ``no_inheritance`` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_method_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_list>`

Повертає масив із усіма методами ``class`` або його предків, якщо ``no_inheritance`` має значення ``false``. Кожен елемент масиву є ``Словником`` із такими ключами: ``args``, ``default_args``, ``flags``, ``id`` , ``назва``, ``повернення: (назва_класу, підказка, рядок_підказки, назва, тип, використання)``.

\ **Примітка:** В експортованих збірках випуску інформація про налагодження недоступна, тому повернуті словники міститимуть лише назви методів.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property>`

Повертає значення ``property`` ``object`` або його походження.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property_default_value**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_default_value>`

Повертає значення за замовчуванням ``property`` ``class`` або його класів-попередників.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_getter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_getter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_getter>`

Повертає назву методу отримання ``property`` ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_property_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_list>`

Повертає масив з усіма властивостями ``class`` або його предків, якщо ``no_inheritance`` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_setter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_setter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_setter>`

Повертає назву методу налаштування ``property`` ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **class_get_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal>`

Повертає дані ``signal`` ``class`` або його походження. Поверненим значенням є :ref:`Dictionary<class_Dictionary>` із такими ключами: ``аргументи``, ``замовчування_арги``, ``прапорці``, ``ідентифікатор``, ``назва``, ``повернення: (назва_класу, підказка, рядок_підказки, назва, тип, використання)``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_signal_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal_list>`

Повертає масив із усіма сигналами ``class`` або його походження, якщо ``no_inheritance`` має значення ``false``. Кожен елемент масиву є :ref:`Dictionary<class_Dictionary>`, як описано в :ref:`class_get_signal()<class_ClassDB_method_class_get_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_enum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_enum>`

Повертає, чи має ``class`` або його предок перелік із назвою ``name`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_integer_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_integer_constant>`

Повертає, чи має ``class`` або його походження цілу константу під назвою ``name`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_method**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_method>`

Повертає, чи має ``class`` (або його походження, якщо ``no_inheritance`` ``false``) метод під назвою ``method`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_signal>`

Повертає, чи має ``class`` або його походження сигнал під назвою ``signal`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_set_property:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **class_set_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_set_property>`

Встановлює ``property`` значення ``object`` у ``value``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_class_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_class_list**\ (\ ) |const| :ref:`🔗<class_ClassDB_method_get_class_list>`

Повертає імена всіх доступних класів двигуна.

\ **Примітка:** Класи, визначені скриптом за допомогою ``class_name``, не включені до цього списку. Замість цього використовуйте :ref:`ProjectSettings.get_global_class_list()<class_ProjectSettings_method_get_global_class_list>`, щоб отримати список класів, визначених скриптом.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_inheriters_from_class:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_inheriters_from_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_inheriters_from_class>`

Повертає назви всіх класів рушіїв, які прямо чи опосередковано успадковуються від ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_parent_class:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_parent_class>`

Повертає батьківський клас ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_instantiate:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_instantiate>`

Створює екземпляр ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enabled**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enabled>`

Повертає, чи ввімкнено ``class`` чи ні.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enum_bitfield:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enum_bitfield**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enum_bitfield>`

Повертає, чи має ``class`` (або його класи-предки, якщо ``no_inheritance`` ``false``) перелік під назвою ``enum``, який є бітовим полем.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_exposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_exposed**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_exposed>`

Returns whether this ``class`` is exposed or not.

Godot uses internal and platform specific classes at run time. **ClassDB** is able to work with those and lists them like any other class. This method can be used to filter them out if your use-case requires it.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_parent_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_parent_class>`

Повертає, чи є ``inherits`` предком ``class`` чи ні.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
