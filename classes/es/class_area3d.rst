:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area3D:

Area3D
======

**Hereda:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una región del espacio 3D que detecta otros :ref:`CollisionObject3D<class_CollisionObject3D>` entrando o saliendo de él.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**Area3D** es una región del espacio 3D definida por uno o varios nodos hijo :ref:`CollisionShape3D<class_CollisionShape3D>` o :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`. Detecta cuándo otros :ref:`CollisionObject3D<class_CollisionObject3D>` entran o salen de ella, y también realiza un seguimiento de qué objetos de colisión aún no han salido (es decir, cuáles la están superponiendo).

Este nodo también puede alterar o sobrescribir parámetros físicos (gravedad, amortiguación) y enrutar el audio a buses de audio personalizados.

\ **Nota:** Las áreas y los cuerpos creados con :ref:`PhysicsServer3D<class_PhysicsServer3D>` podrían no interactuar como se espera con los **Area3D**, y podrían no emitir señales ni realizar el seguimiento de objetos correctamente.

\ **Advertencia:** Usar un :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` dentro de un hijo :ref:`CollisionShape3D<class_CollisionShape3D>` de este nodo (por ejemplo, creado usando la opción **Crear Malla de Contorno...** en el menú **Malla** que aparece al seleccionar un nodo :ref:`MeshInstance3D<class_MeshInstance3D>`) puede dar resultados inesperados, ya que esta forma de colisión es hueca. Si esto no es lo deseado, debe dividirse en múltiples :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` o en formas primitivas como :ref:`BoxShape3D<class_BoxShape3D>`, o en algunos casos puede reemplazarse por un :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando Area2D <../tutorials/physics/using_area_2d>`

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demostración GUI en el Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

Propiedades
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

Métodos
--------------

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

Señales
--------------

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

Emitida cuando el ``area`` recibido entra en esta área. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` se configure como ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

Emitida cuando el ``area`` recibido sale de esta área. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` se configure como ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

Emitida cuando una forma (:ref:`Shape2D<class_Shape2D>`) del área externa (``area``) entra en una forma de ésta área. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

Los parámetros ``local_shape_index`` y ``area_shape_index`` contienen los índices de las formas que interactúan de ésta área y del área externa, respectivamente. El parámetro ``area_rid`` contiene el :ref:`RID<class_RID>` del área externa. Estos valores pueden utilizarse con :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Ejemplo:** Obtener el nodo :ref:`CollisionShape2D<class_CollisionShape2D>` a partir del índice de la forma:


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

Emitida cuando una :ref:`Shape3D<class_Shape3D>` de la ``area`` recibido sale de una forma de esta área. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

Véase también :ref:`area_shape_entered<class_Area3D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

Emitida cuando el ``body`` recibido entra en esta área. ``body`` puede ser un :ref:`PhysicsBody3D<class_PhysicsBody3D>` o un :ref:`GridMap<class_GridMap>`. Los :ref:`GridMap<class_GridMap>` se detectan si su :ref:`MeshLibrary<class_MeshLibrary>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

Emitida cuando el ``body`` recibido sale de esta área. ``body`` puede ser un :ref:`PhysicsBody3D<class_PhysicsBody3D>` o un :ref:`GridMap<class_GridMap>`. Los :ref:`GridMap<class_GridMap>` se detectan si su :ref:`MeshLibrary<class_MeshLibrary>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

Emitida cuando una forma :ref:`Shape3D<class_Shape3D>` del cuerpo recibido ``body`` entra en una forma de ésta área. ``body`` puede ser un :ref:`PhysicsBody3D<class_PhysicsBody3D>` o un :ref:`GridMap<class_GridMap>`. Los :ref:`GridMap<class_GridMap>` se detectan si su :ref:`MeshLibrary<class_MeshLibrary>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

\ ``local_shape_index`` y ``body_shape_index`` contienen los índices de las formas que interactúan de ésta área y del cuerpo externo, respectivamente. ``body_rid`` contiene el :ref:`RID<class_RID>` del cuerpo. Estos valores pueden utilizarse con :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Ejemplo:** Obtener el nodo :ref:`CollisionShape3D<class_CollisionShape3D>` a partir del índice de la forma:


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

Emitida cuando una :ref:`Shape3D<class_Shape3D>` del ``body`` recibido sale de una forma de esta área. ``body`` puede ser un :ref:`PhysicsBody3D<class_PhysicsBody3D>` o un :ref:`GridMap<class_GridMap>`. Los :ref:`GridMap<class_GridMap>` se detectan si su :ref:`MeshLibrary<class_MeshLibrary>` tiene formas de colisión configuradas. Requiere que :ref:`monitoring<class_Area3D_property_monitoring>` esté establecido en ``true``.

Véase también :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Esta área no afecta a la gravedad/amortiguación.

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Esta área añade sus valores de gravedad/amortiguación a lo que se ha calculado hasta ahora (en el orden :ref:`priority<class_Area3D_property_priority>`).

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Esta área añade sus valores de gravedad/amortiguación a lo que se ha calculado hasta ahora (en el orden :ref:`priority<class_Area3D_property_priority>`), ignorando cualquier área de menor prioridad.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Esta área reemplaza cualquier gravedad/amortiguación, incluso las predeterminadas, ignorando cualquier área de menor prioridad.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Esta área reemplaza cualquier gravedad/amortiguación calculada hasta ahora (en orden de :ref:`priority<class_Area3D_property_priority>`), pero sigue calculando el resto de las áreas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La velocidad a la que los objetos dejan de girar en esta área. Representa la velocidad angular perdida por segundo.

