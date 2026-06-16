:github_url: hide

.. _class_MainLoop:

MainLoop
========

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`SceneTree<class_SceneTree>`

Classe di base astratta per il ciclo principale del gioco.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**MainLoop** è la classe base astratta per il ciclo di gioco di un progetto Godot. È ereditata da :ref:`SceneTree<class_SceneTree>`, che è l'implementazione predefinita del ciclo di gioco utilizzata nei progetti Godot, sebbene sia anche possibile scrivere e utilizzare la propria sottoclasse **MainLoop** al posto dell'albero di scene.

All'avvio dell'applicazione, un'implementazione **MainLoop** deve essere fornita al sistema operativo; altrimenti, l'applicazione verrà chiusa. Ciò avviene automaticamente (e viene creato uno :ref:`SceneTree<class_SceneTree>`) a meno che non sia fornito uno :ref:`Script<class_Script>` **MainLoop** dalla riga di comando (ad esempio con ``godot -s my_loop.gd``) o che l'impostazione del progetto :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` non sia sovrascritta.

Ecco uno script di esempio che implementa un semplice **MainLoop**:


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("Inizializzato:")
        print("  Tempo all'inizio: %s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # Restituisci true per terminare il ciclo principale.
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("Finalizzato:")
        print("  Tempo alla fine: %s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("Inizializzato:");
            GD.Print($"  Tempo all'inizio: {_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // Restituisci true per terminare il ciclo principale.
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("Finalizzato:");
            GD.Print($"  Tempo alla fine: {_timeElapsed}");
        }
    }



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_finalize<class_MainLoop_private_method__finalize>`\ (\ ) |virtual|                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_initialize<class_MainLoop_private_method__initialize>`\ (\ ) |virtual|                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_physics_process<class_MainLoop_private_method__physics_process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process<class_MainLoop_private_method__process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                 |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

Emesso quando un utente risponde a una richiesta di autorizzazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notifica ricevuta dal sistema operativo quando l'applicazione supera la sua memoria allocata.

Specifico per la piattaforma iOS.

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Notifica ricevuta quando le traduzioni potrebbero essere cambiate. Può essere attivata dall'utente che cambia le impostazioni locali. Può essere utilizzata per rispondere alle modifiche della lingua, ad esempio per modificare le stringhe dell'interfaccia utente al volo. Utile quando si lavora con il supporto integrato di traduzione, come :ref:`Object.tr()<class_Object_method_tr>`.

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

Notifica ricevuta dal sistema operativo quando viene inviata una richiesta di informazioni "Informazioni".

Specifico per la piattaforma macOS.

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

Notifica ricevuta dal gestore degli arresti anomali di Godot quando il motore sta per bloccarsi.

Implementato su piattaforme desktop se il gestore degli arresti anomali è abilitato.

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notifica ricevuta dal sistema operativo quando l'applicazione viene ripresa.

Specifico per le piattaforme Android e iOS.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notifica ricevuta dal sistema operativo quando l'applicazione è in pausa.

Specifico per le piattaforme Android e iOS.

\ **Nota:** Su iOS, hai solo circa 5 secondi per terminare un'attività avviata da questo segnale. Se superi questa soglia, iOS chiuderà l'app invece di metterla in pausa.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notifica ricevuta dal sistema operativo quando l'applicazione è focalizzata, ovvero quando si cambia il focus dal desktop del sistema operativo o da un'applicazione di terze parti a una finestra aperta dell'istanza di Godot.

Implementato su piattaforme desktop e mobili.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notifica ricevuta dal sistema operativo quando l'applicazione è perde il focus, ovvero quando si cambia il focus dal desktop del sistema operativo o da un'applicazione di terze parti a una finestra aperta dell'istanza di Godot.

Implementato su piattaforme desktop e mobili.

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notifica ricevuta quando il server di testo viene modificato.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

Notification received when the application enters picture-in-picture mode.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

Notification received when the application exits picture-in-picture mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

Chiamato prima della chiusura del programma.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

Chiamato una volta durante l'inizializzazione.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

Chiamato ogni tick di fisica. ``delta`` è il tempo logico tra i tick di fisica in secondi ed è uguale a :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Equivalente a :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

Se implementato, il metodo deve restituire un valore booleano. ``true`` termina il ciclo principale, mentre ``false`` gli consente di procedere al passaggio successivo.

\ **Nota:** :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` può essere chiamato fino a :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` volte per frame (inattivo). È possibile raggiungere tale limite quando il motore soffre di problemi di prestazioni.

\ **Nota:** Il ``delta`` accumulato potrebbe deviare dai secondi reali.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

Chiamato su ogni frame di inattività, prima del rendering e dopo l'elaborazione dei tick di fisica. ``delta`` è il tempo tra i frame in secondi. Equivalente a :ref:`Node._process()<class_Node_private_method__process>`.

Se implementato, il metodo deve restituire un valore booleano. ``true`` termina il ciclo principale, mentre ``false`` gli consente di procedere al frame successivo.

\ **Nota:** Quando il motore è in difficoltà e il frame rate è ridotto, ``delta`` aumenta. Quando ``delta`` è aumentato, è limitato a un massimo di :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Pertanto, il ``delta`` accumulato potrebbe non rappresentare il tempo reale.

\ **Nota:** Quando ``--fixed-fps`` è abilitato o il motore è in esecuzione in modalità Movie Maker (vedi :ref:`MovieWriter<class_MovieWriter>`), il ``delta`` del processo sarà sempre lo stesso per ogni frame, a prescindere dal tempo impiegato per renderizzare il frame.

\ **Nota:** È possibile che il delta dei frame sia post-elaborato da :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` se questa opzione è abilitata per il progetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
