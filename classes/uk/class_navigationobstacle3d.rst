:github_url: hide

.. _class_NavigationObstacle3D:

NavigationObstacle3D
====================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D перешкода, що використовується для впливу на навігацію сітки або обмеження вентильованих агентів.

.. rst-class:: classref-introduction-group

Опис
--------

Навігація вимагає навігаційної карти і контурів ``пам'ятні вершини``, визначені для роботи правильно. Нариси не можуть перехреститися або перекривати і обмежуються площиною проекції. Це означає, що я вісь вершин ігнорується, замість глобальної позиції Y-і-ікси використовується для розміщення. Випробувана форма виконана по висоті перешкод вздовж осі.

У процесі випікання навігаційної сітки можна ввімкнути :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>`. Вони не додають ходової геометрії, а їх роль полягає у відключенні іншої геометрії джерела всередині форми. Це може бути використаний для запобігання навігаційної сітки з з'являються в небажаних місцях, наприклад, всередині геометрії "солід" або зверху. Якщо :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>` ввімкнено форму запеченої форми не буде вражені офсетами навігаційної сітки, наприклад, радіусом агента.

За допомогою :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>` перешкода може перенапружувати вразливість з використанням агентів. У разі, якщо хребти перешкоди рани за годинниковим замовленням, агенти уникнення будуть виштовхуватися в перешкоді, інакше агенти, які не будуть виштовхуватися. Збільшувачі з використанням вершин і уникнення можуть загиближуватися на нову позицію, але не варто переміщати кожен окремий каркас, оскільки кожна зміна вимагає перебудови карти уникнення.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання навігації Оксамити <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`height<class_NavigationObstacle3D_property_height>`                                 | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle3D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_3d_avoidance<class_NavigationObstacle3D_property_use_3d_avoidance>`             | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`velocity<class_NavigationObstacle3D_property_velocity>`                             | ``Vector3(0, 0, 0)``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_NavigationObstacle3D_property_vertices>`                             | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle3D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle3D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationObstacle3D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

Якщо ввімкнено та проаналізовано в процесі випікання навігаційної сітки, перешкода відкине вихідну геометрію всередині своєї :ref:`vertices<class_NavigationObstacle3D_property_vertices>` і :ref:`height<class_NavigationObstacle3D_property_height>` визначену форму.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Якщо ``true`` перешкода впливає на уникнення використання агентів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

У бітфілді визначено шари уникнення для цієї перешкоди. Агенти з відповідним бітом на своїй масі уникнення будуть уникати цієї перешкоди.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

Якщо увімкнено перешкодні вершини перенесуть в випечений навігаційний сітчастий з формою, що неоцінюється додатковими офсетами (наприклад, радіусом агента).

Вплине на подальше постобробка процесу випічки, як кромка та полігонна спрощування.

Потрібні :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` бути включеними.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationObstacle3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Налаштовує висоту перешкод, що використовується в 2D уникнення. 2D уникнення за допомогою ігнорування агента, які нижче або вище їх.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Налаштовує радіус уникнення перешкоди.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Якщо ``true`` перешкода впливає на 3D уникнення за допомогою перешкоди агента.

Якщо ``false`` перешкода впливає на 2D уникнення використання агента з обох перешкод :ref:`vertices<class_NavigationObstacle3D_property_vertices>`, а також перешкоди :ref:`radius<class_NavigationObstacle3D_property_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationObstacle3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Налаштовує бажану швидкість для перешкоди, тому інші агенти можуть краще прогнозувати перешкоду, якщо вона регулярно переміщається зі швидкістю (вічно кадрі) замість того, щоб припинити нову позицію. Чи впливає тільки на уникнення перешкод :ref:`radius<class_NavigationObstacle3D_property_radius>`. Нема нічого для перешкод статичних вершин.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationObstacle3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

Окреслення вершин перешкоди. Якщо вершини заморожені в цілодобовому порядку агенти будуть підштовхуватися в перешкоді, то ще вони будуть виштовхуватися. Не можна перетнути або перекривати. Якщо вершини, які використовують перешкоду, повинні бути виховані до нового агента, не можуть прогнозувати цей рух, і може отримати траурований всередині перешкоди.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationObstacle3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_avoidance_layer_value>`

Повертає, чи ввімкнено вказаний шар бітової маски :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`, залежно від значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_navigation_map>`

Повертаємо :ref:`RID<class_RID>` навігаційної карти для цього навігаційного вузла. Ця функція повертається завжди на карті, встановленому навігаційному вузлах, і не на карті абстрактної перешкоди на навігаційному сервері. Якщо карта перешкод змінюється безпосередньо з API навігаційного сервера NavigationServer у NavigationObstacle вузол не буде в курсі зміни карти. Використовуйте :ref:`set_navigation_map()<class_NavigationObstacle3D_method_set_navigation_map>` для зміни навігаційної карти для NavigationObstacle, а також оновлення перешкод на Навігаційній службі.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_rid>`

Повернення :ref:`RID<class_RID>` цієї перешкоди на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_avoidance_layer_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у бітовій масці :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`, маючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_navigation_map>`

Навігація :ref:`RID<class_RID>` навігаційної карти цього Навігаційного вузла повинні використовуватися, а також оновлення ``obstacle`` на навігаціїServer.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
