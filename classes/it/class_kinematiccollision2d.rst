:github_url: hide

.. _class_KinematicCollision2D:

KinematicCollision2D
====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene i dati di collisione provenienti dal movimento di un :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Contiene i dati di collisione provenienti dal movimento di un :ref:`PhysicsBody2D<class_PhysicsBody2D>`, solitamente da :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`. Quando un :ref:`PhysicsBody2D<class_PhysicsBody2D>` viene spostato, si ferma se rileva una collisione con un altro corpo. Se è rilevata una collisione, è restituito un oggetto **KinematicCollision2D**.

I dati di collisione includono l'oggetto in collisione, il movimento rimanente e la posizione di collisione. Questi dati possono essere utilizzati per definire una reazione personalizzata alla collisione.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_angle<class_KinematicCollision2D_method_get_angle>`\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_KinematicCollision2D_method_get_collider>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_KinematicCollision2D_method_get_collider_id>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_KinematicCollision2D_method_get_collider_rid>`\ (\ ) |const|                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider_shape<class_KinematicCollision2D_method_get_collider_shape>`\ (\ ) |const|                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape_index<class_KinematicCollision2D_method_get_collider_shape_index>`\ (\ ) |const|                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_KinematicCollision2D_method_get_collider_velocity>`\ (\ ) |const|                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_depth<class_KinematicCollision2D_method_get_depth>`\ (\ ) |const|                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_local_shape<class_KinematicCollision2D_method_get_local_shape>`\ (\ ) |const|                                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_normal<class_KinematicCollision2D_method_get_normal>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_position<class_KinematicCollision2D_method_get_position>`\ (\ ) |const|                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_KinematicCollision2D_method_get_remainder>`\ (\ ) |const|                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_KinematicCollision2D_method_get_travel>`\ (\ ) |const|                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_KinematicCollision2D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_angle>`

Restituisce l'angolo di collisione in base a ``up_direction``, che è :ref:`Vector2.UP<class_Vector2_constant_UP>` per impostazione predefinita. Questo valore è sempre positivo.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider>`

Restituisce l':ref:`Object<class_Object>` associato al corpo in collisione.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_id>`

Restituisce l'ID univoco di istanza dell':ref:`Object<class_Object>` associato al corpo in collisione. Vedi :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_rid>`

Restituisce il :ref:`RID<class_RID>` del corpo in collisione utilizzato dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape>`

Restituisce la forma del corpo in collisione.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape_index>`

Restituisce l'indice della forma del corpo in collisione. Vedi :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_velocity>`

Restituisce la velocità del corpo in collisione.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_depth>`

Restituisce la lunghezza della sovrapposizione del corpo in collisione lungo la normale di collisione.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_local_shape>`

Restituisce la forma di collisione dell'oggetto in movimento.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_normal**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_normal>`

Restituisce la normale alla forma del corpo in collisione nel punto di collisione.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_position>`

Restituisce il punto di collisione in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_remainder>`

Restituisce il vettore di movimento rimanente dell'oggetto in movimento.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_travel>`

Restituisce lo spostamento effettuato dall'oggetto in movimento prima della collisione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
