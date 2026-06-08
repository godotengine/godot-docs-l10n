:github_url: hide

.. _class_VisualShaderNodeGroupBase:

VisualShaderNodeGroupBase
=========================

**Успадковує:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`

Базовий клас для сімейства вузлів з змінним числом вхідних і вихідних портів в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

В даний час немає прямого використання, замість цього використовуйте отримані класи.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_input_port<class_VisualShaderNodeGroupBase_method_add_input_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_output_port<class_VisualShaderNodeGroupBase_method_add_output_port>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_input_ports<class_VisualShaderNodeGroupBase_method_clear_input_ports>`\ (\ )                                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_output_ports<class_VisualShaderNodeGroupBase_method_clear_output_ports>`\ (\ )                                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_input_port_id<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`\ (\ ) |const|                                                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_free_output_port_id<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`\ (\ ) |const|                                                                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_input_port_count<class_VisualShaderNodeGroupBase_method_get_input_port_count>`\ (\ ) |const|                                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_inputs<class_VisualShaderNodeGroupBase_method_get_inputs>`\ (\ ) |const|                                                                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_output_port_count<class_VisualShaderNodeGroupBase_method_get_output_port_count>`\ (\ ) |const|                                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_outputs<class_VisualShaderNodeGroupBase_method_get_outputs>`\ (\ ) |const|                                                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_input_port<class_VisualShaderNodeGroupBase_method_has_input_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_output_port<class_VisualShaderNodeGroupBase_method_has_output_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_port_name<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_input_port<class_VisualShaderNodeGroupBase_method_remove_input_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_output_port<class_VisualShaderNodeGroupBase_method_remove_output_port>`\ (\ id\: :ref:`int<class_int>`\ )                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_name<class_VisualShaderNodeGroupBase_method_set_input_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_input_port_type<class_VisualShaderNodeGroupBase_method_set_input_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_inputs<class_VisualShaderNodeGroupBase_method_set_inputs>`\ (\ inputs\: :ref:`String<class_String>`\ )                                                                   |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_name<class_VisualShaderNodeGroupBase_method_set_output_port_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_output_port_type<class_VisualShaderNodeGroupBase_method_set_output_port_type>`\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ )                           |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_outputs<class_VisualShaderNodeGroupBase_method_set_outputs>`\ (\ outputs\: :ref:`String<class_String>`\ )                                                                |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VisualShaderNodeGroupBase_method_add_input_port:

.. rst-class:: classref-method

|void| **add_input_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_input_port>`

Додавання вхідного порту з вказаною ``type`` (див. :ref:`PortType<enum_VisualShaderNode_PortType>`) і ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_add_output_port:

.. rst-class:: classref-method

|void| **add_output_port**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_add_output_port>`

Додавання вихідного порту з вказаною ``type`` (див. :ref:`PortType<enum_VisualShaderNode_PortType>`) і ``name``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_input_ports:

.. rst-class:: classref-method

|void| **clear_input_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_input_ports>`

Видаліть всі раніше вказані вхідні порти.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_clear_output_ports:

.. rst-class:: classref-method

|void| **clear_output_ports**\ (\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_clear_output_ports>`

Видаліть всі раніше вказані вихідні порти.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_input_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_input_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`

Повернення безкоштовного ідентифікатора вхідного порту, який можна використовувати в :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_free_output_port_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_free_output_port_id**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_free_output_port_id>`

Повертаємо безкоштовний ідентифікатор порту, який може бути використаний в :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_input_port_count>`

Повертає кількість вхідних портів у використанні. Альтернатива :ref:`get_free_input_port_id()<class_VisualShaderNodeGroupBase_method_get_free_input_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_inputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_inputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_inputs>`

Повернення :ref:`String<class_String>` опис вхідних портів у вигляді списку, що за допомогою формату ``id,type,name;`` (див. :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_output_port_count**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_output_port_count>`

Повертає кількість вихідних портів у використанні. Альтернатива :ref:`get_free_вихід_port_id()<class_VisualShaderNodeGroupBase_method_get_free_вихід_port_id>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_get_outputs:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_outputs**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_get_outputs>`

Повертаємо :ref:`String<class_String>` опис вихідного портів як списком, що за допомогою формату ``id,type,name;`` (див. :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_input_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_input_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_input_port>`

Повертає ``true``, якщо вказаний вхідний порт існує.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_has_output_port:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_output_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_has_output_port>`

Повертає ``true``, якщо зазначений вихідний порт існує.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_is_valid_port_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_port_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShaderNodeGroupBase_method_is_valid_port_name>`

Повертаємо ``true``, якщо зазначене ім'я порту не перевищує існу назву порту і діє в межах шейдера.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_input_port:

.. rst-class:: classref-method

|void| **remove_input_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_input_port>`

Видалити вказаний вхідний порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_remove_output_port:

.. rst-class:: classref-method

|void| **remove_output_port**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_remove_output_port>`

Видаліть зазначений вихідний порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_name:

.. rst-class:: classref-method

|void| **set_input_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_name>`

Перейменує зазначений вхідний порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_input_port_type:

.. rst-class:: classref-method

|void| **set_input_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_input_port_type>`

Встановлює вказаний тип вхідного порту (див. :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_inputs:

.. rst-class:: classref-method

|void| **set_inputs**\ (\ inputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_inputs>`

Визначте всі вхідні порти за допомогою :ref:`String<class_String>`, відформатований у списку колон-сепарованих: ``id,type,name;`` (див. :ref:`add_input_port()<class_VisualShaderNodeGroupBase_method_add_input_port>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_name:

.. rst-class:: classref-method

|void| **set_output_port_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_name>`

Перейменує зазначений вихідний порт.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_output_port_type:

.. rst-class:: classref-method

|void| **set_output_port_type**\ (\ id\: :ref:`int<class_int>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_output_port_type>`

Встановлює вказаний тип вихідного порту (див. :ref:`PortType<enum_VisualShaderNode_PortType>`).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeGroupBase_method_set_outputs:

.. rst-class:: classref-method

|void| **set_outputs**\ (\ outputs\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShaderNodeGroupBase_method_set_outputs>`

Визначте всі вихідні порти за допомогою :ref:`String<class_String>`, відформатований у списку колон-сепарованих: ``id,type,name;`` (див. :ref:`add_output_port()<class_VisualShaderNodeGroupBase_method_add_output_port>`).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
