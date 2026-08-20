:github_url: hide

.. _class_Skeleton3D:

Skeleton3D
==========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo contenente una gerarchia di ossa, utilizzato per creare un'animazione scheletrica in 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Skeleton3D** fornisce un'interfaccia per gestire una gerarchia di ossa, tra cui posa, riposo e animazione (vedi :ref:`Animation<class_Animation>`). Può anche usare la fisica di ragdoll.

La trasformazione complessiva di un osso rispetto allo scheletro è determinata dalla posa dell'osso. Il riposo dell'osso definisce la trasformazione iniziale della posa dell'osso.

Nota che "posa globale" di seguito si riferisce alla trasformazione complessiva dell'osso rispetto allo scheletro, quindi non è la trasformazione globale/mondiale effettiva dell'osso.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`animate_physical_bones<class_Skeleton3D_property_animate_physical_bones>`                 | ``true``  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` | :ref:`modifier_callback_mode_process<class_Skeleton3D_property_modifier_callback_mode_process>` | ``1``     |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                       | :ref:`motion_scale<class_Skeleton3D_property_motion_scale>`                                     | ``1.0``   |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                         | :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>`                                 | ``false`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`add_bone<class_Skeleton3D_method_add_bone>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_Skeleton3D_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones<class_Skeleton3D_method_clear_bones>`\ (\ )                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_bones_global_pose_override<class_Skeleton3D_method_clear_bones_global_pose_override>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>`                                          | :ref:`create_skin_from_rest_transforms<class_Skeleton3D_method_create_skin_from_rest_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`find_bone<class_Skeleton3D_method_find_bone>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_all_bone_transforms<class_Skeleton3D_method_force_update_all_bone_transforms>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`force_update_bone_child_transform<class_Skeleton3D_method_force_update_bone_child_transform>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_bone_children<class_Skeleton3D_method_get_bone_children>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_count<class_Skeleton3D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose<class_Skeleton3D_method_get_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_no_override<class_Skeleton3D_method_get_bone_global_pose_no_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_pose_override<class_Skeleton3D_method_get_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_global_rest<class_Skeleton3D_method_get_bone_global_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_bone_meta<class_Skeleton3D_method_get_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_bone_meta_list<class_Skeleton3D_method_get_bone_meta_list>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_bone_name<class_Skeleton3D_method_get_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_bone_parent<class_Skeleton3D_method_get_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_pose<class_Skeleton3D_method_get_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_position<class_Skeleton3D_method_get_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_bone_pose_rotation<class_Skeleton3D_method_get_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_bone_pose_scale<class_Skeleton3D_method_get_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_bone_rest<class_Skeleton3D_method_get_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_concatenated_bone_names<class_Skeleton3D_method_get_concatenated_bone_names>`\ (\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_parentless_bones<class_Skeleton3D_method_get_parentless_bones>`\ (\ ) |const|                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_version<class_Skeleton3D_method_get_version>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_bone_meta<class_Skeleton3D_method_has_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_bone_enabled<class_Skeleton3D_method_is_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`localize_rests<class_Skeleton3D_method_localize_rests>`\ (\ )                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_add_collision_exception<class_Skeleton3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_remove_collision_exception<class_Skeleton3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_start_simulation<class_Skeleton3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`physical_bones_stop_simulation<class_Skeleton3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>`                        | :ref:`register_skin<class_Skeleton3D_method_register_skin>`\ (\ skin\: :ref:`Skin<class_Skin>`\ )                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_pose<class_Skeleton3D_method_reset_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_bone_poses<class_Skeleton3D_method_reset_bone_poses>`\ (\ )                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_enabled<class_Skeleton3D_method_set_bone_enabled>`\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ )                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose<class_Skeleton3D_method_set_bone_global_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_global_pose_override<class_Skeleton3D_method_set_bone_global_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_meta<class_Skeleton3D_method_set_bone_meta>`\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_name<class_Skeleton3D_method_set_bone_name>`\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_parent<class_Skeleton3D_method_set_bone_parent>`\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ )                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose<class_Skeleton3D_method_set_bone_pose>`\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_position<class_Skeleton3D_method_set_bone_pose_position>`\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_rotation<class_Skeleton3D_method_set_bone_pose_rotation>`\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_pose_scale<class_Skeleton3D_method_set_bone_pose_scale>`\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bone_rest<class_Skeleton3D_method_set_bone_rest>`\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`unparent_bone_and_rest<class_Skeleton3D_method_unparent_bone_and_rest>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Skeleton3D_signal_bone_enabled_changed:

