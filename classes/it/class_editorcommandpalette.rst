:github_url: hide

.. _class_EditorCommandPalette:

EditorCommandPalette
====================

**Eredita:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

La tavolozza dei comandi dell'editor Godot.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto che contiene tutti i comandi disponibili e il testo delle loro scorciatoie. È possibile accedere a questi comandi tramite il menu **Editor > Tavolozza dei comandi**.

I nomi dei tasti dei comandi utilizzano delimitatori barra per distinguere le sezioni, ad esempio: ``"esempio/comando1"`` quindi ``esempio`` sarà il nome della sezione.


.. tabs::

 .. code-tab:: gdscript

    var command_palette = EditorInterface.get_command_palette()
    # external_commandè una funzione che verrà chiamata con il comando eseguito.
    var command_callable = Callable(self, "external_command").bind(arguments)
    command_palette.add_command("command", "test/command",command_callable)

 .. code-tab:: csharp

    EditorCommandPalette commandPalette = EditorInterface.Singleton.GetCommandPalette();
    // ExternalCommand è una funzione che verrà chiamata con il comando eseguito.
    Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
    commandPalette.AddCommand("command", "test/command", commandCallable)



\ **Nota:** Questa classe non dovrebbe essere istanziata direttamente. Invece, accedi al singleton tramite :ref:`EditorInterface.get_command_palette()<class_EditorInterface_method_get_command_palette>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_command<class_EditorCommandPalette_method_add_command>`\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_command<class_EditorCommandPalette_method_remove_command>`\ (\ key_name\: :ref:`String<class_String>`\ )                                                                                                                                                |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorCommandPalette_method_add_command:

.. rst-class:: classref-method

|void| **add_command**\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) :ref:`🔗<class_EditorCommandPalette_method_add_command>`

Aggiunge un comando personalizzato all'EditorCommandPalette.

- ``command_name``: :ref:`String<class_String>` (Nome del **Comando**. Viene visualizzato all'utente.)

- ``key_name``: :ref:`String<class_String>` (Nome della chiave per un particolare **Comando**. Serve per identificare univocamente il **Comando**.)

- ``binded_callable``: :ref:`Callable<class_Callable>` (Chiamabile del **Comando**. Verrà eseguito quando il **Comando** viene selezionato.)

- ``shortcut_text``: :ref:`String<class_String>` (Testo di scelta rapida del **Comando**, se disponibile.)

.. rst-class:: classref-item-separator

----

.. _class_EditorCommandPalette_method_remove_command:

.. rst-class:: classref-method

|void| **remove_command**\ (\ key_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorCommandPalette_method_remove_command>`

Rimuove il comando personalizzato dall'EditorCommandPalette.

- ``key_name``: :ref:`String<class_String>` (Nome del tasto per un particolare **Comando**.)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
