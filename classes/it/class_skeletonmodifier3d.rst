:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`BoneTwistDisperser3D<class_BoneTwistDisperser3D>`, :ref:`IKModifier3D<class_IKModifier3D>`, :ref:`LimitAngularVelocityModifier3D<class_LimitAngularVelocityModifier3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

Un nodo che potrebbe modificare le ossa di uno Skeleton3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**SkeletonModifier3D** recupera uno :ref:`Skeleton3D<class_Skeleton3D>` di destinazione avendo un :ref:`Skeleton3D<class_Skeleton3D>` genitore.

Se un :ref:`AnimationMixer<class_AnimationMixer>` è presente, la modificazione è sempre eseguita dopo il processo di riproduzione dell':ref:`AnimationMixer<class_AnimationMixer>`.

Questo nodo si dovrebbe utilizzare per implementare risolutori IK personalizzati, vincoli o fisica per lo scheletro.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Progettazione dello SkeletonModifier3D <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

Notifica quando la modificazione è stata completata.

\ **Nota:** Se vuoi ottenere la posa dell'osso modificata dal modificatore, devi usare :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` o :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>` nel momento in cui viene attivato questo segnale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

Valore enumerato per l'asse +X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

Valore enumerato per l'asse -X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

Valore enumerato per l'asse +Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

Valore enumerato per l'asse -Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

Valore enumerato per l'asse +Z.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

Valore enumerato per l'asse -X.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_BoneDirection:

.. rst-class:: classref-enumeration

enum **BoneDirection**: :ref:`🔗<enum_SkeletonModifier3D_BoneDirection>`

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_X** = ``0``

Valore enumerato per l'asse +X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_X** = ``1``

Valore enumerato per l'asse -X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Y** = ``2``

Valore enumerato per l'asse +Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Y** = ``3``

Valore enumerato per l'asse -Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Z** = ``4``

Valore enumerato per l'asse +Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Z** = ``5``

Valore enumerato per l'asse -X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_FROM_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_FROM_PARENT** = ``6``

Valore enumerato per l'asse da un osso padre all'osso figlio.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_SecondaryDirection:

.. rst-class:: classref-enumeration

enum **SecondaryDirection**: :ref:`🔗<enum_SkeletonModifier3D_SecondaryDirection>`

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_NONE** = ``0``

Valore enumerato nel caso in cui l'asse non è definito.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_X** = ``1``

Valore enumerato per l'asse +X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_X** = ``2``

Valore enumerato per l'asse -X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Y** = ``3``

Valore enumerato per l'asse +Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Y** = ``4``

Valore enumerato per l'asse -Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Z** = ``5``

Valore enumerato per l'asse +Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Z** = ``6``

Valore enumerato per l'asse -X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_CUSTOM** = ``7``

Valore enumerato per un asse facoltativo.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_RotationAxis:

.. rst-class:: classref-enumeration

enum **RotationAxis**: :ref:`🔗<enum_SkeletonModifier3D_RotationAxis>`

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_X** = ``0``

Valore enumerato per la rotazione dell'asse X.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Y** = ``1``

Valore enumerato per la rotazione dell'asse Y.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Z** = ``2``

Valore enumerato per la rotazione dell'asse Z.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_ALL** = ``3``

Valore enumerato per la rotazione senza vincoli.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_CUSTOM** = ``4``

Valore enumerato per un asse facoltativo di rotazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Se ``true``, il **SkeletonModifier3D** sarà elaborato.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

Imposta l'influenza della modificazione.

\ **Nota:** Questo valore viene utilizzato da :ref:`Skeleton3D<class_Skeleton3D>` per la fusione, quindi uno **SkeletonModifier3D** dovrebbe sempre applicare solo il 100% del risultato senza interpolazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**Deprecato:** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

Sostituisci questo metodo virtuale per implementare un modificatore scheletro personalizzato. Dovresti fare cose come ottenere la posa attuale di :ref:`Skeleton3D<class_Skeleton3D>` e applicare la posa qui.

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` non deve applicare :ref:`influence<class_SkeletonModifier3D_property_influence>` alle pose delle ossa perché :ref:`Skeleton3D<class_Skeleton3D>` applica automaticamente l'influenza a tutte le pose delle ossa impostate dal modificatore.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

Sostituisci questo metodo virtuale per implementare un modificatore personalizzato di scheletro. Dovresti fare cose come ottenere la posa attuale dello :ref:`Skeleton3D<class_Skeleton3D>` e applicare la posa qui.

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` non deve applicare :ref:`influence<class_SkeletonModifier3D_property_influence>` alle pose delle ossa perché lo :ref:`Skeleton3D<class_Skeleton3D>` applica automaticamente l'influenza a tutte le pose delle ossa impostate dal modificatore.

\ ``delta`` viene passato dallo :ref:`Skeleton3D<class_Skeleton3D>` genitore. Vedi anche :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`.

\ **Nota:** È possibile chiamare questo metodo fuori da :ref:`Node._process()<class_Node_private_method__process>` e :ref:`Node._physics_process()<class_Node_private_method__physics_process>` con ``delta`` pari a ``0.0``, poiché la modificazione si dovrebbe elaborare subito dopo l'inizializzazione dello :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

Emesso quando lo scheletro è cambiato.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

Chiamato quando bisogna convalidare i nomi e gli indici delle ossa, ad esempio nel momento in cui si entra nell'albero di scene o lo scheletro cambia.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

Restituisce il nodo :ref:`Skeleton3D<class_Skeleton3D>` padre se esiste. Altrimenti, restituisce ``null``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
