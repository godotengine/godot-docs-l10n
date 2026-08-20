:github_url: hide

.. _class_SkeletonModification2DTwoBoneIK:

SkeletonModification2DTwoBoneIK
===============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modificazione che fa ruotare due ossa attraverso la legge dei coseni per raggiungere l'obiettivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModification2D<class_SkeletonModification2D>` usa un algoritmo denominato in genere TwoBoneIK. Questo algoritmo funziona sfruttando la legge dei coseni e le lunghezze delle ossa per capire quale rotazione hanno attualmente le ossa e quale rotazione devono avere per creare un triangolo completo, dove il primo osso, il secondo osso e l'obiettivo formano i tre vertici del triangolo. Poiché l'algoritmo funziona creando un triangolo, può operare solo su due ossa.

TwoBoneIK è ottimo per braccia, gambe e in realtà qualsiasi articolazione che può essere rappresentata da due sole ossa che si piegano per raggiungere un obiettivo. Questo risolutore è più leggero di :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, ma fornisce risultati simili e dall'aspetto naturale.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_bend_direction<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`         | ``false``        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_maximum_distance<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_minimum_distance<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_bend_direction** = ``false`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`

.. rst-class:: classref-property-setget

- |void| **set_flip_bend_direction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_bend_direction**\ (\ )

Se ``true``, le ossa nella modificazione si piegheranno verso l'esterno anziché verso l'interno quando si contraggono. Se ``false``, le ossa si piegheranno verso l'interno quando si contraggono.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_maximum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_maximum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_maximum_distance**\ (\ )

La distanza massima a cui può trovarsi l'obiettivo. Se l'obiettivo è più lontano di questa distanza, la modificazione sarà risolta come se si trovasse a questa distanza massima. Se impostato su ``0``, la modificazione sarà risolta senza vincoli di distanza.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_minimum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_minimum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_minimum_distance**\ (\ )

La distanza minima a cui può trovarsi l'obiettivo. Se l'obiettivo è più vicino di questa distanza, la modificazione sarà risolta come se si trovasse a questa distanza minima. Se impostato su ``0``, la modificazione sarà risolta senza vincoli di distanza.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il NodePath al nodo che è l'obiettivo per la modificazione TwoBoneIK. Questo nodo è quello che la modificazione userà per piegare i nodi :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_one_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`

Restituisce il nodo :ref:`Bone2D<class_Bone2D>` che viene utilizzato come primo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_one_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`

Restituisce l'indice del nodo :ref:`Bone2D<class_Bone2D>` che viene utilizzato come primo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_two_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`

Restituisce il nodo :ref:`Bone2D<class_Bone2D>` che viene utilizzato come secondo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_two_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`

Restituisce l'indice del nodo :ref:`Bone2D<class_Bone2D>` che viene utilizzato come secondo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_one_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`

Imposta il nodo :ref:`Bone2D<class_Bone2D>` che è utilizzato come primo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_one_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`

Imposta l'indice del nodo :ref:`Bone2D<class_Bone2D>` che è utilizzato come primo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_two_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`

Imposta il nodo :ref:`Bone2D<class_Bone2D>` che è utilizzato come secondo osso nella modificazione TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_two_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`

Imposta l'indice del nodo :ref:`Bone2D<class_Bone2D>` che è utilizzato come secondo osso nella modificazione TwoBoneIK.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
