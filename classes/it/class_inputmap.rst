:github_url: hide

.. _class_InputMap:

InputMap
========

**Eredita:** :ref:`Object<class_Object>`

Un singleton che gestisce tutti gli :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gestisce tutti gli :ref:`InputEventAction<class_InputEventAction>` che possono essere creati o modificati dal menu delle Impostazioni del progetto **Progetto > Impostazioni del progetto > Mappa di input** o in codice con :ref:`add_action()<class_InputMap_method_add_action>` e :ref:`action_add_event()<class_InputMap_method_action_add_event>`. Vedi :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Utilizzo di InputEvent: InputMap <../tutorials/inputs/inputevent.html#inputmap>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_add_event<class_InputMap_method_action_add_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_event<class_InputMap_method_action_erase_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_events<class_InputMap_method_action_erase_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`action_get_deadzone<class_InputMap_method_action_get_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] | :ref:`action_get_events<class_InputMap_method_action_get_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`action_has_event<class_InputMap_method_action_has_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_set_deadzone<class_InputMap_method_action_set_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_action<class_InputMap_method_add_action>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ )                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_action<class_InputMap_method_erase_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`event_is_action<class_InputMap_method_event_is_action>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_action_description<class_InputMap_method_get_action_description>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_actions<class_InputMap_method_get_actions>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_action<class_InputMap_method_has_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`load_from_project_settings<class_InputMap_method_load_from_project_settings>`\ (\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_InputMap_signal_project_settings_loaded:

.. rst-class:: classref-signal

**project_settings_loaded**\ (\ ) :ref:`🔗<class_InputMap_signal_project_settings_loaded>`

Emitted when the :ref:`ProjectSettings<class_ProjectSettings>` **InputMap** has been loaded.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_InputMap_method_action_add_event:

.. rst-class:: classref-method

|void| **action_add_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_add_event>`

Aggiunge un :ref:`InputEvent<class_InputEvent>` a un'azione. Questo :ref:`InputEvent<class_InputEvent>` attiverà l'azione.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_event:

.. rst-class:: classref-method

|void| **action_erase_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_erase_event>`

Rimuove un :ref:`InputEvent<class_InputEvent>` da un'azione.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_events:

.. rst-class:: classref-method

|void| **action_erase_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_erase_events>`

Rimuove tutti gli eventi da un'azione.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_deadzone:

.. rst-class:: classref-method

:ref:`float<class_float>` **action_get_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_deadzone>`

Restituisce un valore di zona morta per l'azione.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_events:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] **action_get_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_events>`

Restituisce un array di :ref:`InputEvent<class_InputEvent>` associati a una determinata azione.

\ **Nota:** Quando utilizzato nell'editor (ad esempio uno script strumento o :ref:`EditorPlugin<class_EditorPlugin>`), questo metodo restituirà eventi per l'azione nell'editor. Se si desidera accedere alle associazioni di input del tuo progetto dall'editor, leggi le impostazioni ``input/*`` da :ref:`ProjectSettings<class_ProjectSettings>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_has_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **action_has_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_has_event>`

Restituisce ``true`` se l'azione è associata all':ref:`InputEvent<class_InputEvent>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_set_deadzone:

.. rst-class:: classref-method

|void| **action_set_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ ) :ref:`🔗<class_InputMap_method_action_set_deadzone>`

Imposta il valore della zona morta per l'azione specificata.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ ) :ref:`🔗<class_InputMap_method_add_action>`

Aggiunge un'azione vuota a **InputMap** con il valore di zona morta specificato da ``deadzone``.

È possibile quindi aggiungere un :ref:`InputEvent<class_InputEvent>` a questa azione con :ref:`action_add_event()<class_InputMap_method_action_add_event>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_erase_action:

.. rst-class:: classref-method

|void| **erase_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_erase_action>`

Rimuove un'azione dall'**InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_event_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **event_is_action**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputMap_method_event_is_action>`

Restituisce ``true`` se l'evento specificato fa parte di un'azione esistente. Questo metodo ignora i modificatori di tastiera se l':ref:`InputEvent<class_InputEvent>` fornito non è premuto (per rilevare il rilascio correttamente). Vedi :ref:`action_has_event()<class_InputMap_method_action_has_event>` se non si desidera questo comportamento.

Se ``exact_match`` è ``false``, ignora i modificatori di input aggiuntivi per gli eventi :ref:`InputEventKey<class_InputEventKey>` e :ref:`InputEventMouseButton<class_InputEventMouseButton>` e la direzione per gli eventi :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_action_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_description**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_get_action_description>`

Restituisce la descrizione leggibile in chiaro dell'azione specificata.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_actions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_actions**\ (\ ) :ref:`🔗<class_InputMap_method_get_actions>`

Restituisce un array di tutte le azioni presenti nell'**InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_has_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_has_action>`

Restituisce ``true`` se l'**InputMap** ha un'azione registrata con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_load_from_project_settings:

.. rst-class:: classref-method

|void| **load_from_project_settings**\ (\ ) :ref:`🔗<class_InputMap_method_load_from_project_settings>`

Cancella tutti gli :ref:`InputEventAction<class_InputEventAction>` nell'**InputMap** e li carica nuovamente da :ref:`ProjectSettings<class_ProjectSettings>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
