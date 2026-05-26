:github_url: hide

.. _class_WebRTCPeerConnection:

WebRTCPeerConnection
====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>`

Interfaz a una conexión de pares WebRTC.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain, and monitor the connection.

Setting up a WebRTC connection between two peers may not seem a trivial task, but it can be broken down into 3 main steps:

- The peer that wants to initiate the connection (``A`` from now on) creates an offer and sends it to the other peer (``B`` from now on).

- ``B`` receives the offer, generates an answer, and sends it to ``A``.

- ``A`` and ``B`` then generate and exchange ICE candidates with each other.

After these steps, the connection should be established. Refer to the linked tutorials for details.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Documentación de WebRTC <../tutorials/networking/webrtc>`

- :doc:`Multijugador de alto nivel <../tutorials/networking/high_level_multiplayer>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`add_ice_candidate<class_WebRTCPeerConnection_method_add_ice_candidate>`\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`close<class_WebRTCPeerConnection_method_close>`\ (\ )                                                                                                                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`                 | :ref:`create_data_channel<class_WebRTCPeerConnection_method_create_data_channel>`\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ )            |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`create_offer<class_WebRTCPeerConnection_method_create_offer>`\ (\ )                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` | :ref:`get_connection_state<class_WebRTCPeerConnection_method_get_connection_state>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>`   | :ref:`get_gathering_state<class_WebRTCPeerConnection_method_get_gathering_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>`   | :ref:`get_signaling_state<class_WebRTCPeerConnection_method_get_signaling_state>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`initialize<class_WebRTCPeerConnection_method_initialize>`\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ )                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`poll<class_WebRTCPeerConnection_method_poll>`\ (\ )                                                                                                                                   |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_default_extension<class_WebRTCPeerConnection_method_set_default_extension>`\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static|                                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_local_description<class_WebRTCPeerConnection_method_set_local_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                          |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                             | :ref:`set_remote_description<class_WebRTCPeerConnection_method_set_remote_description>`\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ )                        |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_WebRTCPeerConnection_signal_data_channel_received:

.. rst-class:: classref-signal

**data_channel_received**\ (\ channel\: :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_data_channel_received>`

Emitida cuando se recibe un nuevo canal en banda, es decir, cuando el canal fue creado con ``negotiated: false`` (por defecto).

El objeto será una instancia de :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`. Debe mantener una referencia de él o se cerrará automáticamente. Véase :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_ice_candidate_created:

.. rst-class:: classref-signal

**ice_candidate_created**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_ice_candidate_created>`

Emitida cuando se ha creado un nuevo candidato ICE. Los tres parámetros deben pasarse al par remoto a través del servidor de señalización.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_signal_session_description_created:

.. rst-class:: classref-signal

**session_description_created**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_signal_session_description_created>`

Emitida después de una llamada exitosa a :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>` o :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>` (cuando genera una respuesta). Los parámetros deben ser pasados a :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>` en este objeto, y enviados al par remoto a través del servidor de señales.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_WebRTCPeerConnection_ConnectionState:

.. rst-class:: classref-enumeration

enum **ConnectionState**: :ref:`🔗<enum_WebRTCPeerConnection_ConnectionState>`

.. _class_WebRTCPeerConnection_constant_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_NEW** = ``0``

La conexión es nueva, se pueden crear canales de datos y una oferta en este estado.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTING** = ``1``

El par está conectando, el ICE está en marcha, ninguno de los transportes ha fallado.

.. _class_WebRTCPeerConnection_constant_STATE_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CONNECTED** = ``2``

El par está conectado, todos los transportes de ICE están conectados.

.. _class_WebRTCPeerConnection_constant_STATE_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_DISCONNECTED** = ``3``

Al menos un transporte ICE está desconectado.

.. _class_WebRTCPeerConnection_constant_STATE_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_FAILED** = ``4``

Uno o más de los transportes ICE fallaron.

.. _class_WebRTCPeerConnection_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **STATE_CLOSED** = ``5``

La conexión entre pares se cierra (después de llamar a :ref:`close()<class_WebRTCPeerConnection_method_close>` por ejemplo).

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_GatheringState:

.. rst-class:: classref-enumeration

enum **GatheringState**: :ref:`🔗<enum_WebRTCPeerConnection_GatheringState>`

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_NEW** = ``0``

La conexión par se acaba de crear y aún no ha realizado ninguna conexión de red.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_GATHERING:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_GATHERING** = ``1``

