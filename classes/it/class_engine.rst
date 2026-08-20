:github_url: hide

.. _class_Engine:

Engine
======

**Eredita:** :ref:`Object<class_Object>`

Fornisce accesso alle proprietà del motore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il singleton **Engine** consente di interrogare e modificare i parametri di esecuzione del progetto, come frame al secondo, scala temporale e altri. Memorizza anche informazioni sulla build attuale di Godot, come la versione attuale.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_fps<class_Engine_property_max_fps>`                                         | ``0``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` | ``8``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`physics_jitter_fix<class_Engine_property_physics_jitter_fix>`                   | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`       | ``60``   |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_error_messages<class_Engine_property_print_error_messages>`               | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_to_stdout<class_Engine_property_print_to_stdout>`                         | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`time_scale<class_Engine_property_time_scale>`                                   | ``1.0``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] | :ref:`capture_script_backtraces<class_Engine_method_capture_script_backtraces>`\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const|          |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_architecture_name<class_Engine_method_get_architecture_name>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_author_info<class_Engine_method_get_author_info>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]           | :ref:`get_copyright_info<class_Engine_method_get_copyright_info>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_donor_info<class_Engine_method_get_donor_info>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_frames_drawn<class_Engine_method_get_frames_drawn>`\ (\ )                                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_frames_per_second<class_Engine_method_get_frames_per_second>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_license_info<class_Engine_method_get_license_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_license_text<class_Engine_method_get_license_text>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MainLoop<class_MainLoop>`                                            | :ref:`get_main_loop<class_Engine_method_get_main_loop>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_physics_frames<class_Engine_method_get_physics_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_physics_interpolation_fraction<class_Engine_method_get_physics_interpolation_fraction>`\ (\ ) |const|                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_process_frames<class_Engine_method_get_process_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptLanguage<class_ScriptLanguage>`                                | :ref:`get_script_language<class_Engine_method_get_script_language>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_script_language_count<class_Engine_method_get_script_language_count>`\ (\ )                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                                | :ref:`get_singleton<class_Engine_method_get_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                          | :ref:`get_singleton_list<class_Engine_method_get_singleton_list>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_version_info<class_Engine_method_get_version_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_write_movie_path<class_Engine_method_get_write_movie_path>`\ (\ ) |const|                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`has_singleton<class_Engine_method_has_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_editor_hint<class_Engine_method_is_editor_hint>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_embedded_in_editor<class_Engine_method_is_embedded_in_editor>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_in_physics_frame<class_Engine_method_is_in_physics_frame>`\ (\ ) |const|                                                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`register_script_language<class_Engine_method_register_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`register_singleton<class_Engine_method_register_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`unregister_script_language<class_Engine_method_unregister_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`unregister_singleton<class_Engine_method_unregister_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

Il numero massimo di frame che possono essere renderizzati ogni secondo (FPS). Un valore di ``0`` significa che il frame rate non è limitato.

Limitare gli FPS può essere utile per ridurre il consumo energetico della macchina host, il che riduce calore, emissioni di rumore e migliora la durata della batteria.

Se :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` è **Enabled** o **Adaptive**, l'impostazione ha la precedenza e il numero massimo di FPS non può superare la frequenza di aggiornamento del monitor.

Se :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` è **Enabled**, sui monitor con frequenza di aggiornamento variabile abilitata (G-Sync/FreeSync), usare un limite di alcuni frame inferiore alla frequenza di aggiornamento del monitor `ridurrà il ritardo degli input evitando il tearing <https://blurbusters.com/howto-low-lag-vsync-on/>`__. Con frequenze più elevate, si dovrebbe aumentare la differenza tra il limite degli FPS e la frequenza di aggiornamento del monitor, al fine di garantire abbastanza frame per compensare le imprecisioni di temporizzazione. In questo scenario, la formula ottimale per ottenere il limite degli FPS è ``r - (r * r) / 3600.0``, dove ``r`` è la frequenza di aggiornamento del monitor.

