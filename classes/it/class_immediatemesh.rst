:github_url: hide

.. _class_ImmediateMesh:

ImmediateMesh
=============

**Eredita:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mesh ottimizzata per la creazione manuale della geometria.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un tipo di mesh ottimizzato per la creazione manuale di geometrie, simile alla modalità immediata di OpenGL 1.x.

Ecco un esempio su come generare una faccia triangolare:


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



\ **Nota:** Generare geometrie complesse con **ImmediateMesh** è estremamente inefficiente. Invece, è progettato per generare geometrie semplici che cambiano spesso.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di ImmediateMesh <../tutorials/3d/procedural_geometry/immediatemesh>`

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_ImmediateMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_clear_surfaces>`

Cancella tutte le superfici.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex:

.. rst-class:: classref-method

|void| **surface_add_vertex**\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex>`

Aggiungere un vertice 3D utilizzando gli attributi attuali impostati in precedenza.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex_2d:

.. rst-class:: classref-method

|void| **surface_add_vertex_2d**\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex_2d>`

Aggiungere un vertice 2D utilizzando gli attributi attuali impostati in precedenza.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_begin:

.. rst-class:: classref-method

|void| **surface_begin**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_ImmediateMesh_method_surface_begin>`

Inizia una nuova superficie.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_end:

.. rst-class:: classref-method

|void| **surface_end**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_surface_end>`

Finisce e conferma la superficie attuale. Nota che la superficie creata non sarà visibile finché non verrà chiamata questa funzione.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_color:

.. rst-class:: classref-method

|void| **surface_set_color**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_color>`

Imposta l'attributo del colore che sarà trasferito al vertice successivo.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_normal:

.. rst-class:: classref-method

|void| **surface_set_normal**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_normal>`

Imposta l'attributo della normale che sarà trasferito al vertice successivo.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_tangent:

.. rst-class:: classref-method

|void| **surface_set_tangent**\ (\ tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_tangent>`

Imposta l'attributo della tangente che sarà trasferito al vertice successivo.

\ **Nota:** Sebbene ``tangent`` sia un :ref:`Plane<class_Plane>`, non rappresenta direttamente il piano tangente. I suoi :ref:`Plane.x<class_Plane_property_x>`, :ref:`Plane.y<class_Plane_property_y>` e :ref:`Plane.z<class_Plane_property_z>` rappresentano il vettore tangente e :ref:`Plane.d<class_Plane_property_d>` dovrebbe essere ``-1`` o ``1``. Vedi anche :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>`.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv:

.. rst-class:: classref-method

|void| **surface_set_uv**\ (\ uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv>`

Imposta l'attributo dell'UV che sarà trasferito al vertice successivo.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv2:

.. rst-class:: classref-method

|void| **surface_set_uv2**\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv2>`

Imposta l'attributo dell'UV2 che sarà trasferito al vertice successivo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
