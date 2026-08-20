:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**Eredita:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interfaccia XR che utilizza WebXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

WebXR è uno standard aperto che consente di creare applicazioni VR e AR che vengono eseguite nel browser Web.

Di conseguenza, questa interfaccia è disponibile solo quando è in esecuzione nelle esportazioni Web.

WebXR supporta un'ampia gamma di dispositivi, da quelli molto avanzati (come Valve Index, HTC Vive, Oculus Rift e Quest) a quelli molto meno avanzati (come Google Cardboard, Oculus Go, GearVR o semplici smartphone).

Poiché WebXR è basato su JavaScript, fa ampio uso di callback, il che significa che **WebXRInterface** è costretta a utilizzare segnali, mentre altre interfacce XR utilizzerebbero invece funzioni che restituiscono immediatamente un risultato. Ciò rende **WebXRInterface** un po' più complicata da inizializzare rispetto ad altre interfacce XR.

Ecco il codice minimo necessario per avviare una sessione di VR immersiva:

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # Supponiamo che questo nodo abbia un pulsante come figlio.
        # Questo pulsante serve all'utente per entrare in modalità VR immersiva.
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR utilizza molti callback asincroni, quindi ci colleghiamo a vari
            # segnali per riceverli.
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # Questo restituisce immediatamente: il nostro metodo _webxr_session_supported()
            # (che abbiamo connesso al segnale "session_supported" precedente)
            # verrà chiamato in seguito per farci sapere se è supportato o meno.
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Il tuo browser non supporta il VR")
            return

        # Vogliamo una sessione VR immersiva, invece di AR ('immersive-ar') o un
        # semplice visore 3DoF ('viewer').
    webxr_interface.session_mode = 'immersive-vr'
        # 'bounded-floor' è la scala della stanza, 'local-floor' è un'esperienza in piedi o seduti
        # (ti posiziona a 1,6 m dal suolo se hai un visore 3DoF),
        # mentre 'local' ti posiziona giù all'XROrigin.
        # Questa lista significa che proverà prima a richiedere 'bounded-floor', quindi
        # ricadrà su 'local-floor' e infine 'local', se non è supportato
        # altro.
    webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # Per usare 'local-floor' o 'bounded-floor' dobbiamo anche
        # contrassegnare le funzionalità come obbligatorie o facoltative. Includendo 'hand-tracking'
        # come funzionalità facoltativa, verrà abilitato se supportato.
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # Questo restituirà false se non siamo in grado di richiedere la sessione,
        # tuttavia, può comunque fallire in modo asincrono più avanti nel processo, quindi
        # sappiamo solo se è riuscito o meno quando vengono chiamati i nostri
        # metodi _webxr_session_started() o _webxr_session_failed().
        if not webxr_interface.initialize():
            OS.alert("Impossibile inizializzare")
            return

    func _webxr_session_started():
        $Button.visible = false
        # Questo dice a Godot di iniziare a renderizzare sul visore.
        get_viewport().use_xr = true
        #Questo sarà il tipo di spazio di riferimento che hai ottenuto alla fine, tra i
        # tipi che hai richiesto in precedenza. Questo è utile se vuoi che il gioco
        # funzioni in modo leggermente diverso in 'bounded-floor' rispetto a 'local-floor'.
        print("Tipo dello spazio di riferimento: ", webxr_interface.reference_space_type)
        # Questo sarà la lista delle funzionalità che sono state abilitate con successo
        # (tranne nei browser che non supportano questa proprietà).
        print("Funzionalità abilitate: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # Se l'utente esce dalla modalità immersiva, allora diciamo a Godot
        # di renderizzare nuovamente la pagina web.
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Impossibile inizializzare: " + message)

Ci sono un paio di modi per gestire l'input dai "controller":

- Attraverso i nodi :ref:`XRController3D<class_XRController3D>` e i loro segnali :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` e :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>`. Questo è il modo in cui i controller sono solitamente gestiti nelle applicazioni XR in Godot, tuttavia, questo funzionerà solo con controller VR avanzati, come i controller di Oculus Touch o di Index, ad esempio.

- Attraverso :ref:`select<class_WebXRInterface_signal_select>`, :ref:`squeeze<class_WebXRInterface_signal_squeeze>` e i segnali correlati. Questo metodo funzionerà sia per i controller VR avanzati sia per le sorgenti di input non tradizionali come un tocco sullo schermo, un comando vocale parlato o la pressione di un pulsante sul dispositivo stesso.

È possibile usare entrambi i modi per consentire al proprio gioco o alla propria applicazione di supportare un più meno dispositivi e metodi di input, o per permettere interazioni più avanzate con i dispositivi più avanzati.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Come creare un gioco VR per WebXR con Godot 4 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`enabled_features<class_WebXRInterface_property_enabled_features>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`optional_features<class_WebXRInterface_property_optional_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`required_features<class_WebXRInterface_property_required_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`session_mode<class_WebXRInterface_property_session_mode>`                                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`visibility_state<class_WebXRInterface_property_visibility_state>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                               | :ref:`get_available_display_refresh_rates<class_WebXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                    |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_display_refresh_rate<class_WebXRInterface_method_get_display_refresh_rate>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` | :ref:`get_input_source_target_ray_mode<class_WebXRInterface_method_get_input_source_target_ray_mode>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRControllerTracker<class_XRControllerTracker>`   | :ref:`get_input_source_tracker<class_WebXRInterface_method_get_input_source_tracker>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                 |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_input_source_active<class_WebXRInterface_method_is_input_source_active>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                     |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`is_session_supported<class_WebXRInterface_method_is_session_supported>`\ (\ session_mode\: :ref:`String<class_String>`\ )                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_display_refresh_rate<class_WebXRInterface_method_set_display_refresh_rate>`\ (\ refresh_rate\: :ref:`float<class_float>`\ )                        |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

Emesso dopo che la frequenza di aggiornamento del display è cambiata.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

Emesso per indicare che lo spazio di riferimento è stato reimpostato o riconfigurato.

Quando (o se) questo viene emesso dipende dal browser o dal dispositivo dell'utente, ma può includere quando l'utente ha modificato le dimensioni del proprio spazio di gioco (a cui potresti accedere tramite :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>`) o ha premuto/trattenuto un pulsante per ricentrare la sua posizione.

Consulta `Evento di reimpostazione XRReferenceSpace di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__ per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

Emesso dopo che una delle sorgenti di input ha terminato la sua "azione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

Emesso quando una delle sorgenti di input ha terminato la sua "azione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

Emesso dopo che una delle sorgenti di input ha cominciato la sua "azione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

Emesso quando l'utente termina la sessione WebXR (operazione che può essere eseguita tramite l'interfaccia utente del browser o del dispositivo).

A questo punto, dovresti eseguire ``get_viewport().use_xr = false`` per indicare a Godot di riprendere il rendering sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

Emesso da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` se la sessione non riesce ad avviarsi.

\ ``message`` può facoltativamente contenere un messaggio di errore da WebXR o una stringa vuota se nessun messaggio è disponibile.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

Emesso da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` se la sessione è stata avviata correttamente.

A questo punto, è sicuro eseguire ``get_viewport().use_xr = true`` per istruire Godot ad avviare il rendering sul dispositivo XR.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

Emesso da :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>` per indicare se la modalità di sessione ``session_mode`` specificato è supportato o meno.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

Emesso dopo che una delle sorgenti di input ha terminato la sua "azione di compressione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

Emesso quando una delle sorgenti di input ha terminato la sua "azione di compressione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

Emesso quando una delle sorgenti di input ha cominciato la sua "azione di compressione primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` e :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` per ottenere ulteriori informazioni sulla sorgente di input.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

Emesso quando :ref:`visibility_state<class_WebXRInterface_property_visibility_state>` è cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

Non conosciamo la modalità del raggio di destinazione.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

Il raggio di destinazione ha origine dagli occhi dell'osservatore e punta nella direzione in cui sta guardando.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

Il raggio di destinazione ha origine da un puntatore portatile, molto probabilmente un controller touch VR.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

Il raggio di destinazione ha origine dal touch screen, il mouse o un altro dispositivo di input tattile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

Un elenco separato da virgole di funzionalità che sono state abilitate correttamente da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` durante la configurazione della sessione WebXR.

Questo può includere funzionalità richieste impostando :ref:`required_features<class_WebXRInterface_property_required_features>` e :ref:`optional_features<class_WebXRInterface_property_optional_features>` e sarà disponibile solo dopo l'emissione di :ref:`session_started<class_WebXRInterface_signal_session_started>`.

\ **Nota:** Questo potrebbe non essere supportato da tutti i browser Web, nel qual caso sarà una stringa vuota.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

Un elenco separato da virgole di funzionalità opzionali utilizzate da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` durante la configurazione della sessione WebXR.

Se il browser o il dispositivo di un utente non supporta una delle funzionalità fornite, l'inizializzazione continuerà, ma non sarà possibile utilizzare la funzionalità richiesta.

Ciò non ha alcun effetto sull'interfaccia quando è già inizializzata.

Consultare la documentazione MDN sulle `funzionalità di sessione WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ per una lista di possibili valori.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_reference_space_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **reference_space_type** :ref:`🔗<class_WebXRInterface_property_reference_space_type>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_reference_space_type**\ (\ )

Il tipo di spazio di riferimento (dall'elenco dei tipi richiesti impostato nella proprietà :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>`), che è stato infine utilizzato da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` durante la configurazione della sessione WebXR.

I valori possibili provengono da `XRReferenceSpaceType di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Se si desidera utilizzare un particolare tipo di spazio di riferimento, deve essere elencato in :ref:`required_features<class_WebXRInterface_property_required_features>` o :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

