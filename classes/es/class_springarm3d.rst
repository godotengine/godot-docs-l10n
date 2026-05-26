:github_url: hide

.. _class_SpringArm3D:

SpringArm3D
===========

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un raycast 3D que mueve dinámicamente a sus hijos cerca del punto de colisión.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SpringArm3D** lanza un rayo o una forma a lo largo de su eje Z y mueve a todos sus hijos directos al punto de colisión, con un margen opcional. Esto es útil para cámaras en tercera persona que se acercan al jugador cuando están en un espacio reducido (es posible que debas excluir el colisionador del jugador de la comprobación de colisión de **SpringArm3D**).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Cámara en tercera persona con brazo de colisión (spring arm) <../tutorials/3d/spring_arm>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_SpringArm3D_property_collision_mask>` | ``1``    |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`margin<class_SpringArm3D_property_margin>`                 | ``0.01`` |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_SpringArm3D_property_shape>`                   |          |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`spring_length<class_SpringArm3D_property_spring_length>`   | ``1.0``  |
   +-------------------------------+------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_excluded_object<class_SpringArm3D_method_add_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ )       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_excluded_objects<class_SpringArm3D_method_clear_excluded_objects>`\ (\ )                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_hit_length<class_SpringArm3D_method_get_hit_length>`\ (\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`remove_excluded_object<class_SpringArm3D_method_remove_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SpringArm3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SpringArm3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The layers against which the collision check will be done. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.01`` :ref:`🔗<class_SpringArm3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Cuando se realiza la comprobación de colisión, se proporciona una longitud candidata para el SpringArm3D.

El margen se resta a esta longitud y la traslación se aplica a los objetos secundarios del SpringArm3D.

Este margen es útil cuando el SpringArm3D tiene una :ref:`Camera3D<class_Camera3D>` como nodo hijo: sin el margen, la :ref:`Camera3D<class_Camera3D>` se colocaría en el punto exacto de la colisión, mientras que con el margen la :ref:`Camera3D<class_Camera3D>` se colocaría cerca del punto de colisión.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_SpringArm3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

La :ref:`Shape3D<class_Shape3D>` que se utilizará para el SpringArm3D.

Cuando se establece la forma, el SpringArm3D lanzará la :ref:`Shape3D<class_Shape3D>` en su eje z en lugar de realizar un rayo.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_spring_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **spring_length** = ``1.0`` :ref:`🔗<class_SpringArm3D_property_spring_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

The maximum extent of the SpringArm3D. This is used as a length for both the ray and the shape cast used internally to calculate the desired position of the SpringArm3D's child nodes.

To know more about how to perform a shape cast or a ray cast, please consult the :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` documentation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SpringArm3D_method_add_excluded_object:

.. rst-class:: classref-method

|void| **add_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_add_excluded_object>`

Añade el objeto :ref:`PhysicsBody3D<class_PhysicsBody3D>` con el :ref:`RID<class_RID>` dado a la lista de objetos :ref:`PhysicsBody3D<class_PhysicsBody3D>` excluidos de la comprobación de colisión.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_clear_excluded_objects:

.. rst-class:: classref-method

|void| **clear_excluded_objects**\ (\ ) :ref:`🔗<class_SpringArm3D_method_clear_excluded_objects>`

Borra la lista de objetos :ref:`PhysicsBody3D<class_PhysicsBody3D>` excluidos de la comprobación de colisión.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_get_hit_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hit_length**\ (\ ) :ref:`🔗<class_SpringArm3D_method_get_hit_length>`

Devuelve la longitud actual del brazo de resorte.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_remove_excluded_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **remove_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_remove_excluded_object>`

Elimina el :ref:`RID<class_RID>` dado de la lista de objetos :ref:`PhysicsBody3D<class_PhysicsBody3D>` excluidos de la comprobación de colisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
