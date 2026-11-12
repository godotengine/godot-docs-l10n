:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**Наследует:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Область 2D пространства, которая обнаруживает другие :ref:`CollisionObject2D<class_CollisionObject2D>`, входящие в нее или выходящие из нее.

.. rst-class:: classref-introduction-group

Описание
----------------

**Area2D** — это область двумерного пространства, определяемая одним или несколькими дочерними узлами :ref:`CollisionShape2D<class_CollisionShape2D>` или :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`. Он определяет, когда другие :ref:`CollisionObject2D<class_CollisionObject2D>` входят в него или выходят из него, а также отслеживает, какие объекты столкновения еще не вышли из него (т. е. какие из них перекрывают его).

Этот узел также может локально изменять или переопределять физические параметры (гравитация, затухание) и направлять звук на пользовательские аудиошины.

\ **Примечание:** Области и тела, созданные с помощью :ref:`PhysicsServer2D<class_PhysicsServer2D>`, могут не взаимодействовать с **Area2D**-ми так, как ожидается, и могут не испускать сигналы или не отслеживать объекты правильно.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование Area2D <../tutorials/physics/using_area_2d>`

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

- `Демоверсия 2D-понга <https://godotengine.org/asset-library/asset/2728>`__

- `Демоверсия 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area2D_property_angular_damp>`                               | ``1.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area2D_property_angular_damp_space_override>` | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area2D_property_audio_bus_name>`                           | ``&"Master"``     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area2D_property_audio_bus_override>`                   | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area2D_property_gravity>`                                         | ``980.0``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_direction<class_Area2D_property_gravity_direction>`                     | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area2D_property_gravity_point>`                             | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`               | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area2D_property_gravity_point_unit_distance>` | ``0.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`           | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area2D_property_linear_damp>`                                 | ``0.1``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area2D_property_linear_damp_space_override>`   | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area2D_property_monitorable>`                                 | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area2D_property_monitoring>`                                   | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area2D_property_priority>`                                       | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] | :ref:`get_overlapping_areas<class_Area2D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_overlapping_bodies<class_Area2D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area2D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area2D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area2D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area2D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

Выдается, когда полученный ``area`` входит в эту область. Требуется, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен в ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

Выдается, когда полученная ``area`` выходит из этой области. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

Выдается, когда :ref:`Shape2D<class_Shape2D>` полученного ``area`` входит в форму этой области. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен в ``true``.

\ ``local_shape_index`` и ``area_shape_index`` содержат индексы взаимодействующих фигур из этой области и другой области соответственно. ``area_rid`` содержит :ref:`RID<class_RID>` другой области. Эти значения можно использовать с :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Пример:** Получить узел :ref:`CollisionShape2D<class_CollisionShape2D>` из индекса формы:


.. tabs::

 .. code-tab:: gdscript

    var other_shape_owner = area.shape_find_owner(area_shape_index)
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_exited>`

Выдается, когда :ref:`Shape2D<class_Shape2D>` полученной ``area`` выходит из формы этой области. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

См. также :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

Вызывается, когда полученное ``body`` попадает в эту область. ``body`` может быть :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>` обнаруживаются, если их :ref:`TileSet<class_TileSet>` имеет настроенные формы столкновений. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

Вызывается, когда полученное ``body`` покидает эту область. ``body`` может быть :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>` обнаруживаются, если их :ref:`TileSet<class_TileSet>` имеет настроенные формы столкновений. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

Вызывается, когда :ref:`Shape2D<class_Shape2D>` полученного ``body`` входит в форму этой области. ``body`` может быть :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>` обнаруживаются, если их :ref:`TileSet<class_TileSet>` имеет настроенные формы столкновений. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

\ ``local_shape_index`` и ``body_shape_index`` содержат индексы взаимодействующих фигур из этой области и взаимодействующего тела соответственно. ``body_rid`` содержит :ref:`RID<class_RID>` тела. Эти значения можно использовать с :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Пример:** Получить узел :ref:`CollisionShape2D<class_CollisionShape2D>` из индекса формы:


.. tabs::

 .. code-tab:: gdscript

    var body_shape_owner = body.shape_find_owner(body_shape_index)
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_exited>`

