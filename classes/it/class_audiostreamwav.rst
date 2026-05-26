:github_url: hide

.. _class_AudioStreamWAV:

AudioStreamWAV
==============

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Memorizza i dati audio caricati dai file WAV.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

AudioStreamWAV memorizza i campioni audio caricati dai file WAV. Per riprodurre l'audio memorizzato, utilizza un :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` (per audio non posizionale) o :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`/:ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` (per audio posizionale). Il suono può essere ripetuto.

Questa classe può essere utilizzata anche per memorizzare dei dati audio PCM generati dinamicamente. Vedi anche :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` per la generazione di audio procedurale.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamWAV_property_data>`             | ``PackedByteArray()`` |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Format<enum_AudioStreamWAV_Format>`     | :ref:`format<class_AudioStreamWAV_property_format>`         | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`     | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` | :ref:`loop_mode<class_AudioStreamWAV_property_loop_mode>`   | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`mix_rate<class_AudioStreamWAV_property_mix_rate>`     | ``44100``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`stereo<class_AudioStreamWAV_property_stereo>`         | ``false``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`tags<class_AudioStreamWAV_property_tags>`             | ``{}``                |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_buffer<class_AudioStreamWAV_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_file<class_AudioStreamWAV_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static|                              |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`save_to_wav<class_AudioStreamWAV_method_save_to_wav>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                 |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioStreamWAV_Format:

.. rst-class:: classref-enumeration

enum **Format**: :ref:`🔗<enum_AudioStreamWAV_Format>`

.. _class_AudioStreamWAV_constant_FORMAT_8_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_8_BITS** = ``0``

Codec di audio PCM a 8 bit.

.. _class_AudioStreamWAV_constant_FORMAT_16_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_16_BITS** = ``1``

Codec di audio PCM a 16 bit.

.. _class_AudioStreamWAV_constant_FORMAT_IMA_ADPCM:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_IMA_ADPCM** = ``2``

L'audio è compresso con perdita di dati come IMA ADPCM.

.. _class_AudioStreamWAV_constant_FORMAT_QOA:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_QOA** = ``3``

L'audio è compresso con perdita di dati come (`Quite OK Audio <https://qoaformat.org/>`__).

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamWAV_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_AudioStreamWAV_LoopMode>`

.. _class_AudioStreamWAV_constant_LOOP_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_DISABLED** = ``0``

L'audio non si ripete.

.. _class_AudioStreamWAV_constant_LOOP_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_FORWARD** = ``1``

L'audio si ripete tra :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` e :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, riproducendosi solo in avanti.

.. _class_AudioStreamWAV_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_PINGPONG** = ``2``

L'audio si ripete tra :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` e :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, riproducendosi avanti e indietro.

.. _class_AudioStreamWAV_constant_LOOP_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_BACKWARD** = ``3``

L'audio si ripete tra :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` e :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`, riproducendosi solo all'indietro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamWAV_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamWAV_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

Contiene i dati audio in byte.

\ **Nota:** Se :ref:`format<class_AudioStreamWAV_property_format>` è impostato su :ref:`FORMAT_8_BITS<class_AudioStreamWAV_constant_FORMAT_8_BITS>`, questa proprietà si aspetta dati PCM a 8 bit con segno. Per convertire da PCM a 8 bit senza segno, sottrai 128 da ogni byte.

\ **Nota:** Se :ref:`format<class_AudioStreamWAV_property_format>` è impostato su :ref:`FORMAT_QOA<class_AudioStreamWAV_constant_FORMAT_QOA>`, questa proprietà si aspetta dati da un file QOA completo.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Formato audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_begin** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_begin>`

.. rst-class:: classref-property-setget

- |void| **set_loop_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_begin**\ (\ )

Il punto iniziale del loop (in numero di campioni, relativo all'inizio del flusso).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_end** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_end>`

.. rst-class:: classref-property-setget

- |void| **set_loop_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_end**\ (\ )

Il punto finale del loop (in numero di campioni, relativo all'inizio del flusso).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **loop_mode** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>`\ )
- :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **get_loop_mode**\ (\ )

La modalità di ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_mix_rate:

.. rst-class:: classref-property

:ref:`int<class_int>` **mix_rate** = ``44100`` :ref:`🔗<class_AudioStreamWAV_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mix_rate**\ (\ )

La frequenza di campionamento per il mixaggio di questo audio. I valori elevati richiedono più spazio di archiviazione, ma risultano in una qualità migliore.

Nei giochi, le frequenze di campionamento comunemente in uso sono ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` e ``48000``.

Secondo il `Teorema del campionamento di Nyquist-Shannon <https://it.wikipedia.org/wiki/Teorema_del_campionamento_di_Nyquist-Shannon>`__, non vi è alcuna differenza di qualità per l'udito umano quando si superano i 40.000 Hz (poiché la maggior parte degli esseri umani può sentire solo fino a ~ 20.000 Hz, spesso meno). Se stai generando suoni dal tono più basso come le voci, le frequenze di campionamento più basse come ``32000`` o ``22050`` potrebbero essere usabili senza perdite di qualità.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_stereo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stereo** = ``false`` :ref:`🔗<class_AudioStreamWAV_property_stereo>`

.. rst-class:: classref-property-setget

- |void| **set_stereo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stereo**\ (\ )

Se ``true``, l'audio è stereo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamWAV_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

Contiene tag definiti dall'utente se presenti nei dati WAV.

I tag comunemente utilizzati includono ``title``, ``artist``, ``album``, ``tracknumber`` e ``date`` (``date`` non ha un formato di data standard).

\ **Nota:** Nessun tag è *garantito* a essere presente in ogni file, quindi assicurati di tenere conto di chiavi che non esistono sempre.

\ **Nota:** Attualmente sono supportati solo i file WAV che utilizzano un blocco ``LIST`` con un identificatore di ``INFO`` per codificare i tag.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamWAV_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_buffer>`

Crea una nuova istanza di **AudioStreamWAV** dal buffer specificato. Il buffer deve contenere dati WAV.

Le chiavi e i valori di ``options`` corrispondono alle proprietà di :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. L'utilizzo di ``options`` è identico a :ref:`load_from_file()<class_AudioStreamWAV_method_load_from_file>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_file**\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_file>`

Crea una nuova istanza **AudioStreamWAV** dal percorso file specificato. Il file deve essere in formato WAV.

Le chiavi e i valori di ``options`` corrispondono alle proprietà di :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`.

\ **Esempio:** Carica il primo file trascinato come WAV e riproducilo:

::

    @onready var audio_player = $AudioStreamPlayer

    func _ready():
        get_window().files_dropped.connect(_on_files_dropped)

    func _on_files_dropped(files):
        if files[0].get_extension() == "wav":
            audio_player.stream = AudioStreamWAV.load_from_file(files[0], {
                    "force/max_rate": true,
                    "force/max_rate_hz": 11025
                })
            audio_player.play()

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_save_to_wav:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_wav**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioStreamWAV_method_save_to_wav>`

Salva l'AudioStreamWAV come file WAV al percorso ``path``. I campioni con formati IMA ADPCM o Quite OK Audio non possono essere salvati.

\ **Nota:** Un'estensione ``.wav`` viene automaticamente aggiunta a ``path`` se manca.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
