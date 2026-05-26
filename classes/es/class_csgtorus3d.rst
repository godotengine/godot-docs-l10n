:github_url: hide

.. _class_CSGTorus3D:

CSGTorus3D
==========

**Hereda:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma de Toroide CSG.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo te permite crear un Toro para usar con el sistema CSG

\ **Nota:** Los nodos CSG están pensados para ser utilizados en el prototipado de niveles. Crear nodos CSG tiene un costo de CPU significativo en comparación con crear un :ref:`MeshInstance3D<class_MeshInstance3D>` con un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Mover un nodo CSG dentro de otro nodo CSG también tiene un costo de CPU significativo, por lo que debería evitarse durante el transcurso del juego.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Prototipado de niveles con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`inner_radius<class_CSGTorus3D_property_inner_radius>` | ``0.5``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGTorus3D_property_material>`         |          |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`outer_radius<class_CSGTorus3D_property_outer_radius>` | ``1.0``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`ring_sides<class_CSGTorus3D_property_ring_sides>`     | ``6``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`sides<class_CSGTorus3D_property_sides>`               | ``8``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGTorus3D_property_smooth_faces>` | ``true`` |
   +---------------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CSGTorus3D_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_CSGTorus3D_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

El radio interior del toroide.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGTorus3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

El material utilizado para la fabricación del toroide.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_CSGTorus3D_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

El radio exterior del toroide.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_ring_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_sides** = ``6`` :ref:`🔗<class_CSGTorus3D_property_ring_sides>`

.. rst-class:: classref-property-setget

- |void| **set_ring_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_sides**\ (\ )

El número de bordes con que se construye cada anillo del toroide.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGTorus3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

El número de piezas de las que está construido el toroide.

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGTorus3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

Si es ``true``, las normales del toro se fijan para dar un efecto suave haciendo que el toro parezca redondeado. Si es ``false``, el toro tendrá un aspecto de sombra plana.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
