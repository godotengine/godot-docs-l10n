:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**Eredita:** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

Un corpo fisico 2D che viene spostato da una simulazione fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**RigidBody2D** implementa la fisica 2D completa. Non può essere controllato direttamente, ma è necessario applicargli delle forze (gravità, impulsi, ecc.) e la simulazione fisica calcolerà il movimento risultante, la rotazione, reagirà alle collisioni e influenzerà altri corpi fisici sul suo percorso.

Il comportamento del corpo può essere regolato tramite :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`, :ref:`freeze<class_RigidBody2D_property_freeze>` e :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`. Modificando varie proprietà dell'oggetto, come :ref:`mass<class_RigidBody2D_property_mass>`, puoi controllare come la simulazione fisica agisce su di esso.

Un corpo rigido manterrà sempre la sua forma e dimensione, anche quando gli vengono applicate delle forze. È utile per oggetti con cui è possibile interagire in un ambiente, come un albero che può essere abbattuto o una pila di casse che può essere spinta.

Se devi influenzare direttamente il corpo, preferisci implementare :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` in quanto ti consente di accedere direttamente allo stato fisico.

Se hai bisogno di sovrascrivere il comportamento fisico predefinito, puoi scrivere una funzione di integrazione delle forze personalizzata. Vedi :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`.

\ **Nota:** Cambiare la trasformazione 2D o :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` di un **RigidBody2D** molto spesso può portare ad alcuni comportamenti imprevedibili. Questo accade anche quando un **RigidBody2D** è il discendente di un nodo in continuo movimento, come un altro **RigidBody2D**, poiché ciò causerà l'impostazione della sua trasformazione globale ogni volta che il suo antenato si muove.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Risolvere i problemi di fisica <../tutorials/physics/troubleshooting_physics_issues>`

- `Demo di gioco a piattaforme di fisica 2D <https://godotengine.org/asset-library/asset/2725>`__

- `Demo di istanziazioni <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`                           | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`                 | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_velocity<class_RigidBody2D_property_angular_velocity>`                   | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`can_sleep<class_RigidBody2D_property_can_sleep>`                                 | ``true``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` | :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>`             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`constant_force<class_RigidBody2D_property_constant_force>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`constant_torque<class_RigidBody2D_property_constant_torque>`                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`                     | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CCDMode<enum_RigidBody2D_CCDMode>`                   | :ref:`continuous_cd<class_RigidBody2D_property_continuous_cd>`                         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`                 | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`freeze<class_RigidBody2D_property_freeze>`                                       | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`             | :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`                             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`gravity_scale<class_RigidBody2D_property_gravity_scale>`                         | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`inertia<class_RigidBody2D_property_inertia>`                                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`                             | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`                   | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`                         | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`mass<class_RigidBody2D_property_mass>`                                           | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                      | :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`              | :ref:`physics_material_override<class_RigidBody2D_property_physics_material_override>` |                   |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sleeping<class_RigidBody2D_property_sleeping>`                                   | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_integrate_forces<class_RigidBody2D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual|         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_central_force<class_RigidBody2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                           |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_force<class_RigidBody2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_torque<class_RigidBody2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_force<class_RigidBody2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_impulse<class_RigidBody2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                   |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_force<class_RigidBody2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_impulse<class_RigidBody2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque<class_RigidBody2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque_impulse<class_RigidBody2D_method_apply_torque_impulse>`\ (\ torque\: :ref:`float<class_float>`\ )                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_colliding_bodies<class_RigidBody2D_method_get_colliding_bodies>`\ (\ ) |const|                                                                                      |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_contact_count<class_RigidBody2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody2D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

Emesso quando avviene una collisione con un altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`. Richiede che :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` sia impostato su ``true`` e che :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` sia impostato su un valore alto abbastanza da rilevare tutte le collisioni. Le :ref:`TileMap<class_TileMap>` sono rilevate se il :ref:`TileSet<class_TileSet>` ha contiene collisioni :ref:`Shape2D<class_Shape2D>`.

\ ``body`` è il :ref:`Node<class_Node>`, se esiste nell'albero, dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

