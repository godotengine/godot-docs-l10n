:github_url: hide

.. _class_AudioEffectReverb:

AudioEffectReverb
=================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un effetto audio di riverberazione a un bus audio.

Emula un eco riproducendo una versione sfocata dell'audio in ingresso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un effetto "riverbero" riproduce continuamente l'audio in ingresso, decandendo in un periodo di tempo. Simula suoni in diversi tipi di spazi, dalle piccole stanze alle grandi caverne.

Vedi anche :ref:`AudioEffectDelay<class_AudioEffectDelay>` per un tipo di eco non sfocato.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Effetti audio <../tutorials/audio/audio_effects>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`damping<class_AudioEffectReverb_property_damping>`                     | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectReverb_property_dry>`                             | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`hipass<class_AudioEffectReverb_property_hipass>`                       | ``0.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_feedback<class_AudioEffectReverb_property_predelay_feedback>` | ``0.4``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_msec<class_AudioEffectReverb_property_predelay_msec>`         | ``150.0`` |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`room_size<class_AudioEffectReverb_property_room_size>`                 | ``0.8``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`spread<class_AudioEffectReverb_property_spread>`                       | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`wet<class_AudioEffectReverb_property_wet>`                             | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectReverb_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

Definisce quanto sono riflettenti le pareti della stanza immaginaria. Più riflettenti sono, più alte frequenze ci saranno nel riverbero. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

Il rapporto di volume del suono originale. A 0, viene prodotto solo il suono modificato. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_hipass:

.. rst-class:: classref-property

:ref:`float<class_float>` **hipass** = ``0.0`` :ref:`🔗<class_AudioEffectReverb_property_hipass>`

.. rst-class:: classref-property-setget

- |void| **set_hpf**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_hpf**\ (\ )

Il filtro passa-alto lascia passare i segnali con una frequenza superiore a un determinato punto di taglio e attenua le frequenze inferiori al punto di taglio. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_feedback** = ``0.4`` :ref:`🔗<class_AudioEffectReverb_property_predelay_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_feedback**\ (\ )

Guadagno delle prime copie riflesse. A valori più alti, le prime copie riflesse sono più forti e risuonano più a lungo. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_msec:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_msec** = ``150.0`` :ref:`🔗<class_AudioEffectReverb_property_predelay_msec>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_msec**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_msec**\ (\ )

Tempo tra il segnale originale e le prime riflessioni del segnale riverbero, in millisecondi. Il valore può variare da 20 a 500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_room_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **room_size** = ``0.8`` :ref:`🔗<class_AudioEffectReverb_property_room_size>`

.. rst-class:: classref-property-setget

- |void| **set_room_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_room_size**\ (\ )

Dimensioni della stanza simulata. Valori più grandi significano più echi. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

Allarga o restringe l'immagine stereo della coda del riverbero. A 1, si allarga completamente. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

Il rapporto di volume dell'audio modificato. A 0, viene prodotto solo l'audio originale. Il valore può variare da 0 a 1.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
