:github_url: hide

.. _class_MeshInstance2D:

MeshInstance2D
==============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo utilizado para mostrar una :ref:`Mesh<class_Mesh>` en 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Node used for displaying a :ref:`Mesh<class_Mesh>` in 2D. This can be faster to render compared to displaying a :ref:`Sprite2D<class_Sprite2D>` node with large transparent areas, especially if the node takes up a lot of space on screen at high viewport resolutions. This is because using a mesh designed to fit the sprite's opaque areas will reduce GPU fill rate utilization (at the cost of increased vertex processing utilization).

When a :ref:`Mesh<class_Mesh>` has to be instantiated more than thousands of times close to each other, consider using a :ref:`MultiMesh<class_MultiMesh>` in a :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` instead.

A **MeshInstance2D** can be created from an existing :ref:`Sprite2D<class_Sprite2D>` via a tool in the editor toolbar. Select the :ref:`Sprite2D<class_Sprite2D>` node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Mallas 2D <../tutorials/2d/2d_meshes>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshInstance2D_property_mesh>`       |
   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MeshInstance2D_property_texture>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_MeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MeshInstance2D_signal_texture_changed>`

Emitida cuando se cambia la :ref:`texture<class_MeshInstance2D_property_texture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MeshInstance2D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance2D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La :ref:`Mesh<class_Mesh>` que será dibujada por la **MeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MeshInstance2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` que se utilizará si se usa el :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` por defecto. Se puede acceder como ``TEXTURE`` en el shader CanvasItem.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
