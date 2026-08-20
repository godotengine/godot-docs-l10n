:github_url: hide

.. meta::
	:keywords: click, press

.. _class_InputEventMouseButton:

InputEventMouseButton
=====================

**Eredita:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta la pressione o il rilascio di un pulsante del mouse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Memorizza informazioni sugli eventi di clic del mouse. Vedi :ref:`Node._input()<class_Node_private_method__input>`.

\ **Nota:** Sui dispositivi Wear OS, l'input rotatorio è mappato su :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_UP<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_UP>` e :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_DOWN<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_DOWN>`. Questo può essere modificato in :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_LEFT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_LEFT>` e :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_RIGHT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_RIGHT>` con l'impostazione :ref:`ProjectSettings.input_devices/pointing/android/rotary_input_scroll_axis<class_ProjectSettings_property_input_devices/pointing/android/rotary_input_scroll_axis>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Mouse e coordinate di input <../tutorials/inputs/mouse_and_input_coordinates>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`MouseButton<enum_@GlobalScope_MouseButton>` | :ref:`button_index<class_InputEventMouseButton_property_button_index>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`canceled<class_InputEventMouseButton_property_canceled>`         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`double_click<class_InputEventMouseButton_property_double_click>` | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`factor<class_InputEventMouseButton_property_factor>`             | ``1.0``   |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventMouseButton_property_pressed>`           | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventMouseButton_property_button_index:

.. rst-class:: classref-property

:ref:`MouseButton<enum_@GlobalScope_MouseButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventMouseButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`MouseButton<enum_@GlobalScope_MouseButton>`\ )
- :ref:`MouseButton<enum_@GlobalScope_MouseButton>` **get_button_index**\ (\ )

L'identificatore del pulsante del mouse, come una delle costanti di :ref:`MouseButton<enum_@GlobalScope_MouseButton>` o della rotellina del mouse.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

Se ``true``, l'evento di pulsante del mouse è stato cancellato.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_double_click:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_click** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_double_click>`

.. rst-class:: classref-property-setget

- |void| **set_double_click**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_click**\ (\ )

Se ``true``, lo stato del pulsante del mouse è un doppio clic.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **factor** = ``1.0`` :ref:`🔗<class_InputEventMouseButton_property_factor>`

.. rst-class:: classref-property-setget

- |void| **set_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_factor**\ (\ )

La quantità (o delta) dell'evento. Quando utilizzato per eventi di scorrimento ad alta precisione, indica la quantità di scorrimento (verticale o orizzontale). È supportato solo su alcune piattaforme; la sensibilità segnalata varia a seconda della piattaforma. Potrebbe essere ``0`` se non supportato.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Se ``true``, lo stato del pulsante del mouse è premuto. Se ``false``, lo stato del pulsante del mouse è rilasciato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
