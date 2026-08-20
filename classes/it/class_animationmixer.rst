:github_url: hide

.. _class_AnimationMixer:

AnimationMixer
==============

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimationPlayer<class_AnimationPlayer>`, :ref:`AnimationTree<class_AnimationTree>`

Classe di base per :ref:`AnimationPlayer<class_AnimationPlayer>` e :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base per :ref:`AnimationPlayer<class_AnimationPlayer>` e :ref:`AnimationTree<class_AnimationTree>` per gestire le liste di animazione. Ha anche proprietà e metodi generali per la riproduzione e la fusione.

Dopo aver istanziato i dati di riproduzione all'interno di una classe che la estende, la fusione è viene elaborata dall'**AnimationMixer**.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Migrare animazioni da Godot 4.0 a Godot 4.3 <https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`active<class_AnimationMixer_property_active>`                                 | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                   | :ref:`audio_max_polyphony<class_AnimationMixer_property_audio_max_polyphony>`       | ``32``             |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`     | :ref:`callback_mode_method<class_AnimationMixer_property_callback_mode_method>`     | ``0``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`   | :ref:`callback_mode_process<class_AnimationMixer_property_callback_mode_process>`   | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`deterministic<class_AnimationMixer_property_deterministic>`                   | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`reset_on_save<class_AnimationMixer_property_reset_on_save>`                   | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>`           | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>`           | ``NodePath("")``   |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_node<class_AnimationMixer_property_root_node>`                           | ``NodePath("..")`` |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_post_process_key_value<class_AnimationMixer_private_method__post_process_key_value>`\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation_library<class_AnimationMixer_method_add_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ )                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_AnimationMixer_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`capture<class_AnimationMixer_method_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ )                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_caches<class_AnimationMixer_method_clear_caches>`\ (\ )                                                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation<class_AnimationMixer_method_find_animation>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation_library<class_AnimationMixer_method_find_animation_library>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationMixer_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationLibrary<class_AnimationLibrary>`                  | :ref:`get_animation_library<class_AnimationMixer_method_get_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_library_list<class_AnimationMixer_method_get_animation_library_list>`\ (\ ) |const|                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_animation_list<class_AnimationMixer_method_get_animation_list>`\ (\ ) |const|                                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position<class_AnimationMixer_method_get_root_motion_position>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position_accumulator<class_AnimationMixer_method_get_root_motion_position_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation<class_AnimationMixer_method_get_root_motion_rotation>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation_accumulator<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale<class_AnimationMixer_method_get_root_motion_scale>`\ (\ ) |const|                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale_accumulator<class_AnimationMixer_method_get_root_motion_scale_accumulator>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationMixer_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation_library<class_AnimationMixer_method_has_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation_library<class_AnimationMixer_method_remove_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation_library<class_AnimationMixer_method_rename_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationMixer_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_finished>`

Informa quando un'animazione ha terminato la riproduzione.

\ **Nota:** Questo segnale non viene emesso se un'animazione è in ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_libraries_updated:

.. rst-class:: classref-signal

**animation_libraries_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_libraries_updated>`

Informa quando le librerie di animazione sono cambiate.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_list_changed:

.. rst-class:: classref-signal

**animation_list_changed**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_list_changed>`

Informa quando viene modificata una lista di animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_started:

.. rst-class:: classref-signal

**animation_started**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_started>`

Notifica quando inizia la riproduzione di un'animazione.

\ **Nota:** Questo segnale non viene emesso se un'animazione è in ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_caches_cleared:

.. rst-class:: classref-signal

**caches_cleared**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_caches_cleared>`

Informa quando le memorie cache sono state pulite, automaticamente o manualmente tramite :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_applied:

.. rst-class:: classref-signal

**mixer_applied**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_applied>`

Informa quando il risultato di fusione correlato è stato applicato agli oggetti di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_updated:

.. rst-class:: classref-signal

**mixer_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_updated>`

Informa quando il processo relativo alla proprietà è stato aggiornato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationMixer_AnimationCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeProcess**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeProcess>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Elabora l'animazione durante i frame di fisica (vedi :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`). Ciò è particolarmente utile per animare i corpi fisici.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Elabora l'animazione durante i frame di processo (vedi :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Non elaborare l'animazione. Utilizza :ref:`advance()<class_AnimationMixer_method_advance>` per elaborare l'animazione manualmente.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeMethod:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeMethod**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeMethod>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_DEFERRED** = ``0``

