:github_url: hide

.. _class_PhysicsBody2D:

PhysicsBody2D
=============

**Hereda:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CharacterBody2D<class_CharacterBody2D>`, :ref:`RigidBody2D<class_RigidBody2D>`, :ref:`StaticBody2D<class_StaticBody2D>`

Clase base abstracta para objetos de juego 2D afectados por la física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PhysicsBody2D** es una clase base abstracta para objetos de juego 2D afectados por la física. Todos los cuerpos físicos 2D heredan de ella.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Solución de problemas de física <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | input_pickable | ``false`` (overrides :ref:`CollisionObject2D<class_CollisionObject2D_property_input_pickable>`) |
   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsBody2D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_add_collision_exception_with>`

Añade un cuerpo a la lista de cuerpos con los que este cuerpo no puede colisionar.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody2D_method_get_collision_exceptions>`

Devuelve un conjunto de nodos que se añadieron como excepciones de colisión para este cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody2D_method_get_gravity>`

Devuelve el vector de gravedad calculado a partir de todas las fuentes que pueden afectar al cuerpo, incluyendo todas las anulaciones de gravedad de los nodos :ref:`Area2D<class_Area2D>` y la gravedad global del mundo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **move_and_collide**\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_move_and_collide>`

Mueve el cuerpo a lo largo del vector ``motion``. Para ser independiente de la velocidad de fotogramas en :ref:`Node._physics_process()<class_Node_private_method__physics_process>` o :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` debe calcularse usando ``delta``.

Devuelve un :ref:`KinematicCollision2D<class_KinematicCollision2D>`, que contiene información sobre la colisión cuando se detiene, o cuando toca otro cuerpo a lo largo del movimiento.

Si ``test_only`` es ``true``, el cuerpo no se mueve, pero se proporciona la información de la posible colisión.

\ ``safe_margin`` es el margen extra utilizado para la recuperación de colisiones (véase :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` para más detalles).

Si ``recovery_as_collision`` es ``true``, cualquier despenetración de la fase de recuperación también se informa como una colisión; esto es utilizado, por ejemplo, por :ref:`CharacterBody2D<class_CharacterBody2D>` para mejorar la detección de suelo durante el 'floor snapping'.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_remove_collision_exception_with>`

Quita un cuerpo de la lista de cuerpos con los que este cuerpo no puede colisionar.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_test_move>`

Checks for collisions without moving the body. In order to be frame rate independent in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` or :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` should be computed using ``delta``.

Virtually sets the node's position, scale and rotation to that of the given :ref:`Transform2D<class_Transform2D>`, then tries to move the body along the vector ``motion``. Returns ``true`` if a collision would stop the body from moving along the whole path.

\ ``collision`` is an optional object of type :ref:`KinematicCollision2D<class_KinematicCollision2D>`, which contains additional information about the collision when stopped, or when touching another body along the motion.

\ ``safe_margin`` is the extra margin used for collision recovery (see :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` for more details).

If ``recovery_as_collision`` is ``true``, any depenetration from the recovery phase is also reported as a collision; this is useful for checking whether the body would *touch* any other bodies.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
