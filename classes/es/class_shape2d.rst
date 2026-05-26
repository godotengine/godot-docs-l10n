:github_url: hide

.. _class_Shape2D:

Shape2D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CapsuleShape2D<class_CapsuleShape2D>`, :ref:`CircleShape2D<class_CircleShape2D>`, :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, :ref:`RectangleShape2D<class_RectangleShape2D>`, :ref:`SegmentShape2D<class_SegmentShape2D>`, :ref:`SeparationRayShape2D<class_SeparationRayShape2D>`, :ref:`WorldBoundaryShape2D<class_WorldBoundaryShape2D>`

Clase base abstracta para las formas 2D utilizadas en colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base abstracta para todas las formas 2D, pensada para su uso en física.

\ **Rendimiento:** Las formas primitivas, especialmente :ref:`CircleShape2D<class_CircleShape2D>`, son rápidas para comprobar colisiones. :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` es más lenta, y :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` es la más lenta.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape2D_property_custom_solver_bias>` | ``0.0`` |
   +---------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide<class_Shape2D_method_collide>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_and_get_contacts<class_Shape2D_method_collide_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide_with_motion<class_Shape2D_method_collide_with_motion>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_with_motion_and_get_contacts<class_Shape2D_method_collide_with_motion_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`draw<class_Shape2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ )                                                                                                                                                                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_rect<class_Shape2D_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Shape2D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape2D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to ``0``, the default value from :ref:`ProjectSettings.physics/2d/solver/default_contact_bias<class_ProjectSettings_property_physics/2d/solver/default_contact_bias>` is used.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Shape2D_method_collide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide>`

Devuelve ``true`` si esta forma está colisionando con otra.

Este método necesita la matriz de transformación de esta forma (``local_xform``), la forma para comprobar las colisiones (``with_shape``), y la matriz de transformación de esa forma (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide_and_get_contacts>`

Returns a list of contact point pairs where this shape touches another.

If there are no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of ``with_shape``.

A collision pair A, B can be used to calculate the collision normal with ``(B - A).normalized()``, and the collision depth with ``(B - A).length()``. This information is typically used to separate shapes, particularly in collision solvers.

This method needs the transformation matrix for this shape (``local_xform``), the shape to check collisions with (``with_shape``), and the transformation matrix of that shape (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_with_motion**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion>`

Returns whether this shape would collide with another, if a given movement was applied.

This method needs the transformation matrix for this shape (``local_xform``), the movement to test on this shape (``local_motion``), the shape to check collisions with (``with_shape``), the transformation matrix of that shape (``shape_xform``), and the movement to test onto the other object (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_with_motion_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion_and_get_contacts>`

Returns a list of contact point pairs where this shape would touch another, if a given movement was applied.

If there would be no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of ``with_shape``.

A collision pair A, B can be used to calculate the collision normal with ``(B - A).normalized()``, and the collision depth with ``(B - A).length()``. This information is typically used to separate shapes, particularly in collision solvers.

This method needs the transformation matrix for this shape (``local_xform``), the movement to test on this shape (``local_motion``), the shape to check collisions with (``with_shape``), the transformation matrix of that shape (``shape_xform``), and the movement to test onto the other object (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Shape2D_method_draw>`

Draws a solid shape onto a :ref:`CanvasItem<class_CanvasItem>` with the :ref:`RenderingServer<class_RenderingServer>` API filled with the specified ``color``. The exact drawing method is specific for each shape and cannot be configured.

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Shape2D_method_get_rect>`

Devuelve un :ref:`Rect2<class_Rect2>` que representa el límite de las formas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
