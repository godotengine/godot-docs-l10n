:github_url: hide

.. _class_PhysicsTestMotionResult3D:

PhysicsTestMotionResult3D
=========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describe el movimiento y el resultado de la colisión de :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Describes the motion and collision result from :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult3D_method_get_collider>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult3D_method_get_collider_id>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult3D_method_get_collider_rid>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult3D_method_get_collider_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_PhysicsTestMotionResult3D_method_get_collision_count>`\ (\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult3D_method_get_collision_depth>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult3D_method_get_collision_normal>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_PhysicsTestMotionResult3D_method_get_collision_point>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_remainder<class_PhysicsTestMotionResult3D_method_get_remainder>`\ (\ ) |const|                                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_travel<class_PhysicsTestMotionResult3D_method_get_travel>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsTestMotionResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider>`

Devuelve el :ref:`Object<class_Object>` adjunto del cuerpo que colisiona dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_id>`

Devuelve el ID de instancia único del :ref:`Object<class_Object>` adjunto del cuerpo que colisiona dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión. Véase :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_rid>`

Devuelve el :ref:`RID<class_RID>` del cuerpo que colisiona usado por el :ref:`PhysicsServer3D<class_PhysicsServer3D>` dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_shape>`

Devuelve el índice de la forma del cuerpo que colisiona dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión. Véase :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`

Devuelve la velocidad del cuerpo que colisiona dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_count>`

Devuelve el número de colisiones detectadas.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_depth>`

Devuelve la longitud de la superposición a lo largo de la normal de colisión dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`

Devuelve la forma de colisión del objeto en movimiento dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_normal>`

Devuelve la normal de la forma del cuerpo que colisiona en el punto de colisión dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_point>`

Devuelve el punto de colisión en coordenadas globales dado un índice de colisión (la colisión más profunda por defecto), si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`

Devuelve la fracción máxima del movimiento que puede ocurrir sin una colisión, entre ``0`` y ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`

Devuelve la fracción mínima del movimiento necesaria para colisionar, si se produjo una colisión, entre ``0`` y ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_remainder>`

Devuelve el vector de movimiento restante del objeto en movimiento.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_travel>`

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
