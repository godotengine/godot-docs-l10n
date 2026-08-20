:github_url: hide

.. _class_CollisionPolygon2D:

CollisionPolygon2D
==================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo che fornisce una forma poligonale a un :ref:`CollisionObject2D<class_CollisionObject2D>` genitore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo che fornisce una forma poligonale a un :ref:`CollisionObject2D<class_CollisionObject2D>` genitore e consente di modificarla. Il poligono può essere concavo o convesso. Ciò può dare una forma di rilevamento a un :ref:`Area2D<class_Area2D>`, trasformare un :ref:`PhysicsBody2D<class_PhysicsBody2D>` in un oggetto solido o dare una forma cava a uno :ref:`StaticBody2D<class_StaticBody2D>`.

\ **Avviso:** Un :ref:`CollisionShape2D<class_CollisionShape2D>` ridimensionato in modo non uniforme probabilmente non si comporterà come previsto. Assicurati di mantenere la sua scala uguale su tutti gli assi e regola invece la sua forma.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` | :ref:`build_mode<class_CollisionPolygon2D_property_build_mode>`                                   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon2D_property_disabled>`                                       | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`one_way_collision<class_CollisionPolygon2D_property_one_way_collision>`                     | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>` | ``Vector2(0, 1)``        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`one_way_collision_margin<class_CollisionPolygon2D_property_one_way_collision_margin>`       | ``1.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon2D_property_polygon>`                                         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CollisionPolygon2D_BuildMode:

.. rst-class:: classref-enumeration

enum **BuildMode**: :ref:`🔗<enum_CollisionPolygon2D_BuildMode>`

.. _class_CollisionPolygon2D_constant_BUILD_SOLIDS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SOLIDS** = ``0``

Le collisioni includeranno il poligono e la sua area contenuta. In questa modalità il nodo ha lo stesso effetto di diversi nodi :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, uno per ogni forma convessa nella scomposizione convessa del poligono (ma senza il sovraccarico di più nodi).

.. _class_CollisionPolygon2D_constant_BUILD_SEGMENTS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SEGMENTS** = ``1``

Le collisioni includeranno solo i bordi del poligono. In questa modalità il nodo ha lo stesso effetto di un singolo :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` composto da segmenti, con la restrizione che ogni segmento (dopo il primo) inizia dove finisce il precedente, e l'ultimo finisce dove inizia il primo (formando un poligono chiuso ma cavo).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CollisionPolygon2D_property_build_mode:

.. rst-class:: classref-property

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **build_mode** = ``0`` :ref:`🔗<class_CollisionPolygon2D_property_build_mode>`

.. rst-class:: classref-property-setget

- |void| **set_build_mode**\ (\ value\: :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>`\ )
- :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **get_build_mode**\ (\ )

Modalità di costruzione delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Se ``true``, nessuna collisione sarà rilevata. Questa proprietà dovrebbe essere modificata con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Se ``true``, solo i bordi rivolti verso l'alto, rispetto alla rotazione di **CollisionPolygon2D**, entreranno in collisione con altri oggetti.

\ **Nota:** Questa proprietà non ha effetto se questo **CollisionPolygon2D** è un figlio di un nodo :ref:`Area2D<class_Area2D>`.

\ **Nota:** La direzione di collisione a senso unico si può configurare impostando :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **one_way_collision_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_direction>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_one_way_collision_direction**\ (\ )

La direzione utilizzata per la collisione a senso unico.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

Il margine utilizzato per la collisione a senso unico (in pixel). Valori più alti renderanno la forma più spessa e funzioneranno meglio per i collisori che entrano nel poligono ad alta velocità.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

La lista dei vertici del poligono. Ogni punto sarà collegato al successivo, e il punto finale sarà collegato al primo.

\ **Nota:** I vertici restituiti sono nello spazio di coordinate locale del **CollisionPolygon2D**.

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
