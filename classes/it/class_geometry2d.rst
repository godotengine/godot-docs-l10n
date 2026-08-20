:github_url: hide

.. _class_Geometry2D:

Geometry2D
==========

**Eredita:** :ref:`Object<class_Object>`

Fornisce metodi per alcune operazioni geometriche 2D comuni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Fornisce una serie di funzioni di supporto per creare forme geometriche, calcolare intersezioni tra forme ed elaborare varie altre operazioni geometriche in 2D.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]                     | :ref:`bresenham_line<class_Geometry2D_method_bresenham_line>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polygons<class_Geometry2D_method_clip_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polyline_with_polygon<class_Geometry2D_method_clip_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                  |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`convex_hull<class_Geometry2D_method_convex_hull>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                 |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`decompose_polygon_in_convex<class_Geometry2D_method_decompose_polygon_in_convex>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`exclude_polygons<class_Geometry2D_method_exclude_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment<class_Geometry2D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment_uncapped<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`get_closest_points_between_segments<class_Geometry2D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ )                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polygons<class_Geometry2D_method_intersect_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polyline_with_polygon<class_Geometry2D_method_intersect_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                        |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_circle<class_Geometry2D_method_is_point_in_circle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_polygon<class_Geometry2D_method_is_point_in_polygon>`\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_polygon_clockwise<class_Geometry2D_method_is_polygon_clockwise>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`line_intersects_line<class_Geometry2D_method_line_intersects_line>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ )                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                              | :ref:`make_atlas<class_Geometry2D_method_make_atlas>`\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`merge_polygons<class_Geometry2D_method_merge_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polygon<class_Geometry2D_method_offset_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ )                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polyline<class_Geometry2D_method_offset_polyline>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`point_is_inside_triangle<class_Geometry2D_method_point_is_inside_triangle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                        | :ref:`segment_intersects_circle<class_Geometry2D_method_segment_intersects_circle>`\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`segment_intersects_segment<class_Geometry2D_method_segment_intersects_segment>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_delaunay<class_Geometry2D_method_triangulate_delaunay>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_polygon<class_Geometry2D_method_triangulate_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Geometry2D_PolyBooleanOperation:

.. rst-class:: classref-enumeration

enum **PolyBooleanOperation**: :ref:`🔗<enum_Geometry2D_PolyBooleanOperation>`

.. _class_Geometry2D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_UNION** = ``0``

Crea regioni in cui sono riempiti i poligoni del soggetto o del ritaglio (o entrambi).

.. _class_Geometry2D_constant_OPERATION_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_DIFFERENCE** = ``1``

Crea regioni in cui i poligoni del soggetto sono riempiti, ad eccezione delle aree in cui sono riempiti i poligoni di ritaglio.

.. _class_Geometry2D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_INTERSECTION** = ``2``

Crea regioni in cui sono riempiti sia i poligoni del soggetto sia quelli del ritaglio.

.. _class_Geometry2D_constant_OPERATION_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_XOR** = ``3``

Crea regioni in cui sono riempiti i poligoni del soggetto o del ritaglio, ma non dove sono riempiti entrambi.

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyJoinType:

.. rst-class:: classref-enumeration

enum **PolyJoinType**: :ref:`🔗<enum_Geometry2D_PolyJoinType>`

.. _class_Geometry2D_constant_JOIN_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_SQUARE** = ``0``

La quadratura si applica uniformemente a tutte le unioni di spigoli convessi in ``1 * delta``.

.. _class_Geometry2D_constant_JOIN_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_ROUND** = ``1``

Sebbene i percorsi appiattiti non possano mai tracciare perfettamente un arco, sono approssimati da una serie di corde d'arco.

.. _class_Geometry2D_constant_JOIN_MITER:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_MITER** = ``2``

Esiste un limite necessario alle unioni squadrate, in quanto lo scostamento degli spigoli che si uniscono ad angoli molto acuti produrrà "punte" eccessivamente lunghe e strette. Per qualsiasi unione di spigoli, quando lo scostamento squadrato supererebbe quella distanza massima, si applica l'unione "quadrata".

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyEndType:

.. rst-class:: classref-enumeration

enum **PolyEndType**: :ref:`🔗<enum_Geometry2D_PolyEndType>`

