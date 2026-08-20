:github_url: hide

.. _class_SkeletonModification2DJiggle:

SkeletonModification2DJiggle
============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una modifica che fa oscillare i nodi :ref:`Bone2D<class_Bone2D>` mentre si muovono verso un obiettivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa modificazione sposta una serie di ossa, solitamente chiamate catena d'ossa, verso un obiettivo. Ciò che rende speciale questa modifica è che calcola la velocità e l'accelerazione per ogni osso nella catena d'ossa ed esegue un calcolo molto leggero, simile alla fisica, utilizzando i valori immessi. Ciò consente alle ossa di oltrepassare l'obiettivo e "oscillare" attorno. Può essere configurato per agire più come una molla o oscillare come potrebbe fare un tessuto.

Questa modificazione è utile per aggiungere ulteriore movimento a cose come capelli, bordi di vestiti e altro. Ha diverse impostazioni che consentono di controllare come si muove l'articolazione quando si muove il bersaglio.

\ **Nota:** Il modificatore Jiggle ha ``jiggle_joints``, che sono gli oggetti dati che contengono i dati per ogni articolazione nella catena Jiggle. Questo è diverso dai nodi :ref:`Bone2D<class_Bone2D>`! Le articolazioni Jiggle contengono i dati necessari per ogni :ref:`Bone2D<class_Bone2D>` nella catena d'ossa utilizzata dalla modificazione Jiggle.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`damping<class_SkeletonModification2DJiggle_property_damping>`                                   | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`                                   | ``Vector2(0, 6)`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`           | :ref:`jiggle_data_chain_length<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>` | ``0``             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`mass<class_SkeletonModification2DJiggle_property_mass>`                                         | ``0.75``          |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`       | :ref:`stiffness<class_SkeletonModification2DJiggle_property_stiffness>`                               | ``3.0``           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DJiggle_property_target_nodepath>`                   | ``NodePath("")``  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_gravity<class_SkeletonModification2DJiggle_property_use_gravity>`                           | ``false``         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_collision_mask<class_SkeletonModification2DJiggle_method_get_collision_mask>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                          |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_override<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_use_colliders<class_SkeletonModification2DJiggle_method_get_use_colliders>`\ (\ ) |const|                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`reset<class_SkeletonModification2DJiggle_method_reset>`\ (\ )                                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_collision_mask<class_SkeletonModification2DJiggle_method_set_collision_mask>`\ (\ collision_mask\: :ref:`int<class_int>`\ )                                                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone2d_node<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_bone_index<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_damping<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ )                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ )               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_mass<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ )                            |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_override<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ )                  |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_stiffness<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )             |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_jiggle_joint_use_gravity<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ )         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_use_colliders<class_SkeletonModification2DJiggle_method_set_use_colliders>`\ (\ use_colliders\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SkeletonModification2DJiggle_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

La quantità predefinita di smorzamento applicata alle articolazioni Jiggle, se non è sovrascritta. Valori più alti portano ad applicare una quantità maggiore della velocità calcolata.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity** = ``Vector2(0, 6)`` :ref:`🔗<class_SkeletonModification2DJiggle_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity**\ (\ )

La quantità predefinita di gravità applicata alle articolazioni Jiggle, se non è sovrascritta.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_jiggle_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **jiggle_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_jiggle_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_jiggle_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_jiggle_data_chain_length**\ (\ )

La quantità di articolazioni Jiggle nella modificazione Jiggle.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``0.75`` :ref:`🔗<class_SkeletonModification2DJiggle_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

La quantità predefinita di massa assegnata alle articolazioni Jiggle, se non è sovrascritta. Valori più alti portano a movimenti più rapidi e a un maggiore superamento.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``3.0`` :ref:`🔗<class_SkeletonModification2DJiggle_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

La quantità predefinita di rigidità assegnata alle articolazioni Jiggle, se non è sovrascritta. Valori più alti agiscono più come molle, spostandosi rapidamente nella posizione corretta.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DJiggle_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Il NodePath al nodo che è l'obiettivo per la modificazione Jiggle. Questo nodo è ciò verso cui la catena Jiggle tenterà di ruotare la catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_property_use_gravity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_gravity** = ``false`` :ref:`🔗<class_SkeletonModification2DJiggle_property_use_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_use_gravity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_gravity**\ (\ )

