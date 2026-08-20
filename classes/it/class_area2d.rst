:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**Eredita:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una regione di spazio 2D che rileva altri :ref:`CollisionObject2D<class_CollisionObject2D>` che entrano o escono da esso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Area2D** è una regione di spazio 2D definita da uno o più nodi figli di tipo :ref:`CollisionShape2D<class_CollisionShape2D>` o :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`. Rileva quando altri :ref:`CollisionObject2D<class_CollisionObject2D>` entrano o escono da esso, e monitora anche quali oggetti di collisione non l'hanno ancora uscito (cioè quali la sovrappongono).

Questo nodo può anche alterare o sovrascrivere i parametri di fisica locali (gravità, smorzamento) e indirizzare l'audio a bus audio personalizzati.

\ **Nota:** Aree e corpi creati con il :ref:`PhysicsServer2D<class_PhysicsServer2D>` potrebbero non interagire come previsto con gli **Area2D**, e potrebbero non emettere segnali o monitorare gli oggetti correttamente.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'Area2D <../tutorials/physics/using_area_2d>`

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

- `Demo 2D "Pong 2D" <https://godotengine.org/asset-library/asset/2728>`__

- `Demo di gioco di piattaforme in 2D <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Segnali
--------------

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

Emesso quando l'area ricevuta ``area`` entra in questa area. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

Emesso quando l'area ricevuta ``area`` esce da questa area. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

Emesso quando un :ref:`Shape2D<class_Shape2D>` dell'area ricevuta ``area`` entra in una forma di questa area. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato su ``true``.

\ ``local_shape_index`` e ``area_shape_index`` contengono gli indici delle forme di collisione che interagiscono da questa area e dall'altra area, rispettivamente. ``area_rid`` contiene il :ref:`RID<class_RID>` dell'altra area. Questi valori possono essere utilizzati con il :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Esempio:** Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` dall'indice della forma:


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

Emesso quando un :ref:`Shape2D<class_Shape2D>` dell'area ricevuta ``area`` esce da una forma di questa area. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

Vedi anche :ref:`area_shape_entered<class_Area2D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

Emesso quando il corpo ricevuto ``body`` entra in questa area. ``body`` può essere un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. I :ref:`TileMap<class_TileMap>` sono rilevati se il loro :ref:`TileSet<class_TileSet>` ha forme di collisione configurate. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

Emesso quando il corpo ricevuto ``body`` esce da questa area. ``body`` può essere un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. I :ref:`TileMap<class_TileMap>` sono rilevati se il loro :ref:`TileSet<class_TileSet>` ha forme di collisione configurate. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

Emesso quando un :ref:`Shape2D<class_Shape2D>` del corpo ricevuto ``body`` entra in una forma di questa area. ``body`` può essere un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. I :ref:`TileMap<class_TileMap>` sono rilevati se il loro :ref:`TileSet<class_TileSet>` ha forme di collisione configurate. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

\ ``local_shape_index`` e ``body_shape_index`` contengono gli indici delle forme di collisione che interagiscono da questa area e dal corpo, rispettivamente. ``body_rid`` contiene il :ref:`RID<class_RID>` del corpo. Questi valori possono essere utilizzati con il :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ **Esempio:** Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` dall'indice della forma:


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

Emesso quando un :ref:`Shape2D<class_Shape2D>` del corpo ricevuto ``body`` esce da una forma di questa area. ``body`` può essere un :ref:`PhysicsBody2D<class_PhysicsBody2D>` o un :ref:`TileMap<class_TileMap>`. I :ref:`TileMap<class_TileMap>` sono rilevati se il loro :ref:`TileSet<class_TileSet>` ha forme di collisione configurate. Richiede che :ref:`monitoring<class_Area2D_property_monitoring>` sia impostato a ``true``.

