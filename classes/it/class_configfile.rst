:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di supporto per gestire i file in stile INI.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe di supporto può essere utilizzata per memorizzare i valori :ref:`Variant<class_Variant>` sul file system attraverso la formattazione in stile INI. I valori memorizzati sono identificati da una sezione e da una chiave:

.. code:: text

    [section]
    some_key=42
    string_example="Hello World3D!"
    a_vector=Vector3(1, 0, 2)

I dati memorizzati possono essere salvati o analizzati da un file, sebbene gli oggetti ConfigFile possano anche essere utilizzati direttamente senza accedere al file system.

L'esempio seguente mostra come creare un semplice **ConfigFile** e salvarlo su disco:


.. tabs::

 .. code-tab:: gdscript

    # Crea un nuovo oggetto ConfigFile.
    var config = ConfigFile.new()

    # Memorizza alcuni valori.
    config.set_value("Player1", "player_name", "Steve")
    config.set_value("Player1", "best_score", 10)
    config.set_value("Player2", "player_name", "V3geta")
    config.set_value("Player2", "best_score", 9001)

    # Salvalo in un file (sovrascrivilo se esiste già).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Crea un nuovo oggetto ConfigFile.
    var config = new ConfigFile();

    // Memorizza alcuni valori.
    config.SetValue("Player1", "player_name", "Steve");
    config.SetValue("Player1", "best_score", 10);
    config.SetValue("Player2", "player_name", "V3geta");
    config.SetValue("Player2", "best_score", 9001);

    // Salvalo in un file (sovrascrivilo se esiste già).
    config.Save("user://scores.cfg");



Questo esempio mostra come caricare il file sopra:


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # Carica i dati da un file.
    var err = config.load("user://scores.cfg")

    # Se il file non è stato caricato, ignoralo.
    if err != OK:
        return

    # Itera su tutte le sezioni.
    for player in config.get_sections():
        # Recupera i dati per ogni sezione.
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Carica i dati da un file.
    Error err = config.Load("user://scores.cfg");

    // Se il file non è stato caricato, ignoralo.
    if (err != Error.Ok)
    {
        return;
    }

    // Itera su tutte le sezioni.
    foreach (String player in config.GetSections())
    {
        // Recupera i dati per ogni sezione.
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



Qualsiasi operazione che modifichi il ConfigFile come :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>` o :ref:`erase_section()<class_ConfigFile_method_erase_section>`, modifica solo ciò che è caricato in memoria. Se è necessario applicare le modifiche in un file, bisogna salvare le modifiche con :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>` o :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Tieni presente che i nomi di sezione e proprietà non possono contenere spazi. Tutto ciò che segue uno spazio sarà ignorato durante il salvataggio e il caricamento.

I ConfigFile possono anche contenere righe di commento scritte manualmente che iniziano con un punto e virgola (``;``). Tali righe verranno ignorate durante l'analisi del file. Nota che i commenti saranno persi durante il salvataggio del ConfigFile. Questo può essere utile per i file di configurazione del server dedicato, che in genere non vengono mai sovrascritti senza un'azione esplicita dell'utente.

\ **Nota:** L'estensione del file assegnata a un ConfigFile non ha alcun impatto sulla sua formattazione o sul suo comportamento. Per convenzione, qui viene utilizzata l'estensione ``.cfg``, ma è valida anche qualsiasi altra estensione come ``.ini``. Poiché né ``.cfg`` né ``.ini`` sono standardizzati, la formattazione del ConfigFile di Godot potrebbe essere diversa dai file scritti da altri programmi.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_ConfigFile_method_clear>`\ (\ )                                                                                                                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`encode_to_text<class_ConfigFile_method_encode_to_text>`\ (\ ) |const|                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section<class_ConfigFile_method_erase_section>`\ (\ section\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section_key<class_ConfigFile_method_erase_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ )                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_section_keys<class_ConfigFile_method_get_section_keys>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_sections<class_ConfigFile_method_get_sections>`\ (\ ) |const|                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_value<class_ConfigFile_method_get_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section<class_ConfigFile_method_has_section>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section_key<class_ConfigFile_method_has_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const|                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load<class_ConfigFile_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted<class_ConfigFile_method_load_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted_pass<class_ConfigFile_method_load_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`parse<class_ConfigFile_method_parse>`\ (\ data\: :ref:`String<class_String>`\ )                                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ConfigFile_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted<class_ConfigFile_method_save_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted_pass<class_ConfigFile_method_save_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_value<class_ConfigFile_method_set_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Rimuove tutto il contenuto della configurazione.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Ottiene la versione del testo di questo file di configurazione (lo stesso testo che sarebbe scritto in un file).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Elimina la sezione specificata insieme a tutte le coppie di chiave-valore al suo interno. Genera un errore se la sezione non esiste.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Elimina la chiave specificata in una sezione. Genera un errore se la sezione o la chiave non esistono.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Restituisce un array di tutti gli identificatori di chiave definiti nella sezione specificata. Genera un errore e restituisce un array vuoto se la sezione non esiste.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Restituisce un array di tutti gli identificatori di sezione definiti.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Restituisce il valore attuale per la sezione e la chiave specificate. Se la sezione o la chiave non esistono, il metodo restituisce il valore di riserva ``default``. Se ``default`` non è specificato o è impostato su ``null``, viene generato anche un errore.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Restituisce ``true`` se la sezione specificata esiste.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Restituisce ``true`` se la coppia di sezione-chiave specificata esiste.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Carica il file di configurazione specificato come parametro. Il contenuto del file è analizzato e caricato nell'oggetto **ConfigFile** su cui è stato chiamato il metodo.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Carica il file di configurazione crittografato specificato come parametro, utilizzando la chiave ``key`` fornita per decrittografarlo. Il contenuto del file viene è e caricato nell'oggetto **ConfigFile** su cui è stato chiamato il metodo.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Carica il file di configurazione crittografato specificato come parametro, utilizzando la ``password`` fornita per decrittografarlo. Il contenuto del file viene è e caricato nell'oggetto **ConfigFile** su cui è stato chiamato il metodo.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Analizza la stringa passata come contenuto di un file di configurazione. La stringa è analizzata e caricata nell'oggetto ConfigFile su cui è stato chiamato il metodo.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Salva il contenuto dell'oggetto **ConfigFile** nel file specificato come parametro. Il file in uscita utilizza una struttura in stile INI.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Salva il contenuto dell'oggetto **ConfigFile** nel file crittografato in AES-256 specificato come parametro, utilizzando la chiave ``key`` fornita per crittografarlo. Il file in uscita utilizza una struttura in stile INI.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Salva il contenuto dell'oggetto **ConfigFile** nel file crittografato in AES-256 specificato come parametro, utilizzando la ``password`` fornita per crittografarlo. Il file in uscita utilizza una struttura in stile INI.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o uno degli altri valori di :ref:`Error<enum_@GlobalScope_Error>` se l'operazione non è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Assegna un valore alla chiave specificata della sezione specificata. Se la sezione o la chiave non esistono, sono create. Passando un valore ``null`` elimina la chiave specificata se esiste, e elimina la sezione se risulta vuota una volta rimossa la chiave.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
