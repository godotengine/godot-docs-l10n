:github_url: hide

.. _class_AudioStreamInteractive:

AudioStreamInteractive
======================

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Flusso audio in grado di riprodurre musica in modo interattivo, combinando i clip e una tabella di transizione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è un flusso audio che può riprodurre musica in modo interattivo, combinando clip e una tabella di transizione. Le clip devono essere prima aggiunte, e poi le regole di transizione tramite :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`. Inoltre, questo flusso esporta un parametro di proprietà per controllare la riproduzione tramite :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` o :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`.

Il modo in cui è utilizzato è inserendo un certo numero di clip, quindi configurando la tabella di transizione. Da lì, le clip sono selezionate per la riproduzione e la musica passerà gradualmente da quella attuale a quella nuova, utilizzando la regola di transizione corrispondente definita nella tabella di transizione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`clip_count<class_AudioStreamInteractive_property_clip_count>`     | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`initial_clip<class_AudioStreamInteractive_property_initial_clip>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`add_transition<class_AudioStreamInteractive_method_add_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`erase_transition<class_AudioStreamInteractive_method_erase_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`       | :ref:`get_clip_auto_advance<class_AudioStreamInteractive_method_get_clip_auto_advance>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`get_clip_auto_advance_next_clip<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                       | :ref:`get_clip_name<class_AudioStreamInteractive_method_get_clip_name>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>`                                     | :ref:`get_clip_stream<class_AudioStreamInteractive_method_get_clip_stream>`\ (\ clip_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`get_transition_fade_beats<class_AudioStreamInteractive_method_get_transition_fade_beats>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`                     | :ref:`get_transition_fade_mode<class_AudioStreamInteractive_method_get_transition_fade_mode>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`get_transition_filler_clip<class_AudioStreamInteractive_method_get_transition_filler_clip>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` | :ref:`get_transition_from_time<class_AudioStreamInteractive_method_get_transition_from_time>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                           | :ref:`get_transition_list<class_AudioStreamInteractive_method_get_transition_list>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`     | :ref:`get_transition_to_time<class_AudioStreamInteractive_method_get_transition_to_time>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`has_transition<class_AudioStreamInteractive_method_has_transition>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`is_transition_holding_previous<class_AudioStreamInteractive_method_is_transition_holding_previous>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`is_transition_using_filler_clip<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_auto_advance<class_AudioStreamInteractive_method_set_clip_auto_advance>`\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_auto_advance_next_clip<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                                |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_name<class_AudioStreamInteractive_method_set_clip_name>`\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                    | :ref:`set_clip_stream<class_AudioStreamInteractive_method_set_clip_stream>`\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                |
   +---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioStreamInteractive_TransitionFromTime:

.. rst-class:: classref-enumeration

enum **TransitionFromTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionFromTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_IMMEDIATE** = ``0``

Inizia la transizione il prima possibile, non aspettando una posizione temporale specifica.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BEAT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BEAT** = ``1``

Passa quando la posizione di riproduzione della clip raggiunge il battito successivo.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BAR** = ``2``

Passa quando la posizione di riproduzione della clip raggiunge la battuta successiva.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_END:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_END** = ``3``

Passa al termine della riproduzione della clip attuale.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_TransitionToTime:

.. rst-class:: classref-enumeration

enum **TransitionToTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionToTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_SAME_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_SAME_POSITION** = ``0``

Passa alla stessa posizione nella clip di destinazione. Questo è utile quando entrambe le clip hanno esattamente la stessa lunghezza e la musica deve dissolversi tra di esse.

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_START:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_START** = ``1``

Passa all'inizio della clip di destinazione.

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_PREVIOUS_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_PREVIOUS_POSITION** = ``2``

Passa all'ultima posizione riprodotta nella clip di destinazione, se ci è stata una transizione precedente da quella clip. Se non, la riproduzione ricomincia dall'inizio della clip di destinazione.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_FadeMode:

.. rst-class:: classref-enumeration

enum **FadeMode**: :ref:`🔗<enum_AudioStreamInteractive_FadeMode>`

.. _class_AudioStreamInteractive_constant_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_DISABLED** = ``0``

Non applicare una dissolvenza per la transizione. È utile quando si passa dalla fine di una clip all'inizio di una clip, e ogni clip ha il suo inizio e fine.

.. _class_AudioStreamInteractive_constant_FADE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_IN** = ``1``

Applica una dissolvenza in entrata nella clip successiva e lascia che la clip attuale termini.

.. _class_AudioStreamInteractive_constant_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_OUT** = ``2``

Applica una dissolvenza in uscita alla clip attuale: la clip successiva si avvierà da sola.

.. _class_AudioStreamInteractive_constant_FADE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_CROSS** = ``3``

Applica una dissolvenza incrociata tra le clip.

.. _class_AudioStreamInteractive_constant_FADE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_AUTOMATIC** = ``4``

Applica una logica di dissolvenza automatica a seconda della transizione da/a. Si consiglia di utilizzarla per impostazione predefinita.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_AutoAdvanceMode:

.. rst-class:: classref-enumeration

enum **AutoAdvanceMode**: :ref:`🔗<enum_AudioStreamInteractive_AutoAdvanceMode>`

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_DISABLED** = ``0``

Disabilita l'avanzamento automatico (predefinito).

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_ENABLED** = ``1``

Abilita l'avanzamento automatico, è necessario specificare una clip.

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_RETURN_TO_HOLD** = ``2``

Abilita l'avanzamento automatico, ma invece di specificare una clip, la riproduzione tornerà in attesa (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_AudioStreamInteractive_constant_CLIP_ANY:

.. rst-class:: classref-constant

**CLIP_ANY** = ``-1`` :ref:`🔗<class_AudioStreamInteractive_constant_CLIP_ANY>`

Questa costante descrive che qualsiasi clip è valida per una specifica transizione come sorgente o come destinazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamInteractive_property_clip_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **clip_count** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_clip_count>`

