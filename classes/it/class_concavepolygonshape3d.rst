:github_url: hide

.. _class_ConcavePolygonShape3D:

ConcavePolygonShape3D
=====================

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma trimesh 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma trimesh 3D, progettata per l'uso in fisica. Solitamente usata per fornire una forma per un :ref:`CollisionShape3D<class_CollisionShape3D>`.

Essendo solo una serie di triangoli interconnessi, **ConcavePolygonShape3D** è la forma 3D singola più liberamente configurabile. Può essere usata per formare poliedri di qualsiasi natura, o anche forme che non racchiudono un volume. Tuttavia, **ConcavePolygonShape3D** è *vuota* anche se i triangoli interconnessi racchiudono un volume, il che spesso la rende poco adatta per la fisica o il rilevamento.

\ **Nota:** Quando usata per la collisione, **ConcavePolygonShape3D** è progettata per funzionare con nodi :ref:`CollisionShape3D<class_CollisionShape3D>` statici come :ref:`StaticBody3D<class_StaticBody3D>` e probabilmente non si comporterà bene per :ref:`CharacterBody3D<class_CharacterBody3D>` o :ref:`RigidBody3D<class_RigidBody3D>` in una modalità diversa da Static.

\ **Attenzione:** I corpi di fisica piccoli hanno la possibilità di passare attraverso questa forma quando si muovono velocemente. Ciò accade perché in un frame il corpo di fisica potrebbe trovarsi "all'esterno" della forma e nel frame successivo potrebbe trovarsi "all'interno". **ConcavePolygonShape3D** è cavo, quindi non rileverà una collisione.

\ **Prestazioni:** A causa della sua complessità, **ConcavePolygonShape3D** è la forma di collisione 3D più lenta per verificare le collisioni. Il suo utilizzo dovrebbe essere generalmente limitato alla geometria dei livelli. Per la geometria convessa, si dovrebbe usare :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`. Per i corpi di fisica dinamici che necessitano di collisione concava, si potrebbero usare vari :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` per rappresentare la sua collisione attraverso una scomposizione convessa; vedi la documentazione di :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` per le istruzioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`backface_collision<class_ConcavePolygonShape3D_property_backface_collision>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_ConcavePolygonShape3D_method_get_faces>`\ (\ ) |const|                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_faces<class_ConcavePolygonShape3D_method_set_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConcavePolygonShape3D_property_backface_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **backface_collision** = ``false`` :ref:`🔗<class_ConcavePolygonShape3D_property_backface_collision>`

.. rst-class:: classref-property-setget

- |void| **set_backface_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_backface_collision_enabled**\ (\ )

Se impostato su ``true``, le collisioni si verificano su entrambi i lati delle facce concave. Altrimenti si verificano solo lungo le normali delle facce.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConcavePolygonShape3D_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_ConcavePolygonShape3D_method_get_faces>`

Restituisce le facce della forma trimesh come un array di vertici. L'array (di lunghezza divisibile per tre) è naturalmente diviso in triple; ogni tripla di vertici definisce un triangolo.

.. rst-class:: classref-item-separator

----

.. _class_ConcavePolygonShape3D_method_set_faces:

.. rst-class:: classref-method

|void| **set_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_ConcavePolygonShape3D_method_set_faces>`

Imposta le facce della forma trimesh da un array di vertici. L'array ``faces`` dovrebbe essere composto da triple in modo che ogni tripla di vertici definisca un triangolo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
