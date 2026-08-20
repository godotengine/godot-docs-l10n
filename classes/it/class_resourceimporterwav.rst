:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un file audio WAV per la riproduzione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

WAV è un formato non compresso, il che può fornire una qualità superiore rispetto a Ogg Vorbis e MP3. Ha anche il costo di CPU più basso per la decodifica. Ciò significa che è possibile riprodurre un numero elevato di suoni WAV allo stesso tempo, anche su dispositivi di fascia bassa.

Come predefinito, Godot importa i file WAV usando la compressione lossy Quite OK Audio. È possibile cambiare questa impostazione modificando la proprietà :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importazione di campioni audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

La modalità di compressione da utilizzare durante l'importazione.

- **PCM (Uncompressed):** Importa i dati audio senza alcuna forma di compressione, preservando la massima qualità possibile. Ha il costo di CPU più basso, ma il più alto utilizzo di memoria.

- **IMA ADPCM:** Applica una compressione veloce e con perdita di dati durante l'importazione, riducendo notevolmente la qualità, ma con un basso costo di CPU e un basso utilizzo di memoria. Non supporta la ricerca e supporta solo la modalità di loop Forward.

- **\ `Quite OK Audio <https://qoaformat.org/>`__:** Applica anche una compressione con perdita di dati durante l'importazione, con un costo di CPU leggermente più alto rispetto a IMA ADPCM, ma una qualità molto più alta e il più basso utilizzo di memoria.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

Il punto di inizio del loop da utilizzare quando :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` è **Forward**, **Ping-Pong** o **Backward**. Questo è impostato nei campioni dopo l'inizio del file audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

Il punto di fine del loop da utilizzare quando :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` è **Forward**, **Ping-Pong** o **Backward**. Questo è impostato nei campioni dopo l'inizio del file audio. Un valore di ``-1`` usa la fine del file audio come punto di fine del loop.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Controlla come l'audio dovrebbe essere riprodotto in loop.

- **Detect from WAV:** Utilizza le informazioni sul loop dai metadati WAV.

- **Disabled:** Non riprodurre l'audio in loop, anche se i metadati indicano che la riproduzione del file dovrebbe avere un loop.

- **Forward:** Loop standard dell'audio. Riproduce l'audio in avanti dall'inizio a :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, quindi torna a :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` e ripete.

- **Ping-Pong:** Riproduce l'audio in avanti fino a :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, poi all'indietro fino a :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, poi ripete il ciclo.

- **Back:** Riproduce l'audio all'indietro da :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` a :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, quindi ripete.

\ **Nota:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, il segnale :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` non verrà emesso per l'audio in ripetizione quando raggiunge la fine del file audio, poiché l'audio continuerà a essere riprodotto indefinitamente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

Se ``true``, normalizza il volume audio in modo che il suo volume di picco sia uguale a 0 dB. Quando abilitata, la normalizzazione renderà il suono audio più forte a seconda del suo volume di picco originale.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

Se ``true``, ritaglia automaticamente l'inizio e la fine dell'audio se è inferiore a -50 dB dopo la normalizzazione (vedi :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`). Questo impedisce di avere file con silenzio all'inizio o alla fine, il che ne aumenta inutilmente le dimensioni e aggiunge latenza al momento in cui vengono riprodotti. Un periodo di dissolvenza in entrata/uscita di 500 campioni viene utilizzato anche durante il taglio per evitare schiocchi udibili.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

Se ``true``, forza l'audio importato a usare la quantizzazione a 8 bit se il file sorgente è a 16 bit o superiore.

In genere, non è consigliabile abilitare questa opzione, poiché la quantizzazione a 8 bit riduce notevolmente la qualità dell'audio. Se hai bisogno di file di dimensioni inferiori, considera di usare invece audio Ogg Vorbis o MP3.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

Se impostato su un valore maggiore di ``0``, forza la riduzione della frequenza di campionamento dell'audio a un valore inferiore o uguale al valore specificato in :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>`.

Questo può ridurre notevolmente le dimensioni del file su determinati suoni, senza influire sulla qualità a seconda del contenuto effettivo del suono. Consulta `Best practice <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__ per maggiori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

La frequenza a cui limitare il campione audio importato (in Hz). Efficace solo se :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

Se ``true``, forza l'audio importato a essere mono se il file sorgente è stereo. Ciò riduce la dimensione del file del 50% unendo i due canali in uno.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
