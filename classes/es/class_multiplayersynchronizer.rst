:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerSynchronizer:

MultiplayerSynchronizer
=======================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Synchronizes properties from the multiplayer authority to the remote peers.

.. rst-class:: classref-introduction-group

Descripción
----------------------

By default, **MultiplayerSynchronizer** synchronizes configured properties to all peers.

Visibility can be handled directly with :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` or as-needed with :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` and :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

\ :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`\ s will handle nodes according to visibility of synchronizers as long as the node at :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` was spawned by one.

Internally, **MultiplayerSynchronizer** uses :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` to notify synchronization start passing the :ref:`Node<class_Node>` at :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` as the ``object`` and itself as the ``configuration``, and uses :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` to notify synchronization end in a similar way.

\ **Note:** Synchronization is not supported for :ref:`Object<class_Object>` type properties, like :ref:`Resource<class_Resource>`. Properties that are unique to each peer, like the instance IDs of :ref:`Object<class_Object>`\ s (see :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`) or :ref:`RID<class_RID>`\ s, will also not work in synchronization.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`delta_interval<class_MultiplayerSynchronizer_property_delta_interval>`                 | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>`           | ``true``           |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`                    | :ref:`replication_config<class_MultiplayerSynchronizer_property_replication_config>`         |                    |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                      | :ref:`replication_interval<class_MultiplayerSynchronizer_property_replication_interval>`     | ``0.0``            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                | :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>`                           | ``NodePath("..")`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+
   | :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` | :ref:`visibility_update_mode<class_MultiplayerSynchronizer_property_visibility_update_mode>` | ``0``              |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_visibility_filter<class_MultiplayerSynchronizer_method_add_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )                  |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_visibility_for<class_MultiplayerSynchronizer_method_get_visibility_for>`\ (\ peer\: :ref:`int<class_int>`\ ) |const|                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_visibility_filter<class_MultiplayerSynchronizer_method_remove_visibility_filter>`\ (\ filter\: :ref:`Callable<class_Callable>`\ )            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_visibility_for<class_MultiplayerSynchronizer_method_set_visibility_for>`\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`update_visibility<class_MultiplayerSynchronizer_method_update_visibility>`\ (\ for_peer\: :ref:`int<class_int>` = 0\ )                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_MultiplayerSynchronizer_signal_delta_synchronized:

.. rst-class:: classref-signal

**delta_synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_delta_synchronized>`

Emitida cuando se recibe un nuevo estado de sincronización delta por parte de este sincronizador después de que las propiedades han sido actualizadas.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_synchronized:

.. rst-class:: classref-signal

**synchronized**\ (\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_synchronized>`

Emitida cuando este sincronizador recibe un nuevo estado de sincronización después de que las propiedades han sido actualizadas.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ for_peer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_signal_visibility_changed>`

Emitida cuando se actualiza la visibilidad de ``for_peer``. Véase :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_MultiplayerSynchronizer_VisibilityUpdateMode:

.. rst-class:: classref-enumeration

enum **VisibilityUpdateMode**: :ref:`🔗<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_IDLE** = ``0``

Visibility filters are updated during process frames (see :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_PHYSICS** = ``1``

Visibility filters are updated during physics frames (see :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_MultiplayerSynchronizer_constant_VISIBILITY_PROCESS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **VISIBILITY_PROCESS_NONE** = ``2``

Los filtros de visibilidad no se actualizan automáticamente y deben ser actualizados manualmente llamando a :ref:`update_visibility()<class_MultiplayerSynchronizer_method_update_visibility>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MultiplayerSynchronizer_property_delta_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **delta_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_delta_interval>`

.. rst-class:: classref-property-setget

- |void| **set_delta_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_delta_interval**\ (\ )

Intervalo de tiempo entre sincronizaciones delta. Se usa cuando la replicación está configurada en :ref:`SceneReplicationConfig.REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>`. Si se establece en ``0.0`` (el valor por defecto), las sincronizaciones delta ocurren en cada fotograma de proceso de red.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_public_visibility:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **public_visibility** = ``true`` :ref:`🔗<class_MultiplayerSynchronizer_property_public_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_public**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visibility_public**\ (\ )

Whether synchronization should be visible to all peers by default. See :ref:`set_visibility_for()<class_MultiplayerSynchronizer_method_set_visibility_for>` and :ref:`add_visibility_filter()<class_MultiplayerSynchronizer_method_add_visibility_filter>` for ways of configuring fine-grained visibility options.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_config:

.. rst-class:: classref-property

:ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **replication_config** :ref:`🔗<class_MultiplayerSynchronizer_property_replication_config>`

.. rst-class:: classref-property-setget

- |void| **set_replication_config**\ (\ value\: :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`\ )
- :ref:`SceneReplicationConfig<class_SceneReplicationConfig>` **get_replication_config**\ (\ )

Recurso que contiene las propiedades a sincronizar.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_replication_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **replication_interval** = ``0.0`` :ref:`🔗<class_MultiplayerSynchronizer_property_replication_interval>`

.. rst-class:: classref-property-setget

- |void| **set_replication_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_replication_interval**\ (\ )

Intervalo de tiempo entre sincronizaciones. Se usa cuando la replicación está configurada en :ref:`SceneReplicationConfig.REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>`. Si se establece en ``0.0`` (el valor por defecto), las sincronizaciones ocurren en cada fotograma de proceso de red.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_root_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_path** = ``NodePath("..")`` :ref:`🔗<class_MultiplayerSynchronizer_property_root_path>`

.. rst-class:: classref-property-setget

- |void| **set_root_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_path**\ (\ )

Ruta del nodo a la que las propiedades replicadas son relativas.

Si :ref:`root_path<class_MultiplayerSynchronizer_property_root_path>` fue generado por un :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`, el nodo también será generado y eliminado según las opciones de visibilidad de este sincronizador.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_property_visibility_update_mode:

.. rst-class:: classref-property

:ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **visibility_update_mode** = ``0`` :ref:`🔗<class_MultiplayerSynchronizer_property_visibility_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_update_mode**\ (\ value\: :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>`\ )
- :ref:`VisibilityUpdateMode<enum_MultiplayerSynchronizer_VisibilityUpdateMode>` **get_visibility_update_mode**\ (\ )

Especifica cuándo se actualizan los filtros de visibilidad.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MultiplayerSynchronizer_method_add_visibility_filter:

.. rst-class:: classref-method

|void| **add_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_add_visibility_filter>`

Adds a peer visibility filter for this synchronizer.

\ ``filter`` should take a peer ID :ref:`int<class_int>` and return a :ref:`bool<class_bool>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_get_visibility_for:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_visibility_for**\ (\ peer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSynchronizer_method_get_visibility_for>`

Queries the current visibility for peer ``peer``.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_remove_visibility_filter:

.. rst-class:: classref-method

|void| **remove_visibility_filter**\ (\ filter\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_remove_visibility_filter>`

Removes a peer visibility filter from this synchronizer.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_set_visibility_for:

.. rst-class:: classref-method

|void| **set_visibility_for**\ (\ peer\: :ref:`int<class_int>`, visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_set_visibility_for>`

Sets the visibility of ``peer`` to ``visible``. If ``peer`` is ``0``, the value of :ref:`public_visibility<class_MultiplayerSynchronizer_property_public_visibility>` will be updated instead.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSynchronizer_method_update_visibility:

.. rst-class:: classref-method

|void| **update_visibility**\ (\ for_peer\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MultiplayerSynchronizer_method_update_visibility>`

Updates the visibility of ``for_peer`` according to visibility filters. If ``for_peer`` is ``0`` (the default), all peers' visibilties are updated.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
