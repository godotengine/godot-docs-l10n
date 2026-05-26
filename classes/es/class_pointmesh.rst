:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**Hereda:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Malla con una sola primitiva de punto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A **PointMesh** is a primitive mesh composed of a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with particle systems, but can also be used as a cheap way to render billboarded sprites (for example in a point cloud).

In order to be displayed, point meshes must be used with a material that has a point size. The point size can be accessed in a shader with the ``POINT_SIZE`` built-in, or in a :ref:`BaseMaterial3D<class_BaseMaterial3D>` by setting the :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` and :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>` properties.

\ **Note:** When using point meshes, properties that normally affect vertices will be ignored, including :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`, :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`, and :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
