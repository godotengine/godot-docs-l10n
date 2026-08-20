:github_url: hide

.. _class_OpenXRActionMap:

OpenXRActionMap
===============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collezione di risorse :ref:`OpenXRActionSet<class_OpenXRActionSet>` e :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` per il modulo OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

OpenXR utilizza un sistema di azioni simile al sistema di mappa degli input di Godot per associare gli input e i output su vari tipi di controller XR ad azioni denominate. OpenXR specifica più dettagli su questi input e output rispetto a quanto supportato da Godot.

Un'altra importante distinzione è che OpenXR non offre alcun controllo su queste associazioni. Le associazioni che registriamo sono suggerimenti, spetta all'esecuzione XR offrire agli utenti la possibilità di modificare queste associazioni. Ciò consente all'esecuzione XR di riempire i vuoti se diventa disponibile nuovo hardware.

La mappa delle azioni deve quindi essere caricata all'avvio e non può essere modificata in seguito. Questa risorsa è un contenitore per l'intera mappa delle azioni.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`action_sets<class_OpenXRActionMap_property_action_sets>`                   | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`interaction_profiles<class_OpenXRActionMap_property_interaction_profiles>` | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_action_set<class_OpenXRActionMap_method_add_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                                    |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_interaction_profile<class_OpenXRActionMap_method_add_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ )       |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`create_default_action_sets<class_OpenXRActionMap_method_create_default_action_sets>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`find_action_set<class_OpenXRActionMap_method_find_action_set>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`find_interaction_profile<class_OpenXRActionMap_method_find_interaction_profile>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`get_action_set<class_OpenXRActionMap_method_get_action_set>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_action_set_count<class_OpenXRActionMap_method_get_action_set_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`get_interaction_profile<class_OpenXRActionMap_method_get_interaction_profile>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_interaction_profile_count<class_OpenXRActionMap_method_get_interaction_profile_count>`\ (\ ) |const|                                                                          |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_action_set<class_OpenXRActionMap_method_remove_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                              |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_interaction_profile<class_OpenXRActionMap_method_remove_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRActionMap_property_action_sets:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **action_sets** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_action_sets>`

.. rst-class:: classref-property-setget

- |void| **set_action_sets**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_action_sets**\ (\ )

Collezione di :ref:`OpenXRActionSet<class_OpenXRActionSet>` che fanno parte di questa mappa delle azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_property_interaction_profiles:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **interaction_profiles** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_interaction_profiles>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profiles**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_interaction_profiles**\ (\ )

Collezione di :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` che fanno parte di questa mappa delle azioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRActionMap_method_add_action_set:

.. rst-class:: classref-method

|void| **add_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_action_set>`

Aggiungi un insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_add_interaction_profile:

.. rst-class:: classref-method

|void| **add_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_interaction_profile>`

Aggiungi un profilo d'interazione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_create_default_action_sets:

.. rst-class:: classref-method

|void| **create_default_action_sets**\ (\ ) :ref:`🔗<class_OpenXRActionMap_method_create_default_action_sets>`

Imposta questo insieme di azioni con le nostre azioni predefinite.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **find_action_set**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_action_set>`

Recupera un insieme di azioni per nome.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **find_interaction_profile**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_interaction_profile>`

Trova un profilo di interazione tramite il suo nome (percorso).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set>`

Recupera l'azione impostata su questo indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_set_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set_count>`

Recupera il numero di insiemi di azioni nella nostra mappa d'azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **get_interaction_profile**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile>`

Ottiene il profilo di interazione in questo indice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interaction_profile_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile_count>`

Recupera il numero di profili di interazione nella nostra mappa d'azione.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_action_set:

.. rst-class:: classref-method

|void| **remove_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_action_set>`

Rimuove un insieme di azioni.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_interaction_profile:

.. rst-class:: classref-method

|void| **remove_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_interaction_profile>`

Rimuove un profilo di interazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
