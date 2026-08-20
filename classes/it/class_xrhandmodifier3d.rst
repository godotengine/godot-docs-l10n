:github_url: hide

.. _class_XRHandModifier3D:

XRHandModifier3D
================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo per guidare le mesh manuali dai dati del :ref:`XRHandTracker<class_XRHandTracker>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo utilizza i dati di tracciamento delle mani da un :ref:`XRHandTracker<class_XRHandTracker>` per posizionare lo scheletro di una mesh della mano.

Il posizionamento delle mani è eseguito creando un :ref:`XRNode3D<class_XRNode3D>` antenato della mesh della mano guidato dallo stesso :ref:`XRHandTracker<class_XRHandTracker>`.

I dati di posizione del tracciamento delle mani sono ridimensionati da :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` quando applicati allo scheletro, che può essere utilizzato per regolare la mano tracciata in modo che corrisponda alla scala del modello della mano.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` | :ref:`bone_update<class_XRHandModifier3D_property_bone_update>`   | ``0``                          |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`StringName<class_StringName>`                 | :ref:`hand_tracker<class_XRHandModifier3D_property_hand_tracker>` | ``&"/user/hand_tracker/left"`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_XRHandModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRHandModifier3D_BoneUpdate>`

.. _class_XRHandModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Le ossa dello scheletro sono completamente aggiornate (sia la posizione sia la rotazione) per corrispondere alle ossa tracciate.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Le ossa dello scheletro sono solo ruotate per allinearle con le ossa tracciate, preservandone la lunghezza.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRHandModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRHandModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Specifica il tipo di aggiornamenti da eseguire sulle ossa.

.. rst-class:: classref-item-separator

----

.. _class_XRHandModifier3D_property_hand_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **hand_tracker** = ``&"/user/hand_tracker/left"`` :ref:`🔗<class_XRHandModifier3D_property_hand_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_hand_tracker**\ (\ )

Il nome del :ref:`XRHandTracker<class_XRHandTracker>` registrato con il :ref:`XRServer<class_XRServer>` da cui ottenere i dati di tracciamento delle mani.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
