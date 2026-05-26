:github_url: hide

.. _class_AudioStreamInteractive:

AudioStreamInteractive
======================

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Transmisión de audio que puede reproducir música de forma interactiva, combinando clips y una tabla de transición.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este flujo de audio permite reproducir música interactivamente, combinando clips y una tabla de transiciones. Primero se deben agregar los clips y, a continuación, las reglas de transición mediante el método :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`. Además, este flujo exporta un parámetro de propiedad para controlar la reproducción mediante :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` o :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`.

Para ello, se completan varios clips y luego se configura la tabla de transiciones. A partir de ahí, se seleccionan los clips para su reproducción y la música se reproduce fluidamente del actual al nuevo, utilizando la regla de transición correspondiente definida en la tabla.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`clip_count<class_AudioStreamInteractive_property_clip_count>`     | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`initial_clip<class_AudioStreamInteractive_property_initial_clip>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_AudioStreamInteractive_TransitionFromTime:

.. rst-class:: classref-enumeration

enum **TransitionFromTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionFromTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_IMMEDIATE** = ``0``

Comenzar la transición lo antes posible, sin esperar ninguna posición temporal específica.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BEAT:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BEAT** = ``1``

Transition when the clip playback position reaches the next beat.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_NEXT_BAR:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_NEXT_BAR** = ``2``

Transición cuando la posición de reproducción del clip llega a la siguiente barra.

.. _class_AudioStreamInteractive_constant_TRANSITION_FROM_TIME_END:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **TRANSITION_FROM_TIME_END** = ``3``

Transición cuando el clip actual terminó de reproducirse.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_TransitionToTime:

.. rst-class:: classref-enumeration

enum **TransitionToTime**: :ref:`🔗<enum_AudioStreamInteractive_TransitionToTime>`

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_SAME_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_SAME_POSITION** = ``0``

Transición a la misma posición en el clip de destino. Esto es útil cuando ambos clips tienen la misma duración y la música debe fundirse entre ellos.

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_START:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_START** = ``1``

Transición al inicio del clip de destino.

.. _class_AudioStreamInteractive_constant_TRANSITION_TO_TIME_PREVIOUS_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **TRANSITION_TO_TIME_PREVIOUS_POSITION** = ``2``

Transition to the last played position in the destination clip, if there was a previous transition from that clip. Otherwise, plays from the start of the destination clip.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_FadeMode:

.. rst-class:: classref-enumeration

enum **FadeMode**: :ref:`🔗<enum_AudioStreamInteractive_FadeMode>`

.. _class_AudioStreamInteractive_constant_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_DISABLED** = ``0``

No usar el desvanecimiento para la transición. Esto es útil al pasar del final de un clip al principio, y cada clip tiene su inicio/fin.

.. _class_AudioStreamInteractive_constant_FADE_IN:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_IN** = ``1``

Utilizar un fundido de entrada en el siguiente clip y dejar que el clip actual termine.

.. _class_AudioStreamInteractive_constant_FADE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_OUT** = ``2``

Usar un desvanecimiento en el clip actual, el siguiente clip comenzará solo.

.. _class_AudioStreamInteractive_constant_FADE_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_CROSS** = ``3``

Use a cross-fade between clips.

.. _class_AudioStreamInteractive_constant_FADE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **FADE_AUTOMATIC** = ``4``

Utilizar la lógica de desvanecimiento automático según la transición de/a. Se recomienda usar esta opción por defecto.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamInteractive_AutoAdvanceMode:

.. rst-class:: classref-enumeration

enum **AutoAdvanceMode**: :ref:`🔗<enum_AudioStreamInteractive_AutoAdvanceMode>`

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_DISABLED** = ``0``

Deshabilitar el avance automático (predeterminado).

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_ENABLED** = ``1``

Habilitar el avance automático, se debe especificar un clip.

.. _class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD:

.. rst-class:: classref-enumeration-constant

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **AUTO_ADVANCE_RETURN_TO_HOLD** = ``2``

