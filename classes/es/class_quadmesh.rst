:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**Hereda:** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase que representa una malla cuadrada que mira hacia la cámara.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Class representing a square :ref:`PrimitiveMesh<class_PrimitiveMesh>`. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Y axes; this rotation is more suited for use with billboarded materials. A **QuadMesh** is equivalent to a :ref:`PlaneMesh<class_PlaneMesh>` except its default :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` is :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demostración GUI en el Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
