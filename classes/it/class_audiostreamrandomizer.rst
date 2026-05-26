:github_url: hide

.. _class_AudioStreamRandomizer:

AudioStreamRandomizer
=====================

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Incorpora un'insieme di flussi audio con spostamento del tono e del volume.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Sceglie un AudioStream casuale dal pool, a seconda della modalità di riproduzione, e applica una variazione casuale del tono e del volume durante la riproduzione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` | :ref:`playback_mode<class_AudioStreamRandomizer_property_playback_mode>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`                       | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`   | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_volume_offset_db<class_AudioStreamRandomizer_property_random_volume_offset_db>` | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`AudioStream<class_AudioStream>`                        | :ref:`stream_{index}/stream<class_AudioStreamRandomizer_property_stream_{index}/stream>`     |         |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`stream_{index}/weight<class_AudioStreamRandomizer_property_stream_{index}/weight>`     | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                                        | :ref:`streams_count<class_AudioStreamRandomizer_property_streams_count>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_stream<class_AudioStreamRandomizer_method_add_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_stream<class_AudioStreamRandomizer_method_get_stream>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_stream_probability_weight<class_AudioStreamRandomizer_method_get_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_stream<class_AudioStreamRandomizer_method_move_stream>`\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_stream<class_AudioStreamRandomizer_method_remove_stream>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream<class_AudioStreamRandomizer_method_set_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream_probability_weight<class_AudioStreamRandomizer_method_set_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ )                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioStreamRandomizer_PlaybackMode:

.. rst-class:: classref-enumeration

enum **PlaybackMode**: :ref:`🔗<enum_AudioStreamRandomizer_PlaybackMode>`

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM_NO_REPEATS:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM_NO_REPEATS** = ``0``

Sceglie un flusso a caso in base ai pesi di probabilità scelti per ciascuno flusso, ma evita di riprodurre lo stesso flusso due volte consecutive quando possibile. Se nel pool è presente solo 1 suono, verrà riprodotto sempre lo stesso suono, consentendo effettivamente le ripetizioni.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM** = ``1``

Sceglie un flusso a caso in base ai pesi di probabilità scelti per ciascun flusso. Se nel pool è presente solo 1 suono, verrà riprodotto sempre lo stesso suono.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_SEQUENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_SEQUENTIAL** = ``2``

Riproduce i flussi nell'ordine in cui appaiono nel pool di flussi. Se nel pool è presente solo 1 suono, verrà riprodotto sempre lo stesso suono.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamRandomizer_property_playback_mode:

.. rst-class:: classref-property

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **playback_mode** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_playback_mode>`

.. rst-class:: classref-property-setget

- |void| **set_playback_mode**\ (\ value\: :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>`\ )
- :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **get_playback_mode**\ (\ )

Controlla il modo in cui l'AudioStreamRandomizer sceglie quale AudioStream riprodurre successivamente.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch**\ (\ )

The largest possible frequency multiplier of the random pitch variation. Pitch will be randomly chosen within a range of ``1.0 / random_pitch`` and ``random_pitch``. A value of ``1.0`` means no variation. A value of ``2.0`` means pitch will be randomized between double and half.

\ **Note:** Setting this property also sets :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch_semitones:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch_semitones** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch_semitones>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch_semitones**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch_semitones**\ (\ )

The largest possible distance, in semitones, of the random pitch variation. A value of ``0.0`` means no variation.

\ **Note:** Setting this property also sets :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_volume_offset_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_volume_offset_db** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_volume_offset_db>`

.. rst-class:: classref-property-setget

- |void| **set_random_volume_offset_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_volume_offset_db**\ (\ )

The intensity of random volume variation. Volume will be increased or decreased by a random value up to ``random_volume_offset_db``. A value of ``0.0`` means no variation. A value of ``3.0`` means volume will be randomized between ``-3.0 dB`` and ``+3.0 dB``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_stream_{index}/stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream_{index}/stream** :ref:`🔗<class_AudioStreamRandomizer_property_stream_{index}/stream>`

The :ref:`AudioStream<class_AudioStream>` at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. streams_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_stream_{index}/weight:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_{index}/weight** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_stream_{index}/weight>`

The probability weight of the :ref:`AudioStream<class_AudioStream>` at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. streams_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_streams_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **streams_count** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_streams_count>`

.. rst-class:: classref-property-setget

- |void| **set_streams_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_streams_count**\ (\ )

Il numero di flussi disponibili nell'insieme di flussi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamRandomizer_method_add_stream:

.. rst-class:: classref-method

|void| **add_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AudioStreamRandomizer_method_add_stream>`

Inserisci un flusso nell'indice specificato. Se l'indice è minore di zero, l'inserimento avviene alla fine del pool sottostante.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream>`

Restituisce il flusso all'indice specificato.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream_probability_weight:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream_probability_weight>`

Restituisce il peso di probabilità associato con il flusso all'indice indicato.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_move_stream:

.. rst-class:: classref-method

|void| **move_stream**\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_move_stream>`

Sposta un flusso da un indice all'altro.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_remove_stream:

.. rst-class:: classref-method

|void| **remove_stream**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_remove_stream>`

Rimuove il flusso all'indice specificato.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream:

.. rst-class:: classref-method

|void| **set_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream>`

Imposta l'AudioStream all'indice specificato.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream_probability_weight:

.. rst-class:: classref-method

|void| **set_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream_probability_weight>`

Imposta il peso di probabilità del flusso all'indice specificato. Più è alto questo valore, maggiore è la probabilità che il randomizzatore scelga questo flusso durante le modalità di riproduzione casuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
