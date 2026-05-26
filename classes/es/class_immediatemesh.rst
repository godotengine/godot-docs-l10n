:github_url: hide

.. _class_ImmediateMesh:

ImmediateMesh
=============

**Hereda:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Malla optimizada para crear geometría manualmente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un tipo de malla optimizado para crear geometría manualmente, similar al modo inmediato de OpenGL 1.x.

Aquí tienes un ejemplo de cómo generar una cara triangular:


.. tabs::

 .. code-tab:: gdscript

    var mesh = ImmediateMesh.new()
    mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)
    mesh.surface_add_vertex(Vector3.LEFT)
    mesh.surface_add_vertex(Vector3.FORWARD)
    mesh.surface_add_vertex(Vector3.ZERO)
    mesh.surface_end()

 .. code-tab:: csharp

    var mesh = new ImmediateMesh();
    mesh.SurfaceBegin(Mesh.PrimitiveType.Triangles);
    mesh.SurfaceAddVertex(Vector3.Left);
    mesh.SurfaceAddVertex(Vector3.Forward);
    mesh.SurfaceAddVertex(Vector3.Zero);
    mesh.SurfaceEnd();



\ **Nota:** Generar geometrías complejas con **ImmediateMesh** es muy ineficiente. En su lugar, está diseñado para generar geometría simple que cambia a menudo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar ImmediateMesh <../tutorials/3d/procedural_geometry/immediatemesh>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`clear_surfaces<class_ImmediateMesh_method_clear_surfaces>`\ (\ )                                                                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex<class_ImmediateMesh_method_surface_add_vertex>`\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex_2d<class_ImmediateMesh_method_surface_add_vertex_2d>`\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ )                                                       |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_begin<class_ImmediateMesh_method_surface_begin>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_end<class_ImmediateMesh_method_surface_end>`\ (\ )                                                                                                                   |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_color<class_ImmediateMesh_method_surface_set_color>`\ (\ color\: :ref:`Color<class_Color>`\ )                                                                    |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_normal<class_ImmediateMesh_method_surface_set_normal>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_tangent<class_ImmediateMesh_method_surface_set_tangent>`\ (\ tangent\: :ref:`Plane<class_Plane>`\ )                                                              |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv<class_ImmediateMesh_method_surface_set_uv>`\ (\ uv\: :ref:`Vector2<class_Vector2>`\ )                                                                         |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv2<class_ImmediateMesh_method_surface_set_uv2>`\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ )                                                                      |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ImmediateMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_clear_surfaces>`

Despeja todas las superficies.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex:

.. rst-class:: classref-method

|void| **surface_add_vertex**\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex>`

Añade un vértice 3D usando los atributos actuales previamente establecidos.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex_2d:

.. rst-class:: classref-method

|void| **surface_add_vertex_2d**\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex_2d>`

Añade un vértice 2D usando los atributos actuales previamente establecidos.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_begin:

.. rst-class:: classref-method

|void| **surface_begin**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_ImmediateMesh_method_surface_begin>`

Inicia una nueva superficie.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_end:

.. rst-class:: classref-method

|void| **surface_end**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_surface_end>`

Finaliza y confirma la superficie actual. Ten en cuenta que la superficie que se está creando no será visible hasta que se llame a esta función.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_color:

.. rst-class:: classref-method

|void| **surface_set_color**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_color>`

Establece el atributo de color que se enviará con el siguiente vértice.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_normal:

.. rst-class:: classref-method

|void| **surface_set_normal**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_normal>`

Establece el atributo normal que se enviará con el siguiente vértice.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_tangent:

.. rst-class:: classref-method

|void| **surface_set_tangent**\ (\ tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_tangent>`

Establece el atributo de tangente que se enviará con el siguiente vértice.

\ **Nota:** Aunque ``tangent`` es un :ref:`Plane<class_Plane>`, no representa directamente el plano tangente. Sus :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>`, y :ref:`Plane.z<class_Plane_property_z>` representan el vector tangente y :ref:`Plane.d<class_Plane_property_d>` debe ser ``-1`` o ``1``. Véase también :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv:

.. rst-class:: classref-method

|void| **surface_set_uv**\ (\ uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv>`

Establece el atributo UV que se enviará con el siguiente vértice.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv2:

.. rst-class:: classref-method

|void| **surface_set_uv2**\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv2>`

Establece el atributo UV2 que se enviará con el siguiente vértice.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
