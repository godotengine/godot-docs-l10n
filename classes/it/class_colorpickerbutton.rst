:github_url: hide

.. _class_ColorPickerButton:

ColorPickerButton
=================

**Eredita:** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante che apre un :ref:`ColorPicker<class_ColorPicker>` alla pressione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Incapsula un :ref:`ColorPicker<class_ColorPicker>`, rendendolo accessibile premendo un pulsante. Premendo il pulsante si commuta la visibilità del :ref:`ColorPicker<class_ColorPicker>`.

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene proprietà e metodi comuni associati a questo nodo.

\ **Nota:** Per impostazione predefinita, il pulsante potrebbe non essere abbastanza largo da rendere visibile il campione di anteprima colore. Assicurati di impostare :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` su un valore sufficientemente grande da dare al pulsante abbastanza spazio.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di GD Paint 2D <https://godotengine.org/asset-library/asset/2768>`__

- `Demo di trascinamento e rilascio in un interfaccia utente <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_ColorPickerButton_property_color>`                   | ``Color(0, 0, 0, 1)``                                                         |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_alpha<class_ColorPickerButton_property_edit_alpha>`         | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`edit_intensity<class_ColorPickerButton_property_edit_intensity>` | ``true``                                                                      |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | toggle_mode                                                            | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +---------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`ColorPicker<class_ColorPicker>` | :ref:`get_picker<class_ColorPickerButton_method_get_picker>`\ (\ ) |
   +---------------------------------------+--------------------------------------------------------------------+
   | :ref:`PopupPanel<class_PopupPanel>`   | :ref:`get_popup<class_ColorPickerButton_method_get_popup>`\ (\ )   |
   +---------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bg<class_ColorPickerButton_theme_icon_bg>` |
   +-----------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ColorPickerButton_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPickerButton_signal_color_changed>`

Emesso quando il colore cambia.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_picker_created:

.. rst-class:: classref-signal

**picker_created**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_picker_created>`

Emesso quando viene creato il :ref:`ColorPicker<class_ColorPicker>` (il pulsante viene premuto per la prima volta).

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_signal_popup_closed:

.. rst-class:: classref-signal

**popup_closed**\ (\ ) :ref:`🔗<class_ColorPickerButton_signal_popup_closed>`

Emesso quando il :ref:`ColorPicker<class_ColorPicker>` viene chiuso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ColorPickerButton_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ColorPickerButton_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

Il colore attualmente selezionato.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

Se ``true``, il canale alfa nel :ref:`ColorPicker<class_ColorPicker>` visualizzato sarà visibile.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPickerButton_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

Se ``true``, lo slider dell'intensità nel :ref:`ColorPicker<class_ColorPicker>` visualizzato sarà visibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ColorPickerButton_method_get_picker:

.. rst-class:: classref-method

:ref:`ColorPicker<class_ColorPicker>` **get_picker**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_picker>`

Restituisce il :ref:`ColorPicker<class_ColorPicker>` che questo nodo commuta.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere questo nodo o uno dei suoi figli, usa la loro proprietà :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_ColorPickerButton_method_get_popup:

.. rst-class:: classref-method

:ref:`PopupPanel<class_PopupPanel>` **get_popup**\ (\ ) :ref:`🔗<class_ColorPickerButton_method_get_popup>`

Restituisce il :ref:`PopupPanel<class_PopupPanel>` del controllo che consente di connettersi ai segnali di popup. Ciò consente di gestire gli eventi quando il ColorPicker viene mostrato o nascosto.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere questo nodo o uno dei suoi figli, usa la loro proprietà :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_ColorPickerButton_theme_icon_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bg** :ref:`🔗<class_ColorPickerButton_theme_icon_bg>`

Lo sfondo del rettangolo di anteprima del colore sul pulsante.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
