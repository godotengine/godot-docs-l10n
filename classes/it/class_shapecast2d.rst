:github_url: hide

.. _class_ShapeCast2D:

ShapeCast2D
===========

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma 2D che scansiona una regione di spazio per rilevare i :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La proiezione di forme consente di rilevare oggetti di collisione scansionando il suo :ref:`shape<class_ShapeCast2D_property_shape>` lungo la direzione di proiezione determinata da :ref:`target_position<class_ShapeCast2D_property_target_position>`. È simile a :ref:`RayCast2D<class_RayCast2D>`, ma consente di scansionare una regione dello spazio, anziché una semplice linea retta. **ShapeCast2D** può rilevare più oggetti di collisione. È utile per cose come ampi raggi laser o per agganciare una forma semplice a un pavimento.

Si possono sovrapporre collisioni immediatamente con :ref:`target_position<class_ShapeCast2D_property_target_position>` impostato su ``Vector2(0, 0)`` e chiamando :ref:`force_shapecast_update()<class_ShapeCast2D_method_force_shapecast_update>` all'interno dello stesso frame di fisica. Ciò aiuta a superare alcune limitazioni di :ref:`Area2D<class_Area2D>` quando è utilizzato come area di rilevamento istantanea, poiché le informazioni di collisione non sono immediatamente disponibili.

\ **Nota:** La proiezione di forme è più costosa da elaborare rispetto alla proiezione di raggi.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast2D_property_collision_result>`       | ``[]``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast2D_property_margin>`                           | ``0.0``            |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast2D_property_max_results>`                 | ``32``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_ShapeCast2D_property_shape>`                             |                    |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_ShapeCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast2D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast2D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast2D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast2D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast2D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_ShapeCast2D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_ShapeCast2D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ShapeCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La maschera di collisione della forma. Saranno rilevati solo gli oggetti in almeno uno strato di collisione abilitato nella maschera. Vedi `Strati di collisione e maschere <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast2D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

Restituisce tutte le informazioni sulla collisione dalla scansione delle collisioni. I dati restituiti sono gli stessi del metodo :ref:`PhysicsDirectSpaceState2D.get_rest_info()<class_PhysicsDirectSpaceState2D_method_get_rest_info>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Se ``true``, le collisioni saranno riportate.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Se ``true``, il nodo genitore sarà escluso dal rilevamento delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Il margine di collisione per la forma. Un margine più ampio aiuta a rilevare le collisioni in modo più coerente, a scapito della precisione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast2D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

Con questo parametro è possibile limitare il numero di intersezioni, per ridurre i tempi di elaborazione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_ShapeCast2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forma da utilizzare per le interrogazioni di collisione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_ShapeCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Il punto di destinazione della forma, relativo alla :ref:`Node2D.position<class_Node2D_property_position>` di questo nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ShapeCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception>`

Aggiunge un'eccezione di collisione in modo che la forma non riporti le collisioni con il nodo specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception_rid>`

Aggiunge un'eccezione di collisione in modo che la forma non riporti le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_clear_exceptions>`

Rimuove tutte le eccezioni di collisione per questa forma.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_force_shapecast_update>`

Aggiorna immediatamente le informazioni di collisione per la forma, senza attendere la successiva chiamata a ``_physics_process``. Utilizza questo metodo, ad esempio, quando la forma o il suo genitore hanno cambiato stato.

\ **Nota:** Impostare :ref:`enabled<class_ShapeCast2D_property_enabled>` su ``true`` non è necessario affinché ciò funzioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`

Restituisce la frazione dall'origine di questo cast al suo :ref:`target_position<class_ShapeCast2D_property_target_position>` di quanto lontano la forma può muoversi senza provocare una collisione, come valore compreso tra ``0.0`` e ``1.0``..

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`

Restituisce la frazione dall'origine di questo cast al suo :ref:`target_position<class_ShapeCast2D_property_target_position>` di quanto lontano la forma deve muoversi per provocare una collisione, come valore compreso tra ``0.0`` e ``1.0``..

In condizioni ideali, questo sarebbe lo stesso di :ref:`get_closest_collision_safe_fraction()<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`, tuttavia la proiezione della forma viene calcolata in passaggi discreti, quindi il punto preciso di collisione può verificarsi tra due posizioni calcolate.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider>`

Restituisce l':ref:`Object<class_Object>` in collisione di una delle molteplici collisioni all'indice ``index``, oppure ``null`` se nessun oggetto interseca la forma (ovvero, :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` restituisce ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_rid>`

Restituisce il :ref:`RID<class_RID>` dell'oggetto in collisione di una delle molteplici collisioni all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_shape>`

Restituisce l'ID della forma in collisione di una delle molteplici collisioni all'indice ``index``, oppure ``0`` se nessun oggetto interseca la forma (ovvero, :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` restituisce ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_count>`

Il numero di collisioni rilevate nel punto di impatto. Utilizzalo per iterare su più collisioni come fornito dai metodi :ref:`get_collider()<class_ShapeCast2D_method_get_collider>`, :ref:`get_collider_shape()<class_ShapeCast2D_method_get_collider_shape>`, :ref:`get_collision_point()<class_ShapeCast2D_method_get_collision_point>` e :ref:`get_collision_normal()<class_ShapeCast2D_method_get_collision_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_normal>`

Restituisce la normale di una delle collisioni multiple all'indice ``index`` dell'oggetto intersecante.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_point>`

Restituisce il punto di collisione di una delle molteplici collisioni all'indice ``index`` dove la forma interseca l'oggetto in collisione.

\ **Nota:** Questo punto è nel sistema di coordinate **globale**.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_is_colliding>`

Restituisce un valore che indica se un oggetto interseca il vettore della forma (considerando la lunghezza del vettore).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception>`

Rimuove un'eccezione di collisione in modo che la forma riporti le collisioni con il nodo specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception_rid>`

Rimuove un'eccezione di collisione in modo che la forma riporti le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast2D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
