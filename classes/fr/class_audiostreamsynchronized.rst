:github_url: hide

.. _class_AudioStreamSynchronized:

AudioStreamSynchronized
=======================

**Hérite de :** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Flux qui peut être équipé de sous-flux, qui seront joué en synchro.

.. rst-class:: classref-introduction-group

Description
-----------

C'est un flux qui peut être équipé de sous-flux, qui seront joués en synchro. Les flux commencent exactement en même temps quand "jouer" est appuyé, et se termineront quand le dernier d'entre eux se terminera. Si l'un des sous-flux boucle, la lecture se poursuivra.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Flux audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`stream_count<class_AudioStreamSynchronized_property_stream_count>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_sync_stream<class_AudioStreamSynchronized_method_get_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_sync_stream_volume<class_AudioStreamSynchronized_method_get_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream<class_AudioStreamSynchronized_method_set_sync_stream>`\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_sync_stream_volume<class_AudioStreamSynchronized_method_set_sync_stream_volume>`\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )  |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AudioStreamSynchronized_constant_MAX_STREAMS:

.. rst-class:: classref-constant

**MAX_STREAMS** = ``32`` :ref:`🔗<class_AudioStreamSynchronized_constant_MAX_STREAMS>`

Nombre maximal de flux qui peuvent être synchronisés.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioStreamSynchronized_property_stream_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stream_count** = ``0`` :ref:`🔗<class_AudioStreamSynchronized_property_stream_count>`

.. rst-class:: classref-property-setget

- |void| **set_stream_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stream_count**\ (\ )

Définir la nombre total de flux qui seront rejoués synchronisés.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioStreamSynchronized_method_get_sync_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream>`

Obtient un des flux synchronisés, par index.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_get_sync_stream_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamSynchronized_method_get_sync_stream_volume>`

Obtient le volume d'un des flux synchronisés, par index.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream:

.. rst-class:: classref-method

|void| **set_sync_stream**\ (\ stream_index\: :ref:`int<class_int>`, audio_stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream>`

Définit un des flux synchronisés, par index.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamSynchronized_method_set_sync_stream_volume:

.. rst-class:: classref-method

|void| **set_sync_stream_volume**\ (\ stream_index\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamSynchronized_method_set_sync_stream_volume>`

Définit le volume d'un des flux synchronisés, par index.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
