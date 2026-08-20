:github_url: hide

.. meta::
	:keywords: sound, music, song

.. _class_AudioStreamPlayer:

AudioStreamPlayer
=================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo para la reproducción de audio.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El nodo **AudioStreamPlayer** reproduce un flujo de audio de forma no posicional. Es ideal para interfaces de usuario, menús o música de fondo.

Para usar este nodo, la propiedad :ref:`stream<class_AudioStreamPlayer_property_stream>` debe establecerse en un recurso válido de tipo :ref:`AudioStream<class_AudioStream>`. También se admite reproducir más de un sonido al mismo tiempo; véase :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>`.

Si necesitas reproducir audio en una posición específica, utiliza :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` o :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` en su lugar.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo del Cambiador de Dispositivos de Audio <https://godotengine.org/asset-library/asset/2758>`__

- `Demo de Generador de Audio <https://godotengine.org/asset-library/asset/2759>`__

- `Demo de Grabación de Audio con Micrófono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo de Visualizador de Espectro de Audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer_property_autoplay>`           | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer_property_bus>`                     | ``&"Master"`` |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>` | ``1``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` | :ref:`mix_target<class_AudioStreamPlayer_property_mix_target>`       | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer_property_pitch_scale>`     | ``1.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer_property_playback_type>` | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer_property_playing>`             | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer_property_stream>`               |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`         | ``0.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>` |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AudioStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_signal_finished>`

Emitida cuando un sonido termina de reproducirse sin interrupciones. Esta señal *no* se emite al llamar a :ref:`stop()<class_AudioStreamPlayer_method_stop>`, o al salir del árbol mientras los sonidos se están reproduciendo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioStreamPlayer_MixTarget:

.. rst-class:: classref-enumeration

enum **MixTarget**: :ref:`🔗<enum_AudioStreamPlayer_MixTarget>`

.. _class_AudioStreamPlayer_constant_MIX_TARGET_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_STEREO** = ``0``

El audio se reproducirá solo en el primer canal. Este es el comportamiento predeterminado.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_SURROUND:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_SURROUND** = ``1``

El audio se reproducirá en todos los canales de sonido envolvente.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_CENTER** = ``2``

El audio se reproducirá en el segundo canal, que suele ser el del centro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

If ``true``, this node calls :ref:`play()<class_AudioStreamPlayer_method_play>` when entering the tree.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

El nombre del bus de destino. Todos los sonidos de este nodo se reproducirán en este bus.

\ **Nota:** En tiempo de ejecución, si no existe un bus con el nombre indicado, todos los sonidos se reproducirán en ``"Master"``. Véase también :ref:`AudioServer.get_bus_name()<class_AudioServer_method_get_bus_name>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

El número máximo de sonidos que este nodo puede reproducir simultáneamente. Al llamar a :ref:`play()<class_AudioStreamPlayer_method_play>` después de alcanzar este valor, se eliminarán los sonidos más antiguos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_mix_target:

.. rst-class:: classref-property

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **mix_target** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_mix_target>`

.. rst-class:: classref-property-setget

- |void| **set_mix_target**\ (\ value\: :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>`\ )
- :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **get_mix_target**\ (\ )

Los canales de destino de la mezcla. No tiene efecto cuando se detectan dos altavoces o menos (ver :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

El tono y tempo del audio, como un multiplicador de la frecuencia de muestreo de :ref:`stream<class_AudioStreamPlayer_property_stream>`. Un valor de ``2.0`` duplica el tono del audio, mientras que un valor de ``0.5`` lo reduce a la mitad.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

El tipo de reproducción del reproductor de flujo. Si se establece un valor distinto al predeterminado, se forzará ese tipo de reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

If ``true``, this node is playing sounds. Setting this property has the same effect as :ref:`play()<class_AudioStreamPlayer_method_play>` and :ref:`stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

El recurso :ref:`AudioStream<class_AudioStream>` que se reproducirá. Al configurar esta propiedad, se detendrán todos los sonidos que se estén reproduciendo. Si se deja vacía, **AudioStreamPlayer** no funcionará.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Si es ``true``, los sonidos se pausan. Configurar :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` a ``false`` reanuda todos los sonidos.

\ **Nota:** Esta propiedad se modifica automáticamente al salir o entrar en el árbol, o cuando este nodo se pausa (ver :ref:`Node.process_mode<class_Node_property_process_mode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Volumen del sonido, en decibeles. Esto es un desplazamiento respecto al volumen de :ref:`stream<class_AudioStreamPlayer_property_stream>`.

\ **Nota:** Para convertir entre decibeles y energía lineal (como hacen la mayoría de los deslizadores de volumen), utiliza :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>`, o :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` y :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Volumen del sonido, como un valor lineal.

\ **Nota:** Este miembro modifica :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` por conveniencia. El valor devuelto es equivalente al resultado de :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` sobre :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`. Establecer este miembro es equivalente a establecer :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` al resultado de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` sobre un valor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlayer_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_playback_position>`

Devuelve la posición, en segundos, del último sonido reproducido en el :ref:`AudioStream<class_AudioStream>`. Devuelve ``0.0`` si no se está reproduciendo ningún sonido.

\ **Nota:** La posición no siempre es precisa, ya que el :ref:`AudioServer<class_AudioServer>` no mezcla el audio en cada frame procesado. Para obtener resultados más exactos, suma :ref:`AudioServer.get_time_since_last_mix()<class_AudioServer_method_get_time_since_last_mix>` a la posición devuelta.

\ **Nota:** Este método siempre devuelve ``0.0`` si :ref:`stream<class_AudioStreamPlayer_property_stream>` es un :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, ya que puede tener varios clips reproduciéndose simultáneamente.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_stream_playback>`

Devuelve el :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` más reciente de este nodo, generalmente el creado más recientemente por :ref:`play()<class_AudioStreamPlayer_method_play>`. Si no se está reproduciendo ningún sonido, este método falla y devuelve una instancia de reproducción vacía.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_has_stream_playback>`

Devuelve ``true`` si hay algún sonido activo, incluso si :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` está establecido en ``true``. Consulte también :ref:`playing<class_AudioStreamPlayer_property_playing>` y :ref:`get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer_method_play>`

Reproduce un sonido desde el principio, o desde la ``from_position`` dada en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer_method_seek>`

Reinicia todos los sonidos que se reproducirán desde el ``to_position`` indicado, en segundos. No hace nada si no se reproduce ningún sonido.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_stop>`

Detiene todos los sonidos de este nodo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