Raggruppa le chiamate di metodi durante il processo di animazione, quindi esegue le chiamate dopo che gli eventi sono elaborati. Questo evita bug che coinvolgono l'eliminazione di nodi o la modifica di AnimationPlayer durante la riproduzione.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE** = ``1``

Esegue le chiamate di metodi immediatamente quando sono raggiunte nell'animazione.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeDiscrete:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeDiscrete**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeDiscrete>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT** = ``0``

Un valore di una traccia con :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` ha la precedenza quando si esegue la fusione tra i valori di una traccia :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` e i valori di una traccia :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE** = ``1``

Un valore di una traccia con :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` ha la precedenza quando si esegue la fusione tra i valori di una traccia :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` e i valori di una traccia :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`. Questo è il comportamento predefinito per :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS** = ``2``

Tratta sempre il valore della traccia :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` come :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` con :ref:`Animation.INTERPOLATION_NEAREST<class_Animation_constant_INTERPOLATION_NEAREST>`. Questo è il comportamento predefinito per :ref:`AnimationTree<class_AnimationTree>`.

Se una traccia di valore ha valori di chiave di tipo non interpolabili, viene convertita internamente per usare :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE>` con :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

\ :ref:`@GlobalScope.TYPE_BOOL<class_@GlobalScope_constant_TYPE_BOOL>` e :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>` vengono trattati come :ref:`@GlobalScope.TYPE_FLOAT<class_@GlobalScope_constant_TYPE_FLOAT>` durante la fusione e arrotondati quando il risultato viene recuperato.

Lista di tipi che non si possono interpolare:

- :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 

- :ref:`@GlobalScope.TYPE_NODE_PATH<class_@GlobalScope_constant_TYPE_NODE_PATH>`\ 

- :ref:`@GlobalScope.TYPE_RID<class_@GlobalScope_constant_TYPE_RID>`\ 

- :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ 

- :ref:`@GlobalScope.TYPE_CALLABLE<class_@GlobalScope_constant_TYPE_CALLABLE>`\ 

- :ref:`@GlobalScope.TYPE_SIGNAL<class_@GlobalScope_constant_TYPE_SIGNAL>`\ 

- :ref:`@GlobalScope.TYPE_DICTIONARY<class_@GlobalScope_constant_TYPE_DICTIONARY>`\ 

- :ref:`@GlobalScope.TYPE_PACKED_BYTE_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_BYTE_ARRAY>`\ 

Lo stesso vale per array e vettori, come :ref:`@GlobalScope.TYPE_PACKED_INT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_INT32_ARRAY>` o :ref:`@GlobalScope.TYPE_VECTOR2I<class_@GlobalScope_constant_TYPE_VECTOR2I>`, vengono trattati come :ref:`@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_FLOAT32_ARRAY>` o :ref:`@GlobalScope.TYPE_VECTOR2<class_@GlobalScope_constant_TYPE_VECTOR2>`. Nota inoltre che per gli array, anche la dimensione viene interpolata.

\ :ref:`@GlobalScope.TYPE_STRING<class_@GlobalScope_constant_TYPE_STRING>` e :ref:`@GlobalScope.TYPE_STRING_NAME<class_@GlobalScope_constant_TYPE_STRING_NAME>` vengono interpolate tra codici carattere e lunghezze, ma si noti che esiste una differenza nell'algoritmo tra l'interpolazione tra chiavi e l'interpolazione tramite fusione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationMixer_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_AnimationMixer_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Se ``true``, l'**AnimationMixer** verrà eseguito.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_audio_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_max_polyphony** = ``32`` :ref:`🔗<class_AnimationMixer_property_audio_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_audio_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_max_polyphony**\ (\ )

Il numero di suoni simultanei possibili per ciascuno degli AudioStreamPlayer assegnati.

Ad esempio, se questo valore è ``32`` e l'animazione ha due tracce audio, i due :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` assegnati possono riprodurre audio simultaneamente fino a ``32`` suoni ciascuno.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_discrete:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **callback_mode_discrete** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_discrete>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_discrete**\ (\ value\: :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ )
- :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **get_callback_mode_discrete**\ (\ )

Normalmente, le tracce possono essere impostate su :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` per aggiornare raramente, di solito quando si utilizza l'interpolazione più vicino.

Tuttavia, quando si esegue la fusione con :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` diversi risultati sono considerati. :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` lo specifica esplicitamente. Vedi anche :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`.

