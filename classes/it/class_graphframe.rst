:github_url: hide

.. _class_GraphFrame:

GraphFrame
==========

**Eredita:** :ref:`GraphElement<class_GraphElement>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

GraphFrame è un :ref:`GraphElement<class_GraphElement>` speciale che può essere utilizzato per organizzare altri :ref:`GraphElement<class_GraphElement>` all'interno di un :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

GraphFrame è un :ref:`GraphElement<class_GraphElement>` speciale a cui è possibile attaccare altri :ref:`GraphElement<class_GraphElement>`. Si può configurare per ridimensionarsi automaticamente per racchiudere tutti i :ref:`GraphElement<class_GraphElement>` attaccati. Se la cornice è spostata, anche tutti i :ref:`GraphElement<class_GraphElement>` attaccati al suo interno saranno spostati.

Un GraphFrame è sempre mantenuto dietro il livello di collegamento e altri :ref:`GraphElement<class_GraphElement>` all'interno di un :ref:`GraphEdit<class_GraphEdit>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` | ``true``                                                              |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>`   | ``40``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`drag_margin<class_GraphFrame_property_drag_margin>`               | ``16``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter                                                            | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                    | :ref:`tint_color<class_GraphFrame_property_tint_color>`                 | ``Color(0.3, 0.3, 0.3, 0.75)``                                        |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` | ``false``                                                             |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                  | :ref:`title<class_GraphFrame_property_title>`                           | ``""``                                                                |
   +----------------------------------------------+-------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`HBoxContainer<class_HBoxContainer>` | :ref:`get_titlebar_hbox<class_GraphFrame_method_get_titlebar_hbox>`\ (\ ) |
   +-------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`resizer_color<class_GraphFrame_theme_color_resizer_color>`         | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_GraphFrame_theme_style_panel>`                         |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel_selected<class_GraphFrame_theme_style_panel_selected>`       |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar<class_GraphFrame_theme_style_titlebar>`                   |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`titlebar_selected<class_GraphFrame_theme_style_titlebar_selected>` |                                   |
   +---------------------------------+--------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_GraphFrame_signal_autoshrink_changed:

.. rst-class:: classref-signal

**autoshrink_changed**\ (\ ) :ref:`🔗<class_GraphFrame_signal_autoshrink_changed>`

Emesso quando :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` o :ref:`autoshrink_margin<class_GraphFrame_property_autoshrink_margin>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GraphFrame_property_autoshrink_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoshrink_enabled** = ``true`` :ref:`🔗<class_GraphFrame_property_autoshrink_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoshrink_enabled**\ (\ )

Se ``true``, il rettangolo della cornice verrà aggiustato automaticamente per racchiudere tutti i :ref:`GraphElement<class_GraphElement>` allegati.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_autoshrink_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **autoshrink_margin** = ``40`` :ref:`🔗<class_GraphFrame_property_autoshrink_margin>`

.. rst-class:: classref-property-setget

- |void| **set_autoshrink_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_autoshrink_margin**\ (\ )

Il margine attorno ai nodi attaccati che è utilizzato per calcolare la dimensione della cornice quando :ref:`autoshrink_enabled<class_GraphFrame_property_autoshrink_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_drag_margin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_margin** = ``16`` :ref:`🔗<class_GraphFrame_property_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_margin**\ (\ )

Il margine all'interno della cornice che può essere utilizzato per trascinare la cornice.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_color** = ``Color(0.3, 0.3, 0.3, 0.75)`` :ref:`🔗<class_GraphFrame_property_tint_color>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_color**\ (\ )

Il colore della cornice quando :ref:`tint_color_enabled<class_GraphFrame_property_tint_color_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_tint_color_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tint_color_enabled** = ``false`` :ref:`🔗<class_GraphFrame_property_tint_color_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tint_color_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tint_color_enabled**\ (\ )

Se ``true``, il colore tinta verrà utilizzato per tingere la cornice.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_GraphFrame_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Titolo della cornice.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GraphFrame_method_get_titlebar_hbox:

.. rst-class:: classref-method

:ref:`HBoxContainer<class_HBoxContainer>` **get_titlebar_hbox**\ (\ ) :ref:`🔗<class_GraphFrame_method_get_titlebar_hbox>`

Restituisce il :ref:`HBoxContainer<class_HBoxContainer>` utilizzato per la barra del titolo, contenente solo una :ref:`Label<class_Label>` per visualizzare il titolo come predefinito.

Può essere utilizzato per aggiungere controlli personalizzati alla barra del titolo, come pulsanti di opzioni o di chiusura.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_GraphFrame_theme_color_resizer_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **resizer_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_GraphFrame_theme_color_resizer_color>`

Il colore di modulazione colore applicato all'icona di ridimensionamento.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_GraphFrame_theme_style_panel>`

La :ref:`StyleBox<class_StyleBox>` predefinita utilizzata per lo sfondo del **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_panel_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel_selected** :ref:`🔗<class_GraphFrame_theme_style_panel_selected>`

La :ref:`StyleBox<class_StyleBox>` utilizzata per lo sfondo del **GraphFrame** quando è selezionato.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar** :ref:`🔗<class_GraphFrame_theme_style_titlebar>`

La :ref:`StyleBox<class_StyleBox>` utilizzata per la barra del titolo del **GraphFrame**.

.. rst-class:: classref-item-separator

----

.. _class_GraphFrame_theme_style_titlebar_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **titlebar_selected** :ref:`🔗<class_GraphFrame_theme_style_titlebar_selected>`

La :ref:`StyleBox<class_StyleBox>` utilizzata per la barra del titolo del **GraphFrame** quando è selezionato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
