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

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`cast_motion_into<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ )                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`collide_shape_into<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ )         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_rest_info_into<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ )           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_point_into<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_ray_into<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ )             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_shape_into<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

.. _class_PhysicsDirectSpaceState2D_method_cast_motion_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **cast_motion_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`

Checks how far a :ref:`Shape2D<class_Shape2D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object.

If the query is successful, this method returns ``true`` and writes the motion results into the :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>` object passed in ``result``. If no collision occurs, it returns ``false``.

\ **Note:** Any :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape_into()<class_PhysicsDirectSpaceState2D_method_collide_shape_into>` to determine the :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

Verifica le intersezioni di una forma, fornite tramite un oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, rispetto allo spazio. L'array restituito contiene una lista di punti in cui la forma ne interseca un'altra. Come con :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>`, è possibile limitare il numero di risultati restituiti per risparmiare tempo di elaborazione.

I punti restituiti sono una lista di coppie di punti di contatto. Per ogni coppia, il primo punto è nella forma passata nell'oggetto :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, il secondo è nella forma in collisione dallo spazio fisico.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If intersections are found, this method returns ``true`` and writes the collision points into the :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of returned results can be limited using :ref:`PhysicsCollideShapeResult2D.max_collisions<class_PhysicsCollideShapeResult2D_property_max_collisions>`, to reduce the processing time.

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

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_rest_info_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If the shape collides with one or more shapes, this method returns ``true`` and writes the nearest collision information into the :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>` object passed in ``result``. If no collisions occur, it returns ``false``.

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

.. _class_PhysicsDirectSpaceState2D_method_intersect_point_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_point_into**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`

Checks whether a point is inside any solid shape. Position and other parameters are defined through :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`.

If one or more shapes overlap the point, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectPointResult2D.max_intersections<class_PhysicsIntersectPointResult2D_property_max_intersections>`, to reduce the processing time.

\ **Note:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`\ s and :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`\ s in ``Segments`` build mode are not solid shapes. Therefore, they will not be detected.

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

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_ray_into**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`

Intersects a ray in a given space. Ray position and other parameters are defined through :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`.

If the ray hits a shape, this method returns ``true`` and writes the intersection information into the :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>` object passed in ``result``. If nothing is hit, it returns ``false``.

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

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult2D.max_intersections<class_PhysicsIntersectShapeResult2D_property_max_intersections>`, to reduce the processing time.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
