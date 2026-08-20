:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe base per estendere gli :ref:`AnimationRootNode<class_AnimationRootNode>` da GDScript, C# o C++.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AnimationNodeExtension** espone le API di :ref:`AnimationRootNode<class_AnimationRootNode>` per consentire agli utenti di estenderlo da GDScript, C# o C++. Questa classe non è pensata per essere usata direttamente, ma per essere estesa da altre classi. Serve per creare nodi personalizzati per il sistema di :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

Una versione del metodo :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>` che è pensata per essere sovrascritta dai nodi personalizzati. Restituisce un :ref:`PackedFloat32Array<class_PackedFloat32Array>` con i dati di animazione elaborati.

Il parametro :ref:`PackedFloat64Array<class_PackedFloat64Array>` contiene le informazioni di riproduzione, con i seguenti valori codificati come numeri in virgola mobile (in ordine): tempo di riproduzione e delta, tempo di inizio e fine, se è stata richiesta una ricerca (codificata come un float maggiore di ``0``), se la richiesta di ricerca è stata richiesta esternamente (codificata come un float maggiore di ``0``), il :ref:`LoopedFlag<enum_Animation_LoopedFlag>` attuale (codificato come un float) e l'attuale peso di fusione.

La funzione deve restituire un :ref:`PackedFloat32Array<class_PackedFloat32Array>` delle informazioni temporali del nodo, contenente i seguenti valori (in ordine): durata dell'animazione, posizione nel tempo, delta, :ref:`LoopMode<enum_Animation_LoopMode>` (codificato come float), se l'animazione sta per terminare (codificato come float maggiore di ``0``) e se l'animazione è infinita (codificato come float maggiore di ``0``). Tutti i valori devono essere inclusi nell'array restituito.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

Restituisce il tempo rimanente dell'animazione per le informazioni sul nodo specificate. Per le animazioni in ripetizione, verrà restituito il tempo rimanente solo se ``break_loop`` è ``true``, altrimenti verrà restituito un valore intero alto.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

Restituisce ``true`` se l'animazione per il ``node_info`` fornito è in ripetizione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