Imposta se il vettore di gravità, :ref:`gravity<class_SkeletonModification2DJiggle_property_gravity>`, debba essere applicato alle articolazioni Jiggle, supponendo che non sovrascrivano le impostazioni predefinite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SkeletonModification2DJiggle_method_get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_mask**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_collision_mask>`

Restituisce la maschera di collisione utilizzata dal modificatore Jiggle quando le collisioni sono abilitate.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone2d_node>`

Restituisce il nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_bone_index>`

Restituisce l'indice del nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_damping>`

Restituisce la quantità di smorzamento dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_gravity>`

Restituisce un :ref:`Vector2<class_Vector2>` che rappresenta la quantità di gravità da cui è influenzata l'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_mass>`

Restituisce la quantità di massa dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_override>`

Restituisce un valore booleano che indica se l'articolazione all'indice ``joint_idx`` sta sovrascrivendo i dati dell'articolazione Jiggle predefiniti che sono stati definiti nella modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_stiffness>`

Restituisce la rigidità dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_jiggle_joint_use_gravity>`

Restituisce un valore booleano che indica se l'articolazione all'indice ``joint_idx`` utilizza la gravità oppure no.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_get_use_colliders:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_colliders**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DJiggle_method_get_use_colliders>`

Restituisce se il modificatore jiggle tiene conto dei collisori fisici durante la risoluzione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_reset>`

Reimposta lo stato di simulazione interna di oscillazione sulle posizioni attuali delle ossa, cancellando la velocità, l'accelerazione e le forze accumulate.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_collision_mask:

.. rst-class:: classref-method

|void| **set_collision_mask**\ (\ collision_mask\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_collision_mask>`

Imposta la maschera di collisione che il modificatore Jiggle utilizzerà quando reagisce ai collisori, se il modificatore Jiggle è impostato per tenere conto dei collisori.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone2d_node>`

Imposta il nodo :ref:`Bone2D<class_Bone2D>` assegnato all'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index:

.. rst-class:: classref-method

|void| **set_jiggle_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_bone_index>`

Imposta l'indice osseo, ``bone_idx``, dell'articolazione Jiggle su ``joint_idx``. Quando possibile, questo aggiornerà anche il ``bone2d_node`` dell'articolazione Jiggle in base ai dati forniti dallo scheletro collegato.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping:

.. rst-class:: classref-method

|void| **set_jiggle_joint_damping**\ (\ joint_idx\: :ref:`int<class_int>`, damping\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_damping>`

Imposta la quantità di smorzamento dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, gravity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_gravity>`

Imposta il vettore di gravità dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass:

.. rst-class:: classref-method

|void| **set_jiggle_joint_mass**\ (\ joint_idx\: :ref:`int<class_int>`, mass\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_mass>`

Imposta la massa dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_override:

.. rst-class:: classref-method

|void| **set_jiggle_joint_override**\ (\ joint_idx\: :ref:`int<class_int>`, override\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_override>`

Imposta se l'articolazione Jiggle all'indice ``joint_idx`` deve sovrascrivere le impostazioni predefinite delle articolazioni Jiggle. Impostando questo su ``true`` l'articolzione userà le proprie impostazioni invece di quelle predefinite associate alla modificazione.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness:

.. rst-class:: classref-method

|void| **set_jiggle_joint_stiffness**\ (\ joint_idx\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_stiffness>`

Imposta la rigidità dell'articolazione Jiggle all'indice ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity:

.. rst-class:: classref-method

|void| **set_jiggle_joint_use_gravity**\ (\ joint_idx\: :ref:`int<class_int>`, use_gravity\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_jiggle_joint_use_gravity>`

Imposta se l'articolazione Jiggle all'indice ``joint_idx`` deve utilizzare la gravità.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DJiggle_method_set_use_colliders:

.. rst-class:: classref-method

|void| **set_use_colliders**\ (\ use_colliders\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DJiggle_method_set_use_colliders>`

Se ``true``, il modificatore Jiggle terrà conto dei collider, impedendo loro di entrare in questi oggetti di collisione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
