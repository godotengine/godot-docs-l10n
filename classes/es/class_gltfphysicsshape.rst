:github_url: hide

.. _class_GLTFPhysicsShape:

GLTFPhysicsShape
================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa una forma física glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Representa una forma física tal como la definen las extensiones glTF ``OMI_physics_shape`` o ``OMI_collider``. Esta clase es un intermediario entre los datos glTF y los nodos de Godot, y se abstrae de una manera que permite añadir soporte para diferentes extensiones de física glTF en el futuro.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_shape glTF extension <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape>`__

- `Extensión gITF OMI_collider <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`height<class_GLTFPhysicsShape_property_height>`               | ``2.0``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>` | :ref:`importer_mesh<class_GLTFPhysicsShape_property_importer_mesh>` |                      |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                 | :ref:`is_trigger<class_GLTFPhysicsShape_property_is_trigger>`       | ``false``            |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                   | :ref:`mesh_index<class_GLTFPhysicsShape_property_mesh_index>`       | ``-1``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`radius<class_GLTFPhysicsShape_property_radius>`               | ``0.5``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`             | :ref:`shape_type<class_GLTFPhysicsShape_property_shape_type>`       | ``""``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`           | :ref:`size<class_GLTFPhysicsShape_property_size>`                   | ``Vector3(1, 1, 1)`` |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_dictionary<class_GLTFPhysicsShape_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_node<class_GLTFPhysicsShape_method_from_node>`\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_resource<class_GLTFPhysicsShape_method_from_resource>`\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static|       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`to_dictionary<class_GLTFPhysicsShape_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionShape3D<class_CollisionShape3D>` | :ref:`to_node<class_GLTFPhysicsShape_method_to_node>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`to_resource<class_GLTFPhysicsShape_method_to_resource>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFPhysicsShape_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_GLTFPhysicsShape_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

The height of the shape, in meters. This is only used when the shape type is ``"capsule"`` or ``"cylinder"``. This value should not be negative, and for ``"capsule"`` it should be at least twice the radius.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_importer_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **importer_mesh** :ref:`🔗<class_GLTFPhysicsShape_property_importer_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_importer_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_importer_mesh**\ (\ )

The :ref:`ImporterMesh<class_ImporterMesh>` resource of the shape. This is only used when the shape type is ``"hull"`` (convex hull) or ``"trimesh"`` (concave trimesh).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_is_trigger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_trigger** = ``false`` :ref:`🔗<class_GLTFPhysicsShape_property_is_trigger>`

.. rst-class:: classref-property-setget

- |void| **set_is_trigger**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_trigger**\ (\ )

If ``true``, indicates that this shape is a trigger. For Godot, this means that the shape should be a child of an :ref:`Area3D<class_Area3D>` node.

This is the only variable not used in the :ref:`to_node()<class_GLTFPhysicsShape_method_to_node>` method, it's intended to be used alongside when deciding where to add the generated node as a child.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_mesh_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh_index** = ``-1`` :ref:`🔗<class_GLTFPhysicsShape_property_mesh_index>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh_index**\ (\ )

The index of the shape's mesh in the glTF file. This is only used when the shape type is ``"hull"`` (convex hull) or ``"trimesh"`` (concave trimesh).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_GLTFPhysicsShape_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The radius of the shape, in meters. This is only used when the shape type is ``"capsule"``, ``"cylinder"``, or ``"sphere"``. This value should not be negative.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_shape_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **shape_type** = ``""`` :ref:`🔗<class_GLTFPhysicsShape_property_shape_type>`

.. rst-class:: classref-property-setget

- |void| **set_shape_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_shape_type**\ (\ )

The type of shape this shape represents. Valid values are ``"box"``, ``"capsule"``, ``"cylinder"``, ``"sphere"``, ``"hull"``, and ``"trimesh"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFPhysicsShape_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the shape, in meters. This is only used when the shape type is ``"box"``, and it represents the ``"diameter"`` of the box. This value should not be negative.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFPhysicsShape_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_dictionary>`

Creates a new GLTFPhysicsShape instance by parsing the given :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_node**\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_node>`

Creates a new GLTFPhysicsShape instance from the given Godot :ref:`CollisionShape3D<class_CollisionShape3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_resource:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_resource**\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_resource>`

Creates a new GLTFPhysicsShape instance from the given Godot :ref:`Shape3D<class_Shape3D>` resource.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsShape_method_to_dictionary>`

Serializes this GLTFPhysicsShape instance into a :ref:`Dictionary<class_Dictionary>` in the format defined by ``OMI_physics_shape``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionShape3D<class_CollisionShape3D>` **to_node**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_node>`

Converts this GLTFPhysicsShape instance into a Godot :ref:`CollisionShape3D<class_CollisionShape3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_resource:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **to_resource**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_resource>`

Converts this GLTFPhysicsShape instance into a Godot :ref:`Shape3D<class_Shape3D>` resource.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
