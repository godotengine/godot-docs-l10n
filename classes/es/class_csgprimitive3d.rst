:github_url: hide

.. _class_CSGPrimitive3D:

CSGPrimitive3D
==============

**Hereda:** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CSGBox3D<class_CSGBox3D>`, :ref:`CSGCylinder3D<class_CSGCylinder3D>`, :ref:`CSGMesh3D<class_CSGMesh3D>`, :ref:`CSGPolygon3D<class_CSGPolygon3D>`, :ref:`CSGSphere3D<class_CSGSphere3D>`, :ref:`CSGTorus3D<class_CSGTorus3D>`

Clase base para primitivas CSG.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase padre para varias primitivas CSG. Contiene código y funcionalidad que es común entre ellas. No puede usarse directamente. En su lugar, usa una de las diversas clases que heredan de ella.

\ **Nota:** Los nodos CSG están destinados a utilizarse para la creación de prototipos de niveles. Crear nodos CSG tiene un coste de CPU significativo en comparación con crear un :ref:`MeshInstance3D<class_MeshInstance3D>` con un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Mover un nodo CSG dentro de otro nodo CSG también tiene un coste de CPU significativo, por lo que debe evitarse durante el juego.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Prototipado de niveles con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`flip_faces<class_CSGPrimitive3D_property_flip_faces>` | ``false`` |
   +-------------------------+-------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CSGPrimitive3D_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_CSGPrimitive3D_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

Si está habilitado, el orden de los vértices en cada triángulo se invierte, lo que provoca que se dibuje la cara posterior de la malla.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
