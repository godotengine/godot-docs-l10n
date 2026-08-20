:github_url: hide

.. _class_SkeletonModification2DLookAt:

SkeletonModification2DLookAt
============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modifica che ruota un nodo :ref:`Bone2D<class_Bone2D>` per guardare un obiettivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModification2D<class_SkeletonModification2D>` ruota un osso per guardare un obiettivo. È estremamente utile per muovere la testa del personaggio per guardare il giocatore, ruotare una torretta per guardare un bersaglio o qualsiasi altro caso in cui si voglia far ruotare un osso verso qualcosa in modo rapido e semplice.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_node<class_SkeletonModification2DLookAt_property_bone2d_node>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone_index<class_SkeletonModification2DLookAt_property_bone_index>`           | ``-1``           |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DLookAt_property_target_nodepath>` | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_additional_rotation<class_SkeletonModification2DLookAt_method_get_additional_rotation>`\ (\ ) |const|                                   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_constraint_angle_invert<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`\ (\ ) |const|                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_max<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_min<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_enable_constraint<class_SkeletonModification2DLookAt_method_get_enable_constraint>`\ (\ ) |const|                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_additional_rotation<class_SkeletonModification2DLookAt_method_set_additional_rotation>`\ (\ rotation\: :ref:`float<class_float>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_invert<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`\ (\ invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_max<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`\ (\ angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_min<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`\ (\ angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_enable_constraint<class_SkeletonModification2DLookAt_method_set_enable_constraint>`\ (\ enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2DLookAt_property_bone2d_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone2d_node>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_node**\ (\ )

Il nodo :ref:`Bone2D<class_Bone2D>` su cui opererà la modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_bone_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_index** = ``-1`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_index**\ (\ )

L'indice del nodo :ref:`Bone2D<class_Bone2D>` su cui opererà la modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il NodePath al nodo che è l'obiettivo per la modificazione LookAt. Questo nodo è ciò verso cui la modificazione ruoterà il :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DLookAt_method_get_additional_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_additional_rotation**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_additional_rotation>`

Restituisce la quantità di rotazione aggiuntiva applicata dopo l'esecuzione della modificazione LookAt.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_constraint_angle_invert**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`

Restituisce se i vincoli a questa modifica sono invertiti o meno.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_max**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`

Restituisce l'angolo massimo consentito del vincolo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_min**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`

Restituisce l'angolo minimo consentito del vincolo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_enable_constraint**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_enable_constraint>`

Restituisce ``true`` se la modificazione LookAt sta usando vincoli.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_additional_rotation:

.. rst-class:: classref-method

|void| **set_additional_rotation**\ (\ rotation\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_additional_rotation>`

Imposta la quantità di rotazione aggiuntiva da applicare dopo l'esecuzione della modificazione. Ciò consente di compensare i risultati in base alla quantità di rotazione inserita.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_constraint_angle_invert**\ (\ invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`

Se ``true``, la modificazione utilizzerà un vincolo di articolazione invertito.

Un vincolo di articolazione invertito vincola :ref:`Bone2D<class_Bone2D>` solo agli angoli *esterni* degli angoli minimo e massimo inseriti. Per questo motivo, viene definito vincolo di articolazione invertito, in quanto vincola l'articolazione all'esterno dei valori inseriti.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_constraint_angle_max**\ (\ angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`

Imposta l'angolo massimo consentito del vincolo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_constraint_angle_min**\ (\ angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`

Imposta l'angolo minimo consentito del vincolo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_enable_constraint:

.. rst-class:: classref-method

|void| **set_enable_constraint**\ (\ enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_enable_constraint>`

Imposta se questa modificazione utilizzerà o meno i vincoli. Quando ``true``, i vincoli saranno applicati quando si risolve la modificazione LookAt.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
