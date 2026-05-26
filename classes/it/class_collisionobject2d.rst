:github_url: hide

.. _class_CollisionObject2D:

CollisionObject2D
=================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`Area2D<class_Area2D>`, :ref:`PhysicsBody2D<class_PhysicsBody2D>`

Classe di base astratta per oggetti di fisica 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base astratta per oggetti di fisica 2D. **CollisionObject2D** può contenere un numero qualsiasi di :ref:`Shape2D<class_Shape2D>` per la collisione. Ogni forma deve essere assegnata a un *proprietario di forme*. I proprietari di forme non sono nodi e non compaiono nell'editor, ma sono accessibili tramite codice attraverso i metodi ``shape_owner_*``.

\ **Nota:** Sono supportate solo le collisioni tra oggetti all'interno dello stesso canvas (il canvas :ref:`Viewport<class_Viewport>` o :ref:`CanvasLayer<class_CanvasLayer>`). Il comportamento delle collisioni tra oggetti in canvas diverse non è definito.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`       | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`         | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                              | :ref:`collision_priority<class_CollisionObject2D_property_collision_priority>` | ``1.0``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` | :ref:`disable_mode<class_CollisionObject2D_property_disable_mode>`             | ``0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>`         | ``true`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_input_event<class_CollisionObject2D_private_method__input_event>`\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_enter<class_CollisionObject2D_private_method__mouse_enter>`\ (\ ) |virtual|                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_exit<class_CollisionObject2D_private_method__mouse_exit>`\ (\ ) |virtual|                                                                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_enter<class_CollisionObject2D_private_method__mouse_shape_enter>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_exit<class_CollisionObject2D_private_method__mouse_shape_exit>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`create_shape_owner<class_CollisionObject2D_method_create_shape_owner>`\ (\ owner\: :ref:`Object<class_Object>`\ )                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_layer_value<class_CollisionObject2D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_mask_value<class_CollisionObject2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                           | :ref:`get_rid<class_CollisionObject2D_method_get_rid>`\ (\ ) |const|                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`get_shape_owner_one_way_collision_direction<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_shape_owner_one_way_collision_margin<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_shape_owners<class_CollisionObject2D_method_get_shape_owners>`\ (\ )                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_disabled<class_CollisionObject2D_method_is_shape_owner_disabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_one_way_collision_enabled<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_shape_owner<class_CollisionObject2D_method_remove_shape_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_layer_value<class_CollisionObject2D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_mask_value<class_CollisionObject2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_find_owner<class_CollisionObject2D_method_shape_find_owner>`\ (\ shape_index\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_add_shape<class_CollisionObject2D_method_shape_owner_add_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ )                                                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_clear_shapes<class_CollisionObject2D_method_shape_owner_clear_shapes>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                     | :ref:`shape_owner_get_owner<class_CollisionObject2D_method_shape_owner_get_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape2D<class_Shape2D>`                   | :ref:`shape_owner_get_shape<class_CollisionObject2D_method_shape_owner_get_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_count<class_CollisionObject2D_method_shape_owner_get_shape_count>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_index<class_CollisionObject2D_method_shape_owner_get_shape_index>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`shape_owner_get_transform<class_CollisionObject2D_method_shape_owner_get_transform>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_remove_shape<class_CollisionObject2D_method_shape_owner_remove_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_disabled<class_CollisionObject2D_method_shape_owner_set_disabled>`\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_direction<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ )    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_margin<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_transform<class_CollisionObject2D_method_shape_owner_set_transform>`\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_CollisionObject2D_signal_input_event:

.. rst-class:: classref-signal

