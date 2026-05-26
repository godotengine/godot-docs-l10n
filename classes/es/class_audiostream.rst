:github_url: hide

.. _class_AudioStream:

AudioStream
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`, :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, :ref:`AudioStreamMP3<class_AudioStreamMP3>`, :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`, :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, :ref:`AudioStreamSynchronized<class_AudioStreamSynchronized>`, :ref:`AudioStreamWAV<class_AudioStreamWAV>`

Clase base para las transmisiones de audio.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para transmisiones de audio. Las transmisiones de audio se utilizan para efectos de sonido y reproducción de música, y admiten los formatos de archivo WAV (mediante :ref:`AudioStreamWAV<class_AudioStreamWAV>`) y Ogg (mediante :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

- `Demo de Generador de Audio <https://godotengine.org/asset-library/asset/2759>`__

- `Demo de Grabación de Audio con Micrófono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo de Visualizador de Espectro de Audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_bar_beats<class_AudioStream_private_method__get_bar_beats>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_beat_count<class_AudioStream_private_method__get_beat_count>`\ (\ ) |virtual| |const|                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_bpm<class_AudioStream_private_method__get_bpm>`\ (\ ) |virtual| |const|                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_length<class_AudioStream_private_method__get_length>`\ (\ ) |virtual| |const|                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_parameter_list<class_AudioStream_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_stream_name<class_AudioStream_private_method__get_stream_name>`\ (\ ) |virtual| |const|                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_tags<class_AudioStream_private_method__get_tags>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_loop<class_AudioStream_private_method__has_loop>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`_instantiate_playback<class_AudioStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_monophonic<class_AudioStream_private_method__is_monophonic>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_be_sampled<class_AudioStream_method_can_be_sampled>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSample<class_AudioSample>`                            | :ref:`generate_sample<class_AudioStream_method_generate_sample>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_length<class_AudioStream_method_get_length>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`instantiate_playback<class_AudioStream_method_instantiate_playback>`\ (\ )                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_meta_stream<class_AudioStream_method_is_meta_stream>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_monophonic<class_AudioStream_method_is_monophonic>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AudioStream_signal_parameter_list_changed:

.. rst-class:: classref-signal

**parameter_list_changed**\ (\ ) :ref:`🔗<class_AudioStream_signal_parameter_list_changed>`

Señal a emitir para notificar cuando se modifica la lista de parámetros.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStream_private_method__get_bar_beats:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_bar_beats**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bar_beats>`

Sobrescribe este método para devolver los compases de esta transmisión.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_beat_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_beat_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_beat_count>`

Método sobrescribible. Debe devolver el número total de pulsos de esta secuencia de audio. El motor lo utiliza para determinar la posición de cada pulso.

Idealmente, el valor devuelto debería basarse en la frecuencia de muestreo de la secuencia (por ejemplo, :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_bpm**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bpm>`

Método que se puede sobrescribir. Debe devolver el tempo de este flujo de audio, en pulsos por minuto (BPM, siglas de Beats Per Minute). El motor lo utiliza para determinar la posición de cada pulso.

Idealmente, el valor devuelto debería basarse en la frecuencia de muestreo del flujo (:ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`, por ejemplo).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_length>`

Sobrescribe este método para personalizar el valor devuelto por :ref:`get_length()<class_AudioStream_method_get_length>`. Debe devolver la duración de este flujo de audio, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_parameter_list>`

Devuelve los parámetros controlables de este flujo. Este array contiene diccionarios con una descripción de la propiedad en formato info (ver :ref:`Object.get_property_list()<class_Object_method_get_property_list>`). Además, el valor por defecto de cada parámetro debe añadirse a cada diccionario en el campo "default_value".

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_stream_name**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_stream_name>`

Sobrescribe este método para proporcionar el nombre que aparecerá en el menú de visibilidad del gizmo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_tags:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_tags**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_tags>`

Sobrescribe este método para personalizar las etiquetas de este flujo de audio. Debe devolver un :ref:`Dictionary<class_Dictionary>` de cadenas, con la etiqueta como clave y su contenido como valor.

Las etiquetas más comunes incluyen ``title``, ``artist``, ``album``, ``tracknumber`` y ``date``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__has_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_loop**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__has_loop>`

Sobrescribe este método para devolver ``true`` si esta secuencia tiene un bucle.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStream_private_method__instantiate_playback>`

Sobrescribe este método para personalizar el valor devuelto por :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>`. Debe devolver un nuevo :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` que se crea cuando el flujo se reproduce (por ejemplo, mediante un :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_monophonic**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__is_monophonic>`

Sobrescribe este método para personalizar el valor devuelto por :ref:`is_monophonic()<class_AudioStream_method_is_monophonic>`. Debe devolver ``true`` si este flujo de audio solo admite un canal.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_can_be_sampled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_be_sampled**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_can_be_sampled>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve si el **AudioStream** actual puede utilizarse como muestra. Solo los flujos estáticos pueden utilizarse como muestra.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_generate_sample:

.. rst-class:: classref-method

:ref:`AudioSample<class_AudioSample>` **generate_sample**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_generate_sample>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Genera un :ref:`AudioSample<class_AudioSample>` basado en la transmisión actual.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_get_length>`

Devuelve la duración del flujo de audio en segundos. Si este flujo es un :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, devuelve la duración del último flujo reproducido. Si este flujo tiene una duración indefinida (como en :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` y :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`), devuelve ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **instantiate_playback**\ (\ ) :ref:`🔗<class_AudioStream_method_instantiate_playback>`

Devuelve un nuevo :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` creado para reproducir este flujo de audio. Resulta útil cuando se desea extender :ref:`_instantiate_playback()<class_AudioStream_private_method__instantiate_playback>`, pero llamando a :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` desde un subrecurso AudioStream mantenido internamente. Un ejemplo de esto puede encontrarse en el código fuente de ``AudioStreamRandomPitch::instantiate_playback``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_meta_stream:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_meta_stream**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_meta_stream>`

Devuelve ``true`` si la transmisión es una colección de otras transmisiones, ``false`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_monophonic**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_monophonic>`

Devuelve ``true`` si este flujo de audio solo admite un canal (*monofonía*), o ``false`` si el flujo de audio admite dos o más canales (*polifonía*).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
