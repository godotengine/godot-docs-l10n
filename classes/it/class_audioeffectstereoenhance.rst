:github_url: hide

.. _class_AudioEffectStereoEnhance:

AudioEffectStereoEnhance
========================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a stereo manipulation audio effect to an audio bus.

Controls gain of the side channels, and widens the stereo image.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Adjusts gain of the left and right channels, and makes mono sounds stereo through phase shifting.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`pan_pullout<class_AudioEffectStereoEnhance_property_pan_pullout>`         | ``1.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`surround<class_AudioEffectStereoEnhance_property_surround>`               | ``0.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` | ``0.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectStereoEnhance_property_pan_pullout:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan_pullout** = ``1.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_pan_pullout>`

.. rst-class:: classref-property-setget

- |void| **set_pan_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan_pullout**\ (\ )

Gain of the side channels, if they exist. A value of 0 will downmix stereo to mono. Value can range from 0 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_surround:

.. rst-class:: classref-property

:ref:`float<class_float>` **surround** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_surround>`

.. rst-class:: classref-property-setget

- |void| **set_surround**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_surround**\ (\ )

Widens the stereo image through phase shifting in conjunction with :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>`. Just pans sound to the left channel if :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` is 0. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_time_pullout_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_pullout_ms** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_time_pullout_ms>`

.. rst-class:: classref-property-setget

- |void| **set_time_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_pullout**\ (\ )

Widens the stereo image through phase shifting in conjunction with :ref:`surround<class_AudioEffectStereoEnhance_property_surround>`. Just delays the right channel if :ref:`surround<class_AudioEffectStereoEnhance_property_surround>` is 0. Value is in milliseconds, and can range from 0 to 50.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
