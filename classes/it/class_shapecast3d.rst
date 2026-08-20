:github_url: hide

.. _class_ShapeCast3D:

ShapeCast3D
===========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma 3D che scansiona una regione di spazio per rilevare i :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La proiezione di forme consente di rilevare oggetti di collisione scansionando il suo :ref:`shape<class_ShapeCast3D_property_shape>` lungo la direzione di proiezione determinata da :ref:`target_position<class_ShapeCast3D_property_target_position>`. È simile a :ref:`RayCast3D<class_RayCast3D>`, ma consente di scansionare una regione dello spazio, anziché una semplice linea retta. **ShapeCast3D** può rilevare più oggetti di collisione. È utile per cose come ampi raggi laser o per agganciare una forma semplice a un pavimento.

Si possono sovrapporre collisioni immediatamente con :ref:`target_position<class_ShapeCast3D_property_target_position>` impostato su ``Vector2(0, 0, 0)`` e chiamando :ref:`force_shapecast_update()<class_ShapeCast3D_method_force_shapecast_update>` all'interno dello stesso frame di fisica. Ciò aiuta a superare alcune limitazioni di :ref:`Area3D<class_Area3D>` quando è utilizzato come area di rilevamento istantanea, poiché le informazioni di collisione non sono immediatamente disponibili.

\ **Nota:** La proiezione di forme è più costosa da elaborare rispetto alla proiezione di raggi.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast3D_property_collision_result>`                 | ``[]``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_ShapeCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast3D_property_margin>`                                     | ``0.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast3D_property_max_results>`                           | ``32``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_ShapeCast3D_property_shape>`                                       |                       |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_ShapeCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast3D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast3D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast3D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast3D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast3D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_ShapeCast3D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_ShapeCast3D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`resource_changed<class_ShapeCast3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ShapeCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`Area3D<class_Area3D>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Se ``true``, saranno riportate le collisioni con i nodi :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La maschera di collisione della forma. Saranno rilevati solo gli oggetti in almeno uno strato di collisione abilitato nella maschera. Vedi `Strati di collisione e maschere <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast3D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

Restituisce tutte le informazioni sulla collisione dalla scansione delle collisioni. I dati restituiti sono gli stessi del metodo :ref:`PhysicsDirectSpaceState3D.get_rest_info()<class_PhysicsDirectSpaceState3D_method_get_rest_info>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ShapeCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

Il colore personalizzato da usare per disegnare la forma nell'editor e in fase di esecuzione se **Forme di ollisioni visibili** è abilitato nel menu **Debug**. Questo colore sarà evidenziato in fase di esecuzione se **ShapeCast3D** entra in collisione con qualcosa.

Se impostato su ``Color(0.0, 0.0, 0.0)`` (per impostazione predefinita), è usato il colore impostato in :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Se ``true``, le collisioni saranno riportate.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Se ``true``, il nodo genitore sarà escluso dal rilevamento delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Il margine di collisione per la forma. Un margine più ampio aiuta a rilevare le collisioni in modo più coerente, a scapito della precisione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast3D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

Con questo parametro è possibile limitare il numero di intersezioni, per ridurre i tempi di elaborazione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_ShapeCast3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

La forma da utilizzare per le interrogazioni di collisione.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_ShapeCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Il punto di destinazione della forma, relativo alla :ref:`Node3D.position<class_Node3D_property_position>` di questo nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ShapeCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception>`

Aggiunge un'eccezione di collisione in modo che la forma non riporti le collisioni con il nodo specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception_rid>`

Aggiunge un'eccezione di collisione in modo che la forma non riporti le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_clear_exceptions>`

Rimuove tutte le eccezioni di collisione per questa forma.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_force_shapecast_update>`

Aggiorna immediatamente le informazioni di collisione per la forma, senza attendere la successiva chiamata a ``_physics_process``. Utilizza questo metodo, ad esempio, quando la forma o il suo genitore hanno cambiato stato.

\ **Nota:** Impostare :ref:`enabled<class_ShapeCast3D_property_enabled>` su ``true`` non è necessario affinché ciò funzioni.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`

Restituisce la frazione dall'origine di questo cast al suo :ref:`target_position<class_ShapeCast3D_property_target_position>` di quanto lontano la forma può muoversi senza provocare una collisione, come valore compreso tra ``0.0`` e ``1.0``..

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`

Restituisce la frazione dall'origine di questo cast al suo :ref:`target_position<class_ShapeCast3D_property_target_position>` di quanto lontano la forma deve muoversi per provocare una collisione, come valore compreso tra ``0.0`` e ``1.0``..

In condizioni ideali, questo sarebbe lo stesso di :ref:`get_closest_collision_safe_fraction()<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`, tuttavia la proiezione della forma viene calcolata in passaggi discreti, quindi il punto preciso di collisione può verificarsi tra due posizioni calcolate.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider>`

Restituisce l':ref:`Object<class_Object>` in collisione di una delle molteplici collisioni all'indice ``index``, oppure ``null`` se nessun oggetto interseca la forma (ovvero, :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` restituisce ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_rid>`

Restituisce il :ref:`RID<class_RID>` dell'oggetto in collisione di una delle molteplici collisioni all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_shape>`

Restituisce l'ID della forma in collisione di una delle molteplici collisioni all'indice ``index``, oppure ``0`` se nessun oggetto interseca la forma (ovvero, :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` restituisce ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_count>`

Il numero di collisioni rilevate nel punto di impatto. Utilizzalo per iterare su più collisioni come fornito dai metodi :ref:`get_collider()<class_ShapeCast3D_method_get_collider>`, :ref:`get_collider_shape()<class_ShapeCast3D_method_get_collider_shape>`, :ref:`get_collision_point()<class_ShapeCast3D_method_get_collision_point>` e :ref:`get_collision_normal()<class_ShapeCast3D_method_get_collision_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_normal>`

Restituisce la normale di una delle collisioni multiple all'indice ``index`` dell'oggetto intersecante.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_point>`

Restituisce il punto di collisione di una delle molteplici collisioni all'indice ``index`` dove la forma interseca l'oggetto in collisione.

\ **Nota:** Questo punto è nel sistema di coordinate **globale**.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_is_colliding>`

Restituisce un valore che indica se un oggetto interseca il vettore della forma (considerando la lunghezza del vettore).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception>`

Rimuove un'eccezione di collisione in modo che la forma riporti le collisioni con il nodo specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception_rid>`

Rimuove un'eccezione di collisione in modo che la forma riporti le collisioni con il :ref:`RID<class_RID>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ShapeCast3D_method_resource_changed>`

**Deprecato:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Questo metodo non fa nulla.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast3D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
