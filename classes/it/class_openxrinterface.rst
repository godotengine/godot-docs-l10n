:github_url: hide

.. _class_OpenXRInterface:

OpenXRInterface
===============

**Eredita:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

La nostra interfaccia OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'interfaccia OpenXR consente a Godot di interagire con le esecuzioni OpenXR e di creare esperienze e giochi XR.

A causa delle esigenze di OpenXR, questa interfaccia funziona in modo leggermente diverso rispetto ad altre interfacce XR basate sulle estensioni. Deve essere inizializzata all'avvio di Godot. È necessario abilitare OpenXR, le quali impostazioni sono presenti nelle impostazioni del progetto di gioco sotto l'intestazione XR. È necessario contrassegnare una viewport per l'uso con XR affinché Godot sappia quale risultato di rendering deve essere trasmesso al visore.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Configurazione dell'XR <../tutorials/xr/setting_up_xr>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`display_refresh_rate<class_OpenXRInterface_property_display_refresh_rate>`                         | ``0.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_dynamic<class_OpenXRInterface_property_foveation_dynamic>`                               | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`                                   | ``0``     |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_with_subsampled_images<class_OpenXRInterface_property_foveation_with_subsampled_images>` | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`render_target_size_multiplier<class_OpenXRInterface_property_render_target_size_multiplier>`       | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_min_radius<class_OpenXRInterface_property_vrs_min_radius>`                                     | ``20.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_strength<class_OpenXRInterface_property_vrs_strength>`                                         | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_action_sets<class_OpenXRInterface_method_get_action_sets>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_available_display_refresh_rates<class_OpenXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_angular_velocity<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_OpenXRInterface_method_get_hand_joint_flags>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_linear_velocity<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|   |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_position<class_OpenXRInterface_method_get_hand_joint_position>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_hand_joint_radius<class_OpenXRInterface_method_get_hand_joint_radius>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                      | :ref:`get_hand_joint_rotation<class_OpenXRInterface_method_get_hand_joint_rotation>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`         | :ref:`get_hand_tracking_source<class_OpenXRInterface_method_get_hand_tracking_source>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`             | :ref:`get_motion_range<class_OpenXRInterface_method_get_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SessionState<enum_OpenXRInterface_SessionState>`                   | :ref:`get_session_state<class_OpenXRInterface_method_get_session_state>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_action_set_active<class_OpenXRInterface_method_is_action_set_active>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_eye_gaze_interaction_supported<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`\ (\ )                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_foveation_supported<class_OpenXRInterface_method_is_foveation_supported>`\ (\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_interaction_supported<class_OpenXRInterface_method_is_hand_interaction_supported>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_tracking_supported<class_OpenXRInterface_method_is_hand_tracking_supported>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_user_presence_supported<class_OpenXRInterface_method_is_user_presence_supported>`\ (\ ) |const|                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_user_present<class_OpenXRInterface_method_is_user_present>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_action_set_active<class_OpenXRInterface_method_set_action_set_active>`\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ )                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_cpu_level<class_OpenXRInterface_method_set_cpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_gpu_level<class_OpenXRInterface_method_set_gpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_motion_range<class_OpenXRInterface_method_set_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ )                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRInterface_signal_cpu_level_changed:

.. rst-class:: classref-signal

**cpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_cpu_level_changed>`

Informa il dispositivo che il livello di prestazioni della CPU è cambiato nel sottodominio specificato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_gpu_level_changed:

.. rst-class:: classref-signal

**gpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_gpu_level_changed>`

Informa il dispositivo che il livello di prestazioni della GPU è cambiato nel sottodominio specificato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_instance_exiting:

.. rst-class:: classref-signal

**instance_exiting**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_instance_exiting>`

Informa che la nostra istanza OpenXR è in fase di chiusura.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_pose_recentered:

.. rst-class:: classref-signal

**pose_recentered**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_pose_recentered>`

Informa che l'utente ha richiesto un ricentramento della posizione del giocatore.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_refresh_rate_changed:

.. rst-class:: classref-signal

**refresh_rate_changed**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_OpenXRInterface_signal_refresh_rate_changed>`

Informa l'utente che la frequenza di aggiornamento dell'HMD è cambiata.

\ **Nota:** Emesso solo se l'esecuzione XR supporta l'estensione della frequenza di aggiornamento.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_begun:

.. rst-class:: classref-signal

**session_begun**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_begun>`

Informa che la nostra sessione OpenXR è stata avviata.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_focussed:

.. rst-class:: classref-signal

