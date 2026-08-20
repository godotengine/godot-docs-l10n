:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**Eredita:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

Classe base astratta per le barre di scorrimento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base astratta per le barre di scorrimento, solitamente utilizzata per navigare attraverso contenuti che si estendono oltre l'area visibile di un controllo. Le barre di scorrimento sono controlli basati su :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`custom_step<class_ScrollBar_property_custom_step>` | ``-1.0``                                                            |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                               | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | step                                                     | ``0.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_ScrollBar_theme_icon_decrement>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_ScrollBar_theme_icon_decrement_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_pressed<class_ScrollBar_theme_icon_decrement_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_ScrollBar_theme_icon_increment>`                     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_ScrollBar_theme_icon_increment_highlight>` |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_pressed<class_ScrollBar_theme_icon_increment_pressed>`     |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber<class_ScrollBar_theme_style_grabber>`                        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_highlight<class_ScrollBar_theme_style_grabber_highlight>`    |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`grabber_pressed<class_ScrollBar_theme_style_grabber_pressed>`        |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll<class_ScrollBar_theme_style_scroll>`                          |
   +-----------------------------------+----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`scroll_focus<class_ScrollBar_theme_style_scroll_focus>`              |
   +-----------------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

Emesso quando si scorre la barra di scorrimento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

Sostituisce il passo utilizzato quando si clicca sui pulsanti di incremento e decremento, oppure quando si utilizzano i tasti freccia quando **ScrollBar** è attivo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

Icona utilizzata come pulsante per scorrere la **ScrollBar** verso sinistra o l'alto. Supporta il passo personalizzato tramite la proprietà :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

Visualizzato quando il cursore del mouse passa sopra il pulsante di decremento.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

Visualizzato quando si preme il pulsante di decremento.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

Icona utilizzata come pulsante per scorrere la **ScrollBar** verso destra o il basso. Supporta il passo personalizzato tramite la proprietà :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

Visualizzato quando il cursore del mouse passa sopra il pulsante di incremento.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

Visualizzato quando si preme il pulsante di incremento.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

Utilizzato come texture per il grabber, l'elemento trascinabile che rappresenta lo scorrimento attuale.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

Utilizzato quando il mouse passa sopra il grabber.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

Utilizzato quando il grabber è trascinato.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll** :ref:`🔗<class_ScrollBar_theme_style_scroll>`

Utilizzato come sfondo di questa **ScrollBar**.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll_focus** :ref:`🔗<class_ScrollBar_theme_style_scroll_focus>`

Utilizzato come sfondo quando questa **ScrollBar** ha il focus della GUI.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
