:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**Deprecato:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo utilizzato per ruotare tutte le ossa di una catena d'ossa di :ref:`Skeleton3D<class_Skeleton3D>` in modo da posizionare l'osso finale nella posizione 3D desiderata.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

SkeletonIK3D serve per ruotare tutte le ossa di una catena d'ossa di uno :ref:`Skeleton3D<class_Skeleton3D>` in modo da posizionare l'osso finale in una posizione 3D desiderata. Uno scenario tipico per un IK nei giochi è quello di posizionare i piedi di un personaggio a terra o le mani di un personaggio su un oggetto mantenuto. SkeletonIK utilizza FabrikInverseKinematic internamente per risolvere la catena d'ossa e applica il risultato alla proprietà :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` per tutte le ossa influenzate nella catena. Se applicato completamente, ciò sovrascrive qualsiasi trasformazione delle ossa dalle :ref:`Animation<class_Animation>` o pose personalizzate delle ossa impostate dagli utenti. La quantità applicata può essere controllata con la proprietà :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>`.

::

    # Applica l'effetto IK automaticamente a ogni nuova frame (non l'attuale)
    skeleton_ik_node.start()

    # Applica l'effetto IK solo per la frame attuale
    skeleton_ik_node.start(true)

    # Interrompe l'effetto IK e ripristina bones_global_pose_override sullo scheletro
    skeleton_ik_node.stop()

    # Applica l'effetto IK completamente
    skeleton_ik_node.set_influence(1.0)

    # Applica l'effetto IK a metà
    skeleton_ik_node.set_influence(0.5)

    # Applica nessun effetto IK (anche un valore uguale o minore di 0.01 rimuove bones_global_pose_override sullo scheletro)
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**Deprecato:** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Valore di interpolazione per quanto i risultati IK sono applicati alla catena ossea dello scheletro attuale. Un valore di ``1.0`` sovrascriverà completamente tutte le trasformazioni ossee dello scheletro mentre un valore di ``0.0`` disabiliterà visivamente lo SkeletonIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

Posizione di destinazione secondaria (la prima è la proprietà :ref:`target<class_SkeletonIK3D_property_target>` o :ref:`target_node<class_SkeletonIK3D_property_target_node>`) per la catena IK. Usa la posizione del magnete (destinazione del polo) per controllare la flessione della catena IK. Funziona solo se la catena ossea ha più di 2 ossa. La posizione dell'osso della catena centrale sarà interpolata linearmente con la posizione del magnete.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Numero di cicli di iterazione utilizzati dal risolutore IK per produrre risultati più accurati (ed eleganti) sulla catena ossea.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

La distanza minima tra l'osso e la destinazione. Se la distanza è inferiore a questo valore, il risolutore IK interrompe ulteriori iterazioni.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

Se ``true`` sovrascrive la rotazione dell'osso della punta con la rotazione del :ref:`target<class_SkeletonIK3D_property_target>` (o :ref:`target_node<class_SkeletonIK3D_property_target_node>` se definito).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Il nome dell'osso radice attuale, il primo osso nella catena IK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

Prima destinazione della catena IK in cui è posizionato l'osso della punta e, se :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` è ``true``, come viene ruotato l'osso della punta. Se è disponibile un percorso :ref:`target_node<class_SkeletonIK3D_property_target_node>`, la trasformazione dei nodi è usata e questa proprietà viene ignorata.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il :ref:`NodePath<class_NodePath>` del nodo di destinazione] per la catena IK. Se disponibile, è utilizzato il :ref:`Transform3D<class_Transform3D>` attuale del nodo al posto della proprietà :ref:`target<class_SkeletonIK3D_property_target>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

Il nome dell'osso della punta attuale, l'ultimo osso nella catena IK posizionato nella trasformazione di :ref:`target<class_SkeletonIK3D_property_target>` (o :ref:`target_node<class_SkeletonIK3D_property_target_node>` se definito).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

Se ``true``, istruisce il risolutore IK a considerare la destinazione del magnete secondario (destinazione del polo) quando calcola la catena ossea. Usa la posizione del magnete (destinazione del polo) per controllare la flessione della catena IK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Restituisce il nodo :ref:`Skeleton3D<class_Skeleton3D>` genitore che era presente quando questo SkeletonIK è entrato nell'albero di scene. Restituisce ``null`` se il nodo genitore non era un nodo :ref:`Skeleton3D<class_Skeleton3D>` quando lo SkeletonIK3D è entrato nell'albero di scene.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

Restituisce ``true`` se SkeletonIK sta applicando effetti IK su frame continui alle ossa :ref:`Skeleton3D<class_Skeleton3D>`. Restituisce ``false`` se SkeletonIK è stato arrestato o è stato usato :ref:`start()<class_SkeletonIK3D_method_start>` con il parametro ``one_time`` impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

Inizia ad applicare gli effetti IK su ogni frame alle ossa dello :ref:`Skeleton3D<class_Skeleton3D>` ma avrà effetto solo a partire dal frame successivo. Se ``one_time`` è ``true``, avrà effetto immediatamente ma verrà anche reimpostato sul frame successivo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

Interrompe l'applicazione degli effetti IK su ogni frame alle ossa :ref:`Skeleton3D<class_Skeleton3D>` e richiama anche :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` per rimuovere le sostituzioni esistenti su tutte le ossa.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
