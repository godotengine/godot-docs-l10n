:github_url: hide

.. _class_AudioEffectInstance:

AudioEffectInstance
===================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`

Manipola l'audio che riceve per un determinato effetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'istanza di effetto audio manipola l'audio che riceve per un determinato effetto. Questa istanza è creata automaticamente da un :ref:`AudioEffect<class_AudioEffect>` quando è aggiunta a un bus, e di solito non deve essere creata direttamente. Se necessario, può essere recuperata durante l'esecuzione con :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_process<class_AudioEffectInstance_private_method__process>`\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_silence<class_AudioEffectInstance_private_method__process_silence>`\ (\ ) |virtual| |const|                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioEffectInstance_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ src_buffer\: ``const void*``, r_dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioEffectInstance_private_method__process>`

Chiamato dal :ref:`AudioServer<class_AudioServer>` per elaborare questo effetto. Quando :ref:`_process_silence()<class_AudioEffectInstance_private_method__process_silence>` non è sovrascritto o restituisce ``false``, questo metodo viene chiamato solo quando il bus è attivo.

\ **Nota:** Non è utile sovrascrivere questo metodo in GDScript o C#. Solo GDExtension può usufruirne.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectInstance_private_method__process_silence:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_silence**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioEffectInstance_private_method__process_silence>`

Sovrascrivi questo metodo per personalizzare il comportamento di elaborazione di questa istanza di effetto.

Dovrebbe tornare ``true`` per costringere l':ref:`AudioServer<class_AudioServer>` a chiamare sempre :ref:`_process()<class_AudioEffectInstance_private_method__process>`, anche se il bus è stato silenziato o non può essere ascoltato in altri modi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
