:github_url: hide

.. _class_VideoStream:

VideoStream
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`VideoStreamTheora<class_VideoStreamTheora>`

Risorsa di base per i flussi video.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Tipo di risorsa di base per tutti i flussi video. Le classi che derivano da **VideoStream** possono essere tutte utilizzate come tipi di risorsa per riprodurre video in :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Riproduzione di video <../tutorials/animation/playing_videos>`

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`file<class_VideoStream_property_file>` | ``""`` |
   +-----------------------------+----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`VideoStreamPlayback<class_VideoStreamPlayback>` | :ref:`_instantiate_playback<class_VideoStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VideoStream_property_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **file** = ``""`` :ref:`🔗<class_VideoStream_property_file>`

.. rst-class:: classref-property-setget

- |void| **set_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_file**\ (\ )

Il percorso del file video o l'URI gestito da questa risorsa **VideoStream**.

Per :ref:`VideoStreamTheora<class_VideoStreamTheora>`, questo nome di file dovrebbe corrispondere a un file video Ogg Theora con l'estensione ``.ogv``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VideoStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`VideoStreamPlayback<class_VideoStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| :ref:`🔗<class_VideoStream_private_method__instantiate_playback>`

Chiamato all'avvio della riproduzione del video, per inizializzare e restituire una sottoclasse di :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