.. _class_Geometry2D_constant_END_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_POLYGON** = ``0``

Le estremità si uniscono utilizzando il valore :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` e il percorso viene riempito come un poligono.

.. _class_Geometry2D_constant_END_JOINED:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_JOINED** = ``1``

Le estremità si uniscono utilizzando il valore :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` e il percorso viene riempito come una polilinea.

.. _class_Geometry2D_constant_END_BUTT:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_BUTT** = ``2``

Le estremità vengono quadrate senza essere allungate.

.. _class_Geometry2D_constant_END_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_SQUARE** = ``3``

Le estremità saranno quadrate e allungate di ``delta`` unità.

.. _class_Geometry2D_constant_END_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_ROUND** = ``4``

Le estremità saranno arrotondate e allungate di ``delta`` unità.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Geometry2D_method_bresenham_line:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **bresenham_line**\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Geometry2D_method_bresenham_line>`

Restituisce la `linea di Bresenham <https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm>`__ tra i punti ``from`` e ``to``. Una linea di Bresenham è una serie di pixel che disegna una linea ed è sempre spessa 1 pixel su ogni riga e colonna del disegno (mai di più, mai di meno).

Codice di esempio per disegnare una linea tra due nodi :ref:`Marker2D<class_Marker2D>` utilizzando una serie di chiamate a :ref:`CanvasItem.draw_rect()<class_CanvasItem_method_draw_rect>`:

::

    func _draw():
        for pixel in Geometry2D.bresenham_line($MarkerA.position, $MarkerB.position):
            draw_rect(Rect2(pixel, Vector2.ONE), Color.WHITE)

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polygons>`

Ritaglia ``polygon_a`` rispetto a ``polygon_b`` e restituisce un array di poligoni ritagliati. Questo esegue :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` tra i poligoni. Restituisce un array vuoto se ``polygon_b`` si sovrappone completamente a ``polygon_a``.

Se ``polygon_b`` è racchiuso da ``polygon_a``, restituisce un poligono esterno (confine) e un poligono interno (buco) che si potrebbero distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polyline_with_polygon>`

Ritaglia ``polyline`` rispetto a ``polygon`` e restituisce un array di polilinee ritagliate. Questo esegue :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` tra la polilinea e il poligono. Questa operazione può essere pensata come il taglio di una linea con una forma chiusa.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_convex_hull:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **convex_hull**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_convex_hull>`

Fornito un array di :ref:`Vector2<class_Vector2>`, restituisce l'inviluppo convesso come una lista di punti in ordine antiorario. L'ultimo punto è uguale al primo.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_decompose_polygon_in_convex:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **decompose_polygon_in_convex**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_decompose_polygon_in_convex>`

Scompone il poligono ``polygon`` in più inviluppi convessi e restituisce un array di :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_exclude_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **exclude_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_exclude_polygons>`

Esclude reciprocamente l'area comune definita dall'intersezione di ``polygon_a`` e ``polygon_b`` (vedi :ref:`intersect_polygons()<class_Geometry2D_method_intersect_polygons>`) e restituisce un array di poligoni esclusi. Questo esegue :ref:`OPERATION_XOR<class_Geometry2D_constant_OPERATION_XOR>` tra i poligoni. In altre parole, restituisce tutto tranne l'area comune tra i poligoni.

L'operazione potrebbe produrre un poligono esterno (confine) e un poligono interno (buco) che si possono distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment>`

Restituisce il punto 2D sul segmento 2D (``s1``, ``s2``) che è più vicino a ``point``. Il punto restituito sarà sempre all'interno del segmento specificato.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`

Restituisce il punto 2D sulla linea 2D definita da (``s1``, ``s2``) che è più vicino a ``point``. Il punto restituito può essere all'interno del segmento (``s1``, ``s2``) o all'esterno di esso, ovvero da qualche parte sulla linea che si estende dal segmento.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_points_between_segments>`

Forniti i due segmenti 2D (``p1``, ``q1``) e (``p2``, ``q2``), trova quei due punti sui due segmenti più vicini tra loro. Restituisce un :ref:`PackedVector2Array<class_PackedVector2Array>` che contiene questo punto su (``p1``, ``q1``) e il punto corrispondente su (``p2``, ``q2``).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polygons>`