Per abbellire i risultati fusi, si consiglia di impostare questo a :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS>` per aggiornare ogni frame durante la fusione. Altri valori esistono per compatibilità e vanno bene se non è presente una fusione, ma se non è così, potrebbe produrre artefatti.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_method:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **callback_mode_method** = ``0`` :ref:`🔗<class_AnimationMixer_property_callback_mode_method>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_method**\ (\ value\: :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`\ )
- :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **get_callback_mode_method**\ (\ )

La modalità di chiamata utilizzata per le tracce "Chiamata di metodi".

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_process:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **callback_mode_process** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_process**\ (\ value\: :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`\ )
- :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **get_callback_mode_process**\ (\ )

La notifica di processo nella quale si aggiornano le animazioni.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_AnimationMixer_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Se ``true``, la fusione usa l'algoritmo deterministico. Il peso totale non è normalizzato e il risultato è accumulato con un valore iniziale (``0`` o una animazione ``"RESET"`` se presente).

Ciò significa che se la quantità totale della fusione è ``0.0``, il risultato è uguale all'animazione ``"RESET"``.

Se il numero di tracce tra le animazioni fuse è diverso, l'animazione con la traccia mancante è trattata come se avesse il valore iniziale.

Se ``false``, la fusione non usa l'algoritmo deterministico. Il peso totale è normalizzato e sempre ``1.0``. Se il numero di tracce tra le animazioni fuse è diverso, non si fa nulla sull'animazione a cui manca una traccia.

\ **Nota:** In :ref:`AnimationTree<class_AnimationTree>`, la fusione con :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>` o il peso maggiore di ``1.0`` potrebbe produrre risultati inaspettati.

Ad esempio, se :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` fonde due nodi con il numero ``1.0``, allora il peso totale sarà ``2.0`` ma sarà normalizzato per rendere il numero totale ``1.0`` e il risultato sarà uguale a :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>` con la il numero ``0.5``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_reset_on_save:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_on_save** = ``true`` :ref:`🔗<class_AnimationMixer_property_reset_on_save>`

.. rst-class:: classref-property-setget

- |void| **set_reset_on_save_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset_on_save_enabled**\ (\ )

Questo è utilizzato dall'editor. Se impostato su ``true``, la scena verrà salvata con gli effetti dell'animazione di reset (l'animazione con la chiave ``"RESET"``) applicata come se fosse stata cercata al tempo 0, con l'editor che mantiene i valori che la scena aveva prima di salvare.

Questo rende più conveniente visualizzare in anteprima e modificare le animazioni nell'editor, in quanto le modifiche alla scena non saranno salvate finché sono impostate nell'animazione di reset.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **root_motion_local** = ``false`` :ref:`🔗<class_AnimationMixer_property_root_motion_local>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_root_motion_local**\ (\ )

Se ``true``, il valore da :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>` viene estratto come valore di traslazione locale prima della fusione. In altre parole, viene trattato come se la traslazione fosse stata effettuata dopo la rotazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_track:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_motion_track** = ``NodePath("")`` :ref:`🔗<class_AnimationMixer_property_root_motion_track>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_track**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_motion_track**\ (\ )

Il percorso della traccia di animazione utilizzata per il movimento di radice. I percorsi devono essere validi percorsi di albero di scene a un nodo, e devono essere specificati a partire dal nodo genitore del nodo che riprodurrà l'animazione. :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` utilizza lo stesso formato di :ref:`Animation.track_set_path()<class_Animation_method_track_set_path>`, ma si noti che un osso deve essere specificato.

Se la traccia è di tipo :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, o :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>` la trasformazione sarà annullata visivamente, e l'animazione sembrerà rimanere sul posto. Vedi anche :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`, :ref:`get_root_motion_rotation()<class_AnimationMixer_method_get_root_motion_rotation>`, :ref:`get_root_motion_scale()<class_AnimationMixer_method_get_root_motion_scale>`, e :ref:`RootMotionView<class_RootMotionView>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_node** = ``NodePath("..")`` :ref:`🔗<class_AnimationMixer_property_root_node>`

.. rst-class:: classref-property-setget

- |void| **set_root_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_node**\ (\ )

Il nodo da cui i riferimenti dei percorsi di nodo iniziano.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationMixer_private_method__post_process_key_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_post_process_key_value**\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AnimationMixer_private_method__post_process_key_value>`