**session_focussed**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_focussed>`

Informa che la nostra sessione OpenXR è ora focalizzata, ad esempio l'output viene inviato all'HMD e stiamo ricevendo input XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_loss_pending:

.. rst-class:: classref-signal

**session_loss_pending**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_loss_pending>`

Informa che la nostra sessione OpenXR sta per andare persa.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_stopping:

.. rst-class:: classref-signal

**session_stopping**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_stopping>`

Informa che la nostra sessione OpenXR si sta interrompendo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_synchronized:

.. rst-class:: classref-signal

**session_synchronized**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_synchronized>`

Informa che la nostra sessione OpenXR è stata sincronizzata.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_visible:

.. rst-class:: classref-signal

**session_visible**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_visible>`

Informa che la nostra sessione OpenXR è ora visibile, ad esempio l'output viene inviato all'HMD e ma non riceviamo input XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_user_presence_changed:

.. rst-class:: classref-signal

**user_presence_changed**\ (\ is_user_present\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_signal_user_presence_changed>`

Signal emitted when the user presence value changes.

\ **Note:** This signal will not be emitted during application startup and application shutdown. Developers should assume user presence is gained on startup and lost on shutdown.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRInterface_SessionState:

.. rst-class:: classref-enumeration

enum **SessionState**: :ref:`🔗<enum_OpenXRInterface_SessionState>`

.. _class_OpenXRInterface_constant_SESSION_STATE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_UNKNOWN** = ``0``

Lo stato della sessione è sconosciuto, non abbiamo ancora provato a configurare OpenXR.

.. _class_OpenXRInterface_constant_SESSION_STATE_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_IDLE** = ``1``

Lo stato iniziale dopo la creazione della sessione OpenXR o dopo la sua eliminazione.

.. _class_OpenXRInterface_constant_SESSION_STATE_READY:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_READY** = ``2``

OpenXR è pronto per iniziare la nostra sessione. :ref:`session_begun<class_OpenXRInterface_signal_session_begun>` viene emesso quando si passa a questo stato.

.. _class_OpenXRInterface_constant_SESSION_STATE_SYNCHRONIZED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_SYNCHRONIZED** = ``3``

L'applicazione ha sincronizzato il suo ciclo di frame con l'esecuzione, ma nulla è stato renderizzando ancora. :ref:`session_synchronized<class_OpenXRInterface_signal_session_synchronized>` viene emesso quando si passa a questo stato.

.. _class_OpenXRInterface_constant_SESSION_STATE_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_VISIBLE** = ``4``

L'applicazione ha sincronizzato il suo ciclo di frame con l'esecuzione e si sta renderizzando il risultato all'utente, tuttavia non è stato ricevuto alcun input dall'utente. :ref:`session_visible<class_OpenXRInterface_signal_session_visible>` viene emesso quando si passa a questo stato.

\ **Nota:** Questo è lo stato attuale appena prima di ottenere lo stato focalizzato, ogni volta che l'utente apre un menu di sistema, passa a un'altra applicazione o si toglie il visore.

.. _class_OpenXRInterface_constant_SESSION_STATE_FOCUSED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_FOCUSED** = ``5``

L'applicazione ha sincronizzato il suo ciclo di frame con l'esecuzione, si sta renderizzando il risultato all'utente e si sta ricevendo l'input XR. :ref:`session_focussed<class_OpenXRInterface_signal_session_focussed>` viene emesso quando si passa a questo stato.

\ **Nota:** Questo è lo stato in cui si troverà OpenXR quando l'utente potrà interagire completamente con il gioco.

.. _class_OpenXRInterface_constant_SESSION_STATE_STOPPING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_STOPPING** = ``6``

La nostra sessione è in interruzione. :ref:`session_stopping<class_OpenXRInterface_signal_session_stopping>` viene emesso quando si passa a questo stato.

.. _class_OpenXRInterface_constant_SESSION_STATE_LOSS_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_LOSS_PENDING** = ``7``

La sessione sta per perdersi. :ref:`session_loss_pending<class_OpenXRInterface_signal_session_loss_pending>` viene emesso quando si passa a questo stato.

.. _class_OpenXRInterface_constant_SESSION_STATE_EXITING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_EXITING** = ``8``

The OpenXR instance is about to be destroyed and we're exiting. :ref:`instance_exiting<class_OpenXRInterface_signal_instance_exiting>` is emitted when we change to this state.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_Hand:

.. rst-class:: classref-enumeration

enum **Hand**: :ref:`🔗<enum_OpenXRInterface_Hand>`

.. _class_OpenXRInterface_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_LEFT** = ``0``

Mano sinistra.

.. _class_OpenXRInterface_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_RIGHT** = ``1``

Mano destra.

.. _class_OpenXRInterface_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_MAX** = ``2``

