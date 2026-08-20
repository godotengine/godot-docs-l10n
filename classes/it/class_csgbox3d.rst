:github_url: hide

.. _class_CSGBox3D:

CSGBox3D
========

**Eredita:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma di scatola CSG.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo consente di creare un box da utilizzare con il sistema CSG.

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

   +---------------------------------+---------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGBox3D_property_material>` |                      |
   +---------------------------------+---------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`size<class_CSGBox3D_property_size>`         | ``Vector3(1, 1, 1)`` |
   +---------------------------------+---------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CSGBox3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGBox3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il materiale utilizzato per renderizzare la scatola.

.. rst-class:: classref-item-separator

----

.. _class_CSGBox3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_CSGBox3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La larghezza, l'altezza, e la profondità della scatola.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