Emesso quando termina una collisione con un altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`. Richiede che :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` sia impostato su ``true`` e che :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` sia impostato su un valore alto abbastanza da rilevare tutte le collisioni. Le :ref:`TileMap<class_TileMap>` sono rilevate se il :ref:`TileSet<class_TileSet>` ha contiene collisioni :ref:`Shape2D<class_Shape2D>`.

\ ``body`` è il :ref:`Node<class_Node>`, se esiste nell'albero, dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

Emesso quando uno degli :ref:`Shape2D<class_Shape2D>` di questo RigidBody2D entra in collisione con un altro :ref:`Shape2D<class_Shape2D>` di :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`. Richiede che :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` sia impostato su ``true`` e che :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` sia impostato su un valore alto abbastanza da rilevare tutte le collisioni. I :ref:`TileMap<class_TileMap>` sono rilevati se il :ref:`TileSet<class_TileSet>` contiene collisioni :ref:`Shape2D<class_Shape2D>`.

\ ``body_rid`` è il :ref:`RID<class_RID>` del :ref:`CollisionObject2D<class_CollisionObject2D>` dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileSet<class_TileSet>` utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` è il :ref:`Node<class_Node>`, se presente nell'albero, dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` l'indice dello :ref:`Shape2D<class_Shape2D>` dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>` utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` con ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` è l'indice dello :ref:`Shape2D<class_Shape2D>` di questo RigidBody2D utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` con ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

Emesso quando termina la collisione tra uno degli :ref:`Shape2D<class_Shape2D>` di questo RigidBody2D e un altro :ref:`Shape2D<class_Shape2D>` di :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`. Richiede che :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` sia impostato su ``true`` e che :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` sia impostato su un valore alto abbastanza da rilevare tutte le collisioni. I :ref:`TileMap<class_TileMap>` sono rilevati se il :ref:`TileSet<class_TileSet>` contiene collisioni :ref:`Shape2D<class_Shape2D>`.

\ ``body_rid`` è il :ref:`RID<class_RID>` del :ref:`CollisionObject2D<class_CollisionObject2D>` dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileSet<class_TileSet>` utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` è il :ref:`Node<class_Node>`, se presente nell'albero, dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` l'indice dello :ref:`Shape2D<class_Shape2D>` dell'altro :ref:`PhysicsBody2D<class_PhysicsBody2D>` o :ref:`TileMap<class_TileMap>` utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` con ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` è l'indice dello :ref:`Shape2D<class_Shape2D>` di questo RigidBody2D utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Ottieni il nodo :ref:`CollisionShape2D<class_CollisionShape2D>` con ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

Emesso quando il motore fisico cambia lo stato di riposo del corpo.

\ **Nota:** La modifica del valore :ref:`sleeping<class_RigidBody2D_property_sleeping>` non attiverà questo segnale. Viene emesso solo se lo stato di riposo viene modificato dal motore fisico o se viene utilizzato ``emit_signal("sleeping_state_changed")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

Modalità di congelamento di corpo statico (predefinita). Il corpo non è influenzato dalla gravità e dalle forze. Può essere spostato solo tramite codice utente e non entra in collisione con altri corpi lungo il suo percorso.

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

Modalità di congelamento di corpo cinematico. Simile a :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>`, ma si scontra con altri corpi lungo il suo percorso quando viene spostato. Utile per un corpo congelato che deve essere animato.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

In questa modalità, il centro di massa del corpo viene calcolato automaticamente in base alle sue forme. Ciò presuppone che le origini delle forme siano anche il loro centro di massa.

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

In questa modalità, il centro di massa del corpo è impostato tramite :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`. Il valore predefinito è la posizione di origine del corpo.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

In questa modalità, il valore di smorzamento del corpo è aggiunto a qualsiasi valore impostato nelle aree o al valore predefinito.

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

In questa modalità, il valore di smorzamento del corpo sostituisce qualsiasi valore impostato nelle aree o il valore predefinito.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

Rilevamento continuo delle collisioni disabilitato. Questo è il modo più rapido per rilevare le collisioni tra corpi, ma potrebbe non rilevare oggetti piccoli e in rapido movimento.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

Rilevamento continuo delle collisioni abilitato tramite proiezione di raggi. È più veloce della proiezione di forme ma meno preciso.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

Rilevamento continuo delle collisioni abilitato tramite proiezione di forme. Questo è il metodo di rilevamento più lento e il più preciso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Smorza la rotazione del corpo. Come predefinito, il corpo utilizzerà impostazione del progetto :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`, o un valore sostitutivo impostato da un':ref:`Area2D<class_Area2D>` in cui si trova il corpo. A seconda di :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`, è possibile impostare :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` in modo che sia aggiunto o sostituito al valore di smorzamento del corpo.

Vedi :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

Definisce come :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` è applicato.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

