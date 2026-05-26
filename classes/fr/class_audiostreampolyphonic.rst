:github_url: hide

.. _class_AudioStreamPolyphonic:

AudioStreamPolyphonic
=====================

**Hérite de :** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

AudioStream qui permet à l'utilisateur de jouer des flux personnalisés à tout moment à partir du code, simultanément, en utilisant un seul lecteur.

.. rst-class:: classref-introduction-group

Description
-----------

AudioStream qui permet à l'utilisateur de jouer des flux personnalisés à tout moment à partir du code, simultanément, en utilisant un seul lecteur.

Le contrôle de lecture se fait via l'instance :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>` définie dans le lecteur, qui peut être obtenue via les méthodes :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` ou :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>`. L'obtention de l'instance de lecture n'est valide que lorsque la propriété ``stream`` est définie comme un **AudioStreamPolyphonic** dans ces lecteurs.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Flux audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`polyphony<class_AudioStreamPolyphonic_property_polyphony>` | ``32`` |
   +-----------------------+------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioStreamPolyphonic_property_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **polyphony** = ``32`` :ref:`🔗<class_AudioStreamPolyphonic_property_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_polyphony**\ (\ )

Quantité maximale de flux simultanés qui peuvent être joués.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
