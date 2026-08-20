:github_url: hide

.. _class_Shortcut:

Shortcut
========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una scorciatoia per associare input.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Le scorciatoie (note anche come tasti di scelta rapida) sono contenitori di risorse :ref:`InputEvent<class_InputEvent>`. Sono comunemente utilizzate per interagire con un elemento :ref:`Control<class_Control>` da un :ref:`InputEvent<class_InputEvent>`.

Una scorciatoia può contenere più risorse :ref:`InputEvent<class_InputEvent>`, rendendo possibile attivare un'azione con più input diversi.

\ **Esempio:** Cattura la scorciatoia :kbd:`Ctrl + S` attraverso una risorsa **Shortcut**:


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var save_shortcut = Shortcut.new()
    func _ready():
        var key_event = InputEventKey.new()
        key_event.keycode = KEY_S
        key_event.ctrl_pressed = true
        key_event.command_or_control_autoremap = true # Sostituisce Ctrl per Command su Mac.
        save_shortcut.events = [key_event]

    func _input(event):
        if save_shortcut.matches_event(event) and event.is_pressed() and not event.is_echo():
            print("Scorciatoia Salva attivata!")
            get_viewport().set_input_as_handled()

 .. code-tab:: csharp

    using Godot;

    public partial class MyNode : Node
    {
        private readonly Shortcut _saveShortcut = new Shortcut();

        public override void _Ready()
        {
            InputEventKey keyEvent = new InputEventKey
            {
                Keycode = Key.S,
                CtrlPressed = true,
                CommandOrControlAutoremap = true, // Sostituisce Ctrl per Command su Mac.
            };

            _saveShortcut.Events = [keyEvent];
        }

        public override void _Input(InputEvent @event)
        {
            if (@event is InputEventKey keyEvent &&
                _saveShortcut.MatchesEvent(@event) &&
                keyEvent.Pressed && !keyEvent.Echo)
            {
                GD.Print("Scorciatoia Salva attivata!");
                GetViewport().SetInputAsHandled();
            }
        }
    }



.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`events<class_Shortcut_property_events>` | ``[]`` |
   +---------------------------+-----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_as_text<class_Shortcut_method_get_as_text>`\ (\ ) |const|                                                  |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_valid_event<class_Shortcut_method_has_valid_event>`\ (\ ) |const|                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`matches_event<class_Shortcut_method_matches_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Shortcut_property_events:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **events** = ``[]`` :ref:`🔗<class_Shortcut_property_events>`

.. rst-class:: classref-property-setget

- |void| **set_events**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_events**\ (\ )

L'array di :ref:`InputEvent<class_InputEvent>` della scorciatoia.

Generalmente l':ref:`InputEvent<class_InputEvent>` utilizzato è un :ref:`InputEventKey<class_InputEventKey>`, anche se può essere un qualsiasi tipo di :ref:`InputEvent<class_InputEvent>`, incluso un :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Shortcut_method_get_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_as_text**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_get_as_text>`

Restituisce il primo valido :ref:`InputEvent<class_InputEvent>` della scorciatoia come :ref:`String<class_String>`.

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_has_valid_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_event**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_has_valid_event>`

Restituisce se :ref:`events<class_Shortcut_property_events>` contiene un :ref:`InputEvent<class_InputEvent>` valido.

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_matches_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **matches_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |const| :ref:`🔗<class_Shortcut_method_matches_event>`

Restituisce se qualunque degli :ref:`InputEvent<class_InputEvent>` in :ref:`events<class_Shortcut_property_events>` è uguale a ``event``. Questo utilizza :ref:`InputEvent.is_match()<class_InputEvent_method_is_match>` per confrontare gli eventi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
