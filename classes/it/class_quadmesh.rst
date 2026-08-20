:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**Eredita:** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe che rappresenta una mesh quadrata rivolta verso la telecamera.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che rappresenta un :ref:`PrimitiveMesh<class_PrimitiveMesh>` quadrato. Questa mesh piatta non ha spessore. Per impostazione predefinita, questa mesh è allineata sugli assi X e Y; questa rotazione è più adatta per l'uso con materiali con billboard abilitato. Una **QuadMesh** è equivalente a una :ref:`PlaneMesh<class_PlaneMesh>`, eccetto che la sua :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` predefinita è :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di GUI in Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Demo di viewport 2D in 3D <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
