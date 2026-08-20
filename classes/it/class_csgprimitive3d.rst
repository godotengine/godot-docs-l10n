:github_url: hide

.. _class_CSGPrimitive3D:

CSGPrimitive3D
==============

**Eredita:** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CSGBox3D<class_CSGBox3D>`, :ref:`CSGCylinder3D<class_CSGCylinder3D>`, :ref:`CSGMesh3D<class_CSGMesh3D>`, :ref:`CSGPolygon3D<class_CSGPolygon3D>`, :ref:`CSGSphere3D<class_CSGSphere3D>`, :ref:`CSGTorus3D<class_CSGTorus3D>`

Classe di base per i primitivi CSG.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe padre per vari primitivi CSG. Contiene codice e funzionalità comuni tra loro. Non può essere utilizzata direttamente. Utilizza invece una delle varie classi che ereditano da essa.

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

   +-------------------------+-------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`flip_faces<class_CSGPrimitive3D_property_flip_faces>` | ``false`` |
   +-------------------------+-------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CSGPrimitive3D_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_CSGPrimitive3D_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

Se impostato, l'ordine dei vertici in ciascun triangolo è invertito, risultando nel retro della mesh a essere disegnato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