.. rst-class:: classref-property-setget

- |void| **set_clip_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_clip_count**\ (\ )

Quantità di clip contenute in questo lettore interattivo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_property_initial_clip:

.. rst-class:: classref-property

:ref:`int<class_int>` **initial_clip** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_initial_clip>`

.. rst-class:: classref-property-setget

- |void| **set_initial_clip**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_initial_clip**\ (\ )

Indice della clip iniziale, che verrà riprodotta per prima quando questo flusso viene riprodotto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamInteractive_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AudioStreamInteractive_method_add_transition>`

Aggiungi una transizione tra due clip. Fornisci gli indici delle clip di origine e destinazione, oppure usa la costante :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` per indicare che la transizione avviene da/a qualsiasi clip a questa.

\* ``from_time`` indica il momento nella clip attuale in cui inizierà la transizione dopo l'attivazione.

\* ``to_time`` indica il momento nella clip successiva da cui inizierà la riproduzione.

\* ``fade_mode`` indica come avverrà la dissolvenza tra le clip. Se non sei sicuro, usa :ref:`FADE_AUTOMATIC<class_AudioStreamInteractive_constant_FADE_AUTOMATIC>` il quale usa il tipo di dissolvenza più comune per ogni situazione.

\* ``fade_beats`` indica quanti battiti richiederà la dissolvenza. È consentito usare i decimali.

\* ``use_filler_clip`` indica che verrà usata una clip di riempimento tra le clip di origine e destinazione.

\* ``filler_clip`` l'indice della clip di riempimento.

\* Se viene usato ``hold_previous``, questa clip verrà ricordata. Può essere utilizzato insieme a :ref:`AUTO_ADVANCE_RETURN_TO_HOLD<class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD>` per tornare a questa clip dopo che un'altra ha terminato la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_erase_transition:

.. rst-class:: classref-method

|void| **erase_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_erase_transition>`

Cancella una transizione fornendo gli indici di clip ``from_clip`` e ``to_clip``. :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` può essere utilizzato per uno degli argomenti o per entrambi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance:

.. rst-class:: classref-method

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **get_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance>`

Restituisce se una clip ha l'avanzamento automatico abilitato. Vedi :ref:`set_clip_auto_advance()<class_AudioStreamInteractive_method_set_clip_auto_advance>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`

Restituisce la clip verso la quale avanzerà automaticamente la clip a cui fa riferimento l'indice ``clip_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_clip_name**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_name>`

Restituisce il nome di una clip.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_stream>`

Restituisce l':ref:`AudioStream<class_AudioStream>` associato a un clip.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_beats:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_transition_fade_beats**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_beats>`

Restituisce il tempo (in battiti) per una transizione (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_mode:

.. rst-class:: classref-method

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **get_transition_fade_mode**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_mode>`

Restituisce la modalità per una transizione (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_filler_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_filler_clip>`

Restituisce la clip di riempimento per una transizione (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_from_time:

.. rst-class:: classref-method

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **get_transition_from_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_from_time>`

Restituisce la posizione del tempo di origine per una transizione (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_transition_list**\ (\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_list>`

Restituisce la lista delle transizioni (da, a interlacciato).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_to_time:

.. rst-class:: classref-method

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **get_transition_to_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_to_time>`

Restituisce la posizione del tempo di destinazione per una transizione (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_has_transition>`

Restituisce ``true`` se esiste una determinata transizione (che è stata aggiunta tramite :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_holding_previous:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_holding_previous**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_holding_previous>`

Restituisce se una transizione utilizza la funzionalità *mantieni precedente* (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_using_filler_clip:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_using_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`

Restituisce se una transizione utilizza la funzionalità *filler clip* (vedi :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance:

.. rst-class:: classref-method

|void| **set_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance>`

Imposta se una clip avanzerà automaticamente modificando la modalità di avanzamento automatico.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip:

.. rst-class:: classref-method

|void| **set_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`

Imposta l'indice della clip successiva verso cui questa clip avanzerà automaticamente una volta terminata. Se la clip riprodotta è in ripetizione, l'avanzamento automatico sarà ignorato.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_name:

.. rst-class:: classref-method

|void| **set_clip_name**\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_name>`

Imposta il nome della clip attuale (per identificarla più facilmente).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_stream:

.. rst-class:: classref-method

|void| **set_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_stream>`

Imposta l':ref:`AudioStream<class_AudioStream>` associato alla clip attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