**input_event**\ (\ viewport\: :ref:`Node<class_Node>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_input_event>`

Emesso quando si verifica un evento di input. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato. Vedi :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_entered>`

Emesso quando il puntatore del mouse entra in una delle forme di questo oggetto. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato. Tieni presente che lo spostamento tra forme diverse all'interno di un singolo **CollisionObject2D** non causerà l'emissione di questo segnale.

\ **Nota:** A causa della mancanza di rilevamento continuo delle collisioni, questo segnale potrebbe non essere emesso nell'ordine previsto se il mouse si muove abbastanza velocemente e l'area di **CollisionObject2D** è piccola. Questo segnale potrebbe non essere emesso anche se un altro **CollisionObject2D** si sovrappone al **CollisionObject2D** in questione.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_exited>`

Emesso quando il puntatore del mouse esce da una delle forme di questo oggetto. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato. Tieni presente che lo spostamento tra forme diverse all'interno di un singolo **CollisionObject2D** non causerà l'emissione di questo segnale.

\ **Nota:** A causa della mancanza di rilevamento continuo delle collisioni, questo segnale potrebbe non essere emesso nell'ordine previsto se il mouse si muove abbastanza velocemente e l'area di **CollisionObject2D** è piccola. Questo segnale potrebbe non essere emesso anche se un altro **CollisionObject2D** si sovrappone al **CollisionObject2D** in questione.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_entered:

.. rst-class:: classref-signal

**mouse_shape_entered**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_entered>`

Emesso quando il puntatore del mouse entra in una qualsiasi forma di questo oggetto o si sposta da una forma all'altra. ``shape_idx`` è l'indice figlio del :ref:`Shape2D<class_Shape2D>` nuovamente entrato. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_exited:

.. rst-class:: classref-signal

**mouse_shape_exited**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_exited>`

Emesso quando il puntatore del mouse esce da una qualsiasi forma di questo oggetto. ``shape_idx`` è l'indice figlio del :ref:`Shape2D<class_Shape2D>` uscito. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CollisionObject2D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject2D_DisableMode>`

.. _class_CollisionObject2D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, rimuovi dalla simulazione di fisica per fermare tutte le interazioni fisiche con questo **CollisionObject2D**.

Riaggiunge il corpo automaticamente alla simulazione di fisica quando il :ref:`Node<class_Node>` viene nuovamente elaborato.

.. _class_CollisionObject2D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, rendi statico il corpo. Non influisce su :ref:`Area2D<class_Area2D>`. :ref:`PhysicsBody2D<class_PhysicsBody2D>` non può essere influenzato da forze o altri corpi mentre è statico.

Ripristina il :ref:`PhysicsBody2D<class_PhysicsBody2D>` automaticamente alla modalità originale quando il :ref:`Node<class_Node>` viene nuovamente elaborato.

.. _class_CollisionObject2D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, non influire sulla simulazione di fisica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CollisionObject2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Gli strati di fisica in cui si trova questo CollisionObject2D. Gli oggetti di collisione possono esistere in uno o più dei 32 strati diversi. Vedi anche :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`.

\ **Nota:** L'oggetto A può rilevare un contatto con l'oggetto B solo se l'oggetto B si trova in uno qualsiasi degli strati che l'oggetto A scansiona. Vedi `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica scansionati da questo CollisionObject2D. Gli oggetti di collisione possono scansionare uno o più dei 32 diversi strati. Vedi anche :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

\ **Nota:** L'oggetto A può rilevare un contatto con l'oggetto B solo se l'oggetto B si trova in uno qualsiasi degli strati che l'oggetto A scansiona. Vedi `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CollisionObject2D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La priorità usata per risolvere le collisioni quando si verifica la penetrazione. Maggiore è la priorità, minore sarà la penetrazione nell'oggetto. Questo può essere utilizzato ad esempio per impedire al giocatore di oltrepassare i limiti di un livello.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject2D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject2D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **get_disable_mode**\ (\ )

Definisce il comportamento nella fisica quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_input_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_pickable** = ``true`` :ref:`🔗<class_CollisionObject2D_property_input_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pickable**\ (\ )

Se ``true``, questo oggetto è selezionabile. Un oggetto selezionabile può rilevare l'ingresso e l'uscita del cursore del mouse e, se il cursore è al suo interno, segnalare eventi di input. Richiede che almeno un bit in :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CollisionObject2D_private_method__input_event:

.. rst-class:: classref-method

|void| **_input_event**\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__input_event>`

Accetta :ref:`InputEvent<class_InputEvent>` non gestiti. ``shape_idx`` è l'indice figlio del :ref:`Shape2D<class_Shape2D>` cliccato. Connettiti a :ref:`input_event<class_CollisionObject2D_signal_input_event>` per recuperare facilmente questi eventi.

\ **Nota:** :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>` richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_enter:

.. rst-class:: classref-method

|void| **_mouse_enter**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_enter>`

Chiamato quando il puntatore del mouse entra in una qualsiasi delle forme di questo oggetto. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato. Nota che lo spostamento tra diverse forme all'interno di un singolo **CollisionObject2D** non provocherà la chiamata di questa funzione.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_exit>`

Chiamato quando il puntatore del mouse esce da tutte le forme di questo oggetto. Richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato. Nota che lo spostamento tra diverse forme all'interno di un singolo **CollisionObject2D** non provocherà la chiamata di questa funzione.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_enter:

.. rst-class:: classref-method

|void| **_mouse_shape_enter**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_enter>`

Chiamato quando il puntatore del mouse entra in una qualsiasi delle forme di questo oggetto o si sposta da una forma all'altra. Per essere chiamato, richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_exit:

.. rst-class:: classref-method

|void| **_mouse_shape_exit**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_exit>`

Chiamato quando il puntatore del mouse esce da una qualsiasi delle forme di questo oggetto. Per essere chiamato, richiede che :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` sia ``true`` e che almeno un bit di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` sia impostato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject2D_method_create_shape_owner>`

Crea un nuovo proprietario di forme per l'oggetto specificato. Restituisce ``owner_id`` del nuovo proprietario per un riferimento futuro.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_layer_value>`

Restituisce se lo strato specificato di :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` è abilitato o meno, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_rid>`

Restituisce il :ref:`RID<class_RID>` dell'oggetto.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_shape_owner_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`

Returns the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shape_owner_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`

Restituisce il ``one_way_collision_margin`` del proprietario della forma identificato dall'``owner_id``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject2D_method_get_shape_owners>`

Restituisce un :ref:`Array<class_Array>` di identificatori ``owner_id``. Puoi usare questi id in altri metodi che accettano ``owner_id`` come argomento.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_disabled>`

Se ``true``, il proprietario di forme e le sue forme sono disabilitati.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_one_way_collision_enabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`

Restituisce ``true`` se le collisioni per il proprietario di forme provenienti da questo **CollisionObject2D** non saranno segnalate come in collisione con i **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_remove_shape_owner>`

Rimuove il proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_layer_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_find_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_find_owner**\ (\ shape_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_find_owner>`

Restituisce l'``owner_id`` della forma specificata.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_add_shape>`

Aggiunge una :ref:`Shape2D<class_Shape2D>` al proprietario di forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_clear_shapes>`

Rimuove tutte le forme dal proprietario di forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_owner>`

Restituisce l'oggetto genitore del proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape2D<class_Shape2D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape>`

Restituisce il :ref:`Shape2D<class_Shape2D>` con l'ID specificato dal proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_count>`

Restituisce il numero di forme che il proprietario di forme specificato contiene.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_index>`

Restituisce l'indice figlio del :ref:`Shape2D<class_Shape2D>` con l'ID specificato dal proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_transform>`

Restituisce il :ref:`Transform2D<class_Transform2D>` del proprietario di forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_remove_shape>`

Rimuove una forma dal proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_disabled>`

Se ``true``, disabilita il proprietario di forme specificato.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision**\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`

Se ``enable`` è ``true``, le collisioni per il nodo che ha questo **CollisionObject2D** non saranno riportate come tali con altri **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`

Sets the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id`` to ``direction``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`

Imposta il ``one_way_collision_margin`` del proprietario di forme identificato da ``owner_id`` a ``margin`` in pixel.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_transform>`

Imposta il :ref:`Transform2D<class_Transform2D>` del proprietario di forme specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
