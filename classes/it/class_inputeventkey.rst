:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**Eredita:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta la pressione o il rilascio di un tasto sulla tastiera.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un evento di input per i tasti di una tastiera. Supporta pressioni di tasti, rilasci di tasti ed eventi eco (:ref:`echo<class_InputEventKey_property_echo>`). Può anche essere ricevuto in :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Nota:** Gli eventi ricevuti dalla tastiera solitamente hanno tutte le proprietà impostate. Le mappature degli eventi dovrebbero avere solo uno dei :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` o :ref:`unicode<class_InputEventKey_property_unicode>` impostati.

Quando gli eventi sono confrontati, le proprietà sono controllate in base alla seguente priorità: :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` e :ref:`unicode<class_InputEventKey_property_unicode>`. Gli eventi con il primo valore corrispondente saranno considerati uguali.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`echo<class_InputEventKey_property_echo>`                         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`key_label<class_InputEventKey_property_key_label>`               | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`keycode<class_InputEventKey_property_keycode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` | :ref:`location<class_InputEventKey_property_location>`                 | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventKey_property_pressed>`                   | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`unicode<class_InputEventKey_property_unicode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_key_label<class_InputEventKey_method_as_text_key_label>`\ (\ ) |const|                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_keycode<class_InputEventKey_method_as_text_keycode>`\ (\ ) |const|                                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_location<class_InputEventKey_method_as_text_location>`\ (\ ) |const|                                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_physical_keycode<class_InputEventKey_method_as_text_physical_keycode>`\ (\ ) |const|                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_key_label_with_modifiers<class_InputEventKey_method_get_key_label_with_modifiers>`\ (\ ) |const|               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_keycode_with_modifiers<class_InputEventKey_method_get_keycode_with_modifiers>`\ (\ ) |const|                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_physical_keycode_with_modifiers<class_InputEventKey_method_get_physical_keycode_with_modifiers>`\ (\ ) |const| |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

Se ``true``, il tasto era già stato premuto prima di questo evento. Un evento eco è un evento di tasto ripetuto, inviato quando l'utente tiene premuto il tasto.

\ **Nota:** La frequenza con cui vengono inviati gli eventi eco è in genere di circa 20 eventi al secondo (dopo aver tenuto premuto il tasto per circa mezzo secondo). Tuttavia, è possibile modificare o disabilitare il ritardo (o velocità) di ripetizione del tasto nelle impostazioni del sistema operativo. Per garantire che il progetto funzioni correttamente su tutte le configurazioni, non dare per scontato che l'utente abbia una configurazione di ripetizione del tasto specifica nel comportamento del progetto.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

Represents the localized label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants or any valid Unicode character. Key labels are meant for key prompts.

For keyboard layouts with a single label on the key, it is equivalent to :ref:`keycode<class_InputEventKey_property_keycode>`.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.key_label)`` where ``event`` is the **InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

Etichetta latina stampata sul tasto nel layout di tastiera attuale, che corrisponde a una delle costanti di :ref:`Key<enum_@GlobalScope_Key>`. I codici dei tasti sono pensati per le scorciatoie espresse con una tastiera latina standard, come :kbd:`Ctrl + S` per una scorciatoia "Salva".

Per ottenere una rappresentazione leggibile in chiaro dell'**InputEventKey**, usa ``OS.get_keycode_string(event.keycode)`` dove ``event`` è l'**InputEventKey**.

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

Rappresenta la posizione di un tasto che ha sia una versione sinistra sia una destra, come :kbd:`Shift` o :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

Rappresenta la posizione fisica di un tasto sulla tastiera QWERTY statunitense a 101/102 tasti, che corrisponde a una delle costanti di :ref:`Key<enum_@GlobalScope_Key>`. I codici dei tasti fisici sono pensati per i giochi, come ad esempio il movimento tramite i tasti WASD, dove è importante soltanto la posizione dei tasti.

Per ottenere una rappresentazione leggibile in chiaro dell'**InputEventKey**, utilizza :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` in combinazione con :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>` o :ref:`DisplayServer.keyboard_get_label_from_physical()<class_DisplayServer_method_keyboard_get_label_from_physical>`:


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            var label = DisplayServer.keyboard_get_label_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))
            print(OS.get_keycode_string(label))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            var label = DisplayServer.KeyboardGetLabelFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
            GD.Print(OS.GetKeycodeString(label));
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventKey_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Se ``true``, lo stato del tasto è premuto. Se ``false``, lo stato del tasto è rilasciato.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

Il codice carattere Unicode del tasto (quando pertinente), influenzato dai tasti modificatori. I codici carattere Unicode per caratteri compositi e script complessi potrebbero non essere disponibili a meno che non sia attiva la modalità di input IME. Vedi :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>` per maggiori informazioni. I codici carattere Unicode sono pensati per l'input di testo.

\ **Nota:** Questa proprietà è impostata dal motore solo per un evento di pressione di un tasto. Se l'evento viene inviato da un IME o da una tastiera virtuale, non viene inviato alcun evento di rilascio corrispondente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

Restituisce una rappresentazione :ref:`String<class_String>` dell'etichetta del tasto (:ref:`key_label<class_InputEventKey_property_key_label>`) e dei modificatori dell'evento.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

Restituisce una rappresentazione :ref:`String<class_String>` del codice tasto (:ref:`keycode<class_InputEventKey_property_keycode>`) e dei modificatori dell'evento.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

Restituisce una rappresentazione :ref:`String<class_String>` della posizione (:ref:`location<class_InputEventKey_property_location>`) dell'evento. Questa sarà una stringa vuota se l'evento non è specifico per una posizione.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

Restituisce una rappresentazione :ref:`String<class_String>` del codice tasto fisico (:ref:`physical_keycode<class_InputEventKey_property_physical_keycode>`) e dei modificatori dell'evento.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

Restituisce l'etichetta localizzata del tasto combinata con i tasti modificatori come :kbd:`Shift` o :kbd:`Alt`. Vedi anche :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Per ottenere una rappresentazione leggibile in chiaro di **InputEventKey** con i modificatori, utilizza ``OS.get_keycode_string(event.get_key_label_with_modifiers())`` dove ``event`` è l'**InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

Restituisce il codice tasto latino combinato con i tasti modificatori come :kbd:`Shift` o :kbd:`Alt`. Vedi anche :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Per ottenere una rappresentazione leggibile in chiaro di **InputEventKey** con i modificatori, utilizza ``OS.get_keycode_string(event.get_keycode_with_modifiers())`` dove ``event`` è l'**InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

Restituisce il codice tasto fisico combinato con tasti modificatori come :kbd:`Shift` o :kbd:`Alt`. Vedi anche :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Per ottenere una rappresentazione leggibile in chiaro di **InputEventKey** con modificatori, utilizza ``OS.get_keycode_string(event.get_physical_keycode_with_modifiers())`` dove ``event`` è l'**InputEventKey**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
