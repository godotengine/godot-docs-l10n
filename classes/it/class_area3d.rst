:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area3D:

Area3D
======

**Eredita:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una regione di spazio 3D che rileva altri :ref:`CollisionObject3D<class_CollisionObject3D>` che entrano o escono da esso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Area3D** è una regione di spazio 3D definita da uno o più nodi figli di tipo :ref:`CollisionShape3D<class_CollisionShape3D>` o :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`. Rileva quando altri :ref:`CollisionObject2D<class_CollisionObject2D>` entrano o escono da esso, e monitora anche quali oggetti di collisione non l'hanno ancora uscito (cioè quali la sovrappongono).

Questo nodo può anche alterare o sovrascrivere i parametri di fisica locali (gravità, smorzamento) e indirizzare l'audio a bus audio personalizzati.

\ **Nota:** Aree e corpi creati con il :ref:`PhysicsServer3D<class_PhysicsServer3D>` potrebbero non interagire come previsto con gli **Area3D**, e potrebbero non emettere segnali o monitorare gli oggetti correttamente.

\ **Attenzione:** Utilizzando un :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` all'interno di un :ref:`CollisionShape3D<class_CollisionShape3D>` figlio di questo nodo (creato ad esempio utilizzando l'opzione **Create Trimesh Collision Sibling** nel menu di **Mesh** che appare selezionando un nodo :ref:`MeshInstance3D<class_MeshInstance3D>`) Se ciò non è desiderato, deve essere diviso in più :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` o forme primitive come :ref:`BoxShape3D<class_BoxShape3D>`, o in alcuni casi può essere sostituito da un :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'Area2D <../tutorials/physics/using_area_2d>`

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di GUI in Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Segnali
--------------

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

Emesso quando l'area ricevuta ``area`` entra in questa area. Richiede che :ref:`monitoring<class_Area3D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

Emesso quando l'area ricevuta ``area`` esce da questa area. Richiede che :ref:`monitoring<class_Area3D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

Emesso quando un :ref:`Shape3D<class_Shape3D>` dell'area ricevuta ``area`` entra in una forma di questa area. Richiede che :ref:`monitoring<class_Area3D_property_monitoring>` sia impostato su ``true``.

\ ``local_shape_index`` e ``area_shape_index`` contengono gli indici delle forme di collisione che interagiscono da questa area e dall'altra area, rispettivamente. ``area_rid`` contiene il :ref:`RID<class_RID>` dell'altra area. Questi valori possono essere utilizzati con il :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Esempio:** Ottieni il nodo :ref:`CollisionShape3D<class_CollisionShape3D>` dall'indice della forma:


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

Emesso quando un :ref:`Shape3D<class_Shape3D>` dell'area ricevuta ``area`` esce da una forma di questa area. Richiede che :ref:`monitoring<class_Area3D_property_monitoring>` sia impostato a ``true``.

Vedi anche :ref:`area_shape_entered<class_Area3D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

Emitted when the received ``body`` enters this area. ``body`` can be a :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` or :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>`\ s are detected if their :ref:`MeshLibrary<class_MeshLibrary>` has collision shapes configured. Requires :ref:`monitoring<class_Area3D_property_monitoring>` to be set to ``true``.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not emit this signal in such cases.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

Emitted when the received ``body`` exits this area. ``body`` can be a :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` or :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>`\ s are detected if their :ref:`MeshLibrary<class_MeshLibrary>` has collision shapes configured. Requires :ref:`monitoring<class_Area3D_property_monitoring>` to be set to ``true``.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not emit this signal in such cases.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

Emitted when a :ref:`Shape3D<class_Shape3D>` of the received ``body`` enters a shape of this area. ``body`` can be a :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` or :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>`\ s are detected if their :ref:`MeshLibrary<class_MeshLibrary>` has collision shapes configured. Requires :ref:`monitoring<class_Area3D_property_monitoring>` to be set to ``true``.

\ ``local_shape_index`` and ``body_shape_index`` contain indices of the interacting shapes from this area and the interacting body, respectively. ``body_rid`` contains the :ref:`RID<class_RID>` of the body. These values can be used with the :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not emit this signal in such cases.

\ **Example:** Get the :ref:`CollisionShape3D<class_CollisionShape3D>` node from the shape index:


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

Emitted when a :ref:`Shape3D<class_Shape3D>` of the received ``body`` exits a shape of this area. ``body`` can be a :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>` or :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>`\ s are detected if their :ref:`MeshLibrary<class_MeshLibrary>` has collision shapes configured. Requires :ref:`monitoring<class_Area3D_property_monitoring>` to be set to ``true``.

See also :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not emit this signal in such cases.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Quest'area non influisce sulla gravità o lo smorzamento.

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Questa area aggiunge i suoi valori di gravità e smorzamento a tutto ciò che è stato calcolato finora (nell'ordine di :ref:`priority<class_Area3D_property_priority>`).

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Questa area aggiunge i suoi valori di gravità e smorzamento a tutto ciò che è stato calcolato fino ad ora (nell'ordine di :ref:`priority<class_Area3D_property_priority>`), ignorando eventuali aree di priorità più bassa.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Questa area sostituisce qualsiasi gravità e smorzamento, anche i valori predefiniti, ignorando eventuali aree di priorità più bassa.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Questa area sostituisce qualsiasi gravità e smorzamento calcolato fino ad ora (nell'ordine di :ref:`priority<class_Area3D_property_priority>`), ma continua a calcolare il resto delle aree.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La frequenza alla quale gli oggetti smettono di girare in quest'area. Rappresenta la velocità angolare persa ogni secondo.

Vedi :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli di smorzamento angolare all'interno di quest'area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Il nome del bus audio dell'area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Se ``true``, il bus audio dell'area sovrascrive il bus audio predefinito.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

L'intensità della gravità dell'area (in metri al secondo al quadrato). Questo valore moltiplica la direzione di gravità. Ciò è utile per alterare la forza di gravità senza alterarne la direzione.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

Il vettore di gravità dell'area (non normalizzato).

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Se ``true``, la gravità è calcolata da un punto (impostato tramite :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`). Vedi anche :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