\ **Nota:** Il numero effettivo di frame al secondo potrebbe essere comunque inferiore a questo valore se la CPU o la GPU non riescono a tenere il passo con la logica e il rendering del progetto.

\ **Nota:** Se :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` è **Disabled**, limitare gli FPS a un valore elevato che può essere raggiunto costantemente sul sistema può ridurre il ritardo degli input rispetto a un frame rate senza limiti. Poiché questo funziona assicurando che il carico della GPU sia inferiore al 100%, questa riduzione della latenza è efficace solo negli scenari limitati dalla GPU, non negli scenari limitati dalla CPU.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

Numero massimo di passaggi di fisica che possono essere simulati per ogni frame renderizzato.

\ **Nota:** Il valore predefinito è regolato per impedire che costose simulazioni di fisica inneschino simulazioni ancora più costose all'infinito. Tuttavia, il gioco sembrerà rallentare se l'FPS di rendering è inferiore a ``1 / max_physics_steps_per_frame`` di :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Ciò si verifica anche se ``delta`` è utilizzato costantemente nei calcoli della fisica. Per evitarlo, aumenta :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` se hai aumentato :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` drasticamente al di sopra del suo valore predefinito.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

Quanti tick di fisica sono sincronizzati con il tempo reale. Se ``0`` o meno, i tick sono completamente sincronizzati. Valori più alti causano una maggiore deviazione dell'orologio di gioco dall'orologio reale, ma attenuano le instabilità del frame rate.

\ **Nota:** Il valore predefinito di ``0.5`` dovrebbe essere accettabile per la maggior parte dei casi; valori superiori a ``2`` potrebbero portare a una reazione ai frame persi con un ritardo notevole e non sono consigliati.

\ **Nota:** Quando si utilizza una soluzione di interpolazione fisica personalizzata o all'interno di un gioco in rete, si consiglia di disabilitare la correzione di instabilità della fisica impostando questa proprietà su ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

Il numero di iterazioni fisse al secondo. Controlla quanto spesso la simulazione della fisica e il metodo :ref:`Node._physics_process()<class_Node_private_method__physics_process>` vengono eseguiti.

L'utilizzo della CPU scala approssimativamente con la frequenza dei tick di fisica. Tuttavia, a frequenze di tick molto basse (solitamente inferiori a 30), la simulazione della fisica può dare problemi. Inoltre gli input potrebbero diventare meno reattivi, a causa del tempo richiesto tra la registrazione dell'input e la sua risposta al prossimo tick di fisica. Frequenze di tick alte offrono una simulazione più accurata, in particolare per gli oggetti in rapido movimento. Ad esempio, i giochi di corse potrebbero funzionare meglio aumentando la frequenza dei tick oltre il valore predefinito di 60.

Vedi anche :ref:`max_fps<class_Engine_property_max_fps>` e :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`.

\ **Nota:** Possono essere simulati al massimo solo il numero :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` di tick di fisica per frame renderizzato. Se è necessario simulare più tick di fisica per ogni frame renderizzato per tenere il passo con il rendering, il progetto sembrerà rallentare (anche se ``delta`` è utilizzato in modo coerente nei calcoli fisici). Pertanto, si consiglia di aumentare anche :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` se si aumenta :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` drasticamente al di sopra del suo valore predefinito.

\ **Nota:** Si consiglia di abilitare l':doc:`interpolazione della fisica <../tutorials/physics/interpolation/index>` se si cambia :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` con un valore che non è un multiplo di ``60``. L'interpolazione della fisica eviterà tremolii quando la frequenza di aggiornamento del monitor e la frequenza dei tick di fisica non corrispondono esattamente.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

Se ``false``, blocca la stampa di messaggi di errore e di avviso nella console e nel registro di output dell'editor. Può essere utilizzato per nascondere messaggi di errore e di avviso durante l'esecuzione di unit test suite. Questa proprietà è equivalente all'impostazione del progetto :ref:`ProjectSettings.application/run/disable_stderr<class_ProjectSettings_property_application/run/disable_stderr>`.

