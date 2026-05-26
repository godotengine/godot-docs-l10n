:github_url: hide

.. _class_AudioStreamMicrophone:

AudioStreamMicrophone
=====================

**Hérite de :** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Joue des données d'entrée audio temps réel.

.. rst-class:: classref-introduction-group

Description
-----------

Lorsqu'il est utilisé directement dans un nœud :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, **AudioStreamMicrophone** joue l'entrée du microphone en temps réel. Cela peut être utilisé conjointement avec :ref:`AudioEffectCapture<class_AudioEffectCapture>` pour traiter les données ou les enregistrer.

\ **Note :** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` doit être ``true`` pour que l'entrée audio marche. Voir aussi la description du paramètre pour les problèmes liés aux autorisations et aux paramètres de confidentialité du système d'exploitation.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Flux audio <../tutorials/audio/audio_streams>`

- :doc:`L'enregistrement avec le microphone <../tutorials/audio/recording_with_microphone>`

- `Démo d'enregistrement du microphone <https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record>`__

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
