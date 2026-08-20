:github_url: hide

.. _class_StaticBody2D:

StaticBody2D
============

**Eredita:** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimatableBody2D<class_AnimatableBody2D>`

Un corpo fisico 2D che non può essere spostato da forze esterne. Quando viene spostato manualmente, non influenza gli altri corpi sul suo percorso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un corpo fisico statico 2D. Non si può spostare da forze esterne o contatti, ma si può spostare manualmente con altri modi, come codice, gli :ref:`AnimationMixer<class_AnimationMixer>` (con :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` impostato su :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`) e :ref:`RemoteTransform2D<class_RemoteTransform2D>`.

Quando uno **StaticBody2D** viene spostato, è teletrasportato nella sua nuova posizione senza influenzare altri corpi fisici sul suo percorso. Se non è desiderato, usa invece :ref:`AnimatableBody2D<class_AnimatableBody2D>`.

\ **StaticBody2D** è utile per oggetti completamente statici come pavimenti e pareti, nonché per superfici in movimento come nastri trasportatori e piattaforme rotanti circolari (tramite :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>` e :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Risolvere i problemi di fisica <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                     | :ref:`constant_angular_velocity<class_StaticBody2D_property_constant_angular_velocity>` | ``0.0``           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                 | :ref:`constant_linear_velocity<class_StaticBody2D_property_constant_linear_velocity>`   | ``Vector2(0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody2D_property_physics_material_override>` |                   |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StaticBody2D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_angular_velocity** = ``0.0`` :ref:`🔗<class_StaticBody2D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_angular_velocity**\ (\ )

La velocità angolare costante del corpo. Questa non fa ruotare il corpo, ma influenza i corpi in contatto, come se stesse ruotando.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_StaticBody2D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ )

La velocità lineare costante del corpo. Questa non muove il corpo, ma influenza i corpi in contatto, come se si stesse muovendo.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

La sostituzione del materiale di fisica per il corpo.

Se a questa proprietà è assegnato un materiale, sarà utilizzato al posto di qualsiasi altro materiale di fisica, come ad esempio uno ereditato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
