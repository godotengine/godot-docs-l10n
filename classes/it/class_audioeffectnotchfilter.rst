:github_url: hide

.. _class_AudioEffectNotchFilter:

AudioEffectNotchFilter
======================

**Eredita:** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un filtro notch al bus audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un filtro "notch" attenua le frequenze in :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` e permette alle frequenze fuori da tale punto di passare inalterate. È una versione più ristretta e potente di :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, ed è l'opposto di :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`.

Questo filtro si può utilizzare per dare più spazio ad altri suoni da riprodurre nel punto di taglio. Grazie a quanto attenua le frequenze, può anche servire per rimuovere completamente frequenze molto specifiche e indesiderate.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Effetti audio <../tutorials/audio/audio_effects>`

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
