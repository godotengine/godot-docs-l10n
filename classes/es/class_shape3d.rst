:github_url: hide

.. _class_Shape3D:

Shape3D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`BoxShape3D<class_BoxShape3D>`, :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, :ref:`CylinderShape3D<class_CylinderShape3D>`, :ref:`HeightMapShape3D<class_HeightMapShape3D>`, :ref:`SeparationRayShape3D<class_SeparationRayShape3D>`, :ref:`SphereShape3D<class_SphereShape3D>`, :ref:`WorldBoundaryShape3D<class_WorldBoundaryShape3D>`

Abstract base class for 3D shapes used for physics collision.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstract base class for all 3D shapes, intended for use in physics.

\ **Performance:** Primitive shapes, especially :ref:`SphereShape3D<class_SphereShape3D>`, are fast to check collisions against. :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` and :ref:`HeightMapShape3D<class_HeightMapShape3D>` are slower, and :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` is the slowest.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`margin<class_Shape3D_property_margin>`                         | ``0.04`` |
   +---------------------------+----------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>` | :ref:`get_debug_mesh<class_Shape3D_method_get_debug_mesh>`\ (\ ) |
   +-----------------------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Shape3D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape3D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to ``0``, the default value from :ref:`ProjectSettings.physics/3d/solver/default_contact_bias<class_ProjectSettings_property_physics/3d/solver/default_contact_bias>` is used.

\ **Note:** :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` is only effective when using GodotPhysics3D. It has no effect when using Jolt Physics.

.. rst-class:: classref-item-separator

----

.. _class_Shape3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_Shape3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

El margen de colisión de la forma. Esto no se usa en Godot Physics.

Los márgenes de colisión permiten que la detección de colisiones sea más eficiente al agregar una capa adicional alrededor de las formas. Los algoritmos de colisión son más costosos cuando los objetos se superponen en más de su margen, por lo que un valor más alto para los márgenes es mejor para el rendimiento, a costa de la precisión alrededor de los bordes, ya que los hace menos nítidos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Shape3D_method_get_debug_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_debug_mesh**\ (\ ) :ref:`🔗<class_Shape3D_method_get_debug_mesh>`

Returns the :ref:`ArrayMesh<class_ArrayMesh>` used to draw the debug collision for this **Shape3D**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
