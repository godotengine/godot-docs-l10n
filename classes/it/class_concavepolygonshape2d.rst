:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma polilinea 2D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma polilinea 2D, progettata per l'uso in fisica. Utilizzata internamente in :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` quando è in modalità :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>`.

Essendo solo una serie di segmenti interconnessi, **ConcavePolygonShape2D** è la forma 2D singola più liberamente configurabile. Può essere usata per formare poligoni di qualsiasi natura o persino forme che non racchiudono un'area. Tuttavia, **ConcavePolygonShape2D** è *vuota* anche se i segmenti di linea interconnessi racchiudono un'area, il che spesso la rende poco adatta per la fisica o il rilevamento.

\ **Nota:** Quando viene utilizzato per la collisione, **ConcavePolygonShape2D** è progettato per funzionare con nodi :ref:`CollisionShape2D<class_CollisionShape2D>` statici come :ref:`StaticBody2D<class_StaticBody2D>` e probabilmente non si comporterà bene per :ref:`CharacterBody2D<class_CharacterBody2D>` o :ref:`RigidBody2D<class_RigidBody2D>` in una modalità diversa da Static.

\ **Attenzione:** I corpi di fisica piccoli hanno la possibilità di passare attraverso questa forma quando si muovono velocemente. Ciò accade perché in un frame, il corpo di fisica potrebbe trovarsi "all'esterno" della forma e nel frame successivo potrebbe trovarsi "all'interno". **ConcavePolygonShape2D** è cavo, quindi non rileverà una collisione.

\ **Prestazioni:** A causa della sua complessità, **ConcavePolygonShape2D** è la forma di collisione 2D più lenta per verificare le collisioni. Il suo utilizzo dovrebbe essere generalmente limitato alla geometria di livello. Se la polilinea è chiusa, è possibile utilizzare la modalità :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` di :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, che scompone il poligono in poligoni convessi; Vedi la documentazione di :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` per le istruzioni.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

L'array dei punti che compongono i segmenti della linea di **ConcavePolygonShape2D**. L'array (di lunghezza divisibile per due) è naturalmente divisa in coppie (una coppia per ogni segmento); ogni coppia è composta dal punto iniziale di un segmento e dal punto finale di un segmento.

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
