:github_url: hide

.. _class_Skeleton2D:

Skeleton2D
==========

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il genitore di una gerarchia di :ref:`Bone2D<class_Bone2D>`, utilizzato per creare un'animazione scheletrica 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Skeleton2D** è il genitore di una gerarchia di nodi :ref:`Bone2D<class_Bone2D>`. Contiene un riferimento alla posa di riposo di ogni :ref:`Bone2D<class_Bone2D>` e funge da singolo punto di accesso alle sue ossa.

Per impostare diversi tipi di cinematica inversa per un determinato Skeleton2D, dovrebbe essere creato uno :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`. La cinematica inversa deve essere applicata aumentando :ref:`SkeletonModificationStack2D.modification_count<class_SkeletonModificationStack2D_property_modification_count>` e creando il numero desiderato di modifiche.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Scheletri 2D <../tutorials/animation/2d_skeletons>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`execute_modifications<class_Skeleton2D_method_execute_modifications>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Bone2D<class_Bone2D>`                                           | :ref:`get_bone<class_Skeleton2D_method_get_bone>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_bone_count<class_Skeleton2D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`                                 | :ref:`get_bone_local_pose_override<class_Skeleton2D_method_get_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_Skeleton2D_method_get_modification_stack>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_skeleton<class_Skeleton2D_method_get_skeleton>`\ (\ ) |const|                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_bone_local_pose_override<class_Skeleton2D_method_set_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_modification_stack<class_Skeleton2D_method_set_modification_stack>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ )                                                                                      |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Skeleton2D_signal_bone_setup_changed:

.. rst-class:: classref-signal

**bone_setup_changed**\ (\ ) :ref:`🔗<class_Skeleton2D_signal_bone_setup_changed>`

Emesso quando cambia la configurazione del :ref:`Bone2D<class_Bone2D>` collegato a questo scheletro. È utilizzato principalmente internamente allo scheletro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Skeleton2D_method_execute_modifications:

.. rst-class:: classref-method

|void| **execute_modifications**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_execute_modifications>`

Esegue tutte le modifiche dallo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, se lo Skeleton2D ne ha uno assegnato.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone:

.. rst-class:: classref-method

:ref:`Bone2D<class_Bone2D>` **get_bone**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone>`

Restituisce un :ref:`Bone2D<class_Bone2D>` dalla gerarchia dei nodi controllata dallo Skeleton2D. L'oggetto da restituire è identificato dal parametro ``idx``. Le ossa sono indicizzate discendendo la gerarchia dei nodi dall'alto verso il basso, aggiungendo i figli di ogni ramo prima di passare al fratello successivo.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_bone_count>`

Restituisce il numero di nodi :ref:`Bone2D<class_Bone2D>` nella gerarchia dei nodi controllata dallo Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_local_pose_override:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone_local_pose_override>`

Restituisce la trasformazione di sostituzione della posa locale per l'indice ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_modification_stack>`

Restituisce lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` associato a questo scheletro, se ne esiste uno.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_skeleton>`

Restituisce il :ref:`RID<class_RID>` di un'istanza di Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_bone_local_pose_override:

.. rst-class:: classref-method

|void| **set_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Skeleton2D_method_set_bone_local_pose_override>`

Imposta la trasformazione della posa locale, ``override_pose``, per l'osso all'indice ``bone_idx``.

\ ``strength`` è la forza di interpolazione che verrà usata quando si applica la posa, e ``persistent`` determina se la posa applicata rimarrà.

\ **Nota:** La trasformazione della posa deve essere una trasformazione locale relativa al nodo :ref:`Bone2D<class_Bone2D>` all'indice ``bone_idx``!

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_modification_stack:

.. rst-class:: classref-method

|void| **set_modification_stack**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_Skeleton2D_method_set_modification_stack>`

Imposta lo :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` associato a questo scheletro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
