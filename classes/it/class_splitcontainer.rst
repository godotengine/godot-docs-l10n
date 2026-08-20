:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

Un contenitore che organizza controlli figlio orizzontalmente o verticalmente e fornisce trascinatori per regolare i rapporti di divisione tra di essi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un contenitore che organizza controlli figlio orizzontalmente o verticalmente e crea trascinatori tra di essi. Il trascinatori si possono trascinare per cambiare i rapporti di dimensione tra i controlli figlio.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`collapsed<class_SplitContainer_property_collapsed>`                                         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_area_highlight_in_editor<class_SplitContainer_property_drag_area_highlight_in_editor>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_begin<class_SplitContainer_property_drag_area_margin_begin>`               | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_end<class_SplitContainer_property_drag_area_margin_end>`                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_offset<class_SplitContainer_property_drag_area_offset>`                           | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_nested_intersections<class_SplitContainer_property_drag_nested_intersections>`         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` | :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>`                       | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`split_offset<class_SplitContainer_property_split_offset>`                                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                 | :ref:`split_offsets<class_SplitContainer_property_split_offsets>`                                 | ``PackedInt32Array(0)`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>`                 | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`vertical<class_SplitContainer_property_vertical>`                                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                     | :ref:`clamp_split_offset<class_SplitContainer_method_clamp_split_offset>`\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                              | :ref:`get_drag_area_control<class_SplitContainer_method_get_drag_area_control>`\ (\ )                                       |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] | :ref:`get_drag_area_controls<class_SplitContainer_method_get_drag_area_controls>`\ (\ )                                     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_color<class_SplitContainer_theme_color_touch_dragger_color>`                 | ``Color(1, 1, 1, 0.3)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_hover_color<class_SplitContainer_theme_color_touch_dragger_hover_color>`     | ``Color(1, 1, 1, 0.6)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_pressed_color<class_SplitContainer_theme_color_touch_dragger_pressed_color>` | ``Color(1, 1, 1, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`autohide<class_SplitContainer_theme_constant_autohide>`                                    | ``1``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`        | ``6``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`separation<class_SplitContainer_theme_constant_separation>`                                | ``12``                  |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber<class_SplitContainer_theme_icon_grabber>`                                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`touch_dragger<class_SplitContainer_theme_icon_touch_dragger>`                              |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>`               |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

Emesso quando l'utente finisce di trascinare.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

Emesso quando l'utente inizia a trascinare.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

Emesso quando un trascinatore qualsiasi viene trascinato dall'utente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

L'icona del trascinatore divisore è sempre visibile quando :ref:`autohide<class_SplitContainer_theme_constant_autohide>` è ``false``, altrimenti visibile solo quando il cursore ci passa sopra.

Le dimensioni dell'icona del grabber determinano la separazione minima (:ref:`separation<class_SplitContainer_theme_constant_separation>`).

L'icona del trascinatore viene nascosta automaticamente se la lunghezza dell'icona del grabber è maggiore della barra di divisione.

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

L'icona del trascinatore divisore non è mai visibile, a prescindere dal valore di :ref:`autohide<class_SplitContainer_theme_constant_autohide>`.

Le dimensioni dell'icona del grabber determinano la separazione minima (:ref:`separation<class_SplitContainer_theme_constant_separation>`).

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

L'icona del trascinatore divisore non è visibile, e la barra di divisione è ridotta a spessore zero.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

Se ``true``, i trascinatori saranno disabilitati e i figli saranno dimensionati come se :ref:`split_offsets<class_SplitContainer_property_split_offsets>` fosse ``0``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

Evidenzia il :ref:`Rect2<class_Rect2>` dell'area di trascinamento in modo da poter vedere dove si trova durante lo sviluppo. L'area di trascinamento è dorata se :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` è ``true``, e rossa se ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

Riduce le dimensioni dell'area di trascinamento e di :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` della barra di divisione all'inizio del contenitore.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

Riduce le dimensioni dell'area di trascinamento e di :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` della barra di divisione alla fine del contenitore.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

