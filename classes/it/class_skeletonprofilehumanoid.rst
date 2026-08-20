:github_url: hide

.. _class_SkeletonProfileHumanoid:

SkeletonProfileHumanoid
=======================

**Eredita:** :ref:`SkeletonProfile<class_SkeletonProfile>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una preimpostazione di :ref:`SkeletonProfile<class_SkeletonProfile>` umanoide .

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Uno :ref:`SkeletonProfile<class_SkeletonProfile>` come preimpostazione ottimizzato per la forma umana. Esiste per standardizzazione, quindi tutti i parametri sono di sola lettura.

Un profilo di scheletro umanoide contiene 56 ossa divise in 4 gruppi: ``"Body"``, ``"Face"``, ``"LeftHand"`` e ``"RightHand"``. È strutturato come segue:

.. code:: text

    Root
    └─ Hips
        ├─ LeftUpperLeg
        │  └─ LeftLowerLeg
        │     └─ LeftFoot
        │        └─ LeftToes
        ├─ RightUpperLeg
        │  └─ RightLowerLeg
        │     └─ RightFoot
        │        └─ RightToes
        └─ Spine
            └─ Chest
                └─ UpperChest
                    ├─ Neck
                    │   └─ Head
                    │       ├─ Jaw
                    │       ├─ LeftEye
                    │       └─ RightEye
                    ├─ LeftShoulder
                    │  └─ LeftUpperArm
                    │     └─ LeftLowerArm
                    │        └─ LeftHand
                    │           ├─ LeftThumbMetacarpal
                    │           │  └─ LeftThumbProximal
                    │           │    └─ LeftThumbDistal
                    │           ├─ LeftIndexProximal
                    │           │  └─ LeftIndexIntermediate
                    │           │    └─ LeftIndexDistal
                    │           ├─ LeftMiddleProximal
                    │           │  └─ LeftMiddleIntermediate
                    │           │    └─ LeftMiddleDistal
                    │           ├─ LeftRingProximal
                    │           │  └─ LeftRingIntermediate
                    │           │    └─ LeftRingDistal
                    │           └─ LeftLittleProximal
                    │              └─ LeftLittleIntermediate
                    │                └─ LeftLittleDistal
                    └─ RightShoulder
                       └─ RightUpperArm
                          └─ RightLowerArm
                             └─ RightHand
                                ├─ RightThumbMetacarpal
                                │  └─ RightThumbProximal
                                │     └─ RightThumbDistal
                                ├─ RightIndexProximal
                                │  └─ RightIndexIntermediate
                                │     └─ RightIndexDistal
                                ├─ RightMiddleProximal
                                │  └─ RightMiddleIntermediate
                                │     └─ RightMiddleDistal
                                ├─ RightRingProximal
                                │  └─ RightRingIntermediate
                                │     └─ RightRingDistal
                                └─ RightLittleProximal
                                   └─ RightLittleIntermediate
                                     └─ RightLittleDistal

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Reindirizzare gli scheletri 3D <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | bone_size       | ``56`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_bone_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | group_size      | ``4`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_group_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | root_bone       | ``&"Root"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_root_bone>`)       |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | scale_base_bone | ``&"Hips"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_scale_base_bone>`) |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
