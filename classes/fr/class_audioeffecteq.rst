:github_url: hide

.. _class_AudioEffectEQ:

AudioEffectEQ
=============

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, :ref:`AudioEffectEQ21<class_AudioEffectEQ21>`, :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`

Base class for audio equalizers (EQ). Gives you control over frequencies.

Use it to create a custom equalizer if :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`, :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, or :ref:`AudioEffectEQ21<class_AudioEffectEQ21>` don't fit your needs.

.. rst-class:: classref-introduction-group

Description
-----------

An "equalizer" gives you control over the gain of frequencies in the entire spectrum, by allowing their adjustment through bands. A band is a point in the frequency spectrum, and each band means a division of the spectrum that can be adjusted.

Use equalizers to compensate for existing deficiencies in the audio, make room for other elements, or remove undesirable frequencies. AudioEffectEQs are useful on the Master bus to balance the entire mix or give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be disabled when headphones are plugged in).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioEffectEQ_method_get_band_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_band_count**\ (\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_count>`

Renvoie le nombre de bandes dans l'égaliseur.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_get_band_gain_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_gain_db>`

Renvoie le gain de la bande à l'index spécifié, en dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_set_band_gain_db:

.. rst-class:: classref-method

|void| **set_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectEQ_method_set_band_gain_db>`

Définit le gain de bande à l'index spécifié, en dB.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
