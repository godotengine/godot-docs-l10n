:github_url: hide

.. _class_SceneReplicationConfig:

SceneReplicationConfig
======================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configurazione per le proprietà da sincronizzare con un :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`add_property<class_SceneReplicationConfig_method_add_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ )                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]        | :ref:`get_properties<class_SceneReplicationConfig_method_get_properties>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_property<class_SceneReplicationConfig_method_has_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`property_get_index<class_SceneReplicationConfig_method_property_get_index>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` | :ref:`property_get_replication_mode<class_SceneReplicationConfig_method_property_get_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_spawn<class_SceneReplicationConfig_method_property_get_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_sync<class_SceneReplicationConfig_method_property_get_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_watch<class_SceneReplicationConfig_method_property_get_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_replication_mode<class_SceneReplicationConfig_method_property_set_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_spawn<class_SceneReplicationConfig_method_property_set_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_sync<class_SceneReplicationConfig_method_property_set_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                  |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_watch<class_SceneReplicationConfig_method_property_set_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_property<class_SceneReplicationConfig_method_remove_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SceneReplicationConfig_ReplicationMode:

.. rst-class:: classref-enumeration

enum **ReplicationMode**: :ref:`🔗<enum_SceneReplicationConfig_ReplicationMode>`

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_NEVER** = ``0``

Non mantenere sincronizzata la proprietà specificata.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ALWAYS** = ``1``

Replica la proprietà specificata ogni processo, inviando costantemente aggiornamenti usando una modalità di trasferimento inaffidabile.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ON_CHANGE** = ``2``

Replica la proprietà specificata ogni processo, inviando aggiornamenti usando una modalità di trasferimento affidabile quando il suo valore cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SceneReplicationConfig_method_add_property:

.. rst-class:: classref-method

|void| **add_property**\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SceneReplicationConfig_method_add_property>`

Aggiunge la proprietà identificata dal percorso ``path`` alla lista delle proprietà in fase di sincronizzazione, passando facoltativamente un indice ``index``.

\ **Nota:** Per i dettagli sulle restrizioni e limitazioni sulla sincronizzazione delle proprietà, vedi :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_get_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_properties**\ (\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_get_properties>`

Restituisce una lista di :ref:`NodePath<class_NodePath>` delle proprietà sincronizzate.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_has_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_has_property>`

Restituisce ``true`` se il percorso ``path`` è configurato per la sincronizzazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **property_get_index**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_property_get_index>`

Trova l'indice del percorso ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_replication_mode:

.. rst-class:: classref-method

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **property_get_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_replication_mode>`

Restituisce la modalità di replicazione per la proprietà identificata dal percorso ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_spawn:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_spawn>`

Restituisce ``true`` se la proprietà identificata dal percorso ``path`` è configurata per la sincronizzazione alla generazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_sync:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_sync>`

**Deprecato:** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Restituisce ``true`` se la proprietà identificata dal percorso ``path`` è configurata per la sincronizzazione al processo.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_watch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_watch>`

**Deprecato:** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Restituisce ``true`` se la proprietà identificata dal percorso ``path`` è configurata per la sincronizzazione affidabile quando sono individuati cambiamenti durante il processo.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_replication_mode:

.. rst-class:: classref-method

|void| **property_set_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_replication_mode>`

Imposta la modalità di sincronizzazione per la proprietà identificata dal percorso ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_spawn:

.. rst-class:: classref-method

|void| **property_set_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_spawn>`

Imposta se la proprietà identificata dal percorso ``path`` è configurata per essere sincronizzata alla generazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_sync:

.. rst-class:: classref-method

|void| **property_set_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_sync>`

**Deprecato:** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` instead.

Imposta se la proprietà identificata dal percorso ``path`` è configurata per essere sincronizzata all'elaborazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_watch:

.. rst-class:: classref-method

|void| **property_set_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_watch>`

**Deprecato:** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` instead.

Imposta se la proprietà identificata dal percorso ``path`` è configurata per essere sincronizzata in modo affidabile quando sono individuati cambiamenti durante l'elaborazione.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_remove_property:

.. rst-class:: classref-method

|void| **remove_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_remove_property>`

Rimuove la proprietà identificata dal percorso ``path`` dalla configurazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
