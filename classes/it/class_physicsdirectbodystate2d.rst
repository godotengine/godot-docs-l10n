:github_url: hide

.. _class_PhysicsDirectBodyState2D:

PhysicsDirectBodyState2D
========================

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`PhysicsDirectBodyState2DExtension<class_PhysicsDirectBodyState2DExtension>`

Fornisce accesso diretto a un corpo fisico nel :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Fornisce accesso diretto a un corpo fisico nel :ref:`PhysicsServer2D<class_PhysicsServer2D>`, consentendo modifiche sicure alle proprietà fisiche. Questo oggetto è passato tramite il callback di stato diretto di :ref:`RigidBody2D<class_RigidBody2D>` ed è progettato per modificare lo stato diretto di quel corpo. Vedi :ref:`RigidBody2D._integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Proiettare raggi <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>`         |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`center_of_mass<class_PhysicsDirectBodyState2D_property_center_of_mass>`             |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`center_of_mass_local<class_PhysicsDirectBodyState2D_property_center_of_mass_local>` |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_layer<class_PhysicsDirectBodyState2D_property_collision_layer>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_mask<class_PhysicsDirectBodyState2D_property_collision_mask>`             |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_mass<class_PhysicsDirectBodyState2D_property_inverse_mass>`                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`sleeping<class_PhysicsDirectBodyState2D_property_sleeping>`                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`step<class_PhysicsDirectBodyState2D_property_step>`                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_angular_damp<class_PhysicsDirectBodyState2D_property_total_angular_damp>`     |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`total_gravity<class_PhysicsDirectBodyState2D_property_total_gravity>`               |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_linear_damp<class_PhysicsDirectBodyState2D_property_total_linear_damp>`       |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_PhysicsDirectBodyState2D_property_transform>`                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_central_force<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_force<class_PhysicsDirectBodyState2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_torque<class_PhysicsDirectBodyState2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_force<class_PhysicsDirectBodyState2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_impulse<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ )                                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_force<class_PhysicsDirectBodyState2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_impulse<class_PhysicsDirectBodyState2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque<class_PhysicsDirectBodyState2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque_impulse<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`float<class_float>`\ )                                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_constant_force<class_PhysicsDirectBodyState2D_method_get_constant_force>`\ (\ ) |const|                                                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_constant_torque<class_PhysicsDirectBodyState2D_method_get_constant_torque>`\ (\ ) |const|                                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`get_contact_collider<class_PhysicsDirectBodyState2D_method_get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_id<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`get_contact_collider_object<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_collider_position<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_shape<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_count<class_PhysicsDirectBodyState2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_impulse<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_normal<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_position<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_local_shape<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_velocity_at_position<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`get_space_state<class_PhysicsDirectBodyState2D_method_get_space_state>`\ (\ )                                                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_velocity_at_local_position<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`integrate_forces<class_PhysicsDirectBodyState2D_method_integrate_forces>`\ (\ )                                                                                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_force<class_PhysicsDirectBodyState2D_method_set_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_torque<class_PhysicsDirectBodyState2D_method_set_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicsDirectBodyState2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

La velocità di rotazione del corpo in *radianti* al secondo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

La posizione del centro di massa del corpo rispetto al centro del corpo nel sistema di coordinate globale.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass_local**\ (\ )

Posizione del centro di massa del corpo nel sistema di coordinate locale del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Lo strato di collisione del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La maschera di collisione del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_inertia**\ (\ )

L'inverso dell'inerzia del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

L'inverso della massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

La velocità lineare del corpo in pixel al secondo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Se ``true``, questo corpo è attualmente in riposo (non attivo).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState2D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

Il passo temporale (delta) utilizzato per la simulazione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

La frequenza alla quale il corpo smette di ruotare, se non ci sono altre forze che lo muovono.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_total_gravity**\ (\ )

Il vettore di gravità totale attualmente applicato a questo corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

La frequenza con cui il corpo smette di muoversi, se non ci sono altre forze che lo muovono.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La matrice di trasformazione del corpo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsDirectBodyState2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`

