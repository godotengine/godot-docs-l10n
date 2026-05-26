:github_url: hide

.. _class_AudioEffectEQ:

AudioEffectEQ
=============

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, :ref:`AudioEffectEQ21<class_AudioEffectEQ21>`, :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`

Base class for audio equalizers (EQ). Gives you control over frequencies.

Use it to create a custom equalizer if :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`, :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, or :ref:`AudioEffectEQ21<class_AudioEffectEQ21>` don't fit your needs.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An "equalizer" gives you control over the gain of frequencies in the entire spectrum, by allowing their adjustment through bands. A band is a point in the frequency spectrum, and each band means a division of the spectrum that can be adjusted.

Use equalizers to compensate for existing deficiencies in the audio, make room for other elements, or remove undesirable frequencies. AudioEffectEQs are useful on the Master bus to balance the entire mix or give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be disabled when headphones are plugged in).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_band_count<class_AudioEffectEQ_method_get_band_count>`\ (\ ) |const|                                                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_band_gain_db<class_AudioEffectEQ_method_get_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`\ ) |const|                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_band_gain_db<class_AudioEffectEQ_method_set_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectEQ_method_get_band_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_band_count**\ (\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_count>`

Devuelve el número de bandas del ecualizador.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_get_band_gain_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_gain_db>`

Devuelve la ganancia de la banda en el índice especificado, en dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_set_band_gain_db:

.. rst-class:: classref-method

|void| **set_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectEQ_method_set_band_gain_db>`

Establece la ganancia de la banda en el índice especificado, en dB.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
