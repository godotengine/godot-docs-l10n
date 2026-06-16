:github_url: hide

.. _class_XRHandTracker:

XRHandTracker
=============

**Eredita:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una mano tracciata in XR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un sistema di tracciamento delle mani creerà un'istanza di questo oggetto e la aggiungerà al :ref:`XRServer<class_XRServer>`. Questo sistema di tracciamento otterrà quindi i dati dello scheletro, li convertirà nello scheletro della mano di Godot Humanoid e memorizzerà questi dati sull'oggetto **XRHandTracker**.

Utilizza :ref:`XRHandModifier3D<class_XRHandModifier3D>` per animare una mesh di mano attraverso i dati di tracciamento delle mani.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`         | hand                                                                           | ``1`` (overrides :ref:`XRPositionalTracker<class_XRPositionalTracker_property_hand>`) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` | :ref:`hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` | ``0``                                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_tracking_data<class_XRHandTracker_property_has_tracking_data>`       | ``false``                                                                             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                    | type                                                                           | ``16`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`)                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_angular_velocity<class_XRHandTracker_method_get_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                   |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_XRHandTracker_method_get_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_linear_velocity<class_XRHandTracker_method_get_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`get_hand_joint_radius<class_XRHandTracker_method_get_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_hand_joint_transform<class_XRHandTracker_method_get_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                 |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_angular_velocity<class_XRHandTracker_method_set_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ )         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_flags<class_XRHandTracker_method_set_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_linear_velocity<class_XRHandTracker_method_set_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ )            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_radius<class_XRHandTracker_method_set_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_transform<class_XRHandTracker_method_set_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_XRHandTracker_HandTrackingSource:

.. rst-class:: classref-enumeration

enum **HandTrackingSource**: :ref:`🔗<enum_XRHandTracker_HandTrackingSource>`

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNKNOWN** = ``0``

La sorgente dei dati di tracciamento delle mani è sconosciuta.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNOBSTRUCTED** = ``1``

La sorgente dei dati di tracciamento delle mani non è ostruita, il che significa che è utilizzato un metodo accurato di tracciamento delle mani. Questi includono il tracciamento ottico delle mani, guanti per dati, ecc.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_CONTROLLER** = ``2``

La sorgente dei dati di tracciamento delle mani è un controller, il che significa che le posizioni delle articolazioni sono dedotte dagli input del controller.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_NOT_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_NOT_TRACKED** = ``3``

Non sono tracciati dati di tracciamento delle mani, il che significa che la mano è coperta, il controller è spento oppure il tracciamento non è supportato per il tipo di input attuale.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJoint:

.. rst-class:: classref-enumeration

enum **HandJoint**: :ref:`🔗<enum_XRHandTracker_HandJoint>`

.. _class_XRHandTracker_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PALM** = ``0``

Articolazione del palmo.

.. _class_XRHandTracker_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_WRIST** = ``1``

Articolazione del polso.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Articolazione metacarpale del pollice.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_PROXIMAL** = ``3``

Articolazione prossimale della falange del pollice.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_DISTAL** = ``4``

Articolazione distale della falange del pollice.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_TIP** = ``5``

Articolazione della punta del pollice.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_METACARPAL** = ``6``

Articolazione metacarpale dell'indice.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL** = ``7``

Articolazione prossimale della falange dell'indice.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``8``

Articolazione intermedia della falange dell'indice.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL** = ``9``

Articolazione distale della falange dell'indice.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_TIP** = ``10``

Articolazione della punta dell'indice.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_METACARPAL** = ``11``

Articolazione metacarpale del dito medio.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``12``

Articolazione prossimale della falange del dito medio.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``13``

Articolazione intermedia della falange del dito medio.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL** = ``14``

Articolazione distale della falange del dito medio.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_TIP** = ``15``

Articolazione della punta del dito medio.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_METACARPAL** = ``16``

Articolazione metacarpale dell'anulare.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL** = ``17``

Articolazione prossimale della falange dell'anulare.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE** = ``18``

Articolazione intermedia della falange dell'anulare.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_DISTAL** = ``19``

Articolazione distale della falange dell'anulare.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_TIP** = ``20``

Articolazione della punta dell'anulare.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_METACARPAL** = ``21``

Articolazione metacarpale del mignolo.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL** = ``22``

Articolazione prossimale della falange del mignolo.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``23``

Articolazione intermedia della falange del mignolo.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL** = ``24``

Articolazione distale della falange del mignolo.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_TIP** = ``25``

Articolazione della punta del mignolo.

.. _class_XRHandTracker_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MAX** = ``26``

Rappresenta la dimensione dell'enumerazione :ref:`HandJoint<enum_XRHandTracker_HandJoint>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_XRHandTracker_HandJointFlags>`

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_VALID** = ``1``

I dati sull'orientamento dell'articolazione della mano sono validi.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

L'orientamento dell'articolazione della mano è tracciato attivamente. Potrebbe non essere impostato se il tracciamento è stato perso temporaneamente.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_VALID** = ``4``

I dati sulla posizione dell'articolazione della mano sono validi.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_TRACKED** = ``8``

La posizione dell'articolazione della mano è tracciata attivamente. Potrebbe non essere impostato se il tracciamento è stato perso temporaneamente.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID** = ``16``

I dati sulla velocità lineare dell'articolazione della mano sono validi.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID** = ``32``

I dati sulla velocità angolare dell'articolazione della mano sono validi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRHandTracker_property_hand_tracking_source:

.. rst-class:: classref-property

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **hand_tracking_source** = ``0`` :ref:`🔗<class_XRHandTracker_property_hand_tracking_source>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracking_source**\ (\ value\: :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`\ )
- :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **get_hand_tracking_source**\ (\ )

La sorgente dei dati di tracciamento delle mani.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRHandTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Se ``true``, i dati di tracciamento delle mani sono validi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRHandTracker_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_angular_velocity>`

Restituisce la velocità angolare per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] **get_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_flags>`

Restituisce i flag sulla validità dei dati di tracciamento per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_linear_velocity>`

Restituisce la velocità lineare per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_radius>`

Restituisce il raggio dell'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_transform>`

Restituisce la trasformazione per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_angular_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_angular_velocity>`

Imposta la velocità angolare per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_flags:

.. rst-class:: classref-method

|void| **set_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_flags>`

Imposta i flag sulla validità dei dati di tracciamento per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_linear_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_linear_velocity>`

Imposta la velocità lineare per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_radius:

.. rst-class:: classref-method

|void| **set_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_radius>`

Imposta il raggio per l'articolazione della mano fornita.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_transform:

.. rst-class:: classref-method

|void| **set_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_transform>`

Imposta la trasformazione per l'articolazione della mano fornita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
