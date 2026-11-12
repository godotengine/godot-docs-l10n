:github_url: hide

.. _class_NavigationLink3D:

NavigationLink3D
================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Посилання між двома положеннями на :ref:`NavigationRegion3D<class_NavigationRegion3D>`, які агенти можуть бути маршрутовані через.

.. rst-class:: classref-introduction-group

Опис
--------

Посилання між двома положеннями на :ref:`NavigationRegion3D<class_NavigationRegion3D>`, які агенти можуть бути маршрутовані через. Ці позиції можна на одному :ref:`NavigationRegion3D<class_NavigationRegion3D>` або на двох різних. Посилання корисні для експрес-навігаційних методів, крім подорожуючих по поверхні навігаційної сітки, таких як ziplinelines, телепортери, або проміжки, які можна стрибати по всій поверхні.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання навігації <../tutorials/navigation/navigation_using_navigationlinks>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`bidirectional<class_NavigationLink3D_property_bidirectional>`         | ``true``             |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_NavigationLink3D_property_enabled>`                     | ``true``             |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end_position<class_NavigationLink3D_property_end_position>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`enter_cost<class_NavigationLink3D_property_enter_cost>`               | ``0.0``              |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`navigation_layers<class_NavigationLink3D_property_navigation_layers>` | ``1``                |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`start_position<class_NavigationLink3D_property_start_position>`       | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`travel_cost<class_NavigationLink3D_property_travel_cost>`             | ``1.0``              |
   +-------------------------------+-----------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_global_end_position<class_NavigationLink3D_method_get_global_end_position>`\ (\ ) |const|                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_global_start_position<class_NavigationLink3D_method_get_global_start_position>`\ (\ ) |const|                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_navigation_layer_value<class_NavigationLink3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_navigation_map<class_NavigationLink3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_rid<class_NavigationLink3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_end_position<class_NavigationLink3D_method_set_global_end_position>`\ (\ position\: :ref:`Vector3<class_Vector3>`\ )                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_start_position<class_NavigationLink3D_method_set_global_start_position>`\ (\ position\: :ref:`Vector3<class_Vector3>`\ )                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_layer_value<class_NavigationLink3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_map<class_NavigationLink3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationLink3D_property_bidirectional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bidirectional** = ``true`` :ref:`🔗<class_NavigationLink3D_property_bidirectional>`

.. rst-class:: classref-property-setget

- |void| **set_bidirectional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_bidirectional**\ (\ )

Будь ласка, зв'яжіться з нами, будь ласка, зв'яжіться з нами.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationLink3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Чи є на даний момент це посилання. Якщо ``false``, :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>` ігнорувати це посилання.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_end_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationLink3D_property_end_position>`

.. rst-class:: classref-property-setget

- |void| **set_end_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_end_position**\ (\ )

Кінець положення посилання.

Ця позиція буде шукати найближчий полігон в навігаційній сітці, щоб прикріпити до.

Віддаленість посилання буде здійснюватися за допомогою :ref:`NavigationServer3D.map_set_link_connection_radius()<class_NavigationServer3D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationLink3D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this link from another region's navigation mesh the :ref:`enter_cost<class_NavigationLink3D_property_enter_cost>` value is added to the path distance for determining the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationLink3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

У бітфілді визначаються всі навігаційні шари, посилання належить до. Ці навігаційні шари перевіряють при запитуванні шляху з :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **start_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationLink3D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_start_position**\ (\ )

Почати позицію посилання.

Ця позиція буде шукати найближчий полігон в навігаційній сітці, щоб прикріпити до.

Віддаленість посилання буде здійснюватися за допомогою :ref:`NavigationServer3D.map_set_link_connection_radius()<class_NavigationServer3D_method_map_set_link_connection_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationLink3D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

Коли пошук шляху рухається вздовж ланки, пройдена відстань множиться на :ref:`travel_cost<class_NavigationLink3D_property_travel_cost>` для визначення найкоротшого шляху.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationLink3D_method_get_global_end_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_global_end_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink3D_method_get_global_end_position>`

Повертаємо Вашу увагу на те, що це стосується посилання на глобальну позицію.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_get_global_start_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_global_start_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink3D_method_get_global_start_position>`

Повертаємо Вашу увагу на те, що за посиланням на глобальну позицію.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationLink3D_method_get_navigation_layer_value>`

Повертає, чи увімкнено вказаний шар бітової маски :ref:`navigation_layers<class_NavigationLink3D_property_navigation_layers>`, залежно від значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationLink3D_method_get_navigation_map>`

Повернення поточного навігаційної карти :ref:`RID<class_RID>`, що використовується цим посиланням.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationLink3D_method_get_rid>`

Повернення :ref:`RID<class_RID>` цього посилання на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_set_global_end_position:

.. rst-class:: classref-method

|void| **set_global_end_position**\ (\ position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationLink3D_method_set_global_end_position>`

Встановлює :ref:`end_position<class_NavigationLink3D_property_end_position>` відносно посилання з глобального ``position``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_set_global_start_position:

.. rst-class:: classref-method

|void| **set_global_start_position**\ (\ position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationLink3D_method_set_global_start_position>`

Встановлює :ref:`start_position<class_NavigationLink3D_property_start_position>` відносно посилання з глобального ``position``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationLink3D_method_set_navigation_layer_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у бітовій масці :ref:`navigation_layers<class_NavigationLink3D_property_navigation_layers>`, маючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationLink3D_method_set_navigation_map>`

Налаштовує :ref:`RID<class_RID>` навігаційної карти цього посилання. За замовчуванням посилання буде автоматично приєднатися до карти навігації за замовчуванням :ref:`World3D<class_World3D>`, так що ця функція обов'язкова для перенадання карти за замовчуванням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
