:github_url: hide

.. _class_AudioStreamMicrophone:

AudioStreamMicrophone
=====================

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Riproduce i dati di input audio in tempo reale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Quando utilizzato direttamente in un nodo :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, **AudioStreamMicrophone** riproduce l'input del microfono in tempo reale. Questo può essere usato in combinazione con :ref:`AudioEffectCapture<class_AudioEffectCapture>` per elaborare i dati o salvarli.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` deve essere ``true`` affinché l'input di audio funzioni. Vedi anche la descrizione di quella impostazione per avvertenze riguardo le autorizzazioni e le impostazioni sulla privacy del sistema operativo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

- :doc:`La registrazione con il microfono <../tutorials/audio/recording_with_microphone>`

- `Demo di registrazione del microfono <https://github.com/godotengine/godot-demo-projects/tree/master/audio/mic_record>`__

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