La velocità di rotazione del corpo in *radianti* al secondo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Se ``true``, il corpo può entrare in modalità di riposo quando non c'è movimento. Vedi :ref:`sleeping<class_RigidBody2D_property_sleeping>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Il centro di massa personalizzato del corpo, relativo alla posizione di origine del corpo, quando :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` è impostato su :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. Questo è il punto di equilibrio del corpo, dove le forze applicate provocano solo accelerazione lineare. Le forze applicate all'esterno del centro di massa provocano accelerazione angolare.

Quando :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` è impostato su :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>` (valore predefinito), il centro di massa è calcolato automaticamente, ma ciò non aggiorna il valore di :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Definisce il modo in cui è impostato il centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

Le forze posizionali costanti totali del corpo applicate durante ogni aggiornamento della fisica.

Vedi :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` e :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

Le forze rotazionali costanti totali del corpo applicate durante ogni aggiornamento della fisica.

Vedi :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

Se ``true``, il RigidBody2D emetterà segnali quando entra in collisione con un altro corpo.

\ **Nota:** Per impostazione predefinita, il numero massimo di contatti riportati è impostato su 0, il che significa che non sarà registrato nulla, vedi :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

La modalità di rilevamento continuo delle collisioni.

Il rilevamento continuo delle collisioni cerca di prevedere dove un corpo in movimento entrerà in collisione, invece di spostarlo e correggerne il movimento in caso di collisione. Il rilevamento continuo delle collisioni è più lento, ma più preciso e manca meno collisioni con oggetti piccoli e in rapido movimento. Sono disponibili i metodi di proiezione di raggi e di forme.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Se ``true``, l'integrazione predefinita delle forze (come gravità o smorzamento) sarà disabilitata per questo corpo. A parte la risposta alla collisione, il corpo si muoverà solo come determinato dal metodo :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, se tale metodo virtuale è sovrascritto.

Impostando questa proprietà sarà chiamato internamente il metodo :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

Se ``true``, il corpo è congelato. La gravità e altre forze non sono più applicate.

Vedi :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` per impostare il comportamento del corpo quando è congelato.

\ **Note:** Per un corpo che è sempre congelato, usa invece :ref:`StaticBody2D<class_StaticBody2D>` o :ref:`AnimatableBody2D<class_AnimatableBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

La modalità di congelamento del corpo. Determina il comportamento del corpo quando :ref:`freeze<class_RigidBody2D_property_freeze>` è ``true``.

\ **Note:** Per un corpo che è sempre congelato, usa invece :ref:`StaticBody2D<class_StaticBody2D>` o :ref:`AnimatableBody2D<class_AnimatableBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Moltiplica la gravità applicata al corpo. La gravità del corpo è calcolata dall'impostazione del progetto :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` e/o da qualsiasi vettore di gravità aggiuntivo applicato dagli :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

Il momento di inerzia del corpo. È come la massa, ma per la rotazione: determina la quantità di coppia necessaria per ruotare il corpo. Il momento di inerzia è solitamente calcolato automaticamente dalla massa e dalle forme, ma questa proprietà consente di impostare un valore personalizzato.

Se impostato su ``0``, l'inerzia viene calcolata automaticamente (valore predefinito).

\ **Nota:** Questo valore non cambia quando l'inerzia viene calcolata automaticamente. Usa il :ref:`PhysicsServer2D<class_PhysicsServer2D>` per ottenere l'inerzia calcolata.


.. tabs::

 .. code-tab:: gdscript

    @onready var ball = $Ball

    func get_ball_inertia():
        return 1.0 / PhysicsServer2D.body_get_direct_state(ball.get_rid()).inverse_inertia

 .. code-tab:: csharp

    private RigidBody2D _ball;

    public override void _Ready()
    {
        _ball = GetNode<RigidBody2D>("Ball");
    }

    private float GetBallInertia()
    {
        return 1.0f / PhysicsServer2D.BodyGetDirectState(_ball.GetRid()).InverseInertia;
    }



.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Smorza il movimento del corpo. Come predefinito, il corpo utilizzerà l'impostazione :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` o qualsiasi valore di sostituzione impostato da un':ref:`Area2D<class_Area2D>` in cui si trova il corpo. A seconda di :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`, è possibile impostare :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` in modo che sia aggiunto o sostituito al valore di smorzamento del corpo.

Consulta :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` per ulteriori dettagli sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

Definisce come :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` è applicato.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