Un elenco separato da virgole di tipi di spazio di riferimento utilizzati da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` durante la configurazione della sessione WebXR.

I tipi di spazio di riferimento sono richiesti in ordine, e sarà utilizzato il primo supportato dal dispositivo o dal browser dell'utente. La proprietà :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` contiene il tipo di spazio di riferimento che è stato infine selezionato.

Ciò non ha alcun effetto sull'interfaccia quando è già inizializzata.

I valori possibili provengono da `XRReferenceSpaceType di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Se si desidera utilizzare un particolare tipo di spazio di riferimento, deve essere elencato in :ref:`required_features<class_WebXRInterface_property_required_features>` o :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

Un elenco separato da virgole delle funzionalità richieste utilizzate da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` durante la configurazione della sessione WebXR.

Se il browser o il dispositivo di un utente non supporta una delle funzionalità fornite, l'inizializzazione fallirà e verrà emesso :ref:`session_failed<class_WebXRInterface_signal_session_failed>`.

Ciò non ha alcun effetto sull'interfaccia quando è già inizializzata.

Consultare la documentazione MDN sulle `funzionalità di sessione WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ per una lista di possibili valori.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_session_mode:

.. rst-class:: classref-property

:ref:`String<class_String>` **session_mode** :ref:`🔗<class_WebXRInterface_property_session_mode>`

.. rst-class:: classref-property-setget

- |void| **set_session_mode**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_session_mode**\ (\ )

La modalità di sessione utilizzata da :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` quando si imposta la sessione WebXR.