Aggiunge una forza direzionale costante senza influenzare la rotazione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_force = Vector2(0, 0)``.

Ciò equivale a usare :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_force>`

Aggiunge una forza posizionata costante senza influenzare la rotazione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_force = Vector2(0, 0)``.

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_torque>`

Aggiunge una forza rotazionale costante senza influenzare la posizione che continua a essere applicata nel tempo finché non viene cancellata con ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_force>`

Applica una forza direzionale senza influenzare la rotazione. Una forza è dipendente dal tempo e pensata per essere applicata a ogni aggiornamento della fisica

Ciò equivale a usare :ref:`apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`

Applica un impulso direzionale senza influenzare la rotazione.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

Ciò equivale a usare :ref:`apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>` al centro di massa del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_force>`

Applica una forza posizionata al corpo. Una forza è dipendente dal tempo e deve essere applicata a ogni aggiornamento della fisica.

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_impulse>`

Applica un impulso posizionato al corpo.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

\ ``position`` è lo scostamento dall'origine del corpo in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque>`

Applica una forza rotazionale senza influenzare la posizione. Una forza è dipendente dal tempo e deve essere applicata a ogni aggiornamento della fisica.

\ **Nota:** :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` è necessario affinché questo funzioni. Per avere :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, un :ref:`CollisionShape2D<class_CollisionShape2D>` attivo deve essere un figlio del nodo, oppure è possibile impostare manualmente :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`

Applica un impulso rotazionale al corpo senza influenzare la posizione.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

\ **Nota:** :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` è necessario affinché questo funzioni. Per avere :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, un :ref:`CollisionShape2D<class_CollisionShape2D>` attivo deve essere un figlio del nodo, oppure è possibile impostare manualmente :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_force>`

Restituisce le forze posizionali costanti totali del corpo applicate durante ogni aggiornamento della fisica.

Vedi :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` e :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_torque>`

Restituisce le forze rotazionali costanti totali del corpo applicate durante ogni aggiornamento della fisica.

Vedi :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider>`

Restituisce il :ref:`RID<class_RID>` del collisore.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`

Restituisce l'ID dell'oggetto del collisore.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`

Restituisce l'oggetto del collisore. Ciò dipende da come è stato creato (restituirà un nodo di scena se è stato utilizzato per crearlo).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`

Restituisce la posizione del punto di contatto sul collisore nel sistema di coordinate globale.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`

Restituisce l'indice di forma del collisore.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`

Restituisce il vettore di velocità al punto di contatto del collisore.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_count>`

Restituisce il numero di contatti che questo corpo ha con altri corpi.

\ **Nota:** Per impostazione predefinita, restituisce 0 a meno che i corpi non siano configurati per monitorare i contatti. Vedi :ref:`RigidBody2D.contact_monitor<class_RigidBody2D_property_contact_monitor>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`

Restituisce l'impulso creato dal contatto.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`

Restituisce la normale locale nel punto di contatto.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`

Restituisce la posizione del punto di contatto sul corpo nel sistema di coordinate globale.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`

Restituisce l'indice di forma locale della collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`

Restituisce il vettore di velocità al punto di contatto del corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_space_state>`

Restituisce lo stato attuale dello spazio, utile per le interrogazioni.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`

Returns the body's velocity at the given relative position.

\ ``local_position`` is the offset from the body origin in global coordinates.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_integrate_forces>`

Aggiorna la velocità lineare e angolare del corpo applicando gravità e smorzamento per l'equivalente di un tick di fisica.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_force>`

Imposta le forze posizionali costanti totali del corpo applicate durante ogni aggiornamento di fisica.

Vedi :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` e :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_torque>`

Imposta le forze rotazionali costanti totali del corpo applicate durante ogni aggiornamento di fisica.

Vedi :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
