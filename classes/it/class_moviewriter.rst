:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**Eredita:** :ref:`Object<class_Object>`

Classe astratta per codificatori di registrazione video non in tempo reale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Godot può registrare video con simulazione non in tempo reale. Come l':doc:`argomento della riga di comando <../tutorials/editor/command_line_tutorial>`\ ``--fixed-fps``, questo forza il ``delta`` segnalato nelle funzioni :ref:`Node._process()<class_Node_private_method__process>` a essere identico tra i frame, a prescindere dal tempo effettivamente impiegato per renderizzare il frame. Questo può essere utilizzato per registrare video di alta qualità con una frequenza perfetta di frame a prescindere dalle capacità del tuo hardware.

Godot ha 3 **MovieWriter** integrati:

- Contenitore OGV con Theora per il video e Vorbis per l'audio (estensione file ``.ogv``). Compressione con perdita di dati, dimensioni file medie, codifica veloce. La qualità della compressione può essere regolata modificando :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` e :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>`. È possibile visualizzare il file risultante in Godot con :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` e la maggior parte dei lettori video, ma non con i browser web, poiché non supportano Theora.

- Contenitore AVI con MJPEG per video e audio non compresso (estensione file ``.avi``). Compressione con perdita di dati, dimensioni file medie, codifica veloce. La qualità della compressione può essere regolata modificando :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>`. È possibile visualizzare il file risultante nella maggior parte dei lettori video, ma è necessario convertirlo in un altro formato per poterlo visualizzare sul Web o da Godot con :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`. MJPEG non supporta la trasparenza. Il file in AVI risultante può attualmente essere di dimensioni fino a 4 GB.

- Sequenza di immagini PNG per video e WAV per audio (estensione file ``.png``). Compressione senza perdita di dati, dimensioni file grandi, codifica lenta. Progettato per essere codificato in un file video con un altro strumento come `FFmpeg <https://ffmpeg.org/>`__ dopo la registrazione. La trasparenza non è attualmente supportata, anche se la viewport radice è impostata per essere trasparente.

Se c'è bisogno di codificare in un formato diverso o di incanalare un flusso tramite software di terze parti, è possibile estendere la classe **MovieWriter** per creare scrittori di filmato personalizzati. Questo dovrebbe essere in genere fatto usando GDExtension per motivi di prestazioni.

\ **Utilizzo dell'editor:** È possibile specificare un percorso predefinito per il file del filmato in :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`. In alternativa, per l'esecuzione di singole scene, è possibile aggiungere metadati ``movie_file`` al nodo radice, specificando il percorso di un file del filmato che sarà utilizzato durante la registrazione di tale scena. Una volta impostato un percorso, clicca sull'icona del rullino video nell'angolo in alto a destra dell'editor per abilitare la modalità Movie Maker, quindi eseguire una qualsiasi scena come al solito. Il motore inizierà a registrare non appena la schermata di avvio sarà terminata e interromperà la registrazione solo quando il motore si chiuderà. Cliccare nuovamente sull'icona del rullino video per disabilitare la modalità Movie Maker. Si noti che commutare la modalità Movie Maker non influisce sulle istanze già in esecuzione del progetto.

\ **Nota:** MovieWriter è disponibile per l'uso sia nell'editor sia nei progetti esportati, ma *non* è progettato per essere utilizzato dagli utenti finali per registrare video durante la riproduzione. I giocatori che desiderano registrare video di gioco dovrebbero installare strumenti come `OBS Studio <https://obsproject.com/>`__ o `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__.

\ **Nota:** Il supporto di MJPEG (estensione file ``.avi``) dipende dall'abilitazione del modulo ``jpg`` in fase di compilazione (comportamento predefinito).

\ **Nota:** Il supporto di OGV (estensione file ``.ogv``) dipende dall'abilitazione del modulo ``theora`` in fase di compilazione (comportamento predefinito). La compressione Theora è disponibile solo negli eseguibili dell'editor.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_audio_mix_rate<class_MovieWriter_private_method__get_audio_mix_rate>`\ (\ ) |virtual| |required| |const|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`  | :ref:`_get_audio_speaker_mode<class_MovieWriter_private_method__get_audio_speaker_mode>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_supported_extensions<class_MovieWriter_private_method__get_supported_extensions>`\ (\ ) |virtual| |required| |const|                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_file<class_MovieWriter_private_method__handles_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_begin<class_MovieWriter_private_method__write_begin>`\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_write_end<class_MovieWriter_private_method__write_end>`\ (\ ) |virtual| |required|                                                                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_writer<class_MovieWriter_method_add_writer>`\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static|                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

Chiamato quando la frequenza di campionamento audio utilizzata per la registrazione dell'audio è richiesta dal motore. Il valore restituito deve essere specificato in Hz. Il valore predefinito è 48000 Hz se :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` non è sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

Chiamato quando la modalità altoparlante audio utilizzata per la registrazione dell'audio è richiesta dal motore. Ciò può influenzare il numero di canali di output nel file o flusso audio risultante. Il valore predefinito è :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>` se :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` non è sovrascritto.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_supported_extensions>`

Restituisce la lista di estensioni di file supportate per i filmati creati con questo **MovieWriter**.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

Chiamato quando il motore determina se questo **MovieWriter** è in grado di gestire il file nel percorso ``path``. Deve restituire ``true`` se questo **MovieWriter** è in grado di gestire il percorso del file specificato, altrimenti ``false``. In genere, :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` viene sovrascritto come segue per consentire all'utente di registrare un file in qualsiasi percorso con una determinata estensione di file:

::

    func _handles_file(path):
        # Consente di specificare un file di output con estensione di file `.mkv` (senza distinzione tra maiuscole e minuscole),
        # nelle Impostazioni del progetto o con l'argomento di riga di comando `--write-movie <path>`.
        return path.get_extension().to_lower() == "mkv"

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

Chiamato una volta prima che il motore inizi a scrivere i dati video e audio. ``movie_size`` è la larghezza e l'altezza del video da salvare. ``fps`` è il numero di fotogrammi al secondo specificato nelle impostazioni del progetto o utilizzando l':doc:`argomento di riga di comando <../tutorials/editor/command_line_tutorial>` ``--fixed-fps <fps>``.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

Chiamato quando il motore termina la scrittura. Ciò si verifica quando il motore si chiude premendo il pulsante di chiusura del gestore delle finestre o quando viene chiamato :ref:`SceneTree.quit()<class_SceneTree_method_quit>`.

\ **Nota:** Premere :kbd:`Ctrl + C` sul terminale che esegue l'editor o il progetto *non* provoca la chiamata di :ref:`_write_end()<class_MovieWriter_private_method__write_end>`.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

Chiamato alla fine di ogni frame renderizzato. Gli argomenti della funzione ``frame_image`` e ``audio_frame_block`` dovrebbero essere modificati.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

Aggiunge uno scrittore che può essere utilizzato dal motore. Le estensioni di file supportate possono essere impostate sovrascrivendo :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`.

\ **Nota:** :ref:`add_writer()<class_MovieWriter_method_add_writer>` deve essere chiamato abbastanza presto nell'inizializzazione del motore per funzionare, poiché la scrittura dei film è progettata per avviarsi allo stesso tempo del resto del motore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