\ **Nota:** Questa proprietà non influisce sulla scheda Errori dell'editor quando si esegue un progetto dall'editor.

\ **Attenzione:** Se impostato su ``false`` in qualsiasi punto del progetto, i messaggi di errore importanti potrebbero essere nascosti anche se sono emessi da altri script. In uno script ``@tool``, ciò avrà un impatto anche sull'editor stesso. *Non* segnalare bug prima di assicurarti che i messaggi di errore siano abilitati (come lo sono per impostazione predefinita).

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

Se ``false``, smette di stampare i messaggi (ad esempio tramite :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`) nella console, nei file di log e nel log di output nell'editor. Questa proprietà è equivalente all'impostazione del progetto :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>`.

\ **Nota:** Questo non smette di stampare gli errori o avvisi prodotti dagli script nella console o nei file di log, per maggiori dettagli vedi :ref:`print_error_messages<class_Engine_property_print_error_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

Il moltiplicatore di velocità a cui si aggiorna l'orologio di gioco, rispetto al tempo reale. Ad esempio, se impostato su ``2.0`` il gioco è eseguito due volte più velocemente, e se impostato su ``0.5`` il gioco è eseguito due volte più lentamente.

Questo valore influenza :ref:`Timer<class_Timer>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, e tutte le altre simulazioni che utilizzano il tempo ``delta`` (come :ref:`Node._process()<class_Node_private_method__process>` e :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

\ **Nota:** Si consiglia di mantenere questa proprietà maggiore di ``0.0``, altrimenti il gioco potrebbe comportarsi in modo imprevisto.

\ **Nota:** Questo non influenza la velocità di riproduzione audio. Usa :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` per regolare la velocità di riproduzione audio indipendentemente da :ref:`time_scale<class_Engine_property_time_scale>`.

\ **Nota:** Questo non regola automaticamente :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Con valori superiori a ``1.0`` la simulazione fisica potrebbe diventare meno precisa, poiché ogni tick di fisica si estenderà su un periodo di tempo del motore più ampio. Se stai modificando :ref:`time_scale<class_Engine_property_time_scale>` per velocizzare la simulazione di un fattore elevato, considera anche di aumentare :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` per rendere la simulazione più affidabile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

Cattura e restituisce backtrace da tutti i linguaggi di script registrati.

Come predefinito, il :ref:`ScriptBacktrace<class_ScriptBacktrace>` restituito conterrà gli stack frame solo nelle build dell'editor e nelle build di debug. Per abilitarli anche per le build di rilascio, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

Se ``include_variables`` è ``true``, il backtrace includerà anche i nomi e i valori di eventuali variabili globali (ad esempio, singleton autoload) al momento della cattura, nonché le variabili locali e le variabili membro delle classi in ogni stack frame. Questo, tuttavia, sarà rispettato solo quando si esegue il gioco con un debugger collegato, ad esempio quando si esegue il gioco dall'editor. Per abilitarlo anche per le build di esportazione, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`.

\ **Attenzione:** Quando ``include_variables`` è ``true``, qualsiasi variabile catturata può potenzialmente (ad esempio con i backtrace GDScript) essere il suo valore effettivo, inclusi eventuali riferimenti agli oggetti. Ciò significa che memorizzare tale :ref:`ScriptBacktrace<class_ScriptBacktrace>` impedirà di deallocare tali oggetti, quindi in genere si consiglia di non farlo.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

Restituisce il nome dell'architettura della CPU per il quale è stato creato l'eseguibile di Godot. I possibili valori restituiti includono ``"x86_64"``, ``"x86_32"``, ``"arm64"``, ``"arm32"``, ``"rv64"``, ``"ppc64"``, ``"loongarch64"``, ``"wasm64"`` e ``"wasm32"``.

Per individuare se la build attuale è a 64 bit, o il tipo di architettura, non usare il nome dell'architettura. Invece, usa :ref:`OS.has_feature()<class_OS_method_has_feature>` per controllare il tag di funzionalità ``"64"``, oppure tag come ``"x86"`` o ``"arm"``. Consulta la documentazione dei :doc:`tag di funzionalità <../tutorials/export/feature_tags>` per ulteriori dettagli.

\ **Nota:** Questo metodo *non* restituisce il nome dell'architettura CPU del sistema (come :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`). Ad esempio, quando si esegue un binario Godot ``x86_32`` su un sistema ``x86_64``, il valore restituito sarà comunque ``"x86_32"``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

Restituisce le informazioni sugli autori del motore come un :ref:`Dictionary<class_Dictionary>`, dove ogni voce è un :ref:`Array<class_Array>` di stringhe con i nomi dei collaboratori più importanti del Godot Engine: ``lead_developers``, ``founders``, ``project_managers``, e ``developers``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

Restituisce un :ref:`Array<class_Array>` di dizionari con informazioni sul copyright per ogni componente del codice sorgente di Godot.

Ogni :ref:`Dictionary<class_Dictionary>` contiene un identificatore ``name`` e un array ``parts`` di dizionari. Quest'ultimo descrive il componente in dettaglio con le seguenti voci:

- ``files`` - :ref:`Array<class_Array>` di percorsi di file dal codice sorgente interessati da questo componente;

- ``copyright`` - :ref:`Array<class_Array>` di proprietari di questo componente;

- ``license`` - La licenza applicata a questo componente (ad esempio "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" o "`CC-BY-4.0 <https://creativecommons.org/licenses/by/4.0/>`__").

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

Restituisce un :ref:`Dictionary<class_Dictionary>` di nomi categorizzati dei donatori. Ogni voce è un :ref:`Array<class_Array>` di stringhe:

{``platinum_sponsors``, ``gold_sponsors``, ``silver_sponsors``, ``bronze_sponsors``, ``mini_sponsors``, ``gold_donors``, ``silver_donors``, ``bronze_donors``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

Restituisce il numero totale di frame disegnati dall'avvio del motore.

\ **Nota:** Sulle piattaforme headless, o se il rendering è disabilitato con ``--disable-render-loop`` tramite riga di comando, questo metodo restituisce sempre ``0``. Vedi anche :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

Restituisce la media dei fotogrammi renderizzati ogni secondo (FPS), nota anche come frequenza dei fotogrammi.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

Restituisce un :ref:`Dictionary<class_Dictionary>` di licenze utilizzate da Godot e componenti di terze parti incluse. Ogni voce è un nome di licenza (ad esempio "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__") e il suo testo associato.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

Restituisce il testo completo della licenza di Godot.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

Restituisce l'istanza del :ref:`MainLoop<class_MainLoop>`. Di solito è il :ref:`SceneTree<class_SceneTree>` principale ed è uguale a :ref:`Node.get_tree()<class_Node_method_get_tree>`.

\ **Nota:** Il tipo istanziato come ciclo principale può essere modificato con :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

Restituisce il numero totale di frame passati dall'avvio del motore. Questo numero aumenta ogni **frame di fisica**. Vedi anche :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

Questo metodo può essere utilizzato per eseguire la logica costosa meno spesso senza fare affidamento su un :ref:`Timer<class_Timer>`:


.. tabs::

 .. code-tab:: gdscript

    func _physics_process(_delta):
        if Engine.get_physics_frames() % 2 == 0:
            pass # Esegui la logica costosa solo una volta ogni 2 frame di fisica qui.

 .. code-tab:: csharp

    public override void _PhysicsProcess(double delta)
    {
        base._PhysicsProcess(delta);

        if (Engine.GetPhysicsFrames() % 2 == 0)
        {
            // Esegui la logica costosa solo una volta ogni 2 frame di fisica qui.
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

Restituisce la frazione attraverso il tick di fisica attuale in cui ci troviamo al momento del rendering del frame. Può essere utilizzato per implementare un'interpolazione di passo fisso.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

Restituisce il numero totale di frame passati dall'avvio del motore. Questo numero aumenta ogni **frame di processo**, indipendentemente dal fatto che il ciclo di rendering sia abilitato. Vedi anche :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` e :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`.

Questo metodo può essere utilizzato per eseguire la logica costosa meno spesso senza fare affidamento su un :ref:`Timer<class_Timer>`:


.. tabs::

 .. code-tab:: gdscript

    func _process(_delta):
        if Engine.get_process_frames() % 5 == 0:
            pass # Esegui la logica costosa solo una volta ogni 5 frame di processo (rendering) qui.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        base._Process(delta);

        if (Engine.GetProcessFrames() % 5 == 0)
        {
            // Esegui la logica costosa solo una volta ogni 5 frame di processo (rendering) qui.
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

Restituisce un'istanza di :ref:`ScriptLanguage<class_ScriptLanguage>` con l'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

Restituisce il numero di linguaggi di script disponibili. Da utilizzare con :ref:`get_script_language()<class_Engine_method_get_script_language>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

Restituisce il singleton globale con il nome ``name``, o ``null`` se non esiste. Spesso utilizzato per le estensioni. Vedi anche :ref:`has_singleton()<class_Engine_method_has_singleton>` e :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`.

\ **Nota:** I singleton globali non sono la stessa cosa dei nodi autoload, che sono configurabili nelle Impostazioni del progetto.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

Restituisce una lista di nomi di tutti i singleton globali disponibili. Vedi anche :ref:`get_singleton()<class_Engine_method_get_singleton>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

Restituisce le informazioni sulla versione corrente del motore come un :ref:`Dictionary<class_Dictionary>` contenente le seguenti voci:

- ``major`` - Numero di versione principale come int;

- ``minor`` - Numero di versione secondaria come int;

- ``patch`` - Numero di versione della patch come int;

- ``hex`` - Versione completa codificata come int esadecimale con un byte (2 cifre esadecimali) per numero (vedi l'esempio di seguito);

- ``status`` - Stato (ad esempio "beta", "rc1", "rc2", "stable", ecc.) come String;

- ``build`` - Nome della build (ad esempio "custom_build") come String;

- ``hash`` - Hash completo del commit Git come String;

- ``timestamp`` - Contiene la data di commit Git, timestamp UNIX in secondi come int, o ``0`` se non disponibile;

- ``string`` - ``major``, ``minor``, ``patch``, ``status``, e ``build`` in una singola stringa.

Il valore ``hex`` è codificato come segue, da sinistra a destra: un byte per il major, un byte per il minor, un byte per la versione di patch. Ad esempio, "3.1.12" sarebbe ``0x03010C``.

\ **Nota:** Il valore ``hex`` è comunque un :ref:`int<class_int>` internamente e stampandolo otterrai la sua rappresentazione decimale, che non è particolarmente utile. Usa i letterali esadecimali per rapidi confronti di versione da codice:


.. tabs::

 .. code-tab:: gdscript

    if Engine.get_version_info().hex >= 0x040100:
        pass # Esegue azioni specifiche per la versione 4.1 o successive.
    else:
        pass # Esegue azioni specifiche per le versioni precedenti alla 4.1.

 .. code-tab:: csharp

    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
    {
        // Esegue azioni specifiche per la versione 4.1 o successive.
    }
    else
    {
        // Esegue azioni specifiche per le versioni precedenti alla 4.1.
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

Restituisce il percorso al file di output di :ref:`MovieWriter<class_MovieWriter>`, oppure una stringa vuota se il motore non è stato avviato in modalità Movie Maker. Il percorso predefinito può essere modificato in :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

Restituisce ``true`` se un singleton con il nome ``name`` esiste nell'ambito globale. Vedi anche :ref:`get_singleton()<class_Engine_method_get_singleton>`.


.. tabs::

 .. code-tab:: gdscript

    print(Engine.has_singleton("OS"))          # Stampa true
    print(Engine.has_singleton("Engine"))      # Stampa true
    print(Engine.has_singleton("AudioServer")) # Stampa true
    print(Engine.has_singleton("Unknown"))     # Stampa false

 .. code-tab:: csharp

    GD.Print(Engine.HasSingleton("OS"));          // Stampa True
    GD.Print(Engine.HasSingleton("Engine"));      // Stampa True
    GD.Print(Engine.HasSingleton("AudioServer")); // Stampa True
    GD.Print(Engine.HasSingleton("Unknown"));     // Stampa False



\ **Nota:** I singleton globali non sono la stessa cosa dei nodi autoload, che sono configurabili nelle impostazioni del progetto.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

Restituisce ``true`` se lo script è attualmente in esecuzione all'interno dell'editor, altrimenti restituisce ``false``. Ciò è utile per gli script ``@tool`` per disegnare in modo condizionale gli helper dell'editor o impedire l'esecuzione accidentale di codice "di gioco" che potrebbe influenzare lo stato della scena mentre è attiva nell'editor:


.. tabs::

 .. code-tab:: gdscript

    if Engine.is_editor_hint():
        draw_gizmos()
    else:
        simulate_physics()

 .. code-tab:: csharp

    if (Engine.IsEditorHint())
        DrawGizmos();
    else
        SimulatePhysics();



Vedi :doc:`Esecuzione di codice nell'editor <../tutorials/plugins/running_code_in_the_editor>` nella documentazione per ulteriori informazioni.

\ **Nota:** Per rilevare se lo script è in esecuzione su una *build* dall'editor (ad esempio quando si preme :kbd:`F5`), usa invece :ref:`OS.has_feature()<class_OS_method_has_feature>` con l'argomento ``"editor"``. ``OS.has_feature("editor")`` restituisce ``true`` sia quando lo script è in esecuzione nell'editor sia quando si esegue il progetto dall'editor, ma restituisce ``false`` quando viene chiamato da un progetto esportato.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

Restituisce ``true`` se il motore è in esecuzione incorporato nell'editor. Ciò è utile per evitare di tentare di aggiornare la modalità o i flag di una finestra che non sono supportati quando si esegue il progetto incorporato nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

Restituisce ``true`` se il motore si trova all'interno del passaggio di processo fisso di fisica del ciclo principale.

::

    func _enter_tree():
        # A seconda di quando il nodo viene aggiunto all'albero,
        # stampa "true" o "false".
        print(Engine.is_in_physics_frame())

    func _process(delta):
        print(Engine.is_in_physics_frame()) # Stampa false

    func _physics_process(delta):
        print(Engine.is_in_physics_frame()) # Stampa true

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **register_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_register_script_language>`

Registra un'istanza di :ref:`ScriptLanguage<class_ScriptLanguage>` da rendere disponibile con ``ScriptServer``.

Restituisce:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo;

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` se ``ScriptServer`` ha raggiunto il limite e non può registrare alcuna nuova lingua;

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` se ``ScriptServer`` contiene già una lingua con simile estensione, nome, o tipo.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

Registra l':ref:`Object<class_Object>` ``instance`` specificato come singleton, disponibile globalmente con il nome ``name``. Utile per le estensioni.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

Annulla la registrazione dell'istanza :ref:`ScriptLanguage<class_ScriptLanguage>` da ``ScriptServer``.

Restituisce:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo;

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>` se la lingua non è registrata in ``ScriptServer``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

Rimuove il singleton registrato con il nome ``name``. L'oggetto singleton *non* è liberato. Funziona solo con singleton definiti dall'utente registrati con :ref:`register_singleton()<class_Engine_method_register_singleton>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