Habilitar el avance automático, pero en lugar de especificar un clip, la reproducción volverá al modo de espera (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AudioStreamInteractive_constant_CLIP_ANY:

.. rst-class:: classref-constant

**CLIP_ANY** = ``-1`` :ref:`🔗<class_AudioStreamInteractive_constant_CLIP_ANY>`

Esta constante describe que cualquier clip es válido para una transición específica como origen o destino.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamInteractive_property_clip_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **clip_count** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_clip_count>`

.. rst-class:: classref-property-setget

- |void| **set_clip_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_clip_count**\ (\ )

Cantidad de clips contenidos en este reproductor interactivo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_property_initial_clip:

.. rst-class:: classref-property

:ref:`int<class_int>` **initial_clip** = ``0`` :ref:`🔗<class_AudioStreamInteractive_property_initial_clip>`

.. rst-class:: classref-property-setget

- |void| **set_initial_clip**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_initial_clip**\ (\ )

Índice del clip inicial, que se reproducirá primero cuando se reproduzca esta transmisión.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamInteractive_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`, from_time\: :ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>`, to_time\: :ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>`, fade_mode\: :ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>`, fade_beats\: :ref:`float<class_float>`, use_filler_clip\: :ref:`bool<class_bool>` = false, filler_clip\: :ref:`int<class_int>` = -1, hold_previous\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AudioStreamInteractive_method_add_transition>`

Añade una transición entre dos clips. Proporciona los índices de los clips de origen y destino, o utiliza la constante :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` para indicar que la transición ocurre desde o hacia cualquier clip a éste.

\* ``from_time`` indica el momento en el clip actual en el que comenzará la transición después de activarse.

\* ``to_time`` indica el tiempo en el siguiente clip desde el cual comenzará la reproducción.

\* ``fade_mode`` indica cómo ocurrirá el desvanecimiento entre clips. En caso de duda, utiliza :ref:`FADE_AUTOMATIC<class_AudioStreamInteractive_constant_FADE_AUTOMATIC>`, que emplea el tipo de desvanecimiento más común para cada situación.

\* ``fade_beats`` indica cuántos pulsos durará el desvanecimiento. Se permite el uso de decimales.

\* ``use_filler_clip`` indica que se utilizará un clip de relleno entre los clips de origen y destino.

\* ``filler_clip`` el índice del clip de relleno.

\* Si se utiliza ``hold_previous``, este clip será recordado. Esto se puede usar junto con :ref:`AUTO_ADVANCE_RETURN_TO_HOLD<class_AudioStreamInteractive_constant_AUTO_ADVANCE_RETURN_TO_HOLD>` para volver a este clip después de que otro termine de reproducirse.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_erase_transition:

.. rst-class:: classref-method

|void| **erase_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_erase_transition>`

Borra una transición proporcionando los índices de clip ``from_clip`` y ``to_clip``. :ref:`CLIP_ANY<class_AudioStreamInteractive_constant_CLIP_ANY>` se puede utilizar para cualquiera de los argumentos o para ambos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance:

.. rst-class:: classref-method

:ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>` **get_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance>`

Indica si un clip tiene habilitado el avance automático. Véase :ref:`set_clip_auto_advance()<class_AudioStreamInteractive_method_set_clip_auto_advance>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_auto_advance_next_clip>`

Devuelve el clip hacia el cual avanzará automáticamente el clip referenciado por ``clip_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_clip_name**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_name>`

Devuelve el nombre de un clip.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_clip_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_clip_stream>`

Devuelve el :ref:`AudioStream<class_AudioStream>` asociado con un clip.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_beats:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_transition_fade_beats**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_beats>`

Return the time (in beats) for a transition (see :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_fade_mode:

.. rst-class:: classref-method

:ref:`FadeMode<enum_AudioStreamInteractive_FadeMode>` **get_transition_fade_mode**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_fade_mode>`

Devuelve el modo de una transición (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_filler_clip:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_filler_clip>`

Devuelve el clip de relleno para una transición (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_from_time:

.. rst-class:: classref-method

:ref:`TransitionFromTime<enum_AudioStreamInteractive_TransitionFromTime>` **get_transition_from_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_from_time>`

Devuelve la posición temporal de origen para una transición (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_transition_list**\ (\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_list>`

Devuelve la lista de transiciones (desde, hasta intercaladas).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_get_transition_to_time:

.. rst-class:: classref-method

:ref:`TransitionToTime<enum_AudioStreamInteractive_TransitionToTime>` **get_transition_to_time**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_get_transition_to_time>`

Devuelve la posición temporal de destino para una transición (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_has_transition>`

Devuelve ``true`` si existe una transición determinada (se agregó mediante :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_holding_previous:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_holding_previous**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_holding_previous>`

Devuelve si una transición utiliza la funcionalidad *mantener anterior* (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_is_transition_using_filler_clip:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transition_using_filler_clip**\ (\ from_clip\: :ref:`int<class_int>`, to_clip\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamInteractive_method_is_transition_using_filler_clip>`

Devuelve si una transición utiliza la funcionalidad *clip de relleno* (véase :ref:`add_transition()<class_AudioStreamInteractive_method_add_transition>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance:

.. rst-class:: classref-method

|void| **set_clip_auto_advance**\ (\ clip_index\: :ref:`int<class_int>`, mode\: :ref:`AutoAdvanceMode<enum_AudioStreamInteractive_AutoAdvanceMode>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance>`

Establecer si un clip avanzará automáticamente cambiando el modo de avance automático.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip:

.. rst-class:: classref-method

|void| **set_clip_auto_advance_next_clip**\ (\ clip_index\: :ref:`int<class_int>`, auto_advance_next_clip\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_auto_advance_next_clip>`

Establecer el índice del siguiente clip al que este avanzará automáticamente al finalizar. Si el clip se reproduce en bucle, se ignorará el avance automático.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_name:

.. rst-class:: classref-method

|void| **set_clip_name**\ (\ clip_index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_name>`

Establecer el nombre del clip actual (para una identificación más fácil).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamInteractive_method_set_clip_stream:

.. rst-class:: classref-method

|void| **set_clip_stream**\ (\ clip_index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamInteractive_method_set_clip_stream>`

Establecer el :ref:`AudioStream<class_AudioStream>` asociado con el clip actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
