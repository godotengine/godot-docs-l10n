:github_url: hide

.. _class_SkeletonModification2DPhysicalBones:

SkeletonModification2DPhysicalBones
===================================

**Sperimentale:** Physical bones may be changed in the future to perform the position update of :ref:`Bone2D<class_Bone2D>` on their own, without needing this resource.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificazione che applica le trasformazioni dei nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` ai nodi :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa modificazione prende le trasformazioni dei nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` e le applica ai nodi :ref:`Bone2D<class_Bone2D>`. Ciò consente ai nodi :ref:`Bone2D<class_Bone2D>` di reagire alla fisica grazie ai nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` collegati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`physical_bone_chain_length<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>` | ``0`` |
   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`fetch_physical_bones<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`\ (\ )                                                                                               |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`start_simulation<class_SkeletonModification2DPhysicalBones_method_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`stop_simulation<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **physical_bone_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_physical_bone_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physical_bone_chain_length**\ (\ )

Il numero di nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` collegati in questa modificazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones:

.. rst-class:: classref-method

|void| **fetch_physical_bones**\ (\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`

Svuota la lista dei nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` e lo popola con tutti i nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` che sono figli di :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`

Ripristina il nodo :ref:`PhysicalBone2D<class_PhysicalBone2D>` a ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node:

.. rst-class:: classref-method

|void| **set_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`

Imposta il nodo :ref:`PhysicalBone2D<class_PhysicalBone2D>` all'indice ``joint_idx``.

\ **Nota:** Questo è solo l'indice utilizzato per questa modificazione, non l'indice osseo utilizzato in :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_start_simulation:

.. rst-class:: classref-method

|void| **start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_start_simulation>`

Indica ai nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` di iniziare a simulare e interagire con il mondo della fisica.

Facoltativamente, è possibile passare un array di nomi di ossa a questa funzione, e ciò causerà l'inizio della simulazione solo per i nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` con quei nomi.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_stop_simulation:

.. rst-class:: classref-method

|void| **stop_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`

Indica ai nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` di interrompere la simulazione e l'interazione con il mondo della fisica.

Facoltativamente, è possibile passare un array di nomi di ossa a questa funzione, e ciò causerà l'interruzione della simulazione solo per i nodi :ref:`PhysicalBone2D<class_PhysicalBone2D>` con quei nomi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
