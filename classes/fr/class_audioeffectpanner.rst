:github_url: hide

.. _class_AudioEffectPanner:

AudioEffectPanner
=================

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a panner audio effect to an audio bus.

Pans the sound left or right.

.. rst-class:: classref-introduction-group

Description
-----------

Determines how much of the audio signal is sent to the left and right channels. This helps with audio spatialization, giving sounds distinct places in a mix.

\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` and :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` handle panning automatically, following where the source of the sound is on the screen.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`pan<class_AudioEffectPanner_property_pan>` | ``0.0`` |
   +---------------------------+--------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioEffectPanner_property_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan** = ``0.0`` :ref:`🔗<class_AudioEffectPanner_property_pan>`

.. rst-class:: classref-property-setget

- |void| **set_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan**\ (\ )

Pan position. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
