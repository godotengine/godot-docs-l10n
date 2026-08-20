:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di poliedro convesso 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di poliedro convesso 3D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **ConvexPolygonShape3D** è *solido*, il che significa che rileva le collisioni da oggetti che sono completamente al suo interno, a differenza di :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` che è cavo. Ciò lo rende più adatto sia per il rilevamento sia per la fisica.

\ **Scomposizione convessa:** Un poliedro concavo può essere suddiviso in diversi poliedri convessi. Ciò consente ai corpi fisici dinamici di avere collisioni concave complesse (a scapito delle prestazioni) e può essere ottenuto tramite più nodi **ConvexPolygonShape3D**. Per generare una scomposizione convessa da una mesh, seleziona il nodo :ref:`MeshInstance3D<class_MeshInstance3D>`, vai al menu **Mesh** che appare sopra la viewport e scegli **Crea più fratelli di collisione convessa**. Alternativamente, si può chiamare :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>` in uno script per effettuare questa scomposizione in fase di esecuzione.

\ **Prestazioni:** **ConvexPolygonShape3D** è più veloce per verificare le collisioni rispetto a :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, ma è più lento delle forme di collisione primitive come :ref:`SphereShape3D<class_SphereShape3D>` e :ref:`BoxShape3D<class_BoxShape3D>`. Il suo utilizzo dovrebbe essere generalmente limitato a oggetti di medie dimensioni la cui collisione non può essere rappresentata accuratamente dalle forme primitive.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

La lista dei punti 3D che formano la forma del poligono convesso.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
