:github_url: hide

.. _class_Shape2D:

Shape2D
=======

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CapsuleShape2D<class_CapsuleShape2D>`, :ref:`CircleShape2D<class_CircleShape2D>`, :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, :ref:`RectangleShape2D<class_RectangleShape2D>`, :ref:`SegmentShape2D<class_SegmentShape2D>`, :ref:`SeparationRayShape2D<class_SeparationRayShape2D>`, :ref:`WorldBoundaryShape2D<class_WorldBoundaryShape2D>`

Classe base astratta per forme 2D utilizzate per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base astratta per tutte le forme 2D, progettata per l'uso in fisica.

\ **Prestazioni:** Le forme primitive, in particolare :ref:`CircleShape2D<class_CircleShape2D>`, sono veloci da verificare per le collisioni. :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` è più lenta e :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` è la più lenta.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape2D_property_custom_solver_bias>` | ``0.0`` |
   +---------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide<class_Shape2D_method_collide>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_and_get_contacts<class_Shape2D_method_collide_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide_with_motion<class_Shape2D_method_collide_with_motion>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_with_motion_and_get_contacts<class_Shape2D_method_collide_with_motion_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`draw<class_Shape2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ )                                                                                                                                                                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_rect<class_Shape2D_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Shape2D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape2D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

Il bias personalizzato del risolutore della forma. Definisce quanto i corpi reagiscono per imporre la separazione dei contatti quando è coinvolta questa forma.

Quando impostato su ``0``, è usato il valore predefinito da :ref:`ProjectSettings.physics/2d/solver/default_contact_bias<class_ProjectSettings_property_physics/2d/solver/default_contact_bias>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Shape2D_method_collide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide>`

Restituisce ``true`` se questa forma è in collisione con un'altra.

Questo metodo necessita della matrice di trasformazione per questa forma (``local_xform``), della forma con cui verificare le collisioni (``with_shape``) e della matrice di trasformazione di quella forma (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide_and_get_contacts>`

Restituisce una lista di coppie di punti di contatto in cui questa forma tocca un'altra.

Se non ci sono collisioni, la lista restituita è vuota. Altrimenti, la lista restituita contiene i punti di contatto disposti in coppie, con elementi che si alternano tra punti sul confine di questa forma e punti sul confine di ``with_shape``.

Una coppia di collisioni A, B può essere utilizzata per calcolare la normale di collisione con ``(B - A).normalized()`` e la profondità di collisione con ``(B - A).length()``. Queste informazioni sono in genere utilizzate per separare le forme, in particolare nei risolutori di collisioni.

Questo metodo necessita della matrice di trasformazione per questa forma (``local_xform``), della forma con cui verificare le collisioni (``with_shape``) e della matrice di trasformazione di quella forma (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_with_motion**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion>`

Restituisce se questa forma entrerebbe in collisione con un'altra, se fosse applicato un determinato movimento.

Questo metodo necessita della matrice di trasformazione per questa forma (``local_xform``), del movimento da testare su questa forma (``local_motion``), della forma con cui verificare le collisioni (``with_shape``), della matrice di trasformazione di quella forma (``shape_xform``) e del movimento da testare sull'altro oggetto (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_with_motion_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion_and_get_contacts>`

Restituisce una lista di coppie di punti di contatto in cui questa forma ne toccherebbe un'altra, se fosse applicato un determinato movimento.

Se non ci sarebbero collisioni, la lista restituita è vuota. Altrimenti, la lista restituita contiene i punti di contatto disposti in coppie, con elementi che si alternano tra punti sul confine di questa forma e punti sul confine di ``with_shape``.

Una coppia di collisioni A, B può essere utilizzata per calcolare la normale di collisione con ``(B - A).normalized()`` e la profondità di collisione con ``(B - A).length()``. Queste informazioni sono in genere utilizzate per separare le forme, in particolare nei risolutori di collisioni.

Questo metodo necessita della matrice di trasformazione per questa forma (``local_xform``), del movimento da testare su questa forma (``local_motion``), della forma con cui verificare le collisioni (``with_shape``), della matrice di trasformazione di quella forma (``shape_xform``) e del movimento da testare sull'altro oggetto (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Shape2D_method_draw>`

Disegna una forma solida su un :ref:`CanvasItem<class_CanvasItem>` riempita con il colore ``color`` attraverso l'API del :ref:`RenderingServer<class_RenderingServer>`. Il metodo di disegno esatto è specifico per ogni forma e non può essere configurato.

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Shape2D_method_get_rect>`

Restituisce un :ref:`Rect2<class_Rect2>` che rappresenta il confine della forma.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