Interseca ``polygon_a`` con ``polygon_b`` e restituisce un array di poligoni intersecati. Questo esegue :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>` tra i poligoni. In altre parole, restituisce l'area comune condivisa dai poligoni. Restituisce un array vuoto se non si verifica alcuna intersezione.

L'operazione potrebbe produrre un poligono esterno (confine) e un poligono interno (buco) che si possono distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polyline_with_polygon>`

Interseca ``polyline`` con ``polygon`` e restituisce un array di polilinee intersecate. Questo esegue :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>` tra la polilinea e il poligono. Questa operazione può essere pensata come il taglio di una linea con una forma chiusa.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_circle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_circle**\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_circle>`

Restituisce ``true`` se il punto ``point`` è all'interno del cerchio o se si trova esattamente *sul* confine del cerchio, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_polygon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_polygon**\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_polygon>`

Restituisce ``true`` se il punto ``point`` è all'interno del poligono (``polygon``) o se è locato esattamente *sul* bordo del poligono, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_polygon_clockwise:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_polygon_clockwise**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_polygon_clockwise>`

Restituisce ``true`` se i vertici di ``polygon`` sono ordinati in senso orario, altrimenti restituisce ``false``.

\ **Nota:** Suppone un sistema di coordinate cartesiane in cui ``+x`` punta a destra e ``+y`` punta in alto. Se si utilizzano le coordinate dello schermo (``+y`` è verso il basso), il risultato dovrà essere capovolto (vale a dire che un risultato ``true`` indicherà il senso antiorario).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_line_intersects_line:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **line_intersects_line**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_line_intersects_line>`

Restituisce il punto di intersezione tra le due linee (``from_a``, ``dir_a``) e (``from_b``, ``dir_b``). Restituisce un :ref:`Vector2<class_Vector2>` o ``null`` se le linee sono parallele.

\ ``from`` e ``dir`` non sono *estremi* di un segmento di linea o raggio, ma la pendenza (``dir``) e un punto noto (``from``) su quella linea. Per ottenere l'intersezione tra due segmenti, usa :ref:`segment_intersects_segment()<class_Geometry2D_method_segment_intersects_segment>`.


.. tabs::

 .. code-tab:: gdscript

    var from_a = Vector2.ZERO
    var dir_a = Vector2.RIGHT
    var from_b = Vector2.DOWN

    # Restituisce Vector2(1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(1, -1))
    # Restituisce Vector2(-1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(-1, -1))
    # Restituisce null
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2.RIGHT)

 .. code-tab:: csharp

    var fromA = Vector2.Zero;
    var dirA = Vector2.Right;
    var fromB = Vector2.Down;

    // Restituisce new Vector2(1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(1, -1));
    // Restituisce new Vector2(-1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(-1, -1));
    // Restituisce null
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, Vector2.Right);



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_make_atlas:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_atlas**\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_make_atlas>`

Fornito un array di :ref:`Vector2<class_Vector2>` che rappresentano tile, crea un atlante. Il dizionario restituito ha due chiavi: ``points`` è un :ref:`PackedVector2Array<class_PackedVector2Array>` che specifica le posizioni di ogni tile, ``size`` contiene le dimensioni complessive dell'intero atlante come :ref:`Vector2i<class_Vector2i>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_merge_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **merge_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_merge_polygons>`

Unisce (combina) ``polygon_a`` e ``polygon_b`` e restituisce un array di poligoni uniti. Questo esegue :ref:`OPERATION_UNION<class_Geometry2D_constant_OPERATION_UNION>` tra i poligoni.

L'operazione potrebbe produrre un poligono esterno (confine) e molteplici poligoni interni (buchi) che si possono distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ ) :ref:`🔗<class_Geometry2D_method_offset_polygon>`

Gonfia o sgonfia il poligono ``polygon`` di ``delta`` unità (pixel). Se ``delta`` è positivo, fa crescere il poligono verso l'esterno. Se ``delta`` è negativo, rimpicciolisce il poligono verso l'interno. Restituisce un array di poligoni perché il gonfiaggio/sgonfiaggio potrebbe produrre più poligoni discreti. Restituisce un array vuoto se ``delta`` è negativo e il suo valore assoluto supera approssimativamente le dimensioni minime del rettangolo di delimitazione del poligono.

