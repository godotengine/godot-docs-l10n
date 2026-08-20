:github_url: hide

.. _class_SoftBody3D:

SoftBody3D
==========

**Eredita:** :ref:`MeshInstance3D<class_MeshInstance3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una mesh di fisica 3D deformabile.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una mesh di fisica 3D deformabile. Utilizzata per creare oggetti elastici o deformabili come stoffa, gomma o altri materiali flessibili.

Inoltre, **SoftBody3D** è soggetto alle forze del vento definite in :ref:`Area3D<class_Area3D>` (vedi :ref:`Area3D.wind_source_path<class_Area3D_property_wind_source_path>`, :ref:`Area3D.wind_force_magnitude<class_Area3D_property_wind_force_magnitude>` e :ref:`Area3D.wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`).

\ **Nota:** Si consiglia di utilizzare Jolt Physics quando si utilizza **SoftBody3D** invece del GodotPhysics3D predefinito, poiché l'implementazione dei corpi deformabili di Jolt Physics è più veloce e affidabile. È possibile cambiare il motore fisico attraverso l'impostazione del progetto :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Corpo morbido <../tutorials/physics/soft_body>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`                 | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`                   | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`damping_coefficient<class_SoftBody3D_property_damping_coefficient>`         | ``0.01``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`DisableMode<enum_SoftBody3D_DisableMode>` | :ref:`disable_mode<class_SoftBody3D_property_disable_mode>`                       | ``0``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`drag_coefficient<class_SoftBody3D_property_drag_coefficient>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_stiffness<class_SoftBody3D_property_linear_stiffness>`               | ``0.5``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`parent_collision_ignore<class_SoftBody3D_property_parent_collision_ignore>` | ``NodePath("")`` |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`pressure_coefficient<class_SoftBody3D_property_pressure_coefficient>`       | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`                         | :ref:`ray_pickable<class_SoftBody3D_property_ray_pickable>`                       | ``true``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`simulation_precision<class_SoftBody3D_property_simulation_precision>`       | ``5``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`total_mass<class_SoftBody3D_property_total_mass>`                           | ``1.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_SoftBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_force<class_SoftBody3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_impulse<class_SoftBody3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                               |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_force<class_SoftBody3D_method_apply_force>`\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_impulse<class_SoftBody3D_method_apply_impulse>`\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_SoftBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_layer_value<class_SoftBody3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_mask_value<class_SoftBody3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                  | :ref:`get_physics_rid<class_SoftBody3D_method_get_physics_rid>`\ (\ ) |const|                                                                                                                                                                            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_point_transform<class_SoftBody3D_method_get_point_transform>`\ (\ point_index\: :ref:`int<class_int>`\ )                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`is_point_pinned<class_SoftBody3D_method_is_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_SoftBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_layer_value<class_SoftBody3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_mask_value<class_SoftBody3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_point_pinned<class_SoftBody3D_method_set_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SoftBody3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_SoftBody3D_DisableMode>`

.. _class_SoftBody3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, rimuovi dalla simulazione fisica per fermare tutte le interazioni fisiche con questo **SoftBody3D**.

Riaggiunge il corpo automaticamente alla simulazione fisica quando il :ref:`Node<class_Node>` è nuovamente in elaborazione.

.. _class_SoftBody3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``1``

Quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, non influire sulla simulazione di fisica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SoftBody3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Gli strati di fisica in cui questo SoftBody3D **si trova**. Gli oggetti di collisione possono esistere in uno o più dei 32 strati diversi. Vedi anche :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`.

\ **Nota:** L'oggetto A può rilevare un contatto con l'oggetto B solo se l'oggetto B si trova in uno qualsiasi dei strati che l'oggetto A scansiona. Vedi `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica che questo SoftBody3D **scansiona**. Gli oggetti di collisione possono esistere in uno o più dei 32 strati diversi. Vedi anche :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`.

\ **Nota:** L'oggetto A può rilevare un contatto con l'oggetto B solo se l'oggetto B si trova in uno qualsiasi dei strati che l'oggetto A scansiona. Vedi `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_damping_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_coefficient** = ``0.01`` :ref:`🔗<class_SoftBody3D_property_damping_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_damping_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_coefficient**\ (\ )

Il coefficiente di smorzamento del corpo. Valori più alti rallenteranno il corpo in modo più evidente quando vengono applicate forze.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_SoftBody3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_SoftBody3D_DisableMode>`\ )
- :ref:`DisableMode<enum_SoftBody3D_DisableMode>` **get_disable_mode**\ (\ )

Definisce il comportamento nella fisica quando :ref:`Node.process_mode<class_Node_property_process_mode>` è impostato su :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_drag_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_drag_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_drag_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_coefficient**\ (\ )

Il coefficiente di resistenza aerodinamica del corpo. Valori più alti aumentano la resistenza all'aria di questo corpo.

\ **Nota:** Questo valore è attualmente inutilizzato dall'implementazione predefinita della fisica in Godot.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_linear_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_stiffness** = ``0.5`` :ref:`🔗<class_SoftBody3D_property_linear_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_linear_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_stiffness**\ (\ )

