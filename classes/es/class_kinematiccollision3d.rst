:github_url: hide

.. _class_KinematicCollision3D:

KinematicCollision3D
====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene datos de colisión del movimiento de un :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contiene los datos de colisión del movimiento de un :ref:`PhysicsBody3D<class_PhysicsBody3D>`, normalmente de :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`. Cuando un :ref:`PhysicsBody3D<class_PhysicsBody3D>` es movido, se detiene si detecta una colisión con otro cuerpo. Si se detecta una colisión, se devuelve un objeto **KinematicCollision3D**.

Los datos de colisión incluyen el objeto colisionador, el movimiento restante y la posición de la colisión. Estos datos pueden usarse para determinar una respuesta personalizada a la colisión.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_angle<class_KinematicCollision3D_method_get_angle>`\ (\ collision_index\: :ref:`int<class_int>` = 0, up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_KinematicCollision3D_method_get_collider>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_KinematicCollision3D_method_get_collider_id>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_KinematicCollision3D_method_get_collider_rid>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                    |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider_shape<class_KinematicCollision3D_method_get_collider_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape_index<class_KinematicCollision3D_method_get_collider_shape_index>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                    |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collider_velocity<class_KinematicCollision3D_method_get_collider_velocity>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                          |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_KinematicCollision3D_method_get_collision_count>`\ (\ ) |const|                                                                                           |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_depth<class_KinematicCollision3D_method_get_depth>`\ (\ ) |const|                                                                                                               |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_local_shape<class_KinematicCollision3D_method_get_local_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_normal<class_KinematicCollision3D_method_get_normal>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_position<class_KinematicCollision3D_method_get_position>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_remainder<class_KinematicCollision3D_method_get_remainder>`\ (\ ) |const|                                                                                                       |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_travel<class_KinematicCollision3D_method_get_travel>`\ (\ ) |const|                                                                                                             |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_KinematicCollision3D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ collision_index\: :ref:`int<class_int>` = 0, up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_angle>`

Devuelve el ángulo de colisión según ``up_direction``, que es :ref:`Vector3.UP<class_Vector3_constant_UP>` de forma predeterminada. Este valor es siempre positivo.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider>`

Devuelve el :ref:`Object<class_Object>` adjunto al cuerpo que colisiona, dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_id>`

Devuelve el ID de instancia único del :ref:`Object<class_Object>` adjunto al cuerpo que colisiona, dado un índice de colisión (el de la colisión más profunda de forma predeterminada). Véase :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_rid>`

Devuelve el :ref:`RID<class_RID>` del cuerpo que colisiona utilizado por el :ref:`PhysicsServer3D<class_PhysicsServer3D>` dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape>`

Devuelve la forma del cuerpo que colisiona dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_shape_index>`

Devuelve el índice de la forma del cuerpo que colisiona dado un índice de colisión (el de la colisión más profunda de forma predeterminada). Véase :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collider_velocity>`

Devuelve la velocidad del cuerpo que colisiona dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_collision_count>`

Devuelve el número de colisiones detectadas.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_depth>`

Devuelve la longitud de superposición del cuerpo que colisiona a lo largo de la normal de colisión.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_local_shape>`

Devuelve la forma de colisión del objeto en movimiento dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_normal>`

Devuelve la normal de la forma del cuerpo que colisiona en el punto de colisión dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_position>`

Devuelve el punto de colisión en coordenadas globales dado un índice de colisión (el de la colisión más profunda de forma predeterminada).

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_remainder>`

Devuelve el vector de movimiento restante del objeto en movimiento.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision3D_method_get_travel>`

Devuelve la distancia que el objeto en movimiento recorrió antes de la colisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