Выдается, когда :ref:`Shape2D<class_Shape2D>` полученного ``body`` выходит из формы этой области. ``body`` может быть :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>` обнаруживаются, если их :ref:`TileSet<class_TileSet>` имеет настроенные формы столкновений. Требует, чтобы :ref:`monitoring<class_Area2D_property_monitoring>` был установлен на ``true``.

См. также :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Эта область не влияет на гравитацию/демпфирование.

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Эта область добавляет свои значения гравитации/затухания ко всему, что было рассчитано до сих пор (в порядке :ref:`priority<class_Area2D_property_priority>`).

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Эта область добавляет свои значения гравитации/демпфирования ко всему, что было рассчитано до сих пор (в порядке :ref:`priority<class_Area2D_property_priority>`), игнорируя любые области с более низким приоритетом.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Эта область заменяет любую гравитацию/демпфирование, даже значения по умолчанию, игнорируя любые области с более низким приоритетом.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Эта область заменяет все рассчитанные до сих пор значения гравитации/демпфирования (в порядке :ref:`priority<class_Area2D_property_priority>`), но продолжает рассчитывать остальные области.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Скорость, с которой объекты прекращают вращаться в этой области. Представляет угловую скорость, потерянную в секунду.

Подробнее о затухании см. :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Режим переопределения для расчетов углового демпфирования в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Название аудио-шины этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Если ``true``, аудиошина области переопределяет аудиошину по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

Интенсивность гравитации области (в пикселях в секунду в квадрате). Это значение умножает направление гравитации. Это полезно для изменения силы гравитации без изменения ее направления.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

Вектор силы тяжести области (не нормализован).

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Если ``true``, гравитация рассчитывается из точки (задается через :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`). См. также :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

Если гравитация — это точка (см. ``membergravity_point``), то это будет точка притяжения.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

The distance at which the gravity strength is equal to :ref:`gravity<class_Area2D_property_gravity>`. For example, on a planet 100 pixels in radius with a surface gravity of 4.0 px/s², set the :ref:`gravity<class_Area2D_property_gravity>` to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 pixels from the center the gravity will be 1.0 px/s² (twice the distance, 1/4th the gravity), at 50 pixels it will be 16.0 px/s² (half the distance, 4× the gravity), and so on.

The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Режим переопределения для расчетов гравитации в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Скорость, с которой объекты прекращают движение в этой области. Представляет собой потерю линейной скорости в секунду.

Подробнее о затухании см. :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Режим переопределения для расчетов линейного затухания в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Если ``true``, другие области мониторинга могут обнаружить эту область.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Если ``true``, область обнаруживает входящие и выходящие из нее тела или области.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Приоритет области. Области с более высоким приоритетом обрабатываются в первую очередь. Физика :ref:`World2D<class_World2D>` всегда обрабатывается в последнюю очередь, после всех областей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

Возвращает список пересекающихся **Area2D**. ``Member CollisionObject2D.collision_layer`` перекрывающейся области должен быть частью :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) этот список изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

Возвращает список пересекающихся :ref:`PhysicsBody2D<class_PhysicsBody2D>` и :ref:`TileMap<class_TileMap>`. ``Member CollisionObject2D.collision_layer`` перекрывающегося тела должен быть частью :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) этот список изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

Возвращает ``true``, если пересекает какие-либо **Area2D**-ы, в противном случае возвращает ``false``. ``Member CollisionObject2D.collision_layer`` перекрывающейся области должен быть частью :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) список перекрывающихся областей изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

Возвращает ``true``, если пересекает любые :ref:`PhysicsBody2D<class_PhysicsBody2D>`-ы или :ref:`TileMap<class_TileMap>`-ми, в противном случае возвращает ``false``. ``Member CollisionObject2D.collision_layer`` перекрывающего тела должен быть частью :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) список перекрывающихся тел изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

Возвращает ``true``, если заданная **Area2D** пересекает или перекрывает эту **Area2D**, ``false`` в противном случае.

\ **Примечание:** Результат этого теста не появляется сразу после перемещения объектов. Для производительности список перекрытий обновляется один раз за кадр и перед шагом физики. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

Возвращает ``true``, если указанное физическое тело пересекается или перекрывается с этой областью (**Area2D**), иначе ``false``. 

\ **Примечание:** Результат этого теста не обновляется мгновенно после перемещения объектов. Для производительности список перекрытий обновляется один раз за кадр и перед шагом физики. Рекомендуется использовать сигналы. 

Аргумент ``body`` может быть либо :ref:`PhysicsBody2D<class_PhysicsBody2D>`, либо экземпляром :ref:`TileMap<class_TileMap>`. Хотя TileMap сам по себе не является физическим телом, он регистрирует свои тайлы с коллизиями как виртуальное физическое тело.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
