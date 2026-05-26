:github_url: hide

.. _class_AudioEffectEQ10:

AudioEffectEQ10
===============

**Hérite de :** :ref:`AudioEffectEQ<class_AudioEffectEQ>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a 10-band equalizer audio effect to an audio bus.

Gives you control over frequencies from 31 Hz to 16000 Hz. Each frequency can be modulated between -60/+24 dB.

.. rst-class:: classref-introduction-group

Description
-----------

Bandes de fréquence :

Bande 1 : 31 Hz

Bande 2 : 62 Hz

Bande 3 : 125 Hz

Bande 4 : 250 Hz

Bande 5 : 500 Hz

Bande 6 : 1000 Hz

Bande 7 : 2000 Hz

Bande 8 : 4000 Hz

Bande 9 : 8000 Hz

Bande 10 : 16000 Hz

Voir aussi :ref:`AudioEffectEQ<class_AudioEffectEQ>`, :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`, :ref:`AudioEffectEQ21<class_AudioEffectEQ21>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
