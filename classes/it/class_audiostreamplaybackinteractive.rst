:github_url: hide

.. _class_AudioStreamPlaybackInteractive:

AudioStreamPlaybackInteractive
==============================

**Eredita:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Componente di riproduzione di :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Componente di riproduzione di :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`. Contiene funzioni per cambiare la clip attualmente riprodotta.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_current_clip_index<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`\ (\ ) |const|                                          |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`\ (\ clip_index\: :ref:`int<class_int>`\ )                              |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`switch_to_clip_by_name<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamPlaybackInteractive_method_get_current_clip_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_clip_index**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlaybackInteractive_method_get_current_clip_index>`

Restituisce l'indice della clip attualmente in riproduzione. Puoi usarlo per ottenere il nome della clip attualmente in riproduzione con :ref:`AudioStreamInteractive.get_clip_name()<class_AudioStreamInteractive_method_get_clip_name>`.

\ **Esempio:** Ottieni il nome della clip attualmente in riproduzione dall'interno di un nodo :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`.


.. tabs::

 .. code-tab:: gdscript

    var playing_clip_name = stream.get_clip_name(get_stream_playback().get_current_clip_index())



.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip:

.. rst-class:: classref-method

|void| **switch_to_clip**\ (\ clip_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip>`

Passa a una clip (per indice).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name:

.. rst-class:: classref-method

|void| **switch_to_clip_by_name**\ (\ clip_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioStreamPlaybackInteractive_method_switch_to_clip_by_name>`

Passa a una clip (per nome).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