Valori più alti risulteranno in un corpo più rigido, mentre valori più bassi aumenteranno la capacità del corpo di piegarsi. Il valore può essere compreso tra ``0.0`` e ``1.0`` (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_parent_collision_ignore:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **parent_collision_ignore** = ``NodePath("")`` :ref:`🔗<class_SoftBody3D_property_parent_collision_ignore>`

.. rst-class:: classref-property-setget

- |void| **set_parent_collision_ignore**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_parent_collision_ignore**\ (\ )

Il :ref:`NodePath<class_NodePath>` verso un :ref:`CollisionObject3D<class_CollisionObject3D>` che questo SoftBody3D dovrebbe evitare di passare attraverso.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_pressure_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_pressure_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_pressure_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure_coefficient**\ (\ )

Il coefficiente di pressione di questo corpo deformabile. Simula l'accumulo di pressione dall'interno di questo corpo. Valori più alti aumentano la forza di questo effetto.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ray_pickable** = ``true`` :ref:`🔗<class_SoftBody3D_property_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Se ``true``, il **SoftBody3D** risponderà ai nodi :ref:`RayCast3D<class_RayCast3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_shrinking_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **shrinking_factor** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_shrinking_factor>`

.. rst-class:: classref-property-setget

- |void| **set_shrinking_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shrinking_factor**\ (\ )

Ridimensiona le lunghezze di riposo dei vincoli di bordo del **SoftBody3D**. I valori positivi restringono la mesh, mentre i valori negativi la espandono. Ad esempio, un valore di ``0.1`` accorcia i bordi della mesh del 10%, mentre ``-0.1`` li espande del 10%.

\ **Nota:** :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>` è più indicato per mesh di superficie con punti fissati.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_simulation_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **simulation_precision** = ``5`` :ref:`🔗<class_SoftBody3D_property_simulation_precision>`

.. rst-class:: classref-property-setget

- |void| **set_simulation_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_simulation_precision**\ (\ )

Aumentare questo valore migliorerà la simulazione risultante, ma può influire sulle prestazioni. Usare con cautela.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_total_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_mass** = ``1.0`` :ref:`🔗<class_SoftBody3D_property_total_mass>`

.. rst-class:: classref-property-setget

- |void| **set_total_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_total_mass**\ (\ )

La massa del SoftBody3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SoftBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_add_collision_exception_with>`

Aggiunge un corpo alla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_force>`

Distribuisce e applica una forza a tutti i punti. Una forza è dipendente dal tempo e pensata per essere applicata a ogni aggiornamento della fisica.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_impulse>`

Distribuisce e applica un impulso a tutti i punti.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in a una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_force>`

Applica una forza a un punto. Una forza è dipendente dal tempo e pensata per essere applicata a ogni aggiornamento della fisica.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_impulse>`

Applica un impulso a un punto.

Un impulso è indipendente dal tempo! Applicare un impulso a ogni frame risulterebbe in a una forza dipendente dal frame rate. Per questo motivo, dovrebbe essere utilizzato solo quando si simulano impatti singoli (altrimenti, utilizza le funzioni "_force").

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_SoftBody3D_method_get_collision_exceptions>`

Restituisce un array di nodi aggiunti come eccezioni di collisione per questo corpo.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_layer_value>`

Restituisce se lo strato specificato di :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` è abilitato o meno, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_physics_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_physics_rid**\ (\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_physics_rid>`

Restituisce il :ref:`RID<class_RID>` interno utilizzato dal :ref:`PhysicsServer3D<class_PhysicsServer3D>` per questo corpo.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_point_transform:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_transform**\ (\ point_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SoftBody3D_method_get_point_transform>`

Restituisce la traslazione locale di un vertice nell'array di superfici.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_is_point_pinned:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_pinned**\ (\ point_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_is_point_pinned>`

Restituisce ``true`` se il vertice è impostato come fisso.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_remove_collision_exception_with>`

Rimuove un corpo dalla lista dei corpi con cui questo corpo non può entrare in collisione.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_layer_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_point_pinned:

.. rst-class:: classref-method

|void| **set_point_pinned**\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SoftBody3D_method_set_point_pinned>`

Imposta lo stato fissato di un vertice di superficie. Se impostato su ``true``, il parametro facoltativo ``attachment_path`` può definire un :ref:`Node3D<class_Node3D>` a cui sarà attaccato il vertice fissato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
