:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area3D:

Area3D
======

**Успадковує:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Область 3D-простору, яка виявляє, що інші :ref:`CollisionObject3D<class_CollisionObject3D>` входять або виходять з неї.

.. rst-class:: classref-introduction-group

Опис
--------

**Area3D** — це область 3D-простору, визначена одним або кількома дочірніми вузлами :ref:`CollisionShape3D<class_CollisionShape3D>` або :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`. Він визначає, коли інші :ref:`CollisionObject3D<class_CollisionObject3D>` входять або виходять з нього, а також відстежує, які об’єкти зіткнення ще не вийшли з нього (тобто які з них перекривають його).

 Цей вузол також може локально змінювати або перевизначати фізичні параметри (гравітацію, демпфування) і направляти аудіо на спеціальні аудіошини.

\ **Примітка.** Області та тіла, створені за допомогою :ref:`PhysicsServer3D<class_PhysicsServer3D>`, можуть не взаємодіяти з **Area3D** належним чином, видавати сигнали або неправильно відстежувати об’єкти.

\ **Попередження:** Використання :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` всередині дочірнього елемента :ref:`CollisionShape3D<class_CollisionShape3D>` цього вузла (створеного, наприклад, за допомогою параметра **Create Trimesh Collision Sibling** у **Mesh** ], що з’являється під час вибору вузла :ref:`MeshInstance3D<class_MeshInstance3D>`), може дати несподівані результати, оскільки ця форма зіткнення є порожньою. Якщо це небажано, його потрібно розділити на кілька :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` або примітивні форми, такі як :ref:`BoxShape3D<class_BoxShape3D>`, або в деяких випадках його можна замінити на :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Area2D <../tutorials/physics/using_area_2d>`

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Графічний інтерфейс у 3D Viewport Demo <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area3D_property_angular_damp>`                               | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area3D_property_angular_damp_space_override>` | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area3D_property_audio_bus_name>`                           | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area3D_property_audio_bus_override>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area3D_property_gravity>`                                         | ``9.8``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_direction<class_Area3D_property_gravity_direction>`                     | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area3D_property_gravity_point>`                             | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`               | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area3D_property_gravity_point_unit_distance>` | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`           | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area3D_property_linear_damp>`                                 | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area3D_property_linear_damp_space_override>`   | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area3D_property_monitorable>`                                 | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area3D_property_monitoring>`                                   | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area3D_property_priority>`                                       | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_amount<class_Area3D_property_reverb_bus_amount>`                     | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`reverb_bus_enabled<class_Area3D_property_reverb_bus_enabled>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`reverb_bus_name<class_Area3D_property_reverb_bus_name>`                         | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_uniformity<class_Area3D_property_reverb_bus_uniformity>`             | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`         | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`               | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`wind_source_path<class_Area3D_property_wind_source_path>`                       | ``NodePath("")``      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] | :ref:`get_overlapping_areas<class_Area3D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] | :ref:`get_overlapping_bodies<class_Area3D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area3D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area3D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area3D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area3D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

Випромінюється, коли отримана ``area`` потрапляє в цю область. Потребує, щоб :ref:`monitoring<class_Area3D_property_monitoring>` було встановлено на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

Випромінюється, коли отримана ``area`` виходить з цієї області. Потребує, щоб :ref:`monitoring<class_Area3D_property_monitoring>` було встановлено на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

Випромінюється, коли :ref:`Shape3D<class_Shape3D>` отриманої ``area`` входить у форму цієї області. Для параметра :ref:`monitoring<class_Area3D_property_monitoring>` потрібно встановити значення ``true``. 

\ ``local_shape_index`` і ``area_shape_index`` містять індекси взаємодіючих фігур з цієї та іншої області відповідно. ``area_rid`` містить :ref:`RID<class_RID>` іншої області. Ці значення можна використовувати з :ref:`PhysicsServer3D<class_PhysicsServer3D>`. 

\ **Приклад:** Отримайте вузол :ref:`CollisionShape3D<class_CollisionShape3D>` з індексу форми: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var other_shape_owner = area.shape_find_owner(area_shape_index) 
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner) 

    var local_shape_owner = shape_find_owner(local_shape_index) 
    var local_shape_node = shape_owner_get_owner(local_shape_owner)  



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_exited>`

Випромінюється, коли :ref:`Shape3D<class_Shape3D>` отриманої ``area`` виходить за межі форми цієї області. Потребує, щоб :ref:`monitoring<class_Area3D_property_monitoring>` було встановлено на ``true``.

