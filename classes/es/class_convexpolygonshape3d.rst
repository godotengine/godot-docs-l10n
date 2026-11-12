:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de poliedro convexo 3D utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A 3D convex polyhedron shape, intended for use in physics. Usually used to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **ConvexPolygonShape3D** is *solid*, which means it detects collisions from objects that are fully inside it, unlike :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` which is hollow. This makes it more suitable for both detection and physics.

\ **Convex decomposition:** A concave polyhedron can be split up into several convex polyhedra. This allows dynamic physics bodies to have complex concave collisions (at a performance cost) and can be achieved by using several **ConvexPolygonShape3D** nodes. To generate a convex decomposition from a mesh, select the :ref:`MeshInstance3D<class_MeshInstance3D>` node, go to the **Mesh** menu that appears above the viewport, and choose **Create Multiple Convex Collision Siblings**. Alternatively, :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>` can be called in a script to perform this decomposition at run-time.

\ **Performance:** **ConvexPolygonShape3D** is faster to check collisions against compared to :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, but it is slower than primitive collision shapes such as :ref:`SphereShape3D<class_SphereShape3D>` and :ref:`BoxShape3D<class_BoxShape3D>`. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by primitive shapes.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

La lista de puntos 3D que forman la forma de polígono convexo.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
