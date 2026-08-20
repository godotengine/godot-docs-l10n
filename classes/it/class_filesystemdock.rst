:github_url: hide

.. _class_FileSystemDock:

FileSystemDock
==============

**Eredita:** :ref:`EditorDock<class_EditorDock>` **<** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Pannello dell'editor Godot per la gestione dei file nel progetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è disponibile solo negli :ref:`EditorPlugin<class_EditorPlugin>` e non può essere istanziata. È possibile accedervi tramite :ref:`EditorInterface.get_file_system_dock()<class_EditorInterface_method_get_file_system_dock>`.

Sebbene **FileSystemDock** non esponga alcun metodo per la manipolazione dei file, può ascoltare vari segnali riguardo i file.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_resource_tooltip_plugin<class_FileSystemDock_method_add_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`navigate_to_path<class_FileSystemDock_method_navigate_to_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_resource_tooltip_plugin<class_FileSystemDock_method_remove_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_FileSystemDock_signal_display_mode_changed:

.. rst-class:: classref-signal

**display_mode_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_display_mode_changed>`

Emesso quando l'utente commuta la modalità di visualizzazione di file o la modalità di separazione.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_file_removed:

.. rst-class:: classref-signal

**file_removed**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_file_removed>`

Emesso quando il file al percorso ``file`` è stato rimosso.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_files_moved:

.. rst-class:: classref-signal

**files_moved**\ (\ old_file\: :ref:`String<class_String>`, new_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_files_moved>`

Emesso quando un file viene spostato dal percorso ``old_file`` al percorso ``new_file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_color_changed:

.. rst-class:: classref-signal

**folder_color_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_folder_color_changed>`

Emesso quando le cartelle cambiano colore.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_moved:

.. rst-class:: classref-signal

**folder_moved**\ (\ old_folder\: :ref:`String<class_String>`, new_folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_moved>`

Emesso quando una cartella viene spostata dal percorso ``old_folder`` al percorso ``new_folder``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_removed:

.. rst-class:: classref-signal

**folder_removed**\ (\ folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_removed>`

Emesso quando la cartella al percorso ``folder`` è stata rimossa.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_inherit:

.. rst-class:: classref-signal

**inherit**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_inherit>`

Emesso quando una nuova scena viene creata che eredita la scena nel percorso ``file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_instantiate:

.. rst-class:: classref-signal

**instantiate**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileSystemDock_signal_instantiate>`

Emesso quando le scene specificate vengono istanziate nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_resource_removed:

.. rst-class:: classref-signal

**resource_removed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_FileSystemDock_signal_resource_removed>`

Emesso quando viene rimosso il file di una risorsa esterna (``resource``).

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_selection_changed>`

Emesso quando la selezione cambia. Usa :ref:`EditorInterface.get_selected_paths()<class_EditorInterface_method_get_selected_paths>` nel metodo connesso per ottenere i percorsi selezionati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FileSystemDock_method_add_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **add_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_add_resource_tooltip_plugin>`

Registra un nuovo :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_navigate_to_path:

.. rst-class:: classref-method

|void| **navigate_to_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_method_navigate_to_path>`

Imposta il percorso ``path`` come attualmente selezionato, assicurando che il file o la cartella selezionata sia visibile.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_remove_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **remove_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_remove_resource_tooltip_plugin>`

Rimuove un :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`. Fallisce se l'estensione non è stata aggiunta in precedenza.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
