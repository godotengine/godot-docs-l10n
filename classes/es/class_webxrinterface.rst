:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**Hereda:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interfaz XR usando WebXR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

WebXR es un estándar abierto que permite crear aplicaciones de RV y RA que se ejecutan en el navegador web.

Como tal, esta interfaz solo está disponible cuando se ejecuta en exportaciones web.

WebXR es compatible con una amplia gama de dispositivos, desde los muy capaces (como Valve Index, HTC Vive, Oculus Rift y Quest) hasta los mucho menos capaces (como Google Cardboard, Oculus Go, GearVR o teléfonos inteligentes comunes).

Dado que WebXR se basa en JavaScript, hace un uso extensivo de los retrollamados, lo que significa que **WebXRInterface** se ve obligado a usar señales, donde otras interfaces XR usarían funciones que devuelven un resultado de inmediato. Esto hace que **WebXRInterface** sea un poco más complicado de inicializar que otras interfaces XR.

Aquí está el código mínimo requerido para iniciar una sesión de RV inmersiva:

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # Asumimos que este nodo tiene un botón como hijo.
        # Este botón es para que el usuario consienta a entrar en modo VR inmersivo.
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR usa muchas retrollamadas asíncronas, así que nos conectamos a varias
            # señales para recibirlas.
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # Esto regresa inmediatamente - nuestro método _webxr_session_supported()
            # (que conectamos a la señal "session_supported" arriba) será
            # llamado en algún momento posterior para hacernos saber si es soportado o no.
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Tu navegador no soporta VR")
            return

        # Queremos una sesión de VR inmersiva, a diferencia de AR ('immersive-ar') o un
        # visor simple de 3DoF ('viewer').
        webxr_interface.session_mode = 'immersive-vr'
        # 'bounded-floor' es escala de habitación, 'local-floor' es una experiencia de pie o sentado
        # (te pone 1.6m sobre el suelo si tienes un casco de 3DoF),
        # mientras que 'local' te pone en el XROrigin.
        # Esta lista significa que primero intentará solicitar 'bounded-floor', luego
        # recurrirá a 'local-floor' y finalmente a 'local', si nada más es
        # soportado.
        webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # Para usar 'local-floor' o 'bounded-floor' también debemos
        # marcar las características como requeridas u opcionales. Al incluir 'hand-tracking'
        # como una característica opcional, se habilitará si es compatible.
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # Esto devolverá falso si no podemos siquiera solicitar la sesión,
        # sin embargo, aún puede fallar asíncronamente más tarde en el proceso, así que
        # solo sabemos si realmente ha tenido éxito o ha fallado cuando nuestros
        # métodos _webxr_session_started() o _webxr_session_failed() son llamados.
        if not webxr_interface.initialize():
            OS.alert("Fallo al inicializar")
            return

    func _webxr_session_started():
        $Button.visible = false
        # Esto le dice a Godot que empiece a renderizar al casco.
        get_viewport().use_xr = true
        # Este será el tipo de espacio de referencia que obtuviste finalmente, de los
        # tipos que solicitaste arriba. Esto es útil si quieres que el juego
        # funcione un poco diferente en 'bounded-floor' versus 'local-floor'.
        print("Tipo de espacio de referencia: ", webxr_interface.reference_space_type)
        # Esta será la lista de características que se habilitaron con éxito
        # (excepto en los navegadores que no soportan esta propiedad).
        print("Características habilitadas: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # Si el usuario sale del modo inmersivo, entonces le decimos a Godot que renderice a la
        # página web de nuevo.
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Fallo al inicializar: " + message)

Hay un par de formas de manejar la entrada del "controlador":

- Usando los nodos :ref:`XRController3D<class_XRController3D>` y sus señales :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` y :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>`. Así es como se suelen manejar los controladores en las aplicaciones XR en Godot, sin embargo, esto solo funcionará con controladores de RV avanzados como los controladores Oculus Touch o Index, por ejemplo.

- Usando las señales :ref:`select<class_WebXRInterface_signal_select>`, :ref:`squeeze<class_WebXRInterface_signal_squeeze>` y señales relacionadas. Este método funcionará tanto para los controladores de RV avanzados como para las fuentes de entrada no tradicionales, como un toque en la pantalla, un comando de voz o una pulsación de botón en el propio dispositivo.

Puedes usar ambos métodos para permitir que tu juego o aplicación sea compatible con un conjunto de dispositivos y métodos de entrada más amplio o más estrecho, o para permitir interacciones más avanzadas con dispositivos más avanzados.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Cómo hacer un juego de RV para WebXR con Godot 4 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

Emitida después de que la frecuencia de actualización de la pantalla ha cambiado.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

Emitida para indicar que el espacio de referencia se ha restablecido o reconfigurado.

Cuándo (o si) se emite esto depende del navegador o dispositivo del usuario, pero puede incluir cuando el usuario ha cambiado las dimensiones de su espacio de juego (al que puede acceder a través de :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>`) o ha presionado/mantenido presionado un botón para recentrar su posición.

Véase `el evento de restablecimiento XRReferenceSpace de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

Emitida después de que una de las fuentes de entrada ha terminado su "acción primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

Emitida cuando una de las fuentes de entrada ha terminado su "acción primaria".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

Emitida cuando una de las fuentes de entrada ha comenzado su "acción principal".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

Emitida cuando el usuario finaliza la sesión WebXR (lo que se puede hacer usando la interfaz de usuario desde el navegador o el dispositivo).

En este punto, debes hacer ``get_viewport().use_xr = false`` para indicarle a Godot que reanude el renderizado en la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

Emitida por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` si la sesión no se inicia.

\ ``message`` puede contener opcionalmente un mensaje de error de WebXR, o una string vacía si no hay ningún mensaje disponible.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

Emitida por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` si la sesión se inicia correctamente.

En este punto, es seguro hacer ``get_viewport().use_xr = true`` para indicarle a Godot que comience a renderizar en el dispositivo XR.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

Emitida por :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>` para indicar si el ``session_mode`` dado es compatible o no.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

Emitida después de que una de las fuentes de entrada ha terminado su "acción de apretón principal".

Usa :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

Emitida cuando una de las fuentes de entrada ha terminado su "acción de apretón principal".

Utiliza :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

Emitida cuando una de las fuentes de entrada ha comenzado su "acción de apretón principal".

Utiliza :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` y :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` para obtener más información sobre la fuente de entrada.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

Emitida cuando :ref:`visibility_state<class_WebXRInterface_property_visibility_state>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

No conocemos el modo de rayo objetivo.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

El rayo objetivo se origina en los ojos del visor y apunta en la dirección en la que están mirando.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

Rayo objetivo de un puntero de mano, probablemente un mando táctil de RV.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

Rayo objetivo desde la pantalla táctil, ratón u otro dispositivo de entrada táctil.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

Una lista separada por comas de las características que se habilitaron correctamente mediante :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` al configurar la sesión WebXR.

Esto puede incluir características solicitadas al establecer :ref:`required_features<class_WebXRInterface_property_required_features>` y :ref:`optional_features<class_WebXRInterface_property_optional_features>`, y solo estará disponible después de que se haya emitido :ref:`session_started<class_WebXRInterface_signal_session_started>`.

\ **Nota:** Es posible que no todos los navegadores web admitan esto, en cuyo caso será una string vacía.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

A comma-seperated list of optional features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on `WebXR's session features <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ for a list of possible values.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_reference_space_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **reference_space_type** :ref:`🔗<class_WebXRInterface_property_reference_space_type>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_reference_space_type**\ (\ )

El tipo de espacio de referencia (de la lista de tipos solicitados establecidos en la propiedad :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>`), que finalmente fue utilizado por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` al configurar la sesión WebXR.

Los valores posibles provienen de ` XRReferenceSpaceType de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Si deseas utilizar un tipo de espacio de referencia en particular, debe aparecer en :ref:`required_features<class_WebXRInterface_property_required_features>` o :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

Una lista separada por comas de los tipos de espacio de referencia utilizados por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` al configurar la sesión WebXR.

Los tipos de espacio de referencia se solicitan en orden, y se utilizará el primero que sea compatible con el dispositivo o el navegador del usuario. La propiedad :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` contiene el tipo de espacio de referencia que finalmente se seleccionó.

Esto no tiene ningún efecto en la interfaz cuando ya está inicializada.

Los valores posibles provienen de `XRReferenceSpaceType de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Si quieres usar un tipo de espacio de eferencia en particular, debe estar listado en :ref:`required_features<class_WebXRInterface_property_required_features>` o en :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

Una lista separada por comas de las características requeridas utilizadas por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` al configurar la sesión WebXR.

Si el navegador o dispositivo de un usuario no admite una de las características dadas, la inicialización fallará y se emitirá :ref:`session_failed<class_WebXRInterface_signal_session_failed>`.

Esto no tiene ningún efecto en la interfaz cuando ya está inicializada.

Véase la documentación de MDN sobre las `características de sesión de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ para una lista de valores posibles.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_session_mode:

.. rst-class:: classref-property

:ref:`String<class_String>` **session_mode** :ref:`🔗<class_WebXRInterface_property_session_mode>`

.. rst-class:: classref-property-setget

- |void| **set_session_mode**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_session_mode**\ (\ )

El modo de sesión utilizado por :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` al configurar la sesión WebXR.

Esto no tiene ningún efecto en la interfaz cuando ya está inicializada.

Los valores posibles provienen de `XRSessionMode de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, incluyendo: ``"immersive-vr"``, `` "immersive-ar"``, e ``"inline"``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

Indica si las imágenes de la sesión WebXR son visibles para el usuario.

Los valores posibles provienen de `XRVisibilityState de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__, incluyendo ``"hidden"``, ``"visible"``, y ``"visible-blurred"``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

Devuelve las frecuencias de actualización de pantalla admitidas por el HMD actual. Solo se devuelve si esta característica es compatible con el navegador web y después de que la interfaz se haya inicializado.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

Devuelve la frecuencia de actualización de la pantalla para el HMD actual. No es compatible con todos los HMD y navegadores. Es posible que no informe un valor preciso hasta después de usar :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

Devuelve el modo de rayo objetivo para el ``input_source_id`` dado.

Esto puede ayudar a interpretar la entrada proveniente de esa fuente de entrada. Véase `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

Obtiene un :ref:`XRControllerTracker<class_XRControllerTracker>` para el ``input_source_id`` dado.

En el contexto de WebXR, una fuente de entrada puede ser un controlador de RV avanzado como los controladores Oculus Touch o Index, o incluso un toque en la pantalla, un comando de voz hablado o una pulsación de botón en el propio dispositivo. Cuando se utiliza una fuente de entrada no tradicional, interpreta la posición y la orientación del :ref:`XRPositionalTracker<class_XRPositionalTracker>` como un rayo que apunta al objeto con el que el usuario desea interactuar.

Utiliza este método para obtener información sobre la fuente de entrada que activó una de estas señales:

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

Devuelve ``true`` si se encuentra una fuente de entrada activa con el ``input_source_id`` dado.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

Comprueba si el ``session_mode`` dado es compatible con el navegador del usuario.

Los valores posibles provienen de `XRSessionMode de WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, incluyendo: ``"immersive-vr"``, ``"immersive-ar"``, e ``"inline"``.

Este método no devuelve nada, en su lugar emite la señal :ref:`session_supported<class_WebXRInterface_signal_session_supported>` con el resultado.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

Establece la frecuencia de actualización de la pantalla para el HMD actual. No es compatible con todos los HMD y navegadores. No tendrá efecto de inmediato hasta después de que se emita :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
