:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma poligonale convessa 2D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma poligonale convessa 2D, progettata per l'uso in fisica. Utilizzata internamente in :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` quando è in modalità :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`.

\ **ConvexPolygonShape2D** è *solido*, il che significa che rileva le collisioni da oggetti che sono completamente al suo interno, a differenza di :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` che è cavo. Ciò la rende più adatta sia per il rilevamento sia per la fisica.

\ **Scomposizione convessa:** Un poligono concavo può essere suddiviso in diversi poligoni convessi. Ciò consente ai corpi fisici dinamici di avere collisioni concave complesse (a scapito delle prestazioni) e può essere ottenuto tramite più nodi **ConvexPolygonShape2D** o tramite il nodo :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` in modalità :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`. Per generare un poligono di collisione da uno sprite, seleziona il nodo :ref:`Sprite2D<class_Sprite2D>`, vai al menu **Sprite2D** che appare sopra la viewport e scegli **Crea Polygon2D fratello**.

\ **Prestazioni:** **ConvexPolygonShape2D** è più veloce per verificare le collisioni rispetto a :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, ma è più lento delle forme di collisione primitive come :ref:`CircleShape2D<class_CircleShape2D>` e :ref:`RectangleShape2D<class_RectangleShape2D>`. Il suo utilizzo dovrebbe essere generalmente limitato agli oggetti di medie dimensioni la cui collisione non può essere rappresentata accuratamente dalle forme primitive.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

La lista dei vertici del poligono che formano un inviluppo convesso. Può essere ordinata in senso orario o antiorario.

\ **Attenzione:** Imposta questa proprietà solo su una lista di punti che formano effettivamente un inviluppo convesso. Utilizza :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` per generare l'inviluppo convesso da un insieme arbitrario di punti.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

In base alla serie di punti fornita, questo assegna la proprietà :ref:`points<class_ConvexPolygonShape2D_property_points>` attraverso l'algoritmo di inviluppo convesso, rimuovendo tutti i punti non necessari. Vedi :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>` per i dettagli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