Vedi anche :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Quest'area non influisce sulla gravità o lo smorzamento.

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Questa area aggiunge i suoi valori di gravità e smorzamento a tutto ciò che è stato calcolato finora (nell'ordine di :ref:`priority<class_Area2D_property_priority>`).

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Questa area aggiunge i suoi valori di gravità e smorzamento a tutto ciò che è stato calcolato fino ad ora (nell'ordine di :ref:`priority<class_Area2D_property_priority>`), ignorando eventuali aree di priorità più bassa.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Questa area sostituisce qualsiasi gravità e smorzamento, anche i valori predefiniti, ignorando eventuali aree di priorità più bassa.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Questa area sostituisce qualsiasi gravità e smorzamento calcolato fino ad ora (nell'ordine di :ref:`priority<class_Area2D_property_priority>`), ma continua a calcolare il resto delle aree.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

La frequenza alla quale gli oggetti smettono di girare in quest'area. Rappresenta la velocità angolare persa ogni secondo.

Vedi :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli di smorzamento angolare all'interno di quest'area.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Il nome del bus audio dell'area.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Se ``true``, il bus audio dell'area sovrascrive il bus audio predefinito.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

L'intensità della gravità dell'area (in pixel al secondo al quadrato). Questo valore moltiplica la direzione di gravità. Ciò è utile per alterare la forza di gravità senza alterarne la direzione.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

Il vettore di gravità dell'area (non normalizzato).

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Se ``true``, la gravità è calcolata da un punto (impostato tramite :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`). Vedi anche :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

Se la gravità è un punto (vedi :ref:`gravity_point<class_Area2D_property_gravity_point>`), questo sarà il punto di attrazione.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

La distanza a cui la forza di gravità è uguale a quella di :ref:`gravity<class_Area2D_property_gravity>`. Ad esempio, su un pianeta con un raggio di 100 pixel con una gravità di superficie di 4.0 px/s², imposta :ref:`gravity<class_Area2D_property_gravity>` a 4.0 e la distanza unitaria a 100.0. La gravità decadrà secondo la legge dell'inverso del quadrato, quindi nell'esempio, a 200 pixel dal centro la gravità sarà 1.0 px/s² (due volte la distanza, 1/4 la gravità), a 50 pixel sarà 16.0 px/s² (metà della distanza, 4x la gravità), e così via.

Quanto descritto sopra è vero solo quando la distanza unitaria è un numero positivo. Quando questo è impostato a 0.0, la gravità sarà costante a prescindere dalla distanza.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli della gravità all'interno di questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

La frequenza alla quale gli oggetti smettono di muoversi in questa zona. Rappresenta la velocità lineare persa ogni secondo.

Vedi :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Modalità di sostituzione per i calcoli di smorzamento lineare all'interno di questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Se ``true``, altre aree in monitoraggio possono rilevare questa area.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Se ``true``, l'area rileva corpi o aree che entrano ed escono da essa.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorità dell'area. Le aree con priorità più alte sono elaborate prima. La fisica del :ref:`World2D<class_World2D>` è sempre elaborata per ultima, dopo tutte le aree.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

Restituisce una lista di **Area2D** intersecanti. Il :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` delll'area in sovrapposizione deve essere parte di :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti sono spostati. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

Restituisce una lista di :ref:`PhysicsBody2D<class_PhysicsBody2D>` e :ref:`TileMap<class_TileMap>` intersecanti. Il :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` del corpo in sovrapposizione deve essere parte di :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti si spostano. Considera invece di usare i segnali.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

Restituisce ``true`` se sta intersecano qualsiasi **Area2D**, altrimenti restituisce ``false``. Il :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` dell'area in sovrapposizione deve essere parte di :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti sono spostati. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

Restituisce ``true`` se sta intersecano qualsiasi :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`, altrimenti restituisce ``false``. Il :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` del corpo in sovrapposizione deve essere parte di :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` per essere rilevato.

Per motivi di prestazioni (le collisioni sono tutte elaborate allo stesso tempo) questa lista viene modificata una sola volta durante la fase di fisica, non subito dopo che gli oggetti si spostano. Considera invece di usare i segnali.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

Restituisce ``true`` se l'**Area2D** indicata interseca o si sovrappone a questa **Area2D**, altrimenti ``false``.

\ **Nota:** Il risultato di questo test non è immediato dopo aver spostato gli oggetti. Per motivi di prestazioni, la lista delle sovrapposizioni è aggiornato una sola volta per frame e prima della fase fisica. Considera utilizzare i segnali invece.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

Restituisce ``true`` se il corpo fisico specificato interseca o si sovrappone a questa **Area2D**, altrimenti ``false``.

\ **Nota:** Il risultato di questo test non è immediato dopo aver spostato gli oggetti. Per motivi di prestazioni, la lista delle sovrapposizioni è aggiornato una sola volta per frame e prima della fase di fisica. Considera invece di usare i segnali.

L'argomento ``body`` può essere un'istanza di :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`. Sebbene i TileMap non siano corpi fisici, essi registrano i loro tasselli aventi forme di collisione come un corpo fisico virtuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
