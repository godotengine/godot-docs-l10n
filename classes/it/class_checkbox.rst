:github_url: hide

.. _class_CheckBox:

CheckBox
========

**Eredita:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante che rappresenta una scelta binaria.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CheckBox** consente all'utente di scegliere una delle due sole opzioni possibili. È simile a :ref:`CheckButton<class_CheckButton>` in termini di funzionalità, ma ha un aspetto diverso. Per seguire i modelli UX stabiliti, si consiglia di utilizzare **CheckBox** quando attivarlo non ha **nessun** effetto immediato su qualcosa. Ad esempio, potrebbe essere utilizzato quando attivarlo farà qualcosa solo dopo aver premuto un pulsante di conferma.

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene proprietà e metodi comuni associati a questo nodo.

Quando :ref:`BaseButton.button_group<class_BaseButton_property_button_group>` specifica un :ref:`ButtonGroup<class_ButtonGroup>`, **CheckBox** cambia il suo aspetto in quello di un pulsante di scelta (radio) e utilizza le varie proprietà del tema ``radio_*``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_checked_color<class_CheckBox_theme_color_checkbox_checked_color>`     | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`checkbox_unchecked_color<class_CheckBox_theme_color_checkbox_unchecked_color>` | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckBox_theme_constant_check_v_offset>`                  | ``0``                 |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckBox_theme_icon_checked>`                                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckBox_theme_icon_checked_disabled>`                  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked<class_CheckBox_theme_icon_radio_checked>`                        |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_checked_disabled<class_CheckBox_theme_icon_radio_checked_disabled>`      |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked<class_CheckBox_theme_icon_radio_unchecked>`                    |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`radio_unchecked_disabled<class_CheckBox_theme_icon_radio_unchecked_disabled>`  |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckBox_theme_icon_unchecked>`                                |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckBox_theme_icon_unchecked_disabled>`              |                       |
   +-----------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_CheckBox_theme_color_checkbox_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_checked_color>`

Il colore dell'icona di spunta quando la casella è premuta.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_color_checkbox_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **checkbox_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckBox_theme_color_checkbox_unchecked_color>`

Il colore dell'icona di spunta mancante quando la casella non è premuta.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckBox_theme_constant_check_v_offset>`

L'offset verticale usato per renderizzare le icone di spunta (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckBox_theme_icon_checked>`

L'icona di spunta da visualizzare quando il **CheckBox** è spuntato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_checked_disabled>`

L'icona di spunta da visualizzare quando il **CheckBox** è spuntato e disabilitato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked** :ref:`🔗<class_CheckBox_theme_icon_radio_checked>`

L'icona di spunta da visualizzare quando il **CheckBox** è configurato come pulsante di opzione ed è selezionato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_checked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_checked_disabled>`

L'icona di spunta da visualizzare quando il **CheckBox** è configurato come pulsante di opzione, è disabilitato e non è spuntato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked>`

L'icona di spunta da visualizzare quando il **CheckBox** è configurato come pulsante di opzione e non è spuntato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_radio_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **radio_unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_radio_unchecked_disabled>`

L'icona di spunta da visualizzare quando il **CheckBox** è configurato come pulsante di opzione, è disabilitato e non è spuntato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckBox_theme_icon_unchecked>`

L'icona di spunta da visualizzare quando il **CheckBox** non è spuntato.

.. rst-class:: classref-item-separator

----

.. _class_CheckBox_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckBox_theme_icon_unchecked_disabled>`

L'icona di spunta da visualizzare quando il **CheckBox** non è spuntato ed è disabilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