Una funzione virtuale per l'elaborazione dopo aver ricevuto una chiave durante la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_add_animation_library:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ ) :ref:`🔗<class_AnimationMixer_method_add_animation_library>`

Aggiunge la libreria ``library`` al riproduttore di animazioni, sotto la chiave ``name``.

AnimationMixer ha una libreria globale predefinita con una stringa vuota come chiave. Per aggiungere un'animazione alla libreria globale:


.. tabs::

 .. code-tab:: gdscript

    var global_library = mixer.get_animation_library("")
    global_library.add_animation("animation_name", animation_resource)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationMixer_method_advance>`

Avanza manualmente le animazioni al tempo specificato (in secondi).

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_capture:

.. rst-class:: classref-method

|void| **capture**\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ ) :ref:`🔗<class_AnimationMixer_method_capture>`

Se la traccia di animazione specificata da ``name`` ha un'opzione :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>`, memorizza i valori attuali degli oggetti indicati dal percorso della traccia come cache. Se c'è già una cache catturata, la vecchia cache viene scartata.

Dopodiché, interpolerà con il risultato attuale della fusione dell'animazione durante il processo di riproduzione per il tempo specificato da ``duration``, funzionando come una dissolvenza incrociata.

È possibile specificare ``trans_type`` come la curva per l'interpolazione. Per ottenere migliori risultati, potrebbe essere opportuno specificare :ref:`Tween.TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>` per i casi in cui la prima chiave della traccia inizia con un valore non zero o dove il valore chiave non cambia, e :ref:`Tween.TRANS_QUAD<class_Tween_constant_TRANS_QUAD>` per i casi in cui il valore chiave cambia linearmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_clear_caches:

.. rst-class:: classref-method

|void| **clear_caches**\ (\ ) :ref:`🔗<class_AnimationMixer_method_clear_caches>`

**AnimationMixer** memorizza i nodi animati nella cache. Potrebbe non notare se un nodo scompare; :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` lo costringe ad aggiornare nuovamente la cache.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation>`

Restituisce la chiave dell'animazione ``animation`` o un :ref:`StringName<class_StringName>` vuoto se non trovata.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation_library:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation_library**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation_library>`

Restituisce la chiave per l':ref:`AnimationLibrary<class_AnimationLibrary>` che contiene l'animazione ``animation`` o un :ref:`StringName<class_StringName>` vuoto se non trovata.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation>`

Restituisce l':ref:`Animation<class_Animation>` con la chiave ``name``. Se l'animazione non esiste, ``null`` è restituito ed è generato un errore.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library:

.. rst-class:: classref-method

:ref:`AnimationLibrary<class_AnimationLibrary>` **get_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library>`

Restituisce il primo :ref:`AnimationLibrary<class_AnimationLibrary>` con la chiave ``name`` o ``null`` se non trovato.

Per ottenere la libreria globale di animazioni dell'**AnimationMixer**, usa ``get_animation_library("")``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_library_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library_list>`

Restituisce la lista di chiavi memorizzate di libreria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_list>`

Restituisce la lista di chiavi memorizzate di animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position>`

Recupera il delta di movimento della posizione con la :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Vector3<class_Vector3>` che può essere utilizzato altrove.

Se :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` non è un percorso verso una traccia di tipo :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, restituisce ``Vector3(0, 0, 0)``.

Vedi anche :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` e :ref:`RootMotionView<class_RootMotionView>`.

L'esempio più basilare è l'applicazione della posizione a :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_rotation

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_rotation = get_quaternion()
            state_machine.travel("Animate")
        var velocity = current_rotation * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Utilizzando questo in combinazione con :ref:`get_root_motion_rotation_accumulator()<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`, puoi applicare la posizione del movimento della radice più correttamente per tenere conto della rotazione del nodo.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Se :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>` è ``true``, restituisce il valore di traslazione pre-moltiplicato con la rotazione invertita.

In questo caso, il codice può essere scritto come segue:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = get_quaternion() * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position_accumulator>`

Recupera il valore combinato delle tracce di posizione con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Vector3<class_Vector3>` che può essere utilizzato altrove.

Ciò è utile nei casi in cui si desidera rispettare i valori della chiave iniziale dell'animazione.

Ad esempio, se un'animazione con una sola chiave ``Vector3(0, 0, 0)`` viene riprodotta nel frame precedente e poi un'animazione con una sola chiave ``Vector3(1, 0, 1)`` viene riprodotta nel frame successivo, la differenza può essere calcolata come segue:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_position_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_position_accumulator = animation_tree.get_root_motion_position_accumulator()
        var difference = current_root_motion_position_accumulator - prev_root_motion_position_accumulator
        prev_root_motion_position_accumulator = current_root_motion_position_accumulator
        transform.origin += difference