.. rst-class:: classref-signal

**bone_enabled_changed**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_signal_bone_enabled_changed>`

Emesso quando l'osso all'indice ``bone_idx`` viene attivato con :ref:`set_bone_enabled()<class_Skeleton3D_method_set_bone_enabled>`. Usa :ref:`is_bone_enabled()<class_Skeleton3D_method_is_bone_enabled>` per verificare il nuovo valore.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_bone_list_changed:

.. rst-class:: classref-signal

**bone_list_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_bone_list_changed>`

Emesso quando la lista delle ossa cambia, ad esempio quando si chiama :ref:`add_bone()<class_Skeleton3D_method_add_bone>`, :ref:`set_bone_parent()<class_Skeleton3D_method_set_bone_parent>`, :ref:`unparent_bone_and_rest()<class_Skeleton3D_method_unparent_bone_and_rest>` o :ref:`clear_bones()<class_Skeleton3D_method_clear_bones>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_pose_updated:

.. rst-class:: classref-signal

**pose_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_pose_updated>`

Emesso quando la posa viene aggiornata.

\ **Nota:** Durante il processo di aggiornamento, questo segnale non viene attivato, quindi la modificazione da uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` non viene rilevata.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_rest_updated:

.. rst-class:: classref-signal

**rest_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_rest_updated>`

Emesso quando le pose di riposo vengono aggiornate.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_show_rest_only_changed:

.. rst-class:: classref-signal

**show_rest_only_changed**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_show_rest_only_changed>`

Emesso quando il valore di :ref:`show_rest_only<class_Skeleton3D_property_show_rest_only>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_signal_skeleton_updated:

.. rst-class:: classref-signal

**skeleton_updated**\ (\ ) :ref:`🔗<class_Skeleton3D_signal_skeleton_updated>`

Emesso quando la posa finale è stata calcolata e verrà applicata alla skin nel processo di aggiornamento.