Дивіться також :ref:`area_shape_shape_entered<class_Area3D_signal_area_shape_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

Генерується, коли отриманий ``body`` входить у цю зону. ``body`` може бути :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`. Об’єкти :ref:`GridMap<class_GridMap>` виявляються, якщо в їхній :ref:`MeshLibrary<class_MeshLibrary>` налаштовані фігури зіткнення. Потрібно, щоб параметр :ref:`monitoring<class_Area3D_property_monitoring>` був встановлений на ``true``.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому в таких випадках цей сигнал не випромінюється.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

Видається, коли отриманий ``body`` виходить із цієї області. ``body`` може бути :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`. Об’єкти :ref:`GridMap<class_GridMap>` виявляються, якщо в їхній :ref:`MeshLibrary<class_MeshLibrary>` налаштовані фігури зіткнення. Потрібно, щоб параметр :ref:`monitoring<class_Area3D_property_monitoring>` був встановлений на ``true``.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому в таких випадках цей сигнал не випромінюється.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

Видається, коли :ref:`Shape3D<class_Shape3D>` отриманого ``body`` входить у фігуру цієї області. ``body`` може бути :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>` виявляються, якщо в їхній :ref:`MeshLibrary<class_MeshLibrary>` налаштовані фігури зіткнення. Потрібно, щоб :ref:`monitoring<class_Area3D_property_monitoring>` було встановлено на ``true``.

\ ``local_shape_index`` та ``body_shape_index`` містять індекси взаємодіючих фігур з цієї області та взаємодіючого тіла відповідно. ``body_rid`` містить :ref:`RID<class_RID>` тіла. Ці значення можна використовувати з :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому в таких випадках цей сигнал не надсилається.

\ **Приклад:** Отримати вузол :ref:`CollisionShape3D<class_CollisionShape3D>` з індексу фігури:


.. tabs::

 .. code-tab:: gdscript

    var body_shape_owner = body.shape_find_owner(body_shape_index)
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_exited>`

Генерується, коли :ref:`Shape3D<class_Shape3D>` отриманого ``body`` виходить за межі фігури цієї області. ``body`` може бути :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>`\ s виявляються, якщо в їх :ref:`MeshLibrary<class_MeshLibrary>` налаштовані фігури зіткнення. Вимагає, щоб :ref:`monitoring<class_Area3D_property_monitoring>` було встановлено на ``true``.

Дивіться також :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому не випромінюватиме цей сигнал у таких випадках.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Ця область не впливає на гравітацію/демпфування.

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Ця область додає свої значення гравітації/демпфування до всього, що було розраховано до цього часу (у порядку :ref:`priority<class_Area3D_property_priority>`).

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Ця область додає свої значення гравітації/демпфування до всього, що було розраховано до цього часу (у порядку :ref:`priority<class_Area3D_property_priority>`), ігноруючи всі області з нижчим пріоритетом.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Ця область замінює будь-яку гравітацію/демпфування, навіть за замовчуванням, ігноруючи всі області з нижчим пріоритетом.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Ця область замінює будь-яку гравітацію/демпфування, обчислену до цього часу (у порядку :ref:`priority<class_Area3D_property_priority>`), але продовжує розраховувати решту областей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Швидкість, з якою об'єкти перестають обертатися в цій області. Являє собою кутову швидкість, втрачену за секунду.

Дивіться :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` для більш детальної інформації про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Режим перевизначення для розрахунків кутового демпфування в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Назва звукової шини області.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Якщо ``true``, звукова шина області замінює звукову шину за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

Інтенсивність гравітації області (в метрах на секунду в квадраті). Це значення множить напрямок гравітації. Це корисно для зміни сили гравітації без зміни її напрямку.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

Вектор гравітації області (не нормалізований).

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Якщо ``true``, гравітація обчислюється з точки (встановлюється через :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`). Дивіться також :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

Якщо гравітація є точкою (див. :ref:`gravity_point<class_Area3D_property_gravity_point>`), то це буде точка притягання.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

Відстань, на якій сила гравітації дорівнює :ref:`gravity<class_Area3D_property_gravity>`. Наприклад, на планеті радіусом 100 метрів з поверхневою гравітацією 4.0 м/с², встановіть :ref:`gravity<class_Area3D_property_gravity>` на 4.0 і одиницю відстані на 100.0. Гравітація буде спадати за законом оберненого квадрата, тому в нашому прикладі на відстані 200 метрів від центру гравітація буде 1.0 м/с² (вдвічі більша відстань, 1/4 гравітації), на відстані 50 метрів - 16.0 м/с² (вдвічі менша відстань, 4x гравітації), і так далі.

