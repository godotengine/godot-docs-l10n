:github_url: hide

.. _class_RayCast3D:

RayCast3D
=========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un raggio nello spazio 3D, utilizzato per trovare il primo oggetto di collisione che interseca.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un raycast rappresenta un raggio dalla sua origine alla sua :ref:`target_position<class_RayCast3D_property_target_position>` che rileva l'oggetto più vicino lungo il suo percorso, se ne interseca uno.

\ **RayCast3D** può ignorare alcuni oggetti aggiungendoli a un elenco di eccezioni, facendo in modo che il suoi risultati di rilevamento ignorino :ref:`Area3D<class_Area3D>` (:ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`) o :ref:`PhysicsBody3D<class_PhysicsBody3D>` (:ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`), o configurando gli strati di fisica.

\ **RayCast3D** calcola l'intersezione a ogni frame di fisica e mantiene il risultato fino al frame di fisica successivo. Per un raycast immediato, o se vuoi configurare un **RayCast3D** più volte all'interno dello stesso frame di fisica, usa :ref:`force_raycast_update()<class_RayCast3D_method_force_raycast_update>`.

Per passare su una regione nello spazio 3D, puoi approssimare la regione con più **RayCast3D** o usare :ref:`ShapeCast3D<class_ShapeCast3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Proiettare raggi <../tutorials/physics/ray-casting>`

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_RayCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`debug_shape_thickness<class_RayCast3D_property_debug_shape_thickness>`       | ``2``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_back_faces<class_RayCast3D_property_hit_back_faces>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>`                   | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_RayCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast3D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast3D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast3D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast3D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_face_index<class_RayCast3D_method_get_collision_face_index>`\ (\ ) |const|                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_RayCast3D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_RayCast3D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RayCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`Area3D<class_Area3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La maschera di collisione del raggio. Saranno rilevati solo gli oggetti in almeno uno strato di collisione abilitato nella maschera. Vedi `Strati di collisione e maschere <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RayCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

Il colore personalizzato da usare per disegnare la forma nell'editor e in fase di esecuzione se **Forme di collisione visibili** è abilitato nel menu **Debug**. Questo colore verrà evidenziato in fase di esecuzione se **RayCast3D** entra in collisione con qualcosa.

Se impostato su ``Color(0.0, 0.0, 0.0)`` (per impostazione predefinita), viene utilizzato il colore impostato in :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug_shape_thickness** = ``2`` :ref:`🔗<class_RayCast3D_property_debug_shape_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_debug_shape_thickness**\ (\ )

Se impostato su ``1``, viene utilizzata una linea come forma di debug. Altrimenti, viene disegnata una piramide troncata per rappresentare il **RayCast3D**. Richiede che **Forme di collisione visibili** sia abilitato nel menu **Debug** affinché la forma di debug sia visibile in fase di esecuzione.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Se ``true``, le collisioni saranno riportate.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Se ``true``, questo raycast non riporterà collisioni con il suo nodo padre. Questa proprietà ha effetto solo se il nodo padre è un :ref:`CollisionObject3D<class_CollisionObject3D>`. Vedi anche :ref:`Node.get_parent()<class_Node_method_get_parent>` e :ref:`add_exception()<class_RayCast3D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_back_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_back_faces** = ``true`` :ref:`🔗<class_RayCast3D_property_hit_back_faces>`

.. rst-class:: classref-property-setget

- |void| **set_hit_back_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_back_faces_enabled**\ (\ )

Se ``true``, il raggio colpirà le facce posteriori delle forme di poligoni concave con facce posteriori abilitate o forme di heightmap.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast3D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Se ``true``, il raggio rileverà un riscontro se iniziato all'interno di una forma. In questo caso la normale di collisione sarà ``Vector3(0, 0, 0)``. Non influisce sulle forme senza volume come poligoni concavi o heightmap.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_RayCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Il punto di destinazione del raggio, relativo alla :ref:`Node3D.position<class_Node3D_property_position>` di questo raycast.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RayCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception>`

Aggiunge un'eccezione di collisione in modo che il raggio non riporti le collisioni con il nodo ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception_rid>`

Aggiunge un'eccezione di collisione in modo che il raggio non riporti le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast3D_method_clear_exceptions>`

Rimuove tutte le eccezioni di collisione per questo raggio.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast3D_method_force_raycast_update>`

Aggiorna immediatamente le informazioni di collisione per il raggio, senza attendere la successiva chiamata ``_physics_process``. Utilizza questo metodo, ad esempio, quando il raggio o il suo genitore hanno cambiato stato.

\ **Nota:** :ref:`enabled<class_RayCast3D_property_enabled>` non deve essere ``true`` affinché ciò funzioni.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider>`

Restituisce il primo oggetto che il raggio interseca, oppure ``null`` se nessun oggetto interseca il raggio (ovvero :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` restituisce ``false``).

\ **Nota:** Non è garantito che questo oggetto sia un :ref:`CollisionObject3D<class_CollisionObject3D>`. Ad esempio, se il raggio interseca un :ref:`CSGShape3D<class_CSGShape3D>` o una :ref:`GridMap<class_GridMap>`, il metodo restituirà un'istanza di :ref:`CSGShape3D<class_CSGShape3D>` o :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_rid>`

Restituisce il :ref:`RID<class_RID>` del primo oggetto che il raggio interseca, oppure un :ref:`RID<class_RID>` vuoto se nessun oggetto interseca il raggio (ovvero :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` restituisce ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_shape>`

Restituisce l'ID della forma del primo oggetto che il raggio interseca, o ``0`` se nessun oggetto interseca il raggio (ovvero :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` restituisce ``false``).

Per ottenere il nodo forma intersecato, per un obiettivo :ref:`CollisionObject3D<class_CollisionObject3D>`, usa:


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # Un CollisionObject3D.
    var shape_id = get_collider_shape() # L'indice della forma nel collisore.
    var owner_id = target.shape_find_owner(shape_id) # L'ID del proprietario nel collisore.
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject3D)GetCollider(); // Un CollisionObject3D.
    var shapeId = GetColliderShape(); // L'indice della forma nel collisore.
    var ownerId = target.ShapeFindOwner(shapeId); // L'ID del proprietario nel collisore.
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_face_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_face_index**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_face_index>`

Restituisce l'indice della faccia dell'oggetto di collisione nel punto di collisione, oppure ``-1`` se la forma che interseca il raggio non è un :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_RayCast3D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_normal>`

Restituisce la normale della forma dell'oggetto intersecante nel punto di collisione, oppure ``Vector3(0, 0, 0)`` se il raggio inizia all'interno della forma e :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` è ``true``.

\ **Nota:** Verifica che :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` restituisca ``true`` prima di chiamare questo metodo per assicurarti che la normale restituita sia valida e aggiornata.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_point>`

Restituisce il punto di collisione in cui il raggio interseca l'oggetto più vicino, nel sistema di coordinate globali. Se :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` è ``true`` e il raggio inizia all'interno di una forma di collisione, questa funzione restituirà il punto di origine del raggio.

\ **Nota:** Verifica che :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` restituisca ``true`` prima di chiamare questo metodo per assicurarti che il punto restituito sia valido e aggiornato.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_is_colliding>`

Restituisce se un oggetto interseca il vettore del raggio (considerando la lunghezza del vettore).

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception>`

Rimuove un'eccezione di collisione in modo che il raggio possa riportare le collisioni con il nodo ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception_rid>`

Rimuove un'eccezione di collisione in modo che il raggio possa riportare le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast3D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_RayCast3D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