Tuttavia, se l'animazione si ripete, potrebbe verificarsi un cambiamento discreto indesiderato, quindi questa funzionalità è utile solo per alcuni casi d'uso semplici.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation>`

Recupera il delta del movimento di rotazione con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Quaternion<class_Quaternion>` che può essere utilizzato altrove.

Se :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` non è un percorso verso una traccia di tipo :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, restituisce ``Quaternion(0, 0, 0, 1)``.

Vedi anche :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` e :ref:`RootMotionView<class_RootMotionView>`.

L'esempio più basilare è per applicare la rotazione a :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation_accumulator:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`

Recupera il valore combinato delle tracce di rotazione con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Quaternion<class_Quaternion>` che può essere utilizzato altrove.

Ciò è necessario per applicare correttamente la posizione del movimento radice, tenendo conto della rotazione. Vedi anche :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`.

Inoltre, ciò è utile nei casi in cui si desidera rispettare i valori della chiave iniziale dell'animazione.

Ad esempio, se un'animazione con una sola chiave ``Quaternion(0, 0, 0, 1)`` viene riprodotta nel frame precedente e poi un'animazione con una sola chiave ``Quaternion(0, 0.707, 0, 0.707)`` viene riprodotta nel frame successivo, la differenza può essere calcolata come segue:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_rotation_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_rotation_accumulator = animation_tree.get_root_motion_rotation_accumulator()
        var difference = prev_root_motion_rotation_accumulator.inverse() * current_root_motion_rotation_accumulator
        prev_root_motion_rotation_accumulator = current_root_motion_rotation_accumulator
        transform.basis *=  Basis(difference)



Tuttavia, se l'animazione si ripete, potrebbe verificarsi un cambiamento discreto indesiderato, quindi questa funzionalità è utile solo per alcuni casi d'uso semplici.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale>`

Recupera il delta di movimento della scala con la :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Vector3<class_Vector3>` che può essere utilizzato altrove.

Se :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` non è un percorso verso una traccia di tipo :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, restituisce ``Vector3(0, 0, 0)``.

Vedi anche :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` e :ref:`RootMotionView<class_RootMotionView>`.

L'esempio più basilare è l'applicazione della posizione a :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_scale = Vector3(1, 1, 1)
    var scale_accum = Vector3(1, 1, 1)

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_scale = get_scale()
            scale_accum = Vector3(1, 1, 1)
            state_machine.travel("Animate")
        scale_accum += animation_tree.get_root_motion_scale()
        set_scale(current_scale * scale_accum)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale_accumulator>`

Recupera il valore combinato delle tracce di scala con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` come :ref:`Vector3<class_Vector3>` che può essere utilizzato altrove.

Ad esempio, se un'animazione con una sola chiave ``Vector3(1, 1, 1)`` viene riprodotta nel frame precedente e poi un'animazione con una sola chiave ``Vector3(2, 2, 2)`` viene riprodotta nel frame successivo, la differenza può essere calcolata come segue:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_scale_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_scale_accumulator = animation_tree.get_root_motion_scale_accumulator()
        var difference = current_root_motion_scale_accumulator - prev_root_motion_scale_accumulator
        prev_root_motion_scale_accumulator = current_root_motion_scale_accumulator
        transform.basis = transform.basis.scaled(difference)



Tuttavia, se l'animazione si ripete, potrebbe verificarsi un cambiamento discreto indesiderato, quindi questa funzionalità è utile solo per alcuni casi d'uso semplici.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation>`

Restituisce ``true`` se l'**AnimationMixer** memorizza un'animazione con la chiave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation_library:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation_library>`

Restituisce ``true`` se l'**AnimationMixer** memorizza una libreria di animazioni con la chiave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_remove_animation_library:

.. rst-class:: classref-method

|void| **remove_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_remove_animation_library>`

Rimuove l':ref:`AnimationLibrary<class_AnimationLibrary>` associata alla chiave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_rename_animation_library:

.. rst-class:: classref-method

|void| **rename_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_rename_animation_library>`

Sposta l':ref:`AnimationLibrary<class_AnimationLibrary>` associata alla chiave ``name`` alla chiave ``newname``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
