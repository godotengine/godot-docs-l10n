:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

Fornisce accesso diretto a uno spazio fisico nel :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Fornisce accesso diretto a uno spazio fisico nel :ref:`PhysicsServer2D<class_PhysicsServer2D>`. È utilizzato principalmente per interrogare oggetti e aree che risiedono in un determinato spazio.

\ **Nota:** Questa classe non si dovrebbe istanziare direttamente. Utilizza :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>` per ottenere lo stato dello spazio fisico 2D del mondo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Proiettare raggi <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

Verifica quanto lontano una :ref:`Shape2D<class_Shape2D>` può muoversi senza entrare in collisione. Tutti i parametri per la richiesta, inclusi la forma e il movimento, sono forniti tramite un oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`.

Restituisce un array con le proporzioni sicure e non sicure (tra 0 e 1) del movimento. La proporzione sicura è la frazione massima del movimento che può essere effettuata senza una collisione. La proporzione non sicura è la frazione minima della distanza che deve essere percorsa per una collisione. Se nessuna collisione è rilevata, sarà restituito un risultato di ``[1.0, 1.0]``.

\ **Nota:** Qualsiasi :ref:`Shape2D<class_Shape2D>` con cui la forma è già in collisione, ad esempio all'interno, sarà ignorato. Utilizza :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>` per determinare le :ref:`Shape2D<class_Shape2D>` con cui la forma è già in collisione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

Verifica le intersezioni di una forma, fornite tramite un oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, rispetto allo spazio. L'array restituito contiene una lista di punti in cui la forma ne interseca un'altra. Come con :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>`, è possibile limitare il numero di risultati restituiti per risparmiare tempo di elaborazione.

I punti restituiti sono una lista di coppie di punti di contatto. Per ogni coppia, il primo punto è nella forma passata nell'oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, il secondo è nella forma in collisione dallo spazio fisico.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

Verifica le intersezioni di una forma, fornite tramite un oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, rispetto allo spazio. Se entra in collisione con più di una forma, quella più vicina è selezionata. L'oggetto restituito è un dizionario contenente i seguenti campi:

\ ``collider_id``: l'ID dell'oggetto in collisione.

\ ``linear_velocity``: La velocità dell'oggetto in collisione come :ref:`Vector2<class_Vector2>`. Se l'oggetto è un :ref:`Area2D<class_Area2D>`, il risultato è ``(0, 0)``.

\ ``normal``: La normale della collisione relativa alla forma dell'interrogazione nel punto di intersezione, che punta lontano dall'oggetto intersecante.

\ ``point``: il punto di intersezione.

\ ``rid``: il :ref:`RID<class_RID>` dell'oggetto in intersezione.

\ ``shape``: l'indice di forma della forma in collisione.

Se la forma non ha intersecato nulla, viene restituito un dizionario vuoto.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

Verifica se un punto è all'interno di una forma solida. La posizione e altri parametri sono definiti tramite :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`. Le forme in cui si trova il punto sono restituite in un array contenente dizionari con i seguenti campi:

\ ``collider``: l'oggetto in collisione.

\ ``collider_id``: l'ID dell'oggetto in collisione.

\ ``rid``: il :ref:`RID<class_RID>` dell'oggetto intersecante.

\ ``shape``: l'indice di forma della forma in collisione.

È possibile limitare il numero di intersezioni con il parametro ``max_results``, per ridurre il tempo di elaborazione.

\ **Nota:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` e :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` nelle modalità di costruzione ``Segments`` non sono forme solide. Pertanto, non saranno rilevate.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

Interseca un raggio in un determinato spazio. La posizione del raggio e altri parametri sono definiti tramite :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`. L'oggetto restituito è un dizionario con i seguenti campi:

\ ``collider``: l'oggetto in collisione.

\ ``collider_id``: l'ID dell'oggetto in collisione.

\ ``normal``: la normale alla superficie dell'oggetto nel punto di intersezione, o ``Vector2(0, 0)`` se il raggio inizia all'interno della forma e :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` è ``true``.

\ ``position``: il punto di intersezione.

\ ``rid``: il :ref:`RID<class_RID>` dell'oggetto in intersezione.

\ ``shape``: l'indice della forma in collisione.

Se il raggio non ha intersecato nulla, un dizionario vuoto viene restituito.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

Verifica le intersezioni di una forma, fornite tramite un oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, rispetto allo spazio. Le forme intersecate sono restituite in un array contenente dizionari con i seguenti campi:

\ ``collider``: l'oggetto in collisione.

\ ``collider_id``: l'ID dell'oggetto in collisione.

\ ``rid``: il :ref:`RID<class_RID>` dell'oggetto in intersezione.

\ ``shape``: l'indice della forma in collisione.

È possibile limitare il numero di intersezioni con il parametro ``max_results``, per ridurre il tempo di elaborazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