La velocità lineare del corpo in pixel al secondo. Può essere usata sporadicamente, ma **non impostarla per ogni frame**, perché la fisica potrebbe essere eseguita in un altro thread e funzionare a una granularità diversa. Usa :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` come ciclo di processo per un controllo preciso dello stato del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

Se ``true``, il corpo non può ruotare. La gravità e le forze applicano solo un movimento lineare.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

La massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

Il numero massimo di contatti che saranno registrati. Richiede un valore maggiore di 0 e :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` impostato su ``true`` per iniziare a registrare i contatti. Usa :ref:`get_contact_count()<class_RigidBody2D_method_get_contact_count>` per recuperare il conteggio o :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` per recuperare i corpi con cui si è verificata una collisione.

\ **Nota:** Il numero di contatti è diverso dal numero di collisioni. Le collisioni tra bordi paralleli risulteranno in due contatti (uno a ciascuna estremità) e le collisioni tra facce parallele risulteranno in quattro contatti (uno a ciascun angolo).

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

La sostituzione del materiale di fisica per il corpo.

Se a questa proprietà è assegnato un materiale, sarà utilizzato al posto di qualsiasi altro materiale di fisica, come ad esempio uno ereditato.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Se ``true``, il corpo non si muoverà e non calcolerà le forze finché non sarà riattivato da un altro corpo, ad esempio tramite una collisione, o utilizzando i metodi :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` o :ref:`apply_force()<class_RigidBody2D_method_apply_force>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

Chiamato durante l'elaborazione di fisica, consente di leggere e modificare in modo sicuro lo stato di simulazione per l'oggetto. Per impostazione predefinita, viene chiamato prima dell'integrazione predefinita delle forze, ma la proprietà :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` consente di disabilitare l'integrazione delle forze predefinita e di eseguire un'integrazione delle forze completamente personalizzata per un corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

Aggiunge una forza direzionale costante senza influenzare la rotazione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_force = Vector2(0, 0)``.

Ciò equivale a usare :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

Aggiunge una forza posizionata costante senza influenzare la rotazione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_force = Vector2(0, 0)``.

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

Aggiunge una forza rotazionale costante senza influenzare la posizione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

Applica una forza direzionale senza influenzare la rotazione. Una forza è dipendente dal tempo e pensata per essere applicata a ogni aggiornamento della fisica

Ciò equivale a usare :ref:`apply_force()<class_RigidBody2D_method_apply_force>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

Applica un impulso direzionale senza influenzare la rotazione.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

Ciò equivale a usare :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

Applica una forza posizionata al corpo. Una forza è dipendente dal tempo e deve essere applicata a ogni aggiornamento della fisica.

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

Applica un impulso posizionato al corpo.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

Applica una forza rotazionale senza influenzare la posizione. Una forza è dipendente dal tempo e deve essere applicata a ogni aggiornamento della fisica.

\ **Nota:** :ref:`inertia<class_RigidBody2D_property_inertia>` è necessaria affinché ciò funzioni. Per avere :ref:`inertia<class_RigidBody2D_property_inertia>`, un :ref:`CollisionShape2D<class_CollisionShape2D>` attivo deve essere un figlio del nodo, oppure puoi impostare manualmente :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

Applica un impulso rotazionale al corpo senza influenzare la posizione.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti una sola volta (altrimenti, usa le funzioni "_force").

\ **Nota:** :ref:`inertia<class_RigidBody2D_property_inertia>` è necessaria affinché ciò funzioni. Per avere :ref:`inertia<class_RigidBody2D_property_inertia>`, un :ref:`CollisionShape2D<class_CollisionShape2D>` attivo deve essere un figlio del nodo, oppure puoi impostare manualmente :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

Restituisce una lista dei corpi in collisione con questo corpo. Richiede che :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` sia impostato su ``true`` e che :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` sia impostato su un valore alto abbastanza da rilevare tutte le collisioni.

\ **Nota:** Il risultato di questo test non è immediato dopo aver spostato gli oggetti. Per le prestazioni, la lista delle collisioni è aggiornata una volta per frame e prima del passaggio di fisica. Si consiglia invece di usare i segnali.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

Restituisce il numero di contatti che questo corpo ha con altri corpi. Per impostazione predefinita, restituisce 0 a meno che i corpi non siano configurati per monitorare i contatti (vedi :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`).

\ **Nota:** Per recuperare i corpi in collisione, usa :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

Imposta la velocità del corpo sull'asse fornito. La velocità nell'asse vettoriale fornito sarà impostata come la lunghezza vettoriale fornita. Ciò è utile per un comportamento di salto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
