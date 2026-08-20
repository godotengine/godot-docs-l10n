:github_url: hide

.. _class_PhysicsBody2D:

PhysicsBody2D
=============

**Eredita:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CharacterBody2D<class_CharacterBody2D>`, :ref:`RigidBody2D<class_RigidBody2D>`, :ref:`StaticBody2D<class_StaticBody2D>`

Classe base astratta per gli oggetti di gioco 2D influenzati dalla fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**PhysicsBody2D** è una classe base astratta per gli oggetti di gioco 2D influenzati dalla fisica. Tutti i corpi fisici 2D ereditano da essa.

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

   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | input_pickable | ``false`` (overrides :ref:`CollisionObject2D<class_CollisionObject2D_property_input_pickable>`) |
   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody2D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                      |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody2D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`get_gravity<class_PhysicsBody2D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>`                | :ref:`move_and_collide<class_PhysicsBody2D_method_move_and_collide>`\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ )                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody2D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody2D_method_test_move>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsBody2D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_add_collision_exception_with>`

Aggiunge un corpo alla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody2D_method_get_collision_exceptions>`

Restituisce un array di nodi aggiunti come eccezioni di collisione per questo corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody2D_method_get_gravity>`

Restituisce il vettore di gravità calcolato da tutte le fonti che possono influenzare il corpo, inclusi tutte le sostituzioni di gravità dai nodi :ref:`Area2D<class_Area2D>` e la gravità del mondo globale.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **move_and_collide**\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_move_and_collide>`

Sposta il corpo lungo il vettore ``motion``. Per essere indipendente dal frame rate in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` deve essere calcolato usando ``delta``.

Restituisce un :ref:`KinematicCollision2D<class_KinematicCollision2D>`, che contiene informazioni sulla collisione quando si ferma o quando si scontra con un altro corpo lungo il movimento.

Se ``test_only`` è ``true``, il corpo non si muove ma sono restituite le informazioni sulla potenziale collisione.

\ ``safe_margin`` è il margine aggiuntivo usato per il recupero della collisione (vedi :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` per maggiori dettagli).

Se ``recovery_as_collision`` è ``true``, qualsiasi penetrazione dalla fase di recupero è segnalata come collisione; questo è utilizzato ad esempio da :ref:`CharacterBody2D<class_CharacterBody2D>` per rilevare meglio il pavimento durante l'aggancio sul pavimento.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_remove_collision_exception_with>`

Rimuove un corpo dalla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_test_move>`

Verifica le collisioni senza muovere il corpo. Per essere indipendente dal frame rate in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` deve essere calcolato usando ``delta``.

Imposta virtualmente la posizione, la scala e la rotazione del nodo su quelle del :ref:`Transform2D<class_Transform2D>` fornito, quindi prova a muovere il corpo lungo il vettore ``motion``. Restituisce ``true`` se una collisione impedirebbe al corpo di muoversi lungo l'intero percorso.

\ ``collision`` è un oggetto facoltativo di tipo :ref:`KinematicCollision2D<class_KinematicCollision2D>`, che contiene ulteriori informazioni sulla collisione quando si ferma o quando si scontra con un altro corpo lungo il movimento.

\ ``safe_margin`` è il margine aggiuntivo usato per il recupero della collisione (vedi :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` per maggiori dettagli).

Se ``recovery_as_collision`` è ``true``, anche qualsiasi penetrazione dalla fase di recupero è segnalata come collisione; ciò è utile per verificare se il corpo *si scontrerebbe con* altri corpi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
