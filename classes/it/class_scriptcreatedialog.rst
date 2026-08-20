:github_url: hide

.. _class_ScriptCreateDialog:

ScriptCreateDialog
==================

**Eredita:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Finestra di dialogo popup dell'editor Godot per la creazione di nuovi file di :ref:`Script<class_Script>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Lo **ScriptCreateDialog** crea file di script in base a un modello fornito per un determinato linguaggio di scripting. L'uso comune è per configurare i suoi campi prima di chiamare uno dei metodi :ref:`Window.popup()<class_Window_method_popup>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var dialog = ScriptCreateDialog.new();
        dialog.config("Node", "res://new_node.gd") # Per i tipi integrati del motore.
        dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # Per i tipi da script.
        dialog.popup_centered()

 .. code-tab:: csharp

    public override void _Ready()
    {
        var dialog = new ScriptCreateDialog();
        dialog.Config("Node", "res://NewNode.cs"); // Per i tipi integrati del motore.
        dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // Per i tipi da script.
        dialog.PopupCentered();
    }



.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | dialog_hide_on_ok | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | ok_button_text    | ``"Create"`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_ok_button_text>`) |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title             | ``"Attach Node Script"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`config<class_ScriptCreateDialog_method_config>`\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ScriptCreateDialog_signal_script_created:

.. rst-class:: classref-signal

**script_created**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptCreateDialog_signal_script_created>`

Emesso quando l'utente clicca sul pulsante OK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ScriptCreateDialog_method_config:

.. rst-class:: classref-method

|void| **config**\ (\ inherits\: :ref:`String<class_String>`, path\: :ref:`String<class_String>`, built_in_enabled\: :ref:`bool<class_bool>` = true, load_enabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ScriptCreateDialog_method_config>`

Precompila i campi obbligatori per configurare lo ScriptCreateDialog per l'utilizzo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
