:github_url: hide

.. _class_ConfirmationDialog:

ConfirmationDialog
==================

**Eredita:** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`EditorCommandPalette<class_EditorCommandPalette>`, :ref:`FileDialog<class_FileDialog>`, :ref:`ScriptCreateDialog<class_ScriptCreateDialog>`

Finestra di dialogo utilizzata per confermare le azioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A dialog used for confirmation of actions. This window is similar to :ref:`AcceptDialog<class_AcceptDialog>`, but pressing its Cancel button can have a different outcome from pressing the OK button. The order of the two buttons varies depending on the host OS.

\ **Note:** The dialog controls the size of its buttons, any manual size changes will be overridden. Use the :ref:`AcceptDialog.buttons_min_width<class_AcceptDialog_theme_constant_buttons_min_width>` and :ref:`AcceptDialog.buttons_min_height<class_AcceptDialog_theme_constant_buttons_min_height>` theme constants instead.

To get cancel action, you can use:


.. tabs::

 .. code-tab:: gdscript

    get_cancel_button().pressed.connect(_on_canceled)

 .. code-tab:: csharp

    GetCancelButton().Pressed += OnCanceled;



\ **Note:** :ref:`AcceptDialog<class_AcceptDialog>` is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`cancel_button_text<class_ConfirmationDialog_property_cancel_button_text>` | ``"Cancel"``                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | min_size                                                                        | ``Vector2i(200, 70)`` (overrides :ref:`Window<class_Window_property_min_size>`) |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | size                                                                            | ``Vector2i(200, 100)`` (overrides :ref:`Window<class_Window_property_size>`)    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_cancel_button<class_ConfirmationDialog_method_get_cancel_button>`\ (\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ConfirmationDialog_property_cancel_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **cancel_button_text** = ``"Cancel"`` :ref:`🔗<class_ConfirmationDialog_property_cancel_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_cancel_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_cancel_button_text**\ (\ )

Il testo visualizzato dal pulsante di cancellazione (vedi :ref:`get_cancel_button()<class_ConfirmationDialog_method_get_cancel_button>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ConfirmationDialog_method_get_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_cancel_button**\ (\ ) :ref:`🔗<class_ConfirmationDialog_method_get_cancel_button>`

Restituisce il pulsante Annulla.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere esso o uno dei suoi figli, usa la loro proprietà :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