Non ha alcun effetto sull'interfaccia quando è già inizializzata.

I valori possibili provengono da `XRSessionMode di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, tra cui: ``"immersive-vr"``, ``"immersive-ar"`` e ``"inline"``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

Indica se le immagini della sessione WebXR sono visibili all'utente.

I valori possibili provengono da `XRVisibilityState di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__, inclusi ``"hidden"``, ``"visible"`` e ``"visible-blurred"``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

Restituisce le frequenze di aggiornamento del display supportate dall'HMD corrente. Restituito solo se questa funzionalità è supportata dal browser Web e dopo che l'interfaccia è stata inizializzata.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

Restituisce la frequenza di aggiornamento del display per l'HMD attuale. Non supportato su tutti gli HMD e browser. Potrebbe non riportare un valore accurato fino a dopo aver usato :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

Restituisce la modalità raggio di destinazione per la sorgente di input ``input_source_id``.

Questo può aiutare a interpretare l'input proveniente da quella sorgente di input. Consulta `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__ per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

Ottiene un :ref:`XRControllerTracker<class_XRControllerTracker>` per il la sorgente di input ``input_source_id``.

Nel contesto di WebXR, una sorgente di input può essere un controller VR avanzato come i controller Oculus Touch o Index, o anche un tocco sullo schermo, un comando vocale pronunciato o la pressione di un pulsante sul dispositivo stesso. Quando viene utilizzata una sorgente di input non tradizionale, interpreta la posizione e l'orientamento di :ref:`XRPositionalTracker<class_XRPositionalTracker>` come un raggio che punta all'oggetto con cui l'utente desidera interagire.

Usa questo metodo per ottenere informazioni sulla sorgente di input che ha attivato uno di questi segnali:

- :ref:`selectstart<class_WebXRInterface_signal_selectstart>`\ 

- :ref:`select<class_WebXRInterface_signal_select>`\ 

- :ref:`selectend<class_WebXRInterface_signal_selectend>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`\ 

- :ref:`squeeze<class_WebXRInterface_signal_squeeze>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_input_source_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_source_active**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_is_input_source_active>`

Restituisce ``true`` se è presente una sorgente di input attiva con l'``input_source_id`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

Verifica se la modalità di sessione ``session_mode`` è supportata dal browser dell'utente.

I valori possibili provengono da `XRSessionMode di WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, tra cui: ``"immersive-vr"``, ``"immersive-ar"`` e ``"inline"``.

Questo metodo non restituisce nulla, invece emette il segnale :ref:`session_supported<class_WebXRInterface_signal_session_supported>` con il risultato.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

Imposta la frequenza di aggiornamento del display per l'HMD corrente. Non supportato su tutti gli HMD e browser. Non avrà effetto immediato finché non verrà emesso :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