Sposta l'area di trascinamento sull'asse del contenitore per evitare che si sovrapponga alla :ref:`ScrollBar<class_ScrollBar>` o ad altri :ref:`Control<class_Control>` selezionabili di un nodo figlio.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_nested_intersections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_nested_intersections** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_nested_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_drag_nested_intersections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_nested_intersections**\ (\ )

Aggiunge trascinatori in più all'intersezione dei trascinatori di due SplitContainer per consentire di trascinare entrambi alla volta. Deve essere impostata su ``true`` per entrambi gli SplitContainer, e uno deve essere un discendente dell'altro. Devono inoltre essere ortogonali (avere i loro :ref:`vertical<class_SplitContainer_property_vertical>` diversi) e il discendente deve trovarsi accanto ad almeno uno dei trascinatori dell'antenato (entro :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`).

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

Determina la visibilità del trascinatore. Questa proprietà non determina se il trascinamento è abilitato o meno. Utilizzare :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` a questo scopo.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

Abilita o disabilita il trascinamento diviso.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**Deprecato:** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

Il primo elemento di :ref:`split_offsets<class_SplitContainer_property_split_offsets>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

Offset in pixel per ciascun trascinatore. Ciascuno è l'offset della divisione tra i nodi :ref:`Control<class_Control>` prima e dopo il trascinatore, con ``0`` che indica la posizione predefinita. La posizione predefinita si basa sui flag di espansione e sulle dimensioni minime dei nodi :ref:`Control<class_Control>`. Vedi :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`, :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>` e :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`.

Se nessuno dei nodi :ref:`Control<class_Control>` prima del trascinatore è espanso, la posizione predefinita sarà all'inizio dello **SplitContainer**. Se nessuno dei nodi :ref:`Control<class_Control>` dopo il trascinatore è espanso, la posizione predefinita sarà alla fine dello **SplitContainer**. Se il trascinatore si trova tra nodi :ref:`Control<class_Control>` espansi, la posizione predefinita sarà al centro, in base ai valori di :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>` e alle dimensioni minime.

\ **Nota:** Se gli offset di suddivisione fanno sovrapporre i nodi :ref:`Control<class_Control>`, la prima suddivisione avrà la priorità per risolvere le posizioni.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

Se ``true``, sarà abilitato un trascinatore ottimizzato per il tocco per migliorare l'usabilità su schermi più piccoli. A differenza del grabber standard, questo trascinatore si sovrappone agli elementi figlio del **SplitContainer** e non influisce sulla loro separazione minima. Il grabber standard non sarà più visualizzato quando questa opzione è abilitata.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Se ``true``, lo **SplitContainer** organizzerà i suoi elementi figlio verticalmente, anziché orizzontalmente.

