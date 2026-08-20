:github_url: hide

.. _class_PhysicsShapeQueryParameters2D:

PhysicsShapeQueryParameters2D
=============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce parametri per i metodi di :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Modificando varie proprietà di questo oggetto, come la forma, è possibile configurare i parametri per i metodi di :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`   | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>` | ``true``                          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsShapeQueryParameters2D_property_collision_mask>`           | ``4294967295``                    |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsShapeQueryParameters2D_property_exclude>`                         | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsShapeQueryParameters2D_property_margin>`                           | ``0.0``                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`motion<class_PhysicsShapeQueryParameters2D_property_motion>`                           | ``Vector2(0, 0)``                 |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Resource<class_Resource>`                    | :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>`                             |                                   |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                              | :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`                     | ``RID()``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`              | :ref:`transform<class_PhysicsShapeQueryParameters2D_property_transform>`                     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Se ``true``, l'interrogazione prenderà i nodi :ref:`Area2D<class_Area2D>` in considerazione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Se ``true``, l'interrogazione prenderà i nodi :ref:`PhysicsBody2D<class_PhysicsBody2D>` in considerazione.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica che l'interrogazione rileverà (come una maschera di bit). Per impostazione predefinita, sono rilevati tutti gli strati di collisione. Consulta `Strati di collisione e maschere <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

La lista degli :ref:`RID<class_RID>` degli oggetti che saranno esclusi dalle collisioni. Usa :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` per ottenere il :ref:`RID<class_RID>` associato a un nodo derivato da :ref:`CollisionObject2D<class_CollisionObject2D>`.

\ **Nota:** L'array restituito è copiato e qualsiasi modifica non aggiornerà il valore della proprietà originale. Per aggiornare il valore devi modificare l'array restituito e quindi assegnarlo di nuovo alla proprietà.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Il margine di collisione per la forma.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_motion:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion**\ (\ )

Il movimento della forma da interrogare.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **shape** :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_shape**\ (\ )

Lo :ref:`Shape2D<class_Shape2D>` che sarà utilizzato per le interrogazioni di collisione o intersezione. Questo memorizza il riferimento effettivo, il che evita che la forma sia rilasciata durante l'utilizzo per le interrogazioni, quindi è sempre preferibile utilizzare questo anziché :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shape_rid** = ``RID()`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape_rid>`

.. rst-class:: classref-property-setget

- |void| **set_shape_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shape_rid**\ (\ )

Il :ref:`RID<class_RID>` della forma interrogata che sarà utilizzato per le interrogazioni di collisione o intersezione. Utilizza questo su :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>` se vuoi ottimizzare le prestazioni attraverso l'API del server:


.. tabs::

 .. code-tab:: gdscript

    var shape_rid = PhysicsServer2D.circle_shape_create()
    var radius = 64
    PhysicsServer2D.shape_set_data(shape_rid, radius)

    var params = PhysicsShapeQueryParameters2D.new()
    params.shape_rid = shape_rid

    # Esegui le interrogazioni di fisica qui...

    # Rilascia la forma quando hai finito con le interrogazioni di fisica.
    PhysicsServer2D.free_rid(shape_rid)

 .. code-tab:: csharp

    RID shapeRid = PhysicsServer2D.CircleShapeCreate();
    int radius = 64;
    PhysicsServer2D.ShapeSetData(shapeRid, radius);

    var params = new PhysicsShapeQueryParameters2D();
    params.ShapeRid = shapeRid;

    // Esegui le interrogazioni di fisica qui...

    // Rilascia la forma quando hai finito con le interrogazioni di fisica.
    PhysicsServer2D.FreeRid(shapeRid);



.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La matrice di trasformazione della forma interrogata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
