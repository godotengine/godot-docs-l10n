:github_url: hide

.. _class_OpenXRRenderModelExtension:

OpenXRRenderModelExtension
==========================

**Eredita:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Questa classe implementa l'estensione OpenXR Render Model.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe implementa l'estensione OpenXR Render Model; se abilitata, manterrà una lista di modelli di rendering attivi e fornirà un'interfaccia ai dati del modello di rendering.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_active<class_OpenXRRenderModelExtension_method_is_active>`\ (\ ) |const|                                                                                                                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                     | :ref:`render_model_create<class_OpenXRRenderModelExtension_method_render_model_create>`\ (\ render_model_id\: :ref:`int<class_int>`\ )                                                                                   |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`render_model_destroy<class_OpenXRRenderModelExtension_method_render_model_destroy>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                                                    |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]        | :ref:`render_model_get_all<class_OpenXRRenderModelExtension_method_render_model_get_all>`\ (\ )                                                                                                                          |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`render_model_get_animatable_node_count<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_animatable_node_name<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|           |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_animatable_node_transform<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`render_model_get_confidence<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                              |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_root_transform<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`         | :ref:`render_model_get_subaction_paths<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                            |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_top_level_path<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`render_model_is_animatable_node_visible<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                               | :ref:`render_model_new_scene_instance<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRRenderModelExtension_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_added>`

Emesso quando un nuovo modello di rendering viene aggiunto.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_removed>`

Emesso quando un modello di rendering viene rimosso.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed>`

Emesso quando cambia il percorso di livello superiore associato a un modello di rendering.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRRenderModelExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_is_active>`

Restituisce ``true`` se l'estensione Render Model di OpenXR è supportata e abilitata.

\ **Nota:** Questo restituisce un valore valido solo dopo l'inizializzazione di OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_create:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **render_model_create**\ (\ render_model_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_create>`

Crea un oggetto modello di rendering all'interno di OpenXR, utilizzando un ID modello di rendering.

\ **Nota:** Questa funzione è disponibile per le estensioni OpenXR dipendenti che forniscono ID modello di rendering da utilizzare con l'estensione modello di rendering.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_destroy:

.. rst-class:: classref-method

|void| **render_model_destroy**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_destroy>`

Distrugge un oggetto modello di rendering all'interno di OpenXR precedentemente creato con :ref:`render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>`.

\ **Nota:** Questa funzione è esposta per le estensioni OpenXR dipendenti che forniscono ID modello di rendering da utilizzare con l'estensione modello di rendering.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **render_model_get_all**\ (\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_all>`

Restituisce un array di tutti i modelli di rendering attualmente attivi registrati con questa estensione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **render_model_get_animatable_node_count**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`

Restituisce il numero di nodi animabili di questo modello di rendering.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_animatable_node_name**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`

Restituisce il nome del nodo animabile specificato.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_animatable_node_transform**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`

Restituisce la trasformazione locale attuale per un nodo animabile. È aggiornata a ogni frame.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_confidence:

.. rst-class:: classref-method

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **render_model_get_confidence**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`

Restituisce l'affidabilità dei dati di tracciamento per il modello di rendering.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_root_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_root_transform**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`

Restituisce la trasformazione radice di un modello di rendering. Questa è la posizione tracciata rispetto al nostro nodo :ref:`XROrigin3D<class_XROrigin3D>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **render_model_get_subaction_paths**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`

Restituisce una lista di percorsi di sotto-azioni attive per il modello di rendering ``render_model``.

\ **Nota:** Se diversi dispositivi sono associati alle proprie azioni da quelli disponibili nelle associazioni di interazione suggeriti, queste informazioni mostrano i percorsi relativi alle associazioni di interazione imitate da tale dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_top_level_path**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`

Restituisce il percorso di livello superiore associato a questo modello di rendering ``render_model``. Se fornito, identifica se il modello di rendering è associato alle mani del giocatore o ad altre parti del corpo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **render_model_is_animatable_node_visible**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`

Restituisce ``true`` se questa nodo animabile deve essere visibile.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_new_scene_instance:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **render_model_new_scene_instance**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`

Restituisce un'istanza di una sotto-scena che contiene tutti i nodi :ref:`MeshInstance3D<class_MeshInstance3D>` che consentono di visualizzare il modello di rendering.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
