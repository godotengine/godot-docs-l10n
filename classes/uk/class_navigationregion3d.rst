:github_url: hide

.. _class_NavigationRegion3D:

NavigationRegion3D
==================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Для трафаретизації можна використовувати трафаретний 3D регіон, який :ref:`NavigationAgent3D<class_NavigationAgent3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ви можете використовувати для трафаретизації.

Два регіони можуть бути підключені один до одного, якщо вони діляться схожим краєм. Ви можете встановити мінімальну відстань між двома вершинами, необхідні для підключення двох країв за допомогою :ref:`NavigationServer3D.map_set_edge_connection_margin()<class_NavigationServer3D_method_map_set_edge_connection_margin>`.

\ **Примітка:** Навігаційні сітки перекриття двох регіонів недостатньо для підключення двох регіонів. Вони повинні поділитися схожим краєм.

Вартість вступу в цей регіон з іншого регіону може бути контрольована з значенням :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`.

\ **Примітка:** Ця вартість не додається до вартості шляху, коли позиція старту вже всередині цієї області.

Вартість дорожніх дистанцій в цьому регіоні може бути контрольована з мультиплеєром :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`.

\ **Примітка:** Цей вузол кешує зміни до його властивостей, тому якщо ви вносите зміни в основну область :ref:`RID<class_RID>` в :ref:`NavigationServer3D<class_NavigationServer3D>`, вони не будуть відображені в цих властивостей вузла.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання навігації <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`enabled<class_NavigationRegion3D_property_enabled>`                           | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                       | :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`navigation_mesh<class_NavigationRegion3D_property_navigation_mesh>`           |          |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_edge_connections<class_NavigationRegion3D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`bake_navigation_mesh<class_NavigationRegion3D_method_bake_navigation_mesh>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_bounds<class_NavigationRegion3D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_navigation_layer_value<class_NavigationRegion3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationRegion3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_region_rid<class_NavigationRegion3D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationRegion3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_baking<class_NavigationRegion3D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_layer_value<class_NavigationRegion3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationRegion3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_NavigationRegion3D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_bake_finished>`

Визначається, коли виконана робота навігаційної сітки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_signal_navigation_mesh_changed:

.. rst-class:: classref-signal

**navigation_mesh_changed**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_navigation_mesh_changed>`

При зміні :ref:`NavigationMesh<class_NavigationMesh>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationRegion3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Визначає, якщо ввімкнено **NavigationRegion3D** або вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion3D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

У бітфілді визначено всі навігаційні шари регіону. Ці навігаційні шари можна перевірити при запитуванні шляху з :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **navigation_mesh** :ref:`🔗<class_NavigationRegion3D_property_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_mesh**\ (\ value\: :ref:`NavigationMesh<class_NavigationMesh>`\ )
- :ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ )

:ref:`NavigationMesh<class_NavigationMesh>` ресурс для використання.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion3D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

При навігаційній сітці трафаретні переїзди в цій області навігаційними сіточками, що пролітають дистанції, багатоплізовані з :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>` для визначення найкоротшого шляху.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

Якщо увімкнено навігаційну область буде використовувати крайові з'єднання з іншими навігаційними регіонами в безпосередній близькості від навігаційної карти краю.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationRegion3D_method_bake_navigation_mesh:

.. rst-class:: classref-method

|void| **bake_navigation_mesh**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion3D_method_bake_navigation_mesh>`

:ref:`NavigationMesh<class_NavigationMesh>`. Якщо ``on_thread`` встановлюється до ``true`` (default), випікання проводиться на окремій нитки. Випічка на окремій нитки корисна тим, що навігація випікання не дешева операція. Коли він завершений, він автоматично встановлює новий :ref:`NavigationMesh<class_NavigationMesh>`. Будь ласка, зверніть увагу, що випікання на окрему нитку може бути дуже повільним, якщо геометрія виходить з сіточок, як асинхронний доступ до кожної сітки передбачає важку синхронізацію. Крім того, будь ласка, зверніть увагу, що випікання на окрему нитку автоматично відключається на операційні системи, які не можуть використовувати нитки (наприклад, Web з вимкненими нитками).

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_bounds>`

Повертає вирівняну по осі обмежувальну рамку для трансформованої навігаційної сітки області.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_layer_value>`

Повертає, чи увімкнено вказаний шар бітової маски :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`, залежно від значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_map>`

Повернення поточного навігаційної карти :ref:`RID<class_RID>`, що використовується цим регіоном.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_region_rid>`

**Застаріло:** Use :ref:`get_rid()<class_NavigationRegion3D_method_get_rid>` instead.

Повернення :ref:`RID<class_RID>` цієї області на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_rid>`

Повернення :ref:`RID<class_RID>` цієї області на :ref:`NavigationServer3D<class_NavigationServer3D>`. Комбінований з :ref:`NavigationServer3D.map_get_closest_point_owner()<class_NavigationServer3D_method_map_get_closest_point_owner>` може бути використаний для ідентифікації ``NavigationRerion3D`` в найближчий до точки на з'єднану навігацію карти.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_is_baking>`

Повертаємо ``true``, коли :ref:`NavigationMesh<class_NavigationMesh>` випікається на фоновій нитки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_layer_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у бітовій масці :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`, маючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_map>`

Встановлює :ref:`RID<class_RID>` навігаційної карти цього регіону. За замовчуванням область автоматично приєднується до карти навігації за замовчуванням :ref:`World3D<class_World3D>`, щоб ця функція була обов'язковою для перенадання карти за замовчуванням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