Se la gravità è un punto (vedi :ref:`gravity_point<class_Area3D_property_gravity_point>`), questo sarà il punto di attrazione.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distanza a cui la forza di gravità è uguale a quella di :ref:`gravity<class_Area3D_property_gravity>`. Ad esempio, su un pianeta con un raggio di 100 metri con una gravità di superficie di 4.0 m/s², imposta :ref:`gravity<class_Area3D_property_gravity>` a 4.0 e la distanza unitaria a 100.0. La gravità decadrà secondo la legge dell'inverso del quadrato, quindi nell'esempio, a 200 metri dal centro la gravità sarà 1.0 m/s² (due volte la distanza, 1/4 la gravità), a 50 metri sarà 16.0 m/s² (metà della distanza, 4x la gravità), e così via.

Quanto descritto sopra è vero solo quando la distanza unitaria è un numero positivo. Quando questo è impostato a 0.0, la gravità sarà costante a prescindere dalla distanza.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli della gravità all'interno di questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La frequenza alla quale gli oggetti smettono di muoversi in questa zona. Rappresenta la velocità lineare persa ogni secondo.

Vedi :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli di smorzamento lineare all'interno di questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Se ``true``, altre aree in monitoraggio possono rilevare questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Se ``true``, l'area rileva corpi o aree che entrano ed escono da essa.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorità dell'area. Le aree con priorità più alte sono elaborate prima. La fisica del :ref:`World3D<class_World3D>` è sempre elaborata per ultima, dopo tutte le aree.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

Il grado in cui questa area applica il riverbero al suo audio associato. L'intervallo va da ``0`` a ``1`` con una precisione di ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

Se ``true``, l'area applica il riverbero al suo audio associato.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

Il nome del bus di riverbero da usare per l'audio associato di questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

Il grado in cui il riverbero di questa area è un effetto uniforme. L'intervallo va da ``0`` a ``1`` con una precisione di ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

La frequenza esponenziale alla quale la forza del vento diminuisce con la distanza dalla sua origine.

\ **Nota:** Questa forza del vento si applica solo ai nodi :ref:`SoftBody3D<class_SoftBody3D>`. Altri corpi di fisica non sono attualmente influenzati dal vento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

Il magnitudo della forza del vento specifica all'area.

\ **Nota:** Questa forza del vento si applica solo ai nodi :ref:`SoftBody3D<class_SoftBody3D>`. Altri corpi di fisica non sono attualmente influenzati dal vento.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

Il :ref:`Node3D<class_Node3D>` che viene utilizzato per specificare la direzione e l'origine di una forza del vento specifica all'area. La direzione è opposta all'asse z della trasformazione locale del :ref:`Node3D<class_Node3D>`, e la sua origine è l'origine della trasformazione locale del :ref:`Node3D<class_Node3D>`.

\ **Nota:** Questa forza del vento si applica solo ai nodi :ref:`SoftBody3D<class_SoftBody3D>`. Altri corpi di fisica non sono attualmente influenzati dal vento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

Restituisce una lista di **Area3D** intersecanti. Il :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` delll'area in sovrapposizione deve essere parte di :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti sono spostati. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

Returns a list of intersecting :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s, :ref:`SoftBody3D<class_SoftBody3D>`\ s, and :ref:`GridMap<class_GridMap>`\ s. The overlapping body's :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` must be part of this area's :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` in order to be detected.

For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not return any such bodies.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

Restituisce ``true`` se sta intersecano qualsiasi **Area3D**, altrimenti restituisce ``false``. Il :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` dell'area in sovrapposizione deve essere parte di :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti sono spostati. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

Returns ``true`` if intersecting any :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s, :ref:`SoftBody3D<class_SoftBody3D>`\ s, or :ref:`GridMap<class_GridMap>`\ s, otherwise returns ``false``. The overlapping body's :ref:`CollisionObject3D.collision_layer<class_CollisionObject3D_property_collision_layer>` must be part of this area's :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` in order to be detected.

For performance reasons (collisions are all processed at the same time) the list of overlapping bodies is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will not consider such bodies.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

Restituisce ``true`` se l'**Area3D** indicata interseca o si sovrappone a questa **Area3D**, altrimenti ``false``.

\ **Nota:** Il risultato di questo test non è immediato dopo aver spostato gli oggetti. Per motivi di prestazioni, la lista delle sovrapposizioni è aggiornato una sola volta per frame e prima della fase fisica. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

Returns ``true`` if the given physics body intersects or overlaps this **Area3D**, ``false`` otherwise.

\ ``body`` argument can either be a :ref:`PhysicsBody3D<class_PhysicsBody3D>`, :ref:`SoftBody3D<class_SoftBody3D>`, or a :ref:`GridMap<class_GridMap>` instance. While GridMaps are not physics body themselves, they register their tiles with collision shapes as a virtual physics body.

\ **Note:** The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.

\ **Note:** Godot Physics does not support reporting overlaps with :ref:`SoftBody3D<class_SoftBody3D>`, so will return ``false`` in such cases.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
