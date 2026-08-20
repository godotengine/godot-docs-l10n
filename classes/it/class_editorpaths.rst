:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**Eredita:** :ref:`Object<class_Object>`

Singleton disponibile solo per l'editor che restituisce percorsi a varie cartelle e file di dati specifici del sistema operativo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo singleton solo per l'editor restituisce percorsi specifici del sistema operativo a varie cartelle e file di dati. Può essere utilizzato nelle estensioni dell'editor per garantire che i file siano salvati nella posizione corretta su ciascun sistema operativo.

\ **Nota:** Questo singleton non è accessibile nei progetti esportati. Tentare di accedervi in un progetto esportato causerà un errore di script poiché il singleton non sarà dichiarato. Per evitare errori di script nei progetti esportati, usa :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>` per verificare se il singleton è disponibile prima di utilizzarlo.

\ **Nota:** Sulla piattaforma Linux/BSD, Godot è conforme alla `XDG Base Directory Specification <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`__. È possibile sovrascrivere le variabili di ambiente secondo la specifica per modificare i percorsi dei dati dell'editor e del progetto.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Percorsi dei file nei progetti Godot <../tutorials/io/data_paths>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_cache_dir<class_EditorPaths_method_get_cache_dir>`\ (\ ) |const|                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_config_dir<class_EditorPaths_method_get_config_dir>`\ (\ ) |const|                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_data_dir<class_EditorPaths_method_get_data_dir>`\ (\ ) |const|                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_project_settings_dir<class_EditorPaths_method_get_project_settings_dir>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_self_contained_file<class_EditorPaths_method_get_self_contained_file>`\ (\ ) |const|   |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_self_contained<class_EditorPaths_method_is_self_contained>`\ (\ ) |const|               |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

Restituisce il percorso assoluto alla cartella cache dell'utente. Questa cartella dovrebbe essere utilizzata per i dati temporanei che è possibile rimuovere in modo sicuro ogni volta che l'editor viene chiuso (ad esempio le miniature delle risorse generate).

\ **Percorsi predefiniti per piattaforma:**\ 

.. code:: text

    - Windows: %LOCALAPPDATA%\Godot\
    - macOS: ~/Library/Caches/Godot/
    - Linux: ~/.cache/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

Restituisce il percorso assoluto alla cartella di configurazione dell'utente. Questa cartella dovrebbe essere utilizzata per i file di configurazione utente *persistenti*.

\ **Percorsi predefiniti per piattaforma:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (uguale a `get_data_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (uguale a `get_data_dir()`)
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

Restituisce il percorso assoluto alla cartella dati dell'utente. Questa cartella dovrebbe essere utilizzata per i file dati utente *persistenti* come i modelli di esportazione installati.

\ **Percorsi predefiniti per piattaforma:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (uguale a `get_config_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (uguale a `get_config_dir()`)
    - Linux: ~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

Restituisce il percorso relativo alle impostazioni dell'editor per questo progetto. Di solito è ``"res://.godot/editor"``. Ogni progetto ha una sottocartella univoca all'interno del percorso delle impostazioni in cui sono salvate le impostazioni dell'editor specifiche del progetto.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

Restituisce il percorso assoluto al file autonomo che fa in modo che l'istanza attuale dell'editor Godot sia considerata autonoma. Restituisce una stringa vuota se l'istanza attuale dell'editor Godot non è autonoma. Vedi anche :ref:`is_self_contained()<class_EditorPaths_method_is_self_contained>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

Restituisce ``true`` se l'editor è contrassegnato come autonomo, altrimenti ``false``. Quando è abilitata la modalità autonoma, la configurazione utente, i dati e i file di cache sono salvati in una cartella ``editor_data/`` accanto al binario dell'editor. Ciò facilità l'uso portatile e garantisce che l'editor Godot riduca al minimo le scritture di file al di fuori della propria cartella. La modalità autonoma non è disponibile per i progetti esportati.

La modalità autonoma può essere abilitata creando un file denominato ``._sc_`` o ``_sc_`` nella stessa cartella del binario dell'editor o del bundle macOS .app mentre l'editor non è in esecuzione. Vedi anche :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`.

\ **Nota:** Su macOS, il flag di quarantena dovrebbe essere rimosso manualmente prima di usare la modalità autonoma, consulta `Esecuzione su macOS <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__.

\ **Nota:** Su macOS, posizionare ``_sc_`` o qualsiasi altro file all'interno del bundle .app interromperà la firma digitale e lo renderà non portabile, quindi considera di posizionarlo nella stessa cartella del bundle .app.

\ **Nota:** La versione su Steam di Godot usa la modalità autonoma come predefinita.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
