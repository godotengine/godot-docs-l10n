:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**Hereda:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una región de espacio 2D que detecta otros :ref:`CollisionObject2D<class_CollisionObject2D>`\ s entrando o saliendo de él.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**Area2D** es una región del espacio 2D definida por uno o varios nodos hijo :ref:`CollisionShape2D<class_CollisionShape2D>` o :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`. Detecta cuándo otros :ref:`CollisionObject2D<class_CollisionObject2D>` entran o salen de ella, y también realiza un seguimiento de qué objetos de colisión aún no han salido (es decir, cuáles la están superponiendo).

Este nodo también puede alterar o sobrescribir parámetros físicos (gravedad, amortiguación) y enrutar el audio a buses de audio personalizados.

\ **Nota:** Las áreas y los cuerpos creados con :ref:`PhysicsServer2D<class_PhysicsServer2D>` pueden no interactuar como se espera con los **Area2D**, y podrían fallar al emitir señales o realizar el seguimiento de objetos.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando Area2D <../tutorials/physics/using_area_2d>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo de Pong en 2D <https://godotengine.org/asset-library/asset/2728>`__

- `Demo de Plataformas en 2D <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

Emitida cuando el ``area`` recibido entra en esta área. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` se configure como ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

Emitida cuando el ``area`` recibido sale de esta área. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` se configure como ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

Emitida cuando una forma (:ref:`Shape2D<class_Shape2D>`) del área externa (``area``) entra en una forma de esta área. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` esté establecido en ``true``.

Los parámetros ``local_shape_index`` y ``area_shape_index`` contienen los índices de las formas que interactúan de ésta área y del área externa, respectivamente. ``area_rid`` contiene el :ref:`RID<class_RID>` del área externa. Estos valores pueden utilizarse con :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Ejemplo:** Obtener el nodo :ref:`CollisionShape2D<class_CollisionShape2D>` a partir del índice de la forma:


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

Se emite cuando una :ref:`Shape2D<class_Shape2D>` de la ``area`` recibido sale de una forma de esta área. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` esté configurado como ``true``.

Véase también :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

Emitido cuando el ``body`` recibido entra a este área. ``body`` puede ser un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. Los :ref:`TileMap<class_TileMap>`\ s son detectados si su :ref:`TileSet<class_TileSet>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` se establezca a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

Emitido cuando el ``body`` recibido sale de este área. ``body`` puede ser un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. Los :ref:`TileMap<class_TileMap>`\ s son detectados si su :ref:`TileSet<class_TileSet>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` se establezca a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

Emitida cuando una forma :ref:`Shape2D<class_Shape2D>` del cuerpo externo ``body`` entra en una forma de ésta área. ``body`` puede ser un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. Los :ref:`TileMap<class_TileMap>` se detectan si su :ref:`TileSet<class_TileSet>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` esté establecido en ``true``.

Los parámetros ``local_shape_index`` y ``body_shape_index`` contienen los índices de las formas que interactúan de ésta área y del cuerpo externo, respectivamente. ``body_rid`` contiene el :ref:`RID<class_RID>` del cuerpo externo. Estos valores pueden utilizarse con :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Ejemplo:** Obtener el nodo :ref:`CollisionShape2D<class_CollisionShape2D>` a partir del índice de la forma:


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

Emitido cuando un :ref:`Shape2D<class_Shape2D>` del ``body`` recibido sale de una forma de este área. ``body`` puede ser un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. Los :ref:`TileMap<class_TileMap>`\ s son detectados si su :ref:`TileSet<class_TileSet>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area2D_property_monitoring>` se establezca a ``true``.

Véase también :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Esta área no afecta a la gravedad/amortiguación.

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Esta área añade sus valores de gravedad/amortiguación a lo que se ha calculado hasta ahora (en el orden :ref:`priority<class_Area2D_property_priority>`).

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Esta área añade sus valores de gravedad/amortiguación a lo que se ha calculado hasta ahora (en el orden :ref:`priority<class_Area2D_property_priority>`), ignorando cualquier área de menor prioridad.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Esta área reemplaza cualquier gravedad/amortiguación, incluso las predeterminadas, ignorando cualquier área de menor prioridad.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Esta área reemplaza cualquier gravedad/amortiguación calculada hasta ahora (en orden de :ref:`priority<class_Area2D_property_priority>`), pero sigue calculando el resto de las áreas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La velocidad a la que los objetos dejan de girar en esta área. Representa la velocidad angular perdida por segundo.

Véase :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` para obtener más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Modo de sobre-escritura para los cálculos de amortiguación angular dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

