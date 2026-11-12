:github_url: hide

.. _class_PrimitiveMesh:

PrimitiveMesh
=============

**Hereda:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`BoxMesh<class_BoxMesh>`, :ref:`CapsuleMesh<class_CapsuleMesh>`, :ref:`CylinderMesh<class_CylinderMesh>`, :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`PrismMesh<class_PrismMesh>`, :ref:`RibbonTrailMesh<class_RibbonTrailMesh>`, :ref:`SphereMesh<class_SphereMesh>`, :ref:`TextMesh<class_TextMesh>`, :ref:`TorusMesh<class_TorusMesh>`, :ref:`TubeTrailMesh<class_TubeTrailMesh>`

Clase base para todas las mallas primitivas. Maneja la aplicación de un :ref:`Material<class_Material>` a una malla primitiva.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para todas las mallas primitivas. Maneja la aplicación de un :ref:`Material<class_Material>` a una malla primitiva. Algunos ejemplos son :ref:`BoxMesh<class_BoxMesh>`, :ref:`CapsuleMesh<class_CapsuleMesh>`, :ref:`CylinderMesh<class_CylinderMesh>`, :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PrismMesh<class_PrismMesh>` y :ref:`SphereMesh<class_SphereMesh>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>`         | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`         | :ref:`custom_aabb<class_PrimitiveMesh_property_custom_aabb>` | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_faces<class_PrimitiveMesh_property_flip_faces>`   | ``false``                  |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_PrimitiveMesh_property_material>`       |                            |
   +---------------------------------+--------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`       | :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>` | ``2.0``                    |
   +---------------------------------+--------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`_create_mesh_array<class_PrimitiveMesh_private_method__create_mesh_array>`\ (\ ) |virtual| |const| |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`get_mesh_arrays<class_PrimitiveMesh_method_get_mesh_arrays>`\ (\ ) |const|                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_update<class_PrimitiveMesh_method_request_update>`\ (\ )                                   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PrimitiveMesh_property_add_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **add_uv2** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_add_uv2>`

.. rst-class:: classref-property-setget

- |void| **set_add_uv2**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_add_uv2**\ (\ )

If set, generates UV2 UV coordinates applying a padding using the :ref:`uv2_padding<class_PrimitiveMesh_property_uv2_padding>` setting. UV2 is needed for lightmapping.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_PrimitiveMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Sobrescribe el :ref:`AABB<class_AABB>` con uno definido por usuario para el uso con el tronco (frustum). Especialmente útil para evitar inesperadas selecciones cuando se use un shader a vértices desplazados.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_PrimitiveMesh_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

If ``true``, the order of the vertices in each triangle is reversed, resulting in the backside of the mesh being drawn.

This gives the same result as using :ref:`BaseMaterial3D.CULL_FRONT<class_BaseMaterial3D_constant_CULL_FRONT>` in :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_PrimitiveMesh_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

El actual :ref:`Material<class_Material>` de la malla primitiva.

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_property_uv2_padding:

.. rst-class:: classref-property

:ref:`float<class_float>` **uv2_padding** = ``2.0`` :ref:`🔗<class_PrimitiveMesh_property_uv2_padding>`

.. rst-class:: classref-property-setget

- |void| **set_uv2_padding**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_uv2_padding**\ (\ )

If :ref:`add_uv2<class_PrimitiveMesh_property_add_uv2>` is set, specifies the padding in pixels applied along seams of the mesh. Lower padding values allow making better use of the lightmap texture (resulting in higher texel density), but may introduce visible lightmap bleeding along edges.

If the size of the lightmap texture can't be determined when generating the mesh, UV2 is calculated assuming a texture size of 1024×1024.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PrimitiveMesh_private_method__create_mesh_array:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_create_mesh_array**\ (\ ) |virtual| |const| :ref:`🔗<class_PrimitiveMesh_private_method__create_mesh_array>`

Override this method to customize how this primitive mesh should be generated. Should return an :ref:`Array<class_Array>` where each element is another Array of values required for the mesh (see the :ref:`ArrayType<enum_Mesh_ArrayType>` constants).

.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_get_mesh_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_mesh_arrays**\ (\ ) |const| :ref:`🔗<class_PrimitiveMesh_method_get_mesh_arrays>`

Returns the mesh arrays used to make up the surface of this primitive mesh.

\ **Example:** Pass the result to :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` to create a new surface:


.. tabs::

 .. code-tab:: gdscript

    var c = CylinderMesh.new()
    var arr_mesh = ArrayMesh.new()
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, c.get_mesh_arrays())

 .. code-tab:: csharp

    var c = new CylinderMesh();
    var arrMesh = new ArrayMesh();
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, c.GetMeshArrays());



.. rst-class:: classref-item-separator

----

.. _class_PrimitiveMesh_method_request_update:

.. rst-class:: classref-method

|void| **request_update**\ (\ ) :ref:`🔗<class_PrimitiveMesh_method_request_update>`

Request an update of this primitive mesh based on its properties.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
