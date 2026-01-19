:github_url: hide

.. _class_CSGMesh3D:

CSGMesh3D
=========

**Hereda:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma de malla de CSG que utiliza un recurso de malla.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo CSG te permite usar cualquier recurso de malla como una forma CSG, siempre que sea *múltiple*. Una forma múltiple es cerrada, no se auto-intersecta, no contiene caras internas y no tiene bordes que se conecten a más de dos caras. Véase también :ref:`CSGPolygon3D<class_CSGPolygon3D>` para dibujar polígonos 2D extruidos para ser usados como nodos CSG.

\ **Nota:** Los nodos CSG están pensados para ser usados para el prototipado de niveles. La creación de nodos CSG tiene un coste de CPU significativo comparado con la creación de una :ref:`MeshInstance3D<class_MeshInstance3D>` con una :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Mover un nodo CSG dentro de otro nodo CSG también tiene un coste de CPU significativo, por lo que debe evitarse durante el juego.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Prototipado de niveles con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGMesh3D_property_material>` |
   +---------------------------------+----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_CSGMesh3D_property_mesh>`         |
   +---------------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CSGMesh3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGMesh3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

El :ref:`Material<class_Material>` utilizado en el dibujo de la forma CSG.

.. rst-class:: classref-item-separator

----

.. _class_CSGMesh3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CSGMesh3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

El recurso :ref:`Mesh<class_Mesh>` a usar como forma CSG.

\ **Nota:** Algunos tipos de :ref:`Mesh<class_Mesh>` como :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`QuadMesh<class_QuadMesh>`, y :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` son excluidos de la sugerencia de tipo para esta propiedad, ya que estas primitivas no son *múltiples* y por lo tanto no son compatibles con el algoritmo CSG.

\ **Nota:** Cuando se usa un :ref:`ArrayMesh<class_ArrayMesh>`, todos los atributos de vértice excepto :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` y :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` se dejan sin usar. Solo :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` y :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` se pasarán a la GPU.

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` sólo se usa para determinar qué caras requieren el uso de sombreado plano. Por defecto, CSGMesh ignorará las normales de los vértices de la malla, las recalculará para cada vértice y usará un shader suave. Si se requiere un shader plano para una cara, asegúrate de que todas las normales de los vértices de la cara sean aproximadamente iguales.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
