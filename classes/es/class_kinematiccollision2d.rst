:github_url: hide

.. _class_KinematicCollision2D:

KinematicCollision2D
====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene datos de colisión del movimiento de un :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contiene los datos de colisión del movimiento de un :ref:`PhysicsBody2D<class_PhysicsBody2D>`, normalmente de :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`. Cuando se mueve un :ref:`PhysicsBody2D<class_PhysicsBody2D>`, se detiene si detecta una colisión con otro cuerpo. Si se detecta una colisión, se devuelve un objeto **KinematicCollision2D**.

Los datos de colisión incluyen el objeto que colisiona, el movimiento restante y la posición de la colisión. Estos datos pueden utilizarse para determinar una respuesta personalizada a la colisión.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_KinematicCollision2D_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_angle>`

Devuelve el ángulo de colisión según ``up_direction``, que es :ref:`Vector2.UP<class_Vector2_constant_UP>` de forma predeterminada. Este valor es siempre positivo.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider>`

Devuelve el :ref:`Object<class_Object>` adjunto al cuerpo en colisión.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_id>`

Devuelve el ID de instancia único del :ref:`Object<class_Object>` adjunto al cuerpo que colisiona. Véase :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_rid>`

Devuelve el :ref:`RID<class_RID>` del cuerpo en colisión utilizado por :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape>`

Devuelve la forma del cuerpo en colisión.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape_index**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_shape_index>`

Devuelve el índice de la forma del cuerpo que colisiona. Véase :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_collider_velocity>`

Devuelve la velocidad del cuerpo que colisiona.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_depth**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_depth>`

Devuelve la longitud de superposición del cuerpo que colisiona a lo largo de la normal de colisión.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_local_shape:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_local_shape**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_local_shape>`

Devuelve la forma de colisión del objeto en movimiento.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_normal**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_normal>`

Devuelve la normal de la forma del cuerpo que colisiona en el punto de colisión.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_position>`

Devuelve el punto de colisión en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_remainder>`

Devuelve el vector de movimiento restante del objeto en movimiento.

.. rst-class:: classref-item-separator

----

.. _class_KinematicCollision2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_KinematicCollision2D_method_get_travel>`

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