I vertici di ogni poligono saranno arrotondati come determinato da ``join_type``.

L'operazione potrebbe produrre un poligono esterno (confine) e un poligono interno (buco) che si possono distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

\ **Nota:** Per traslare in modo specifico i vertici del poligono, moltiplicali per un :ref:`Transform2D<class_Transform2D>`:


.. tabs::

 .. code-tab:: gdscript

    var polygon = PackedVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
    var offset = Vector2(50, 50)
    polygon = Transform2D(0, offset) * polygon
    print(polygon) # Stampa [(50.0, 50.0), (150.0, 50.0), (150.0, 150.0), (50.0, 150.0)]

 .. code-tab:: csharp

    var polygon = new Vector2[] { new Vector2(0, 0), new Vector2(100, 0), new Vector2(100, 100), new Vector2(0, 100) };
    var offset = new Vector2(50, 50);
    polygon = new Transform2D(0, offset) * polygon;
    GD.Print((Variant)polygon); // Stampa [(50, 50), (150, 50), (150, 150), (50, 150)]



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polyline:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polyline**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) :ref:`🔗<class_Geometry2D_method_offset_polyline>`

Gonfia o sgonfia la polilinea ``polyline`` di ``delta`` unità (pixel), producendo poligoni. Se ``delta`` è positivo, fa crescere la polilinea verso l'esterno. Restituisce un array di poligoni perché il gonfiaggio/sgonfiaggio potrebbe produrre più poligoni discreti. Se ``delta`` è negativo, restituisce un array vuoto.

I vertici di ogni poligono saranno arrotondati come definito da ``join_type``.

I punti finali di ogni poligono saranno arrotondati come definito da ``end_type``.

L'operazione potrebbe produrre un poligono esterno (confine) e un poligono interno (buco) che si possono distinguere chiamando :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_point_is_inside_triangle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **point_is_inside_triangle**\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Geometry2D_method_point_is_inside_triangle>`

Restituisce se il punto ``point`` si trova all'interno del triangolo specificato da ``a``, ``b`` e ``c``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_circle:

.. rst-class:: classref-method

:ref:`float<class_float>` **segment_intersects_circle**\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_circle>`

Dato il segmento 2D (``segment_from``, ``segment_to``), restituisce la posizione sul segmento (come numero compreso tra 0 e 1) in cui il segmento tocca il cerchio che si trova nella posizione ``circle_position`` e ha raggio ``circle_radius``. Se il segmento non interseca il cerchio, viene restituito -1 (questo vale anche se la linea che estende il segmento interseca il cerchio, ma il segmento no).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_segment**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_segment>`

Verifica se due segmenti di linea si intersecano, con la linea ``a`` tra ``from_a`` e ``to_a`` e la linea ``b`` tra ``from_b`` e ``to_b``. Se i segmenti si intersecano, il punto di intersezione è restituito come :ref:`Vector2<class_Vector2>`. Se non c'è alcuna intersezione, è restituito ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_delaunay**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_delaunay>`

Triangola l'area specificata da una serie discreta di punti (``points``) in modo che nessun punto sia all'interno del cerchio circoscritto di alcun triangolo risultante. Restituisce un :ref:`PackedInt32Array<class_PackedInt32Array>` in cui ogni triangolo è composto da tre indici di punti consecutivi in ``points`` (ad esempio, l'array restituito avrà ``n * 3`` elementi, con ``n`` come numero di triangoli trovati). Se la triangolazione non è riuscita, viene restituito un :ref:`PackedInt32Array<class_PackedInt32Array>` vuoto.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_polygon>`

Triangola il poligono specificato dai punti in ``polygon``. Restituisce un :ref:`PackedInt32Array<class_PackedInt32Array>` in cui ogni triangolo è composto da tre indici di punti consecutivi in ``polygon`` (ad esempio, l'array restituito avrà ``n * 3`` elementi, con ``n`` come numero di triangoli trovati). I triangoli risultanti saranno sempre in senso antiorario e il contorno verrà invertito se è in senso orario. Se la triangolazione non è riuscita, viene restituito un :ref:`PackedInt32Array<class_PackedInt32Array>` vuoto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