Non può essere modificato quando si utilizzano :ref:`HSplitContainer<class_HSplitContainer>` e :ref:`VSplitContainer<class_VSplitContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

Limita i valori di :ref:`split_offsets<class_SplitContainer_property_split_offsets>` per garantire che rientrino in intervalli validi e non si sovrappongano. In caso di sovrapposizioni, questo metodo da priorità a un offset di suddivisione (all'indice ``priority_index``) limitando a esso tutti gli offset di suddivisione sovrapposti.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**Deprecato:** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

Restituisce l'area di trascinamento :ref:`Control<class_Control>`. Ad esempio, è possibile spostare un pulsante preconfigurato nell'area di trascinamento :ref:`Control<class_Control>` in modo che scorra insieme alla barra di divisione. Provare a impostare gli ancoraggi del :ref:`Button<class_Button>` su ``center`` prima della chiamata ``reparent()``.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())

\ **Nota:** L'area di trascinamento :ref:`Control<class_Control>` viene disegnata sui figli di **SplitContainer**, quindi anche gli oggetti di disegno :ref:`CanvasItem<class_CanvasItem>` chiamati da :ref:`Control<class_Control>` e i figli aggiunti a :ref:`Control<class_Control>` appariranno sui figli di **SplitContainer**. Provare a impostare :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` dei figli personalizzati su :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` per evitare di bloccare il trascinamento del mouse, se è desiderato.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un arresto anomalo.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

Restituisce un :ref:`Array<class_Array>` dei :ref:`Control<class_Control>` area di trascinamento. Questi sono i nodi :ref:`Control<class_Control>` interattivi tra ciascun elemento figlio. Ad esempio, è possibile spostare un pulsante preconfigurato in un :ref:`Control<class_Control>` area di trascinamento in modo che scorra insieme alla barra di divisione. Prova a impostare gli ancoraggi del :ref:`Button<class_Button>` su ``center`` prima di chiamare :ref:`Node.reparent()<class_Node_method_reparent>`.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **Nota:** I :ref:`Control<class_Control>` area di trascinamento sono disegnati sopra i figli di **SplitContainer**, quindi anche gli oggetti di disegno :ref:`CanvasItem<class_CanvasItem>` chiamati da un'area di trascinamento e i figli aggiunti appariranno sui figli di **SplitContainer**. Provare a impostare :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` dei figli personalizzati su :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` per evitare di bloccare il trascinamento del mouse, se è desiderato.

\ **Attenzione:** Questi sono nodi interni obbligatori, rimuoverli o liberarli potrebbe causare un arresto anomalo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

Il colore del trascinatore di tocco.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

Il colore del trascinatore di tocco al passaggio del mouse.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

Il colore del trascinatore di tocco quando premuto.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

Valore booleano. Se ``1`` (``true``), i trascinatori si nasconderanno automaticamente quando non si trovano sotto il cursore. Se ``0`` (``false``), i trascinatori sono sempre visibili. :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` deve essere :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

Lo spessore minimo dell'area su cui gli utenti possono cliccare per afferrare una barra di divisione. Questo garantisce che la barra di divisione sia comunque trascinabile se :ref:`separation<class_SplitContainer_theme_constant_separation>` o le dimensioni di :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` sono troppo fini da selezionare facilmente.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

Lo spessore della barra di divisione, ovvero lo spazio tra ogni figlio del contenitore. Questo è sovrascritto dalle dimensioni dell'icona del grabber se :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` è impostato su :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>` o :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>` e :ref:`separation<class_SplitContainer_theme_constant_separation>` è minore della dimensione dell'icona del grabber sullo stesso asse.

\ **Nota:** Per ottenere valori di :ref:`separation<class_SplitContainer_theme_constant_separation>` minori delle dimensioni dell'icona del grabber, ad esempio una linea sottile di ``1 px``, imposta :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` o :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` su un nuovo :ref:`ImageTexture<class_ImageTexture>`, che imposta effettivamente le dimensioni dell'icona del grabber su ``0 px``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

L'icona utilizzata per il grabber disegnato nelle separazioni. È utilizzata solo in :ref:`HSplitContainer<class_HSplitContainer>` e :ref:`VSplitContainer<class_VSplitContainer>`. Per **SplitContainer**, vedi invece :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` e :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

L'icona utilizzata per il grabber disegnato nelle separazioni quando :ref:`vertical<class_SplitContainer_property_vertical>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

L'icona utilizzata per il trascinatore quando :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` è ``true`` e :ref:`vertical<class_SplitContainer_property_vertical>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

L'icona utilizzata per il trascinatore quando :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` è ``true``. Questa è utilizzata solo in :ref:`HSplitContainer<class_HSplitContainer>` e :ref:`VSplitContainer<class_VSplitContainer>`. Per **SplitContainer**, vedi invece :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` e :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

L'icona utilizzata per il grabber disegnato nelle separazioni quando :ref:`vertical<class_SplitContainer_property_vertical>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

L'icona utilizzata per trascinatore quando :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` è ``true`` e :ref:`vertical<class_SplitContainer_property_vertical>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

Determina lo sfondo della barra di divisione se il suo spessore è maggiore di zero.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
