:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**Eredita:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Forma poligonale 2D piatta da utilizzare con l'occlusion culling in :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**PolygonOccluder3D** memorizza una forma poligonale che può essere utilizzata dal sistema di occlusion culling del motore. Quando un :ref:`OccluderInstance3D<class_OccluderInstance3D>` con un **PolygonOccluder3D** viene selezionato nell'editor, un editor apparirà nella parte superiore della viewport 3D, consentendo di aggiungere o rimuovere i punti. Tutti i punti devono essere posizionati sullo stesso piano 2D, il che significa che non è possibile creare forme 3D arbitrarie con un singolo **PolygonOccluder3D**. Per utilizzare forme 3D arbitrarie come occlusori, usa invece la funzionalità di precalcolo degli :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` o gli :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

Consulta la documentazione di :ref:`OccluderInstance3D<class_OccluderInstance3D>` per istruzioni su come configurare l'occlusion culling.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Il poligono da usare per l'occlusion culling. Il poligono può essere convesso o concavo, ma dovrebbe avere il minor numero possibile di punti per massimizzare le prestazioni.

Il poligono *non* deve avere linee intersecanti. Altrimenti, la triangolazione fallirà (con un messaggio di errore stampato).

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