Valore massimo per la enumeratore della mano.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandMotionRange:

.. rst-class:: classref-enumeration

enum **HandMotionRange**: :ref:`🔗<enum_OpenXRInterface_HandMotionRange>`

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_UNOBSTRUCTED** = ``0``

Intervallo totale della mano: se l'utente chiude le mani, si forma un pugno pieno.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

Conforme al controller: se l'utente chiude le mani, i dati tracciati si adattano alla forma del controller.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_MAX** = ``2``

Valore massimo per l'enumeratore della gamma di movimento.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandTrackedSource:

.. rst-class:: classref-enumeration

enum **HandTrackedSource**: :ref:`🔗<enum_OpenXRInterface_HandTrackedSource>`

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNKNOWN** = ``0``

La sorgente dei dati di tracciamento delle mani è sconosciuta (probabilmente l'estensione non è supportata).

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNOBSTRUCTED** = ``1``

La sorgente del tracciamento delle mani non è ostruita, il che significa che è utilizzato un metodo accurato di tracciamento delle mani, ad esempio tracciamento ottico delle mani, guanti per dati, ecc.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_CONTROLLER** = ``2``

La sorgente dei dati di tracciamento delle mani è un controller, le posizioni delle articolazioni sono dedotte dagli input del controller.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_MAX** = ``3``

Rappresenta la dimensione dell'enumerazione :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJoints:

.. rst-class:: classref-enumeration

enum **HandJoints**: :ref:`🔗<enum_OpenXRInterface_HandJoints>`

.. _class_OpenXRInterface_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_PALM** = ``0``

Articolazione del palmo.

.. _class_OpenXRInterface_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_WRIST** = ``1``

Articolazione del polso.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Articolazione metacarpale del pollice.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_PROXIMAL** = ``3``

Articolazione prossimale del pollice.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_DISTAL** = ``4``

Articolazione distale del pollice.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_TIP** = ``5``

Articolazione della punta del pollice.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_METACARPAL** = ``6``

Articolazione metacarpale dell'indice.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_PROXIMAL** = ``7``

Articolazione prossimale della falange dell'indice.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_INTERMEDIATE** = ``8``

Articolazione intermedia della falange dell'indice.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_DISTAL** = ``9``

Articolazione distale della falange dell'indice.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_TIP** = ``10``

Articolazione della punta dell'indice.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_METACARPAL** = ``11``

Articolazione metacarpale del dito medio.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_PROXIMAL** = ``12``

Articolazione prossimale della falange del dito medio.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_INTERMEDIATE** = ``13``

Articolazione intermedia della falange del dito medio.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_DISTAL** = ``14``

Articolazione distale della falange del dito medio.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_TIP** = ``15``

Articolazione della punta del dito medio.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_METACARPAL** = ``16``

Articolazione metacarpale dell'anulare.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_PROXIMAL** = ``17``

Articolazione prossimale della falange dell'anulare.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_INTERMEDIATE** = ``18``

Articolazione intermedia della falange dell'anulare.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_DISTAL** = ``19``

Articolazione distale della falange dell'anulare.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_TIP** = ``20``

Articolazione della punta dell'anulare.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_METACARPAL** = ``21``

Articolazione metacarpale del mignolo.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_PROXIMAL** = ``22``

Articolazione prossimale della falange del mignolo.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_INTERMEDIATE** = ``23``

Articolazione intermedia della falange del mignolo.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_DISTAL** = ``24``

Articolazione distale della falange del mignolo.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_TIP** = ``25``

Articolazione della punta del mignolo.

.. _class_OpenXRInterface_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MAX** = ``26``

Rappresenta la dimensione dell'enumerazione :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_POWER_SAVINGS:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_POWER_SAVINGS** = ``0``

L'applicazione è entrata in una sezione non XR (testa bloccata o schermo statico), durante la quale si deve priorizzare il risparmio energetico.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_LOW** = ``1``

L'applicazione è entrata in una sezione di complessità bassa e stabile, durante la quale la riduzione del consumo energetico è più importante dei frame di rendering occasionalmente in ritardo.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_HIGH** = ``2``

L'applicazione è entrata in una sezione di complessità elevata o dinamica, durante la quale il Runtime XR si impegna a ottenere un compositing XR e un rendering dei frame costanti entro un intervallo termicamente sostenibile.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_BOOST:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_BOOST** = ``3``

L'applicazione è entrata in una sezione di complessità molto elevata, durante la quale il Runtime XR può superare l'intervallo termicamente sostenibile.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsSubDomain:

.. rst-class:: classref-enumeration

enum **PerfSettingsSubDomain**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsSubDomain>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_COMPOSITING** = ``0``

Le prestazioni di compositing in fase di esecuzione hanno raggiunto un nuovo livello.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_RENDERING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_RENDERING** = ``1``

Le prestazioni di rendering delle applicazioni hanno raggiunto un nuovo livello.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_THERMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_THERMAL** = ``2``

La temperatura del dispositivo ha raggiunto un nuovo livello.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsNotificationLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsNotificationLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsNotificationLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_NORMAL** = ``0``

Il sottodominio ha raggiunto un livello in cui non sono necessarie ulteriori azioni oltre a quelle attualmente applicate.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_WARNING** = ``1``

Il sottodominio ha raggiunto un livello precoce di allerta tale per cui l'applicazione dovrebbe avviare azioni proattive di mitigazione.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED** = ``2``

Il sottodominio ha raggiunto un livello critico tale per cui l'applicazione dovrebbe avviare drastiche azioni di mitigazione.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_OpenXRInterface_HandJointFlags>`

.. _class_OpenXRInterface_constant_HAND_JOINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_NONE** = ``0``

Nessun flag è impostato.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_VALID** = ``1``

Se impostato, i dati di orientamento sono validi, altrimenti, i dati di orientamento non sono affidabili e non devono essere utilizzati.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_TRACKED** = ``2``

Se impostato, i dati di orientamento provengono dai dati di tracciamento, altrimenti contengono dati anticipati.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_VALID** = ``4``

Se impostato, i dati posizionali sono validi, altrimenti non sono affidabili e non dovrebbero essere utilizzati.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_TRACKED** = ``8``

Se impostato, i dati posizionali provengono dai dati di tracciamento, altrimenti contengono dati anticipati.

.. _class_OpenXRInterface_constant_HAND_JOINT_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_LINEAR_VELOCITY_VALID** = ``16``

Se impostato, i nostri dati sulla velocità lineare sono validi, altrimenti i dati sulla velocità lineare non sono affidabili e non dovrebbero essere utilizzati.

.. _class_OpenXRInterface_constant_HAND_JOINT_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ANGULAR_VELOCITY_VALID** = ``32``

Se impostato, i nostri dati sulla velocità angolare sono validi, altrimenti i dati sulla velocità angolare non sono affidabili e non dovrebbero essere utilizzati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRInterface_property_display_refresh_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_refresh_rate** = ``0.0`` :ref:`🔗<class_OpenXRInterface_property_display_refresh_rate>`

.. rst-class:: classref-property-setget

- |void| **set_display_refresh_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_refresh_rate**\ (\ )

La frequenza di aggiornamento del display per l'HMD corrente. Funziona solo se questa funzionalità è supportata dall'esecuzione OpenXR e dopo che l'interfaccia è stata inizializzata.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_dynamic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_dynamic** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_dynamic>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_dynamic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_dynamic**\ (\ )

Se ``true``, abilita la regolazione dinamica della foveazione. L'interfaccia deve essere inizializzata prima che sia accessibile. Se abilitata, la foveazione sarà regolata automaticamente tra bassa e :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **foveation_level** = ``0`` :ref:`🔗<class_OpenXRInterface_property_foveation_level>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_foveation_level**\ (\ )

Il livello di foveazione, da ``0`` (disabilitata) a ``3`` (alta). L'interfaccia deve essere inizializzata prima che sia accessibile.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_with_subsampled_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_with_subsampled_images** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_with_subsampled_images>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_with_subsampled_images**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_with_subsampled_images**\ (\ )

If ``true``, enables subsampled images with foveation, which can provide a performance boost on Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_render_target_size_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **render_target_size_multiplier** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_render_target_size_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_render_target_size_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_render_target_size_multiplier**\ (\ )

Il moltiplicatore delle dimensioni di rendering per l'HMD attuale. Deve essere impostato prima che l'interfaccia sia stata inizializzata.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Il raggio minimo attorno al punto focale in cui è garantita la massima qualità se VRS viene utilizzato come percentuale della dimensione dello schermo.

\ **Nota:** Solo per il rendering Mobile e Forward+. Richiede che :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` sia impostato su :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

L'intensità utilizzata per calcolare la mappa di densità VRS. Maggiore è questo valore, più evidente è VRS. Ciò migliora le prestazioni a scapito della qualità.

\ **Nota:** Solo rendering Mobile e Forward+. Richiede che :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` sia impostato su :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRInterface_method_get_action_sets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_action_sets**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_action_sets>`

Restituisce una lista di insiemi di azioni registrati con Godot (caricati dalla mappa delle azioni in fase di esecuzione).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_available_display_refresh_rates>`

Returns a list of display refresh rates supported by the current HMD. Only returned if this feature is supported by the OpenXR runtime and after the interface has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_angular_velocity()<class_XRHandTracker_method_get_hand_joint_angular_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento della mano è abilitato, restituisce la velocità angolare di un'articolazione (``joint``) di una mano (``hand``) come fornita da OpenXR. Questa è relativa a :ref:`XROrigin3D<class_XROrigin3D>`!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] **get_hand_joint_flags**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_flags>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_flags()<class_XRHandTracker_method_get_hand_joint_flags>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento delle mani è abilitato, restituisce dei flag che ci informano della validità dei dati di tracciamento.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_linear_velocity()<class_XRHandTracker_method_get_hand_joint_linear_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento della mano è abilitato, restituisce la velocità lineare di un'articolazione (``joint``) di una mano (``hand``) come fornita da OpenXR. Questa è relativa a :ref:`XROrigin3D<class_XROrigin3D>` senza scala del mondo applicata!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_position**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_position>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento della mano è abilitato, restituisce la posizione di un'articolazione (``joint``) di una mano (``hand``) come fornita da OpenXR. Questa è relativa a :ref:`XROrigin3D<class_XROrigin3D>` senza scala del mondo applicata!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_radius>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_radius()<class_XRHandTracker_method_get_hand_joint_radius>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento della mano è abilitato, restituisce il raggio di un'articolazione (``joint``) di una mano (``hand``) come fornito da OpenXR. Questo è senza scala del mondo applicata!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_hand_joint_rotation**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_rotation>`

**Deprecato:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento della mano è abilitato, restituisce la rotazione di un'articolazione (``joint``) di una mano (``hand``) come fornita da OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_tracking_source:

.. rst-class:: classref-method

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **get_hand_tracking_source**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_tracking_source>`

**Deprecato:** Use :ref:`XRHandTracker.hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Se il tracciamento delle mani è abilitato e la sorgente del tracciamento delle mani è supportata, ottiene la sorgente dei dati di tracciamento per la mano ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_motion_range:

.. rst-class:: classref-method

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **get_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_motion_range>`

Se il tracciamento manuale è abilitato e l'intervallo di movimento è supportato, ottiene l'intervallo di movimento attualmente configurato per la mano ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_session_state:

.. rst-class:: classref-method

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **get_session_state**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_get_session_state>`

Restituisce lo stato attuale della nostra sessione OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_action_set_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_set_active**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_action_set_active>`

Restituisce ``true`` se l'insieme di azioni specificato è attivo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_eye_gaze_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_eye_gaze_interaction_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`

Restituisce le capacità dell'estensione di interazione dello sguardo.

\ **Nota:** Questo restituisce un valore valido solo dopo che OpenXR è stato inizializzato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_foveation_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_foveation_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_foveation_supported>`

Restituisce ``true`` se l'estensione di foveazione di OpenXR è supportata, l'interfaccia deve essere inizializzata prima che questo restituisca un valore valido.

\ **Nota:** Quando si utilizza il driver di rendering Vulkan, :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` deve essere impostato su :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>` per supportare la foveazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_interaction_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_hand_interaction_supported>`

Restituisce ``true`` se il profilo di interazione manuale di OpenXR è supportato e abilitato.

\ **Nota:** Questo restituisce un valore valido solo dopo l'avvio della sessione OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_tracking_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_tracking_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_hand_tracking_supported>`

Restituisce ``true`` se il tracciamento delle mani di OpenXR è supportato e abilitato.

\ **Nota:** Questo restituisce un valore valido solo dopo l'avvio della sessione OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_user_presence_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_user_presence_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_user_presence_supported>`

Returns ``true`` if OpenXR's user presence extension is supported and enabled.

\ **Note:** This only returns a valid value after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_user_present:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_user_present**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_user_present>`

Returns ``true`` if system has detected the presence of a user in the XR experience.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_action_set_active:

.. rst-class:: classref-method

|void| **set_action_set_active**\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_action_set_active>`

Imposta l'insieme di azioni come attivo o inattivo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_cpu_level:

.. rst-class:: classref-method

|void| **set_cpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_cpu_level>`

Imposta il livello di prestazioni della CPU del dispositivo OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_gpu_level:

.. rst-class:: classref-method

|void| **set_gpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_gpu_level>`

Imposta il livello di prestazioni della GPU del dispositivo OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_motion_range:

.. rst-class:: classref-method

|void| **set_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_motion_range>`

Se il tracciamento della mano è abilitato e l'intervallo di movimento è supportato, imposta l'intervallo di movimento attualmente configurato per la mano ``hand`` su ``motion_range``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
