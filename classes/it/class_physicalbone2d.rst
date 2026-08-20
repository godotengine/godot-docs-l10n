:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**Eredita:** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo derivato da :ref:`RigidBody2D<class_RigidBody2D>` utilizzato per far reagire i :ref:`Bone2D<class_Bone2D>` in uno :ref:`Skeleton2D<class_Skeleton2D>` alla fisica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il nodo **PhysicalBone2D** è un nodo basato su :ref:`RigidBody2D<class_RigidBody2D>` che può essere utilizzato per far reagire i :ref:`Bone2D<class_Bone2D>` in uno :ref:`Skeleton2D<class_Skeleton2D>` alla fisica.

\ **Nota:** Per fare in modo che i :ref:`Bone2D<class_Bone2D>` seguano visivamente il nodo **PhysicalBone2D**, usa una modificazione :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` sul nodo :ref:`Skeleton2D<class_Skeleton2D>` genitore.

\ **Nota:** Il nodo **PhysicalBone2D** non crea automaticamente un nodo :ref:`Joint2D<class_Joint2D>` per tenere insieme i nodi **PhysicalBone2D**. Bisogna crearli manualmente. Nella maggior parte dei casi, è consigliato un nodo :ref:`PinJoint2D<class_PinJoint2D>`. Il nodo **PhysicalBone2D** configurerà automaticamente il nodo :ref:`Joint2D<class_Joint2D>` una volta aggiunto come nodo figlio.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

Se ``true``, **PhysicalBone2D** configurerà automaticamente il primo nodo :ref:`Joint2D<class_Joint2D>` figlio. La configurazione automatica è limitata all'impostazione delle proprietà del nodo e al posizionamento del :ref:`Joint2D<class_Joint2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

L'indice del :ref:`Bone2D<class_Bone2D>` che questo **PhysicalBone2D** dovrebbe simulare.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

Il :ref:`NodePath<class_NodePath>` verso il :ref:`Bone2D<class_Bone2D>` che questo **PhysicalBone2D** dovrebbe simulare.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

Se ``true``, il **PhysicalBone2D** manterrà la trasformazione dell'osso a cui è legato quando viene simulata la fisica.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

Se ``true``, il **PhysicalBone2D** inizierà a simulare usando la fisica. Se ``false``, **PhysicalBone2D** seguirà la trasformazione del nodo :ref:`Bone2D<class_Bone2D>`.

\ **Nota:** Per fare in modo che i :ref:`Bone2D<class_Bone2D>` seguano visivamente gli **PhysicalBone2D**, usa una modificazione di :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` sul nodo :ref:`Skeleton2D<class_Skeleton2D>` con i nodi :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

Restituisce il primo nodo :ref:`Joint2D<class_Joint2D>` figlio, se ne esiste uno. Questa è principalmente una funzione di supporto per rendere più facile ottenere il :ref:`Joint2D<class_Joint2D>` che il **PhysicalBone2D** sta configurando automaticamente.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

Restituisce un valore booleano che indica se **PhysicalBone2D** è in esecuzione e simula utilizzando il motore fisico 2D di Godot. Quando impostato su ``true``, il nodo PhysicalBone2D sta utilizzando la fisica.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
