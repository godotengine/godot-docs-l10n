:github_url: hide

.. _class_TriangleMesh:

TriangleMesh
============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Geometria triangolare per ricerche di intersezione efficienti e senza fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Crea una struttura ad albero BVH (bounding volume hierarchy) attorno alla geometria triangolare.

L'albero BVH triangolare si può utilizzare per query di intersezione efficienti senza aver bisogno di un motore fisico.

Ad esempio, è possibile utilizzarlo negli strumenti dell'editor per selezionare oggetti con forme complesse in base alla posizione del cursore del mouse.

\ **Prestazioni:** La creazione dell'albero BVH per geometrie complesse è un processo lento ed è meglio eseguirlo in un thread in background.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`create_from_faces<class_TriangleMesh_method_create_from_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_TriangleMesh_method_get_faces>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_ray<class_TriangleMesh_method_intersect_ray>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_segment<class_TriangleMesh_method_intersect_segment>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TriangleMesh_method_create_from_faces:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **create_from_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_TriangleMesh_method_create_from_faces>`

Crea l'albero BVH da un array di facce. Ogni 3 vertici dell'array ``faces`` rappresentano un triangolo (faccia).

Restituisce ``true`` se l'albero è costruito correttamente, ``false`` altrimenti.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_TriangleMesh_method_get_faces>`

Restituisce una copia delle facce della geometria. Ogni tre vertici rappresentano un triangolo (faccia).

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_ray>`

Verifica l'intersezione con un raggio che inizia in ``begin`` ed è rivolto verso ``dir``, estendendosi verso l'infinito.

Se si verifica un'intersezione con un triangolo, restituisce un :ref:`Dictionary<class_Dictionary>` con i seguenti campi:

\ ``position``: la posizione sul triangolo intersecato.

\ ``normal``: la normale del triangolo intersecato.

\ ``face_index``: l'indice del triangolo intersecato.

Restituisce un :ref:`Dictionary<class_Dictionary>` vuoto se non si verifica alcuna intersezione.

Vedi anche :ref:`intersect_segment()<class_TriangleMesh_method_intersect_segment>`, che è simile ma utilizza un segmento di lunghezza finita.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_segment:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_segment**\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_segment>`

Verifica l'intersezione con un segmento che va da ``begin`` a ``end``.

Se si verifica un'intersezione con un triangolo, restituisce un :ref:`Dictionary<class_Dictionary>` con i seguenti campi:

\ ``position``: la posizione sul triangolo intersecato.

\ ``normal``: la normale del triangolo intersecato.

\ ``face_index``: l'indice del triangolo intersecato.

Restituisce un :ref:`Dictionary<class_Dictionary>` vuoto se non si verifica alcuna intersezione.

Vedi anche :ref:`intersect_ray()<class_TriangleMesh_method_intersect_ray>`, che è simile ma utilizza un raggio di lunghezza infinita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