Ciò significa che tutta l'elaborazione dello :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` è completa. Per rilevare il completamento dell'elaborazione di ogni :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, usa :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Skeleton3D_ModifierCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **ModifierCallbackModeProcess**: :ref:`🔗<enum_Skeleton3D_ModifierCallbackModeProcess>`

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Imposta un flag per elaborare le modificazioni durante i frame di fisica (vedi :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Imposta un flag per elaborare le modificazioni durante i frame di processo (vedi :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_Skeleton3D_constant_MODIFIER_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **MODIFIER_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Non elaborare la modificazione. Utilizza :ref:`advance()<class_Skeleton3D_method_advance>` per elaborare la modificazione manualmente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON:

.. rst-class:: classref-constant

**NOTIFICATION_UPDATE_SKELETON** = ``50`` :ref:`🔗<class_Skeleton3D_constant_NOTIFICATION_UPDATE_SKELETON>`

Notifica ricevuta quando la posa di questo scheletro deve essere aggiornata. In tal caso, viene chiamata solo una volta per frame in un processo differito.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Skeleton3D_property_animate_physical_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animate_physical_bones** = ``true`` :ref:`🔗<class_Skeleton3D_property_animate_physical_bones>`

.. rst-class:: classref-property-setget

- |void| **set_animate_physical_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_animate_physical_bones**\ (\ )

**Deprecato:** Questa proprietà potrebbe essere cambiata o rimossa in versioni future.

Se segui il flusso di lavoro consigliato e hai esplicitamente :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` come figlio di **Skeleton3D**, puoi controllare se è influenzato dalla proiezione dei raggi senza eseguire :ref:`physical_bones_start_simulation()<class_Skeleton3D_method_physical_bones_start_simulation>`, tramite il suo :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>`.

Tuttavia, per le vecchie (obsolete) configurazioni, **Skeleton3D** ha un :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` virtuale interno per compatibilità. Questa proprietà controlla il :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` del :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` virtuale interno.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_modifier_callback_mode_process:

.. rst-class:: classref-property

:ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **modifier_callback_mode_process** = ``1`` :ref:`🔗<class_Skeleton3D_property_modifier_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_modifier_callback_mode_process**\ (\ value\: :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>`\ )
- :ref:`ModifierCallbackModeProcess<enum_Skeleton3D_ModifierCallbackModeProcess>` **get_modifier_callback_mode_process**\ (\ )

Imposta i tempi di elaborazione per il Modificatore.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_motion_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **motion_scale** = ``1.0`` :ref:`🔗<class_Skeleton3D_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motion_scale**\ (\ )

Moltiplica l'animazione della traccia di posizione 3D.

\ **Nota:** A meno che questo valore non sia ``1.0``, il valore chiave nell'animazione non corrisponderà al valore di posizione effettivo.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_property_show_rest_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rest_only** = ``false`` :ref:`🔗<class_Skeleton3D_property_show_rest_only>`

.. rst-class:: classref-property-setget

- |void| **set_show_rest_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_show_rest_only**\ (\ )

Se ``true``, forza le ossa nelle loro pose di riposo predefinite, a prescindere dai loro valori. Nell'editor, questo impedisce anche che le ossa siano modificate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Skeleton3D_method_add_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_bone**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_add_bone>`

Aggiunge un nuovo osso con il nome specificato. Restituisce l'indice del nuovo osso o ``-1`` se questo metodo fallisce.

\ **Nota:** I nomi degli ossi devono essere univoci, non vuoti e non possono includere i caratteri ``:`` e ``/``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Skeleton3D_method_advance>`

Avanza manualmente gli :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` figlio del tempo specificato (in secondi).

\ **Nota:** Il ``delta`` è temporaneamente accumulato nello **Skeleton3D** e il processo differito utilizza il valore accumulato per elaborare la modificazione.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones>`

Elimina tutte le ossa da questo scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_clear_bones_global_pose_override:

.. rst-class:: classref-method

|void| **clear_bones_global_pose_override**\ (\ ) :ref:`🔗<class_Skeleton3D_method_clear_bones_global_pose_override>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Rimuove la sostituzione della posa globale su tutte le ossa dello scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_create_skin_from_rest_transforms:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **create_skin_from_rest_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_create_skin_from_rest_transforms>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_find_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_bone**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_find_bone>`

Restituisce l'indice dell'osso che ha ``name`` come il suo nome. Restituisce ``-1`` se non esiste nessun osso con questo nome.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_all_bone_transforms:

.. rst-class:: classref-method

|void| **force_update_all_bone_transforms**\ (\ ) :ref:`🔗<class_Skeleton3D_method_force_update_all_bone_transforms>`

**Deprecato:** This method should only be called internally.

Forza l'aggiornamento delle trasformazioni e pose per tutte le ossa nello scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_force_update_bone_child_transform:

.. rst-class:: classref-method

|void| **force_update_bone_child_transform**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_force_update_bone_child_transform>`

Forza l'aggiornamento della trasformazione per l'osso all'indice ``bone_idx`` e per tutte le sue ossa figlio.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_children:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_bone_children**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_children>`

Restituisce un array contenente gli indici delle ossa di tutti il nodo figli dell'osso passato con l'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_count>`

Restituisce il numero di ossa nello scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose>`

Restituisce la trasformazione complessiva dell'osso specificato, rispetto allo scheletro. Essendo relativa alla struttura dello scheletro, questa non è la trasformazione "globale" effettiva dell'osso.

\ **Nota:** Questa è la posa globale che imposti sullo scheletro nel processo, la posa globale finale può essere sovrascritta dai modificatori nel processo differito, se vuoi accedere alla posa globale finale, usa :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_no_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_no_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_no_override>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce la trasformazione complessiva dell'osso specificato, rispetto allo scheletro, ma senza alcuna sostituzione di posa globale. Essendo relativa alla struttura dello scheletro, questa non è la trasformazione "globale" effettiva dell'osso.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_pose_override:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_pose_override>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce la trasformazione di sostituzione della posa globale per l'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_global_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_global_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_global_rest>`

Restituisce la trasformazione di riposo globale per ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta>`

Restituisce i metadati con la chiave ``key`` per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_meta_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_bone_meta_list**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_meta_list>`

Restituisce la lista di tutte le chiavi dei metadati per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_name>`

Restituisce il nome dell'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_parent:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_parent>`

Restituisce l'indice dell'osso che è il genitore dell'osso all'indice ``bone_idx``. Se -1, l'osso non ha un genitore.

\ **Nota:** L'osso genitore restituito sarà sempre inferiore a ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose>`

Restituisce la trasformazione della posa dell'osso specificato.

\ **Nota:** Questa è la posa che imposti allo scheletro nel processo, la posa finale può essere sovrascritta dai modificatori nel processo differito, se vuoi accedere alla posa finale, usa :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_position>`

Restituisce la posizione della posa dell'osso all'indice ``bone_idx``. Il :ref:`Vector3<class_Vector3>` di ritorno è nello spazio di coordinate locale del nodo **Skeleton3D**.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_rotation>`

Restituisce la rotazione della posa dell'osso all'indice ``bone_idx``. Il :ref:`Quaternion<class_Quaternion>` restituito è locale all'osso rispetto alla rotazione di qualsiasi osso genitore.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_pose_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_pose_scale>`

Restituisce la scala di posa dell'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_bone_rest:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_bone_rest>`

Restituisce la trasformazione di riposo per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_concatenated_bone_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_bone_names**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_concatenated_bone_names>`

Restituisce tutti i nomi delle ossa concatenati con virgole (``,``) come un singolo :ref:`StringName<class_StringName>`.

È utile impostarlo come indicazione per la proprietà enumerata.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_parentless_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_parentless_bones**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_parentless_bones>`

Restituisce un array con tutte le ossa che sono senza genitori. Un altro modo di vedere questo metodo è che restituisce gli indici di tutte le ossa che non sono dipendenti o modificate da altre ossa nello scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_Skeleton3D_method_get_version>`

Restituisce il numero di volte in cui la gerarchia delle ossa è cambiata all'interno di questo scheletro, incluse le ossa rinominate.

La versione dello scheletro non è serializzata: usala solo all'interno di una singola istanza di Skeleton3D.

Utilizzabile per invalidare le cache nei risolutori IK e altri nodi che elaborano le ossa.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_has_bone_meta:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_has_bone_meta>`

Restituisce ``true`` se l'osso all'indice ``bone_idx`` ha metadati con la chiave ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_is_bone_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Skeleton3D_method_is_bone_enabled>`

Restituisce se la posa dell'osso per l'osso all'indice ``bone_idx`` è abilitata.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_localize_rests:

.. rst-class:: classref-method

|void| **localize_rests**\ (\ ) :ref:`🔗<class_Skeleton3D_method_localize_rests>`

Ripristina tutte le ossa nello scheletro alle loro pose di riposo.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_add_collision_exception>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Aggiunge un'eccezione di collisione all'osso fisico.

Funziona esattamente come il nodo :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_remove_collision_exception>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Rimuove un'eccezione di collisione dall'osso fisico.

Funziona esattamente come il nodo :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_start_simulation>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Indica ai nodi :ref:`PhysicalBone3D<class_PhysicalBone3D>` nello scheletro di iniziare a simulare e reagire al mondo fisico.

Facoltativamente, è possibile passare una lista di nomi di ossa, consentendo solo alle ossa passate di essere simulate.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_Skeleton3D_method_physical_bones_stop_simulation>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Indica ai nodi :ref:`PhysicalBone3D<class_PhysicalBone3D>` nello scheletro di interrompere la simulazione.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_register_skin:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **register_skin**\ (\ skin\: :ref:`Skin<class_Skin>`\ ) :ref:`🔗<class_Skeleton3D_method_register_skin>`

Associa la Skin fornita allo scheletro.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_pose:

.. rst-class:: classref-method

|void| **reset_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_pose>`

Imposta la posa dell'osso a quella di riposo per l'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_reset_bone_poses:

.. rst-class:: classref-method

|void| **reset_bone_poses**\ (\ ) :ref:`🔗<class_Skeleton3D_method_reset_bone_poses>`

Imposta tutte le posizioni delle ossa come riposi.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_enabled:

.. rst-class:: classref-method

|void| **set_bone_enabled**\ (\ bone_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_enabled>`

Disabilita la posa per l'osso all'indice ``bone_idx`` se ``false``, abilita la posa dell'osso se ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose:

.. rst-class:: classref-method

|void| **set_bone_global_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose>`

Imposta la trasformazione della posa globale, ``pose``, per l'osso all'indice ``bone_idx``.

\ **Nota:** Se sono state modificate altre pose dell'osso, questo metodo esegue un ricalcolo delle pose sporche e causerà un deterioramento delle prestazioni. Se sai che verranno applicate più pose globali, prendi in considerazione l'utilizzo di :ref:`set_bone_pose()<class_Skeleton3D_method_set_bone_pose>` con precalcolo.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_global_pose_override:

.. rst-class:: classref-method

|void| **set_bone_global_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`, amount\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_global_pose_override>`

**Deprecato:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Imposta la trasformazione della posa globale, ``pose``, per l'osso all'indice ``bone_idx``.

\ ``amount`` è la forza di interpolazione che sarà usata quando si applica la posa, e ``persistent`` determina se la posa applicata rimarrà.

\ **Nota:** La trasformazione della posa deve essere una posa globale! Per convertire una trasformazione del mondo da un :ref:`Node3D<class_Node3D>` a una posa dell'osso globale, moltiplica il :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>` del :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` del nodo per la trasformazione mondiale desiderata.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_meta:

.. rst-class:: classref-method

|void| **set_bone_meta**\ (\ bone_idx\: :ref:`int<class_int>`, key\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_meta>`

Imposta i metadati con la chiave ``key`` su ``value`` per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_name:

.. rst-class:: classref-method

|void| **set_bone_name**\ (\ bone_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_name>`

Imposta il nome dell'osso a ``name`` per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_parent:

.. rst-class:: classref-method

|void| **set_bone_parent**\ (\ bone_idx\: :ref:`int<class_int>`, parent_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_parent>`

Imposta l'osso all'indice ``parent_idx`` come genitore dell'osso all'indice ``bone_idx``. Se -1, l'osso non ha genitore.

\ **Nota:** ``parent_idx`` deve essere minore di ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose:

.. rst-class:: classref-method

|void| **set_bone_pose**\ (\ bone_idx\: :ref:`int<class_int>`, pose\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose>`

Imposta la trasformazione della posa a ``pose`` per l'osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_position:

.. rst-class:: classref-method

|void| **set_bone_pose_position**\ (\ bone_idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_position>`

Imposta la posizione di posa dell'osso all'indice ``bone_idx`` su ``position``. ``position`` è un :ref:`Vector3<class_Vector3>` che descrive una posizione locale al nodo **Skeleton3D**.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_rotation:

.. rst-class:: classref-method

|void| **set_bone_pose_rotation**\ (\ bone_idx\: :ref:`int<class_int>`, rotation\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_rotation>`

Imposta la rotazione della posa dell'osso all'indice ``bone_idx`` su ``rotation``. ``rotation`` è un :ref:`Quaternion<class_Quaternion>` che descrive una rotazione nello spazio di coordinate locale dell'osso rispetto alla rotazione di qualsiasi osso genitore.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_pose_scale:

.. rst-class:: classref-method

|void| **set_bone_pose_scale**\ (\ bone_idx\: :ref:`int<class_int>`, scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_pose_scale>`

Imposta la scala di posa dell'osso all'indice ``bone_idx`` a ``scale``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_set_bone_rest:

.. rst-class:: classref-method

|void| **set_bone_rest**\ (\ bone_idx\: :ref:`int<class_int>`, rest\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Skeleton3D_method_set_bone_rest>`

Imposta la trasformazione di riposto per osso all'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton3D_method_unparent_bone_and_rest:

.. rst-class:: classref-method

|void| **unparent_bone_and_rest**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton3D_method_unparent_bone_and_rest>`

Rimuove l'osso all'indice ``bone_idx`` dal suo genitore, e imposta la sua posizione di riposo su quella del suo genitore prima di essere reimpostato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
