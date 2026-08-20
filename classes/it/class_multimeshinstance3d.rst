:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance3D:

MultiMeshInstance3D
===================

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo che istanzia un :ref:`MultiMesh<class_MultiMesh>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**MultiMeshInstance3D** è un nodo specializzato per creare istanze di :ref:`GeometryInstance3D<class_GeometryInstance3D>` basate su una risorsa :ref:`MultiMesh<class_MultiMesh>`.

Ciò è utile per ottimizzare il rendering di un numero elevato di istanze di una determinata mesh (ad esempio alberi in una foresta o fili d'erba).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`Ottimizzazione utilizzando i MultiMesh <../tutorials/performance/using_multimesh>`

- :doc:`Animare migliaia di pesci con MultiMeshInstance <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance3D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MultiMeshInstance3D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance3D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

La risorsa :ref:`MultiMesh<class_MultiMesh>` che sarà utilizzata e condivisa tra tutte le istanze del **MultiMeshInstance3D**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