El agente ICE está en proceso de recopilación de candidatos para la conexión.

.. _class_WebRTCPeerConnection_constant_GATHERING_STATE_COMPLETE:

.. rst-class:: classref-enumeration-constant

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **GATHERING_STATE_COMPLETE** = ``2``

El agente ICE ha terminado de recopilar candidatos. Si sucede algo que requiere la recopilación de nuevos candidatos, como la adición de una nueva interfaz o la adición de un nuevo servidor ICE, el estado volverá a la recopilación para reunir esos candidatos.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCPeerConnection_SignalingState:

.. rst-class:: classref-enumeration

enum **SignalingState**: :ref:`🔗<enum_WebRTCPeerConnection_SignalingState>`

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_STABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_STABLE** = ``0``

No hay ningún intercambio de oferta y respuesta en curso. Esto puede significar que el **WebRTCPeerConnection** es nuevo (:ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`) o que la negociación se ha completado y se ha establecido una conexión (:ref:`STATE_CONNECTED<class_WebRTCPeerConnection_constant_STATE_CONNECTED>`).

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_OFFER** = ``1``

El par local ha llamado a :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`, pasando el SDP que representa una oferta (generalmente creada llamando a :ref:`create_offer()<class_WebRTCPeerConnection_method_create_offer>`), y la oferta se ha aplicado correctamente.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_OFFER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_OFFER** = ``2``

El par remoto ha creado una oferta y ha utilizado el servidor de señalización para entregarla al par local, que ha establecido la oferta como la descripción remota llamando a :ref:`set_remote_description()<class_WebRTCPeerConnection_method_set_remote_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_LOCAL_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_LOCAL_PRANSWER** = ``3``

La oferta enviada por el par remoto se ha aplicado y se ha creado y aplicado una respuesta llamando a :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`. Esta respuesta provisional describe los formatos de medios admitidos, etc., pero es posible que no tenga un conjunto completo de candidatos ICE incluidos. Otros candidatos se entregarán por separado más adelante.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_HAVE_REMOTE_PRANSWER:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_HAVE_REMOTE_PRANSWER** = ``4``

Se ha recibido una respuesta provisional y se ha aplicado correctamente en respuesta a una oferta enviada y establecida previamente llamando a :ref:`set_local_description()<class_WebRTCPeerConnection_method_set_local_description>`.

.. _class_WebRTCPeerConnection_constant_SIGNALING_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **SIGNALING_STATE_CLOSED** = ``5``

El **WebRTCPeerConnection** ha sido cerrado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WebRTCPeerConnection_method_add_ice_candidate:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_ice_candidate**\ (\ media\: :ref:`String<class_String>`, index\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_add_ice_candidate>`

Añade un candidato de hielo generado por un par remoto (y recibido a través del servidor de señales). Véase :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_close>`

Cierra la conexión del par y todos los canales de datos asociados a ella.

\ **Nota:** No puedes reutilizar este objeto para una nueva conexión a menos que llames a :ref:`initialize()<class_WebRTCPeerConnection_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_data_channel:

.. rst-class:: classref-method

:ref:`WebRTCDataChannel<class_WebRTCDataChannel>` **create_data_channel**\ (\ label\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_data_channel>`

Devuelve un nuevo :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` (o ``null`` si falla) con la ``label`` dada y, opcionalmente, configurado mediante el diccionario ``options``. Este método solo se puede llamar cuando la conexión está en el estado :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Hay dos formas de crear un canal de datos en funcionamiento: llamar a :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` solo en uno de los pares y escuchar :ref:`data_channel_received<class_WebRTCPeerConnection_signal_data_channel_received>` en el otro, o llamar a :ref:`create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>` en ambos pares, con los mismos valores, y la opción ``"negotiated"`` establecida en ``true``.

Las ``options`` válidas son:

::

    {
        "negotiated": true, # Cuando se establece en true (desactivado de forma predeterminada), significa que el canal se negocia fuera de banda. También se debe establecer "id". No se llamará a "data_channel_received".
        "id": 1, # Cuando "negotiated" es true, este valor también se debe establecer en el mismo valor en ambos pares.

        # Solo se puede especificar uno de maxRetransmits y maxPacketLifeTime, no ambos. Hacen que el canal no sea fiable (pero también mejor en tiempo real).
        "maxRetransmits": 1, # Especifica el número máximo de intentos que hará el par para retransmitir paquetes si no se reconocen.
        "maxPacketLifeTime": 100, # Especifica la cantidad máxima de tiempo antes de renunciar a la retransmisión de paquetes no reconocidos (en milisegundos).
        "ordered": true, # Cuando está en modo no fiable (es decir, se establece "maxRetransmits" o "maxPacketLifetime"), "ordered" (true de forma predeterminada) especifica si se va a aplicar el orden de paquetes.

        "protocol": "mi-protocolo-personalizado", # Una string de sub-protocolo personalizada para este canal.
    }

\ **Nota:** Debe mantener una referencia a los canales creados de esta manera, o se cerrarán.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_create_offer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_offer**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_create_offer>`

Crea una nueva oferta SDP para iniciar una conexión WebRTC con un par remoto. Al menos una :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` debe haber sido creada antes de llamar a este método.

Si esta función devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, se llamará a :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` cuando la sesión esté lista para ser enviada.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_connection_state:

.. rst-class:: classref-method

:ref:`ConnectionState<enum_WebRTCPeerConnection_ConnectionState>` **get_connection_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_connection_state>`

Devuelve el estado de la conexión.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_gathering_state:

.. rst-class:: classref-method

:ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` **get_gathering_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_gathering_state>`

Devuelve el :ref:`GatheringState<enum_WebRTCPeerConnection_GatheringState>` ICE de la conexión. Esto te permite detectar, por ejemplo, cuando la recopilación de candidatos ICE ha terminado.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_get_signaling_state:

.. rst-class:: classref-method

:ref:`SignalingState<enum_WebRTCPeerConnection_SignalingState>` **get_signaling_state**\ (\ ) |const| :ref:`🔗<class_WebRTCPeerConnection_method_get_signaling_state>`

Devuelve el estado de señalización en el extremo local de la conexión mientras se conecta o se vuelve a conectar a otro par.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_initialize:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **initialize**\ (\ configuration\: :ref:`Dictionary<class_Dictionary>` = {}\ ) :ref:`🔗<class_WebRTCPeerConnection_method_initialize>`

Reinicializa esta conexión de pares, cerrando cualquier conexión activa anteriormente y volviendo al estado :ref:`STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`. Se puede pasar un diccionario de opciones de ``configuration`` para configurar la conexión de pares.

Las opciones válidas de ``configuration`` son:

::

    {
        "iceServers": [
            {
                "urls": [ "stun:stun.example.com:3478" ], # Uno o más servidores STUN.
            },
            {
                "urls": [ "turn:turn.example.com:3478" ], # Uno o más servidores TURN.
                "username": "a_username", # Nombre de usuario opcional para el servidor TURN.
                "credential": "a_password", # Contraseña opcional para el servidor TURN.
            }
        ]
    }

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCPeerConnection_method_poll>`

Llama a este método con frecuencia (por ejemplo, en :ref:`Node._process()<class_Node_private_method__process>` o :ref:`Node._physics_process()<class_Node_private_method__physics_process>`) para recibir correctamente las señales.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_default_extension:

.. rst-class:: classref-method

|void| **set_default_extension**\ (\ extension_class\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_WebRTCPeerConnection_method_set_default_extension>`

Establece la ``extension_class`` como la :ref:`WebRTCPeerConnectionExtension<class_WebRTCPeerConnectionExtension>` por defecto que se devuelve al crear un nuevo **WebRTCPeerConnection**.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_local_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_local_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_local_description>`

Establece la descripción del SDP del par local. Esto debe ser llamado en respuesta a :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>`.

Después de llamar a esta función el par empezará a emitir :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>` (a menos que se devuelva un :ref:`Error<enum_@GlobalScope_Error>` diferente de :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCPeerConnection_method_set_remote_description:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_remote_description**\ (\ type\: :ref:`String<class_String>`, sdp\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebRTCPeerConnection_method_set_remote_description>`

Establece la descripción SDP del par remoto. Esto debe llamarse con los valores generados por un par remoto y recibidos a través del servidor de señalización.

Si ``type`` es ``"offer"``, el par emitirá :ref:`session_description_created<class_WebRTCPeerConnection_signal_session_description_created>` con la respuesta adecuada.

Si ``type`` es ``"answer"``, el par comenzará a emitir :ref:`ice_candidate_created<class_WebRTCPeerConnection_signal_ice_candidate_created>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
