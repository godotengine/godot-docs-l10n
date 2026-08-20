:github_url: hide

.. _class_StaticBody3D:

StaticBody3D
============

**Eredita:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimatableBody3D<class_AnimatableBody3D>`

Un corpo fisico 3D che non può essere spostato da forze esterne. Quando viene spostato manualmente, non influenza gli altri corpi sul suo percorso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un corpo fisico statico 3D. Non si può spostare da forze esterne o contatti, ma si può spostare manualmente con altri modi, come codice, gli :ref:`AnimationMixer<class_AnimationMixer>` (con :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` impostato su :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`) e :ref:`RemoteTransform3D<class_RemoteTransform3D>`.

Quando uno :ref:`StaticBody2D<class_StaticBody2D>` viene spostato, è teletrasportato nella sua nuova posizione senza influenzare altri corpi fisici sul suo percorso. Se non è desiderato, usa invece :ref:`AnimatableBody3D<class_AnimatableBody3D>`.

\ **StaticBody3D** è utile per oggetti completamente statici come pavimenti e pareti, nonché per superfici in movimento come nastri trasportatori e piattaforme rotanti circolari (tramite :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>` e :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Risolvere i problemi di fisica <../tutorials/physics/troubleshooting_physics_issues>`

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>` | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>`   | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody3D_property_physics_material_override>` |                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StaticBody3D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_angular_velocity**\ (\ )

La velocità angolare costante del corpo. Questa non fa ruotare il corpo, ma influenza i corpi in contatto, come se stesse ruotando.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_linear_velocity**\ (\ )

La velocità lineare costante del corpo. Questa non muove il corpo, ma influenza i corpi in contatto, come se si stesse muovendo.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody3D_property_physics_material_override>`

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
