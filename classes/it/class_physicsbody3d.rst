:github_url: hide

.. _class_PhysicsBody3D:

PhysicsBody3D
=============

**Eredita:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CharacterBody3D<class_CharacterBody3D>`, :ref:`PhysicalBone3D<class_PhysicalBone3D>`, :ref:`RigidBody3D<class_RigidBody3D>`, :ref:`StaticBody3D<class_StaticBody3D>`

Classe base astratta per gli oggetti di gioco 3D influenzati dalla fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**PhysicsBody3D** è una classe base astratta per gli oggetti di gioco 3D influenzati dalla fisica. Tutti i corpi fisici 3D ereditano da essa.

\ **Attenzione:** Con una scala non uniforme, questo nodo probabilmente non si comporterà come previsto. Si consiglia di mantenere la sua scala uguale su tutti gli assi e di regolare invece le sue forme di collisione.

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

   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_x<class_PhysicsBody3D_property_axis_lock_angular_x>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_y<class_PhysicsBody3D_property_axis_lock_angular_y>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_z<class_PhysicsBody3D_property_axis_lock_angular_z>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_x<class_PhysicsBody3D_property_axis_lock_linear_x>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_y<class_PhysicsBody3D_property_axis_lock_linear_y>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_z<class_PhysicsBody3D_property_axis_lock_linear_z>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_axis_lock<class_PhysicsBody3D_method_get_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                                                                           |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_gravity<class_PhysicsBody3D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>`                | :ref:`move_and_collide<class_PhysicsBody3D_method_move_and_collide>`\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ )                                                                |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_axis_lock<class_PhysicsBody3D_method_set_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                          |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody3D_method_test_move>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicsBody3D_property_axis_lock_angular_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca la rotazione del corpo lungo l'asse X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca la rotazione del corpo lungo l'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca la rotazione del corpo lungo l'asse Z.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca il movimento lineare del corpo lungo l'asse X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca il movimento lineare del corpo lungo l'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Blocca il movimento lineare del corpo lungo l'asse Z.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_add_collision_exception_with>`

Aggiunge un corpo alla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_axis_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_axis_lock>`

Restituisce ``true`` se l'asse lineare o rotazionale ``axis`` è bloccata.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody3D_method_get_collision_exceptions>`

Restituisce un array di nodi aggiunti come eccezioni di collisione per questo corpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_gravity>`

Restituisce il vettore di gravità calcolato da tutte le fonti che possono influenzare il corpo, inclusi tutte le sostituzioni di gravità dai nodi :ref:`Area3D<class_Area3D>` e la gravità del mondo globale.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **move_and_collide**\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_move_and_collide>`

Sposta il corpo lungo il vettore ``motion``. Per essere indipendente dal frame rate in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` deve essere calcolato usando ``delta``.

Restituisce un :ref:`KinematicCollision3D<class_KinematicCollision3D>`, che contiene informazioni sulla collisione quando si ferma o quando si scontra con un altro corpo lungo il movimento.

Se ``test_only`` è ``true``, il corpo non si muove ma sono restituite le informazioni sulla potenziale collisione.

\ ``safe_margin`` è il margine aggiuntivo usato per il recupero della collisione (vedi :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` per maggiori dettagli).

Se ``recovery_as_collision`` è ``true``, qualsiasi penetrazione dalla fase di recupero è segnalata come collisione; questo è utilizzato ad esempio da :ref:`CharacterBody3D<class_CharacterBody3D>` per rilevare meglio il pavimento durante l'aggancio sul pavimento.

\ ``max_collisions`` consente di recuperare più di un risultato di collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_remove_collision_exception_with>`

Rimuove un corpo dalla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_set_axis_lock:

.. rst-class:: classref-method

|void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PhysicsBody3D_method_set_axis_lock>`

Blocca o sblocca l'asse lineare o rotazionale specificato da ``axis`` a seconda del valore di ``lock``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_test_move>`

Verifica le collisioni senza muovere il corpo. Per essere indipendente dal frame rate in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` deve essere calcolato usando ``delta``.

Imposta virtualmente la posizione, la scala e la rotazione del nodo su quelle del :ref:`Transform3D<class_Transform3D>` fornito, quindi prova a muovere il corpo lungo il vettore ``motion``. Restituisce ``true`` se una collisione impedirebbe al corpo di muoversi lungo l'intero percorso.

\ ``collision`` è un oggetto facoltativo di tipo :ref:`KinematicCollision3D<class_KinematicCollision3D>`, che contiene ulteriori informazioni sulla collisione quando si ferma o quando si scontra con un altro corpo lungo il movimento.

\ ``safe_margin`` è il margine aggiuntivo usato per il recupero della collisione (vedi :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` per maggiori dettagli).

Se ``recovery_as_collision`` è ``true``, anche qualsiasi penetrazione dalla fase di recupero è segnalata come collisione; ciò è utile per verificare se il corpo *si scontrerebbe con* altri corpi.

\ ``max_collisions`` consente di recuperare più di un risultato di collisione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
