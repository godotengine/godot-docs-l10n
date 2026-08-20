:github_url: hide

.. meta::
	:keywords: switch, toggle

.. _class_CheckButton:

CheckButton
===========

**Eredita:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante che rappresenta una scelta binaria.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CheckButton** è un'interruttore visualizzato come un campo di spunta. È simile a :ref:`CheckBox<class_CheckBox>` in termini di funzionalità, ma ha un aspetto diverso. Per seguire i modelli UX stabiliti, si consiglia di utilizzare **CheckButton** quando attivarlo ha un effetto **immediato** su qualcosa. Ad esempio, può essere utilizzato quando premendolo vengono mostrate o nascoste le impostazioni avanzate, senza chiedere all'utente di confermare questa azione.

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene proprietà e metodi comuni associati a questo nodo.

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

   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_checked_color<class_CheckButton_theme_color_button_checked_color>`              | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_unchecked_color<class_CheckButton_theme_color_button_unchecked_color>`          | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckButton_theme_constant_check_v_offset>`                       | ``0``                 |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckButton_theme_icon_checked>`                                         |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckButton_theme_icon_checked_disabled>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled_mirrored<class_CheckButton_theme_icon_checked_disabled_mirrored>`     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_mirrored<class_CheckButton_theme_icon_checked_mirrored>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckButton_theme_icon_unchecked>`                                     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckButton_theme_icon_unchecked_disabled>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled_mirrored<class_CheckButton_theme_icon_unchecked_disabled_mirrored>` |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_mirrored<class_CheckButton_theme_icon_unchecked_mirrored>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_CheckButton_theme_color_button_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_checked_color>`

Il colore dell'icona di spunta quando la casella è premuta.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_color_button_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_unchecked_color>`

Il colore dell'icona di spunta mancante quando la casella non è premuta.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckButton_theme_constant_check_v_offset>`

L'offset verticale utilizzato durante il rendering delle icone di commutazione (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckButton_theme_icon_checked>`

L'icona da visualizzare quando il **CheckButton** è spuntato (per i layout da sinistra a destra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled>`

L'icona da visualizzare quando il **CheckButton** è spuntato e disabilitato (per i layout da sinistra a destra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled_mirrored>`

L'icona da visualizzare quando il **CheckButton** è spuntato e disabilitato (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_mirrored>`

L'icona da visualizzare quando il **CheckButton** è spuntato (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckButton_theme_icon_unchecked>`

L'icona da visualizzare quando il **CheckButton** non è spuntato (per i layout da sinistra a destra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled>`

L'icona da visualizzare quando il **CheckButton** non è spuntato ed è disabilitato (per i layout da sinistra a destra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled_mirrored>`

L'icona da visualizzare quando il **CheckButton** non è spuntato ed è disabilitato (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_mirrored>`

L'icona da visualizzare quando il **CheckButton** non è spuntato (per i layout da destra a sinistra).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
