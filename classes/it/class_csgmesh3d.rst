:github_url: hide

.. _class_CSGMesh3D:

CSGMesh3D
=========

**Eredita:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma di mesh CSG che utilizza una risorsa mesh.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo CSG consente di utilizzare qualsiasi risorsa mesh come forma CSG, purché sia *manifold*. Una forma manifold è chiusa, non si interseca, non contiene facce interne e non ha bordi che si collegano a più di due facce. Vedi anche :ref:`CSGPolygon3D<class_CSGPolygon3D>` per disegnare poligoni estrusi 2D da utilizzare come nodi CSG.

\ **Nota:** I nodi CSG sono progettati per la prototipazione di livelli. La creazione di nodi CSG ha un costo notevole sulla CPU rispetto alla creazione di un :ref:`MeshInstance3D<class_MeshInstance3D>` con un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Anche spostare un nodo CSG all'interno di un altro nodo CSG ha un costo notevole sulla CPU, quindi dovrebbe essere evitato durante il gioco.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Prototipazione dei livelli con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CSGMesh3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGMesh3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il :ref:`Material<class_Material>` utilizzato per disegnare la forma CSG.

.. rst-class:: classref-item-separator

----

.. _class_CSGMesh3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CSGMesh3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La risorsa :ref:`Mesh<class_Mesh>` da usare come forma CSG.

\ **Nota:** Alcuni tipi di :ref:`Mesh<class_Mesh>` come :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`QuadMesh<class_QuadMesh>` e :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` sono esclusi dal suggerimento per il tipo per questa proprietà, poiché queste primitive sono non-*manifold* e quindi non compatibili con l'algoritmo CSG.

\ **Nota:** Quando si usa un :ref:`ArrayMesh<class_ArrayMesh>`, tutti gli attributi dei vertici tranne :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` e :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` non sono utilizzati. Solo :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` e :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` saranno passati alla GPU.

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` è usato solo per determinare quali facce richiedono l'uso di ombreggiatura piatta. Come predefinito, CSGMesh ignorerà le normali dei vertici della mesh, le ricalcolerà per ogni vertice e userà uno shader omogeneo. Se è necessario uno shader piatto per una faccia, assicurarsi che tutte le normali dei vertici della faccia siano approssimativamente uguali.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
