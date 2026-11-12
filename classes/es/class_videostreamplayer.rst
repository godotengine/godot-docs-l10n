:github_url: hide

.. _class_VideoStreamPlayer:

VideoStreamPlayer
=================

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un control utilizado para la reproducción de vídeo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un control utilizado para la reproducción de recursos :ref:`VideoStream<class_VideoStream>`.

Los formatos de video soportados son `Ogg Theora <https://www.theora.org/>`__ (\ ``.ogv``, :ref:`VideoStreamTheora<class_VideoStreamTheora>`) y cualquier formato expuesto a través de un plugin de GDExtension.

\ **Advertencia:** En la web, la reproducción de video *tendrá* un rendimiento deficiente debido a la falta de optimizaciones de ensamblado específicas de la arquitectura.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Reproduciendo videos <../tutorials/animation/playing_videos>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`audio_track<class_VideoStreamPlayer_property_audio_track>`         | ``0``         |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`autoplay<class_VideoStreamPlayer_property_autoplay>`               | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`buffering_msec<class_VideoStreamPlayer_property_buffering_msec>`   | ``500``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`   | :ref:`bus<class_VideoStreamPlayer_property_bus>`                         | ``&"Master"`` |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`expand<class_VideoStreamPlayer_property_expand>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`loop<class_VideoStreamPlayer_property_loop>`                       | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`paused<class_VideoStreamPlayer_property_paused>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`speed_scale<class_VideoStreamPlayer_property_speed_scale>`         | ``1.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`VideoStream<class_VideoStream>` | :ref:`stream<class_VideoStreamPlayer_property_stream>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`stream_position<class_VideoStreamPlayer_property_stream_position>` |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume<class_VideoStreamPlayer_property_volume>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume_db<class_VideoStreamPlayer_property_volume_db>`             | ``0.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_stream_length<class_VideoStreamPlayer_method_get_stream_length>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_stream_name<class_VideoStreamPlayer_method_get_stream_name>`\ (\ ) |const|     |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_video_texture<class_VideoStreamPlayer_method_get_video_texture>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_playing<class_VideoStreamPlayer_method_is_playing>`\ (\ ) |const|               |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`play<class_VideoStreamPlayer_method_play>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`stop<class_VideoStreamPlayer_method_stop>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_VideoStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_signal_finished>`

Emitida cuando se termina la reproducción.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VideoStreamPlayer_property_audio_track:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_track** = ``0`` :ref:`🔗<class_VideoStreamPlayer_property_audio_track>`

.. rst-class:: classref-property-setget

- |void| **set_audio_track**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_track**\ (\ )

La pista de audio incrustada para reproducir.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autoplay**\ (\ )

Si es ``true``, la reproducción comienza cuando la escena se carga.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_buffering_msec:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffering_msec** = ``500`` :ref:`🔗<class_VideoStreamPlayer_property_buffering_msec>`

.. rst-class:: classref-property-setget

- |void| **set_buffering_msec**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffering_msec**\ (\ )

Cantidad de tiempo en milisegundos para almacenar en el búfer mientras se juega.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_VideoStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Bus de audio para usar para la reproducción de sonido.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_expand:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_expand>`

.. rst-class:: classref-property-setget

- |void| **set_expand**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_expand**\ (\ )

Si es ``true``, el video se escala al tamaño de control. En caso contrario, el tamaño mínimo de control se ajustará automáticamente para que coincida con las dimensiones del stream de vídeo.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Si es ``true``, el vídeo se reinicia cuando llega a su final.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Si es ``true``, el video se pausa.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_VideoStreamPlayer_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

La escala de velocidad actual de la transmisión. ``1.0`` es la velocidad normal, mientras que ``2.0`` es el doble de velocidad y ``0.5`` es la mitad de la velocidad. Una escala de velocidad de ``0.0`` pausa el vídeo, de forma similar a establecer :ref:`paused<class_VideoStreamPlayer_property_paused>` en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`VideoStream<class_VideoStream>` **stream** :ref:`🔗<class_VideoStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`VideoStream<class_VideoStream>`\ )
- :ref:`VideoStream<class_VideoStream>` **get_stream**\ (\ )

El stream de video asignado. Véase la descripción de los formatos soportados.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream_position:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_position** :ref:`🔗<class_VideoStreamPlayer_property_stream_position>`

.. rst-class:: classref-property-setget

- |void| **set_stream_position**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stream_position**\ (\ )

La posición actual de la transmisión, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume** :ref:`🔗<class_VideoStreamPlayer_property_volume>`

.. rst-class:: classref-property-setget

- |void| **set_volume**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume**\ (\ )

El volumen del audio como un valor lineal.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_VideoStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Volumen de audio en dB.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VideoStreamPlayer_method_get_stream_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_length**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_length>`

La duración de la transmisión actual, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stream_name**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_name>`

Devuelve el nombre del stream de video, o ``"<No Stream>"`` si no hay stream de video asignado.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_video_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_video_texture**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_video_texture>`

Returns the video playback texture.

The texture will be continually updated as the video plays, so call :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` to get a still frame.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_is_playing>`

Devuelve ``true`` si el video se está reproduciendo.

\ **Nota:** El vídeo sigue considerándose en reproducción si se interrumpe durante la reproducción.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_play>`

Starts the video playback from the beginning, unless the video is already playing.

\ **Note:** If the video is paused, this will not unpause the video.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_stop>`

Detiene la reproducción del video y establece la posición del streaming en 0.

\ **Nota:** Aunque la posición del stream se establezca en 0, el primer fotograma del stream de vídeo no se convertirá en el fotograma actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