El nombre del bus de audio del área.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Si es ``true``, el área del bus de audio sobrescribe el bus de audio por defecto.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

Intensidad gravitatoria del area (en píxeles por segundo al cuadrado). Este valor multiplica la dirección gravitatoria . Esto resulta útil para modificar la fuerza de la gravedad sin alterar su dirección.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

El vector de gravedad del área (no normalizado).

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Si es ``true``, la gravedad se calcula a partir de un punto (establecido mediante :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`). Véase también :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

Si la gravedad es un punto (ver :ref:`gravity_point<class_Area2D_property_gravity_point>`), este será el punto de atracción.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distancia a la que la fuerza de gravedad es igual a :ref:`gravity<class_Area2D_property_gravity>`. Por ejemplo, en un planeta de 100 píxeles de radio con una gravedad superficial de 4.0 px/s², establezca la :ref:`gravity<class_Area2D_property_gravity>` a 4.0 y la unidad de distancia a 100.0. La gravedad disminuirá según la ley del cuadrado inverso, entonces en este ejemplo, a 200 pixeles del centro la gravedad será 1.0 px/s² (doble de distancia, 1/4 más gravedad), a 50 píxeles será 16.0 px/s² (mitad de distancia, 4 veces más gravedad), y así sucesivamente.

Lo anterior es cierto solo cuando la unidad de distancia es un número positivo. Cuando está establecido a 0.0, la gravedad será constante independientemente de la distancia.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Modo de sobrescritura para los cálculos de gravedad dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La tasa a la que los objetos dejan de moverse en esta área. Representa la velocidad lineal perdida por segundo.

Véase :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` para obtener más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Modo de sobre-escritura para cálculos de amortiguación lineal dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Si es ``true``, otras áreas de monitoreo pueden detectar esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Si es ``true``, el área detecta cuerpos o áreas que entran y salen de ella.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La prioridad del área. Las áreas de mayor prioridad se procesan primero. La física de :ref:`World2D<class_World2D>` siempre se procesa al final, después de todas las áreas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

Devuelve una lista de **Area2D** que se intersecan. El :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` del área superpuesta debe formar parte del :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), esta lista se modifica una vez durante el paso de física, no inmediatamente después de que se muevan los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

Devuelve una lista de :ref:`PhysicsBody2D<class_PhysicsBody2D>` y :ref:`TileMap<class_TileMap>` que se intersecan. La capa de colisión del cuerpo superpuesto (:ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>`) debe formar parte de la máscara de colisión de esta área (:ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>`) para poder ser detectado.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), esta lista se modifica una vez durante el paso de física, no inmediatamente después de mover los objetos. Considera utilizar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

Devuelve ``true`` si interseca alguna **Area2D**, de lo contrario devuelve ``false``. El :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` del área superpuesta debe ser parte del :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), la lista de áreas superpuestas se modifica una vez durante el paso de física, no inmediatamente después de que se mueven los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

Devuelve ``true`` si interseca cualquier :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`, de lo contrario devuelve ``false``. El :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` del cuerpo superpuesto debe ser parte del :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), la lista de cuerpos superpuestos se modifica una vez durante el paso de física, no inmediatamente después de que se mueven los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

Devuelve ``true`` si el **Area2D** dado interseca o se superpone a este **Area2D**, ``false`` en caso contrario.

\ **Nota:** El resultado de esta prueba no es inmediato después de mover objetos. Para mejorar el rendimiento, la lista de superposiciones se actualiza una vez por fotograma y antes del paso de física. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

Devuelve ``true`` si el cuerpo físico dado intersecciona o se superpone con esta **Area2D**, ``false`` en caso contrario.

\ **Nota:** El resultado de esta test no es inmediato después de mover objetos. Por rendimiento, la lista de superposiciones se actualiza una vez por fotograma y antes del paso de física. Considera usar señales en su lugar.

El argumento ``body`` puede ser una instancia de :ref:`PhysicsBody2D<class_PhysicsBody2D>` o de :ref:`TileMap<class_TileMap>`. Aunque los TileMaps no son cuerpos físicos en sí mismos, registran sus piezas con formas de colisión como un cuerpo físico virtual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
