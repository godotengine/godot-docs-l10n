:github_url: hide

.. _class_AudioStreamGeneratorPlayback:

AudioStreamGeneratorPlayback
============================

**Eredita:** :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>` **<** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Riproduce l'audio generato usando un :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è deve essere utilizzata con :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` per riprodurre l'audio generato in tempo reale.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di generatore audio <https://godotengine.org/asset-library/asset/2759>`__

- `Godot 3.2 otterrà nuove funzionalità audio <https://godotengine.org/article/godot-32-will-get-new-audio-features>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`can_push_buffer<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_buffer<class_AudioStreamGeneratorPlayback_method_clear_buffer>`\ (\ )                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_frames_available<class_AudioStreamGeneratorPlayback_method_get_frames_available>`\ (\ ) |const|                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_skips<class_AudioStreamGeneratorPlayback_method_get_skips>`\ (\ ) |const|                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_buffer<class_AudioStreamGeneratorPlayback_method_push_buffer>`\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_frame<class_AudioStreamGeneratorPlayback_method_push_frame>`\ (\ frame\: :ref:`Vector2<class_Vector2>`\ )                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamGeneratorPlayback_method_can_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_push_buffer**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`

Restituisce ``true`` se un buffer di dimensione ``amount`` può essere spinto al buffer di dati del campione audio senza sovraccaricarlo, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_clear_buffer>`

Cancella il buffer di dati del campione audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_frames_available>`

Restituisce il numero di frame che possono essere spinti al buffer di dati del campione audio senza sovraccaricarlo. Se il risultato è ``0``, il buffer è pieno.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_skips:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_skips**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_skips>`

Restituisce il numero di volte in cui la riproduzione è saltata a causa di un buffer underrun nei dati del campione audio. Questo valore è ripristinato all'inizio della riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_buffer**\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_buffer>`

Spinge vari frame di dati audio al buffer. Questo è di solito più efficiente di :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` in C# e linguaggi compilati tramite GDExtension, ma :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` potrebbe essere *meno* efficiente in GDScript.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_frame**\ (\ frame\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_frame>`

Spinge un singolo frame di dati audio al buffer. Questo è di solito meno efficiente di :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` in C# e linguaggi compilati tramite GDExtension, ma :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` potrebbe essere *più* efficiente in GDScript.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
