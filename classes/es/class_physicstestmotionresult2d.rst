:github_url: hide

.. _class_PhysicsTestMotionResult2D:

PhysicsTestMotionResult2D
=========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describe el movimiento y el resultado de la colisión de :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Describe el movimiento y el resultado de la colisión de :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult2D_method_get_collider>`\ (\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult2D_method_get_collider_id>`\ (\ ) |const|                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult2D_method_get_collider_rid>`\ (\ ) |const|                           |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult2D_method_get_collider_shape>`\ (\ ) |const|                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`\ (\ ) |const|                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult2D_method_get_collision_depth>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`\ (\ ) |const|         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult2D_method_get_collision_normal>`\ (\ ) |const|                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_PhysicsTestMotionResult2D_method_get_collision_point>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`\ (\ ) |const|     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`\ (\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_PhysicsTestMotionResult2D_method_get_remainder>`\ (\ ) |const|                                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_PhysicsTestMotionResult2D_method_get_travel>`\ (\ ) |const|                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsTestMotionResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider>`

Devuelve el :ref:`Object<class_Object>` adjunto al cuerpo que colisiona, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_id>`

Devuelve el ID de instancia único del :ref:`Object<class_Object>` adjunto del cuerpo colisionante, si ocurrió una colisión. Véase :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_rid>`

Devuelve el :ref:`RID<class_RID>` del cuerpo que colisiona usado por :ref:`PhysicsServer2D<class_PhysicsServer2D>`, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_shape>`

Devuelve el índice de la forma del cuerpo que colisiona, si se produjo una colisión. Véase :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`

Devuelve la velocidad del cuerpo que colisiona, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_depth>`

Devuelve la longitud de la superposición a lo largo de la normal de colisión, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`

Devuelve la forma de colisión del objeto en movimiento, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_normal>`

Devuelve la normal de la forma del cuerpo que colisiona en el punto de colisión, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_point>`

Devuelve el punto de colisión en coordenadas globales, si se produjo una colisión.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`

Devuelve la fracción máxima del movimiento que puede ocurrir sin una colisión, entre ``0`` y ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`

Devuelve la fracción mínima del movimiento necesaria para colisionar, si se produjo una colisión, entre ``0`` y ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_remainder>`

Devuelve el vector de movimiento restante del objeto en movimiento.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_travel>`

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
