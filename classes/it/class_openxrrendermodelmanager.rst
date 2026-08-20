:github_url: hide

.. _class_OpenXRRenderModelManager:

OpenXRRenderModelManager
========================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo ausiliare che gestirà automaticamente la visualizzazione dei modelli di rendering.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo ausiliare gestirà automaticamente la visualizzazione dei modelli di rendering. Creerà nuovi nodi :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` man mano che controller e altri dispositivi portatili vengono rilevati, rimuovendoli quando vengono disattivati.

\ **Nota:** Se si desidera più controllo su questa logica, è possibile in alternativa chiamare :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>` per ottenere una lista di ID di modelli di rendering attivi e creare istanze di :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` per ogni ID di modello di rendering fornito.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                                 | :ref:`make_local_to_pose<class_OpenXRRenderModelManager_property_make_local_to_pose>` | ``""`` |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` | :ref:`tracker<class_OpenXRRenderModelManager_property_tracker>`                       | ``0``  |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRRenderModelManager_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_added>`

Emesso quando un nodo di modello di rendering viene aggiunto come figlio di questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_removed>`

Emesso quando un nodo figlio di modello di rendering sta per essere rimosso da questo nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRRenderModelManager_RenderModelTracker:

.. rst-class:: classref-enumeration

enum **RenderModelTracker**: :ref:`🔗<enum_OpenXRRenderModelManager_RenderModelTracker>`

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_ANY** = ``0``

Sono mostrati tutti i modelli di rendering attivi, a prescindere dal tracker a cui sono correlati.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_NONE_SET:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_NONE_SET** = ``1``

Sono mostrati solo i modelli di rendering attivi che non sono correlati ad alcun tracker da noi gestito.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_LEFT_HAND** = ``2``

Sono mostrati solo i modelli di rendering attivi correlati al tracker della mano sinistra.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_RIGHT_HAND** = ``3``

Sono mostrati solo i modelli di rendering attivi correlati al tracker della mano destra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRRenderModelManager_property_make_local_to_pose:

.. rst-class:: classref-property

:ref:`String<class_String>` **make_local_to_pose** = ``""`` :ref:`🔗<class_OpenXRRenderModelManager_property_make_local_to_pose>`

.. rst-class:: classref-property-setget

- |void| **set_make_local_to_pose**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_make_local_to_pose**\ (\ )

Posiziona i modelli di rendering localmente a questa posa (ciò regolerà la posizione del nodo contenitore dei modelli di rendering).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_property_tracker:

.. rst-class:: classref-property

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **tracker** = ``0`` :ref:`🔗<class_OpenXRRenderModelManager_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>`\ )
- :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **get_tracker**\ (\ )

Limita i modelli di rendering al tracker specificato. Include: 0 = Tutti i modelli di rendering, 1 = Modelli di rendering correlati a un tracker, 2 = Modelli di rendering correlati al tracker della mano sinistra, 3 = Modelli di rendering correlati al tracker della mano destra.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