Вищесказане справедливе лише тоді, коли одиниця відстані є додатним числом. Якщо цей параметр встановлено на 0.0, сила тяжіння буде постійною незалежно від відстані.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Режим перевизначення для розрахунків сили тяжіння в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Швидкість, з якою об'єкти перестають рухатися в цій області. Являє собою лінійну швидкість, втрачену за секунду.

Дивіться :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` для більш детальної інформації про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Режим перевизначення для розрахунків лінійного демпфування в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Якщо ``true``, інші області моніторингу можуть виявити цю ділянку.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Якщо ``true``, область виявляє тіла або області, які входять і виходять з неї.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Пріоритет району. Першочергові ділянки обробляються першими. Фізика :ref:`World3D<class_World3D>` завжди обробляється останньою, після всіх областей.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

Ступінь, до якого ця область застосовує реверберацію до пов'язаного з нею звуку. Варіюється від ``0`` до ``1`` з точністю ``0,1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

Якщо ``true``, область застосовує реверберацію до пов'язаного з нею звуку.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

Назва шини реверберації, яку буде використано для асоційованого звуку цієї області.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

Ступінь, до якого реверберація цієї області є рівномірним ефектом. Коливається від ``0`` до ``1`` з точністю ``0,1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

Експоненціальна швидкість, з якою сила вітру зменшується з відстанню від джерела.

\ **Примітка: ** Ця сила вітру застосовується лише до вузлів :ref:`SoftBody3D<class_SoftBody3D>`. Інші фізичні тіла наразі не зазнають впливу вітру.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

Величина специфічної для місцевості сили вітру.

\ **Примітка: ** Ця сила вітру застосовується лише до вузлів :ref:`SoftBody3D<class_SoftBody3D>`. Інші фізичні тіла наразі не зазнають впливу вітру.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

:ref:`Node3D<class_Node3D>`, який використовується для уточнення напрямку і походження площі-специфічної сили вітру. Напрямок протилежна осі локальної трансформації :ref:`Node3D<class_Node3D>` та її походження є походженням локального перетворення :ref:`Node3D<class_Node3D>`.

\ **Примітка:** Ця сила вітру застосовується тільки до вузлів :ref:`SoftBody3D<class_SoftBody3D>`. Інші фізико-фізичні органи в даний час не впливають на вітер.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

Повертає список **Area3D**\ (й), що перетинаються. Для виявлення, :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` області, що перетинається, має бути частиною :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) цей список змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

Повертає список :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` та :ref:`GridMap<class_GridMap>`, що перетинаються. Щоб тіло, яке перетинається, було виявлено, його :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` має входити до :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) цей список модифікується один раз під час фізичного кроку, а не відразу після переміщення об'єктів. Розгляньте можливість використання сигналів замість цього.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому не поверне жодних таких тіл.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

Повертає ``true``, якщо перетинаються будь-які **Area3D**\ і, інакше повертає ``false``. Для виявлення, :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` області, що перетинається, має бути частиною :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) список областей, що перетинаються, змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

Повертає ``true``, якщо відбувається перетин з будь-якими об’єктами типу :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`, в іншому випадку повертає ``false``. Щоб бути виявленим, :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` тіла, що перетинається, має бути частиною :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) список тіл, що перетинаються, модифікується один раз під час фізичного кроку, а не одразу після переміщення об’єктів. Розгляньте можливість використання сигналів замість цього.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому не враховуватиме такі тіла.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

Повертає ``true``, якщо задана **Area3D** перетинає або накладається на цю **Area3D**, інакше ``false``.

\ **Примітка:** Цей тест не виконується одразу після переміщення об'єктів. Для підвищення продуктивності список перетинів оновлюється один раз за кадр і перед кроком фізики. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

Повертає ``true``, якщо вказане фізичне тіло перетинається або перекривається з цією **Area3D**, в іншому випадку — ``false``.

Аргумент ``body`` може бути екземпляром :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` або :ref:`GridMap<class_GridMap>`. Хоча GridMap самі по собі не є фізичними тілами, вони реєструють свої плитки з фігурами зіткнення як віртуальне фізичне тіло.

\ **Примітка:** Результат цього тесту не з'являється одразу після переміщення об'єктів. З метою підвищення продуктивності список перекриттів оновлюється один раз на кадр і перед фізичним кроком. Розгляньте можливість використання сигналів замість цього.

\ **Примітка:** Godot Physics не підтримує повідомлення про перекриття з :ref:`SoftBody3D<class_SoftBody3D>`, тому в таких випадках поверне ``false``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