Véase :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` para obtener más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Modo de sobre-escritura para los cálculos de amortiguación angular dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

El nombre del bus de audio del área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Si es ``true``, el área del bus de audio sobrescribe el bus de audio por defecto.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

La intensidad de la gravedad en la zona (en metros por segundo al cuadrado). Este valor multiplica la dirección de la gravedad. Esto es útil para modificar la fuerza de la gravedad sin alterar su dirección.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

El vector de gravedad del área (no normalizado).

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Si es ``true``, la gravedad se calcula a partir de un punto (establecido mediante :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`). Véase también :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

Si la gravedad es un punto (ver :ref:`gravity_point<class_Area3D_property_gravity_point>`), este será el punto de atracción.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distancia a la que la fuerza de gravedad es igual a :ref:`gravity<class_Area3D_property_gravity>`. Por ejemplo, en un planeta de 100 metros de radio con una gravedad superficial de 4.0 m/s², establezca la :ref:`gravity<class_Area3D_property_gravity>` a 4.0 y la unidad de distancia a 100.0. La gravedad disminuirá según la ley del cuadrado inverso, entonces en este ejemplo, a 200 metros del centro la gravedad será 1.0 m/s² (doble de distancia, 1/4 más gravedad), a 50 metros será 16.0 m/s² (mitad de distancia, 4 veces más gravedad), y así sucesivamente.

Lo anterior es cierto solo cuando la unidad de distancia es un número positivo. Cuando está establecido a 0.0, la gravedad será constante independientemente de la distancia.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Modo de sobrescritura para los cálculos de gravedad dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La tasa a la que los objetos dejan de moverse en esta área. Representa la velocidad lineal perdida por segundo.

Véase :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` para obtener más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Modo de sobre-escritura para cálculos de amortiguación lineal dentro de esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Si es ``true``, otras áreas de monitoreo pueden detectar esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Si es ``true``, el área detecta cuerpos o áreas que entran y salen de ella.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La prioridad del área. Las áreas de mayor prioridad se procesan primero. La física de :ref:`World3D<class_World3D>` siempre se procesa al final, después de todas las áreas.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

El grado en que esta área aplica reverberación a su audio asociado. Va de ``0`` a ``1`` con una precisión de ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

Si es ``true``, el área aplica reverberación a su audio asociado.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

El nombre del bus de reverberación que se utilizará para el audio asociado a esta área.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

El grado de reverberación de esta área es un efecto uniforme. Va de ``0`` a ``1`` con una precisión de ``0,1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

La tasa exponencial a la que la fuerza del viento disminuye con la distancia desde su origen.

\ **Nota:** Esta fuerza del viento solo se aplica a los nodos :ref:`SoftBody3D<class_SoftBody3D>`. Otros cuerpos físicos no se ven afectados actualmente por el viento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

La magnitud de la fuerza del viento específica del área.

\ **Nota:** Esta fuerza del viento solo se aplica a los nodos :ref:`SoftBody3D<class_SoftBody3D>`. Otros cuerpos físicos no se ven afectados actualmente por el viento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

El :ref:`Node3D<class_Node3D>` que se utiliza para especificar la dirección y el origen de una fuerza del viento específica del área. La dirección es opuesta al eje z de la transformación local del :ref:`Node3D<class_Node3D>`, y su origen es el origen de la transformación local del :ref:`Node3D<class_Node3D>`.

\ **Nota:** Esta fuerza del viento solo se aplica a los nodos :ref:`SoftBody3D<class_SoftBody3D>`. Otros cuerpos físicos no se ven afectados actualmente por el viento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

Devuelve una lista de **Area3D** que se intersecan. El :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` del área superpuesta debe formar parte del :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), esta lista se modifica una vez durante el paso de física, no inmediatamente después de que se muevan los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

Devuelve una lista de :ref:`PhysicsBody3D<class_PhysicsBody3D>` y :ref:`GridMap<class_GridMap>` que se intersecan. El :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` del cuerpo superpuesto debe formar parte del :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), esta lista se modifica una vez durante el paso de física, no inmediatamente después de que se muevan los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

Devuelve ``true`` si interseca alguna **Area3D**, de lo contrario devuelve ``false``. El :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` del área superpuesta debe ser parte del :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), la lista de áreas superpuestas se modifica una vez durante el paso de física, no inmediatamente después de que se mueven los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

Devuelve ``true`` si interseca cualquier :ref:`PhysicsBody3D<class_PhysicsBody3D>` o :ref:`GridMap<class_GridMap>`, de lo contrario devuelve ``false``. El :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` del cuerpo superpuesto debe ser parte del :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` de esta área para que se detecte.

Por razones de rendimiento (todas las colisiones se procesan al mismo tiempo), la lista de cuerpos superpuestos se modifica una vez durante el paso de física, no inmediatamente después de que se mueven los objetos. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

Devuelve ``true`` si el **Area3D** dado interseca o se superpone con este **Area3D**, ``false`` en caso contrario.

\ **Nota:** El resultado de esta prueba no es inmediato después de mover objetos. Por rendimiento, la lista de superposiciones se actualiza una vez por fotograma y antes del paso de física. Considera usar señales en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

Devuelve ``true`` si el cuerpo físico dado interseca o se superpone con este **Area3D**, ``false`` en caso contrario.

\ **Nota:** El resultado de esta prueba no es inmediato después de mover objetos. Por rendimiento, la lista de superposiciones se actualiza una vez por fotograma y antes del paso de física. Considera usar señales en su lugar.

El argumento ``body`` puede ser una instancia de :ref:`PhysicsBody3D<class_PhysicsBody3D>` o de :ref:`GridMap<class_GridMap>`. Aunque los GridMaps no son cuerpos físicos en sí mismos, registran sus baldosas con formas de colisión como un cuerpo físico virtual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
