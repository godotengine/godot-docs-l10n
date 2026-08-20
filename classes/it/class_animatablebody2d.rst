:github_url: hide

.. _class_AnimatableBody2D:

AnimatableBody2D
================

**Eredita:** :ref:`StaticBody2D<class_StaticBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corpo fisico 2D che non può essere spostato da forze esterne. Quando viene spostato manualmente, influisce altri corpi nel suo percorso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un corpo fisico 2D animabile. Non si può spostare da forze esterne o contatti, ma si può spostare manualmente con altri modi, come codice, gli :ref:`AnimationMixer<class_AnimationMixer>` (con :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` impostato su :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`), e :ref:`RemoteTransform2D<class_RemoteTransform2D>`.

Quando un **AnimatableBody2D** viene spostato, la sua velocità lineare e angolare viene estimata e usata per influenzare altri corpi fisici nel suo percorso. Questo lo rende utile per piattaforme mobili, porte e altri oggetti in movimento.

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

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`sync_to_physics<class_AnimatableBody2D_property_sync_to_physics>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimatableBody2D_property_sync_to_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync_to_physics** = ``true`` :ref:`🔗<class_AnimatableBody2D_property_sync_to_physics>`

.. rst-class:: classref-property-setget

- |void| **set_sync_to_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sync_to_physics_enabled**\ (\ )

Se ``true``, il movimento del corpo sarà sincronizzato al frame di fisica. Questo è utile per animare il movimento tramite un :ref:`AnimationPlayer<class_AnimationPlayer>`, per esempio su piattaforme mobili. **Non** utilizzare insieme a :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
