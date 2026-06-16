:github_url: hide

.. _class_Occluder3D:

Occluder3D
==========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`ArrayOccluder3D<class_ArrayOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>`, :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`, :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`SphereOccluder3D<class_SphereOccluder3D>`

Risorsa forma dell'occlusore da utilizzare con l'occlusion culling in :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Occluder3D** memorizza una forma di occlusione che può essere utilizzata dal sistema di occlusion culling del motore.

Consulta la documentazione di :ref:`OccluderInstance3D<class_OccluderInstance3D>` per istruzioni su come configurare l'occlusion culling.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_Occluder3D_method_get_indices>`\ (\ ) |const|   |
   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_Occluder3D_method_get_vertices>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Occluder3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_indices>`

Restituisce gli indici dei vertici della forma di occlusione.

.. rst-class:: classref-item-separator

----

.. _class_Occluder3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_vertices>`

Restituisce le posizioni dei vertici della forma di occlusione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
