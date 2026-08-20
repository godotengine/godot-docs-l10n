:github_url: hide

.. _class_OpenXRSpatialEntityTracker:

OpenXRSpatialEntityTracker
==========================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, :ref:`OpenXRMarkerTracker<class_OpenXRMarkerTracker>`, :ref:`OpenXRPlaneTracker<class_OpenXRPlaneTracker>`

Classe base per i tracker posizionali gestiti dalle estensioni di entità spaziali di OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questi sono tracker creati e gestiti dalle estensioni di entità spaziali di OpenXR che forniscono accesso a dati specifici relativi alle entità spaziali di OpenXR. Saranno sempre di tipo ``TRACKER_ANCHOR``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                           | :ref:`entity<class_OpenXRSpatialEntityTracker_property_entity>`                                 | ``RID()``                                                         |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`spatial_tracking_state<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>` | ``2``                                                             |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                                   | type                                                                                            | ``8`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_next<class_OpenXRSpatialEntityTracker_method_add_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`get_next<class_OpenXRSpatialEntityTracker_method_get_next>`\ (\ ) |const|                                                             |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                 | :ref:`get_spatial_context<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`\ (\ ) |const|                                       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_next<class_OpenXRSpatialEntityTracker_method_remove_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_spatial_context<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )      |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRSpatialEntityTracker_signal_next_changed:

.. rst-class:: classref-signal

**next_changed**\ (\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_next_changed>`

Emesso quando cambia la next-chain, tramite :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` o :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed:

.. rst-class:: classref-signal

**spatial_tracking_state_changed**\ (\ spatial_tracking_state\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed>`

.. container:: contribute

	There is currently no description for this signal. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRSpatialEntityTracker_EntityTrackingState:

.. rst-class:: classref-enumeration

enum **EntityTrackingState**: :ref:`🔗<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_STOPPED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_STOPPED** = ``1``

Questo ancoraggio ha smesso di tracciare.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_PAUSED** = ``2``

Il tracciamento è attualmente in pausa.

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_TRACKING** = ``3``

Questo ancoraggio è attualmente tracciato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRSpatialEntityTracker_property_entity:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **entity** = ``RID()`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_entity>`

.. rst-class:: classref-property-setget

- |void| **set_entity**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_entity**\ (\ )

L'entità spaziale associata a questo tracker.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_property_spatial_tracking_state:

.. rst-class:: classref-property

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **spatial_tracking_state** = ``2`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>`

.. rst-class:: classref-property-setget

- |void| **set_spatial_tracking_state**\ (\ value\: :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`\ )
- :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_spatial_tracking_state**\ (\ )

Lo stato di tracciamento spaziale per questo tracker.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialEntityTracker_method_add_next:

.. rst-class:: classref-method

|void| **add_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_add_next>`

Aggiunge una nuova :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` alla next-chain.

\ :ref:`get_next()<class_OpenXRSpatialEntityTracker_method_get_next>` restituirà questo ``next`` finché non verrà richiamato :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` o non verrà rimosso tramite :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_next:

.. rst-class:: classref-method

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_next>`

Ottiene il :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` principale nella next-chain.

Vedi anche :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` e :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_spatial_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_context**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`

Ottiene il contesto spaziale utilizzato per creare questo **OpenXRSpatialEntityTracker**.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_remove_next:

.. rst-class:: classref-method

|void| **remove_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_remove_next>`

Rimuove un oggetto ``next`` aggiunto in precedenza da :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` dalla next-chain.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_set_spatial_context:

.. rst-class:: classref-method

|void| **set_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`

Imposta il contesto spaziale utilizzato per creare questo tracker.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
