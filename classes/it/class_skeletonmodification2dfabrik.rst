:github_url: hide

.. _class_SkeletonModification2DFABRIK:

SkeletonModification2DFABRIK
============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificazione che utilizza FABRIK per manipolare una serie di nodi :ref:`Bone2D<class_Bone2D>` per raggiungere un obiettivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModification2D<class_SkeletonModification2D>` utilizza un algoritmo chiamato Forward And Backward Reaching Inverse Kinematics, o FABRIK, per ruotare una catena di ossa in modo che raggiunga un obiettivo.

FABRIK funziona conoscendo le posizioni e le lunghezze di una serie di ossa, in genere chiamate "catena di ossa". Inizia prima eseguendo un passaggio in avanti, che posiziona l'osso finale nella posizione dell'obiettivo. Quindi tutte le altre ossa vengono spostate verso l'osso di punta, in modo che rimangano lontano della lunghezza d'ossa definita. Poi, viene eseguito un passaggio all'indietro, in cui l'osso radice/primo nella catena FABRIK viene riposizionato all'origine. Poi, tutte le altre ossa vengono spostate, in modo che rimangano lontano della lunghezza definita d'ossa. Ciò posiziona la catena di ossa così da raggiungere l'obiettivo quando possibile, ma tutte le ossa rimangono alla lunghezza corretta l'una dall'altra.

Grazie al modo in cui funziona FABRIK, spesso fornisce risultati più naturali di quelli visti in :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`.

\ **Nota:** Il modificatore FABRIK ha ``fabrik_joints``, che sono gli oggetti dati che contengono i dati per ogni articolazione nella catena FABRIK. Questo è diverso dai nodi :ref:`Bone2D<class_Bone2D>`! Le articolazioni FABRIK contengono i dati necessari per ogni :ref:`Bone2D<class_Bone2D>` nella catena di ossa utilizzata da FABRIK.

Per aiutare a controllare il modo in cui si muovono le articolazioni FABRIK, è possibile passare un vettore magnete, che può spingere le ossa in una certa direzione prima della risoluzione, dando un certo controllo sul risultato finale.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`fabrik_data_chain_length<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>` | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DFABRIK_property_target_nodepath>`                   | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ )       |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **fabrik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_fabrik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fabrik_data_chain_length**\ (\ )

Il numero di articolazioni FABRIK nella modificazione FABRIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il NodePath al nodo che è l'obiettivo per la modificazione FABRIK. Questo nodo è ciò verso cui la catena FABRIK tenterà di ruotare la catena d'ossa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`

Restituisce il nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione FABRIK all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`

Restituisce l'indice del nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione FABRIK all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`

Restituisce il vettore di posizione magnete per l'articolazione all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`

Restituisce se l'articolazione sta usando la rotazione dell'obiettivo anziché consentire a FABRIK di ruotare l'articolazione. Questa opzione si applica solo all'articolazione di punta/finale nella catena.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`

Imposta il nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione FABRIK all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`

Imposta l'indice osseo, ``bone_idx``, dell'articolazione FABRIK su ``joint_idx``. Quando possibile, questo aggiornerà anche il ``bone2d_node`` dell'articolazione FABRIK in base ai dati forniti dallo scheletro collegato.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position:

.. rst-class:: classref-method

|void| **set_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`

Imposta il vettore di posizione magnete per l'articolazione all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

|void| **set_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`

Imposta se l'articolazione all'indice ``joint_idx`` utilizzerà la rotazione del nodo obiettivo anziché lasciare che FABRIK ruoti il nodo.

\ **Nota:** Questa opzione funziona solo per l'articolazione di punta/finale nella catena. Per tutti gli altri nodi, questa opzione verrà ignorata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
