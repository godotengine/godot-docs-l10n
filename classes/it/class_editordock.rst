:github_url: hide

.. _class_EditorDock:

EditorDock
==========

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`FileSystemDock<class_FileSystemDock>`

Contenitore di pannello sganciabile per l'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

EditorDock è un nodo :ref:`Container<class_Container>` che può essere agganciato in uno degli slot di pannelli dell'editor. I pannelli vengono aggiunti dalle estensioni per fornire spazio ai controlli relativi a un :ref:`EditorPlugin<class_EditorPlugin>`. L'editor include alcuni pannelli integrati, come il pannello Scena, il pannello Filesystem, ecc.

È possibile aggiungere un pannello attraverso :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`. Si può personalizzare modificandone le proprietà.

::

    @tool
    extends EditorPlugin

    # Riferimento al pannello.
    var dock

    # Inizializzazione dell'estensione.
    func _enter_tree():
        dock = EditorDock.new()
        dock.title = "My Dock"
        dock.dock_icon = preload("./dock_icon.png")
        dock.default_slot = EditorDock.DOCK_SLOT_RIGHT_UL
        var dock_content = preload("./dock_content.tscn").instantiate()
        dock.add_child(dock_content)
        add_dock(dock)

    # Pulizia dell'estensione.
    func _exit_tree():
        remove_dock(dock)
        dock.queue_free()
        dock = null

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Creare estensioni <../tutorials/plugins/editor/making_plugins>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | accessibility_region                                                  | ``true`` (overrides :ref:`Container<class_Container_property_accessibility_region>`) |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] | :ref:`available_layouts<class_EditorDock_property_available_layouts>` | ``5``                                                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`closable<class_EditorDock_property_closable>`                   | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`DockSlot<enum_EditorDock_DockSlot>`                   | :ref:`default_slot<class_EditorDock_property_default_slot>`           | ``-1``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                           | :ref:`dock_icon<class_EditorDock_property_dock_icon>`                 |                                                                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                             | :ref:`dock_shortcut<class_EditorDock_property_dock_shortcut>`         |                                                                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`force_show_icon<class_EditorDock_property_force_show_icon>`     | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`global<class_EditorDock_property_global>`                       | ``true``                                                                             |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                         | :ref:`icon_name<class_EditorDock_property_icon_name>`                 | ``&""``                                                                              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`layout_key<class_EditorDock_property_layout_key>`               | ``""``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`title<class_EditorDock_property_title>`                         | ``""``                                                                               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                   | :ref:`title_color<class_EditorDock_property_title_color>`             | ``Color(0, 0, 0, 0)``                                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`transient<class_EditorDock_property_transient>`                 | ``false``                                                                            |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_load_layout_from_config<class_EditorDock_private_method__load_layout_from_config>`\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual|     |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_save_layout_to_config<class_EditorDock_private_method__save_layout_to_config>`\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_update_layout<class_EditorDock_private_method__update_layout>`\ (\ layout\: :ref:`int<class_int>`\ ) |virtual|                                                                              |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`close<class_EditorDock_method_close>`\ (\ )                                                                                                                                                  |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_visible<class_EditorDock_method_make_visible>`\ (\ )                                                                                                                                    |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`open<class_EditorDock_method_open>`\ (\ )                                                                                                                                                    |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorDock_signal_closed:

.. rst-class:: classref-signal

**closed**\ (\ ) :ref:`🔗<class_EditorDock_signal_closed>`

Emesso quando il pannello viene chiuso con il pulsante Chiudi nel popup contestuale, prima che venga rimosso dal suo genitore. Vedi :ref:`closable<class_EditorDock_property_closable>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_signal_opened:

.. rst-class:: classref-signal

**opened**\ (\ ) :ref:`🔗<class_EditorDock_signal_opened>`

Emesso quando il pannello viene aperto tramite il menu Editor > Pannelli dell'editor, prima che venga reso visibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorDock_DockLayout:

.. rst-class:: classref-enumeration

flags **DockLayout**: :ref:`🔗<enum_EditorDock_DockLayout>`

.. _class_EditorDock_constant_DOCK_LAYOUT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_VERTICAL** = ``1``

Consente di collocare il pannello negli slot verticali su entrambi i lati dell'editor.

.. _class_EditorDock_constant_DOCK_LAYOUT_HORIZONTAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_HORIZONTAL** = ``2``

Consente di collocare il pannello negli slot orizzontali in basso.

.. _class_EditorDock_constant_DOCK_LAYOUT_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_FLOATING** = ``4``

Consente di rendere il pannello mobile (aperto come finestra separata).

.. _class_EditorDock_constant_DOCK_LAYOUT_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_ALL** = ``7``

Consente di collocare il pannello in tutti gli slot disponibili.

.. rst-class:: classref-item-separator

----

.. _enum_EditorDock_DockSlot:

.. rst-class:: classref-enumeration

enum **DockSlot**: :ref:`🔗<enum_EditorDock_DockSlot>`

.. _class_EditorDock_constant_DOCK_SLOT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_NONE** = ``-1``

Il pannello è chiuso.

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UL** = ``0``

Slot di pannelli, lato sinistro, in alto a sinistra (vuoto nella disposizione predefinita).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BL** = ``1``

Slot di pannelli, lato sinistro, in basso a sinistra (vuoto nella disposizione predefinita).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UR** = ``2``

Slot di pannelli, lato sinistro, in alto a destra (nella disposizione predefinita include i pannelli Scena e Importazione).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BR** = ``3``

Slot di pannelli, lato sinistro, in basso a destra (nella disposizione predefinita include i pannelli FileSystem e Cronologia).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UL** = ``4``

Slot di pannelli, lato destro, in alto a sinistra (nella disposizione predefinita include i pannelli Ispettore, Segnali e Cronologia).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BL** = ``5``

Slot di pannelli, lato destro, in basso a sinistra (vuoto nella disposizione predefinita).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UR** = ``6``

Slot di pannelli, lato destro, in alto a destra (vuoto nella disposizione predefinita).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BR** = ``7``

Slot di pannelli, lato destro, in basso a destra (vuoto nel layout predefinito).

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM** = ``8``

Pannello inferiore.

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_L:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_L** = ``9``

Slot di pannelli in basso, sotto il pannello inferiore, sul lato sinistro.

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_R:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_R** = ``10``

Slot di pannelli in basso, sotto il pannello inferiore, sul lato destro.

.. _class_EditorDock_constant_DOCK_SLOT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_MAX** = ``11``

Rappresenta la dimensione dell'enumerazione :ref:`DockSlot<enum_EditorDock_DockSlot>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EditorDock_property_available_layouts:

.. rst-class:: classref-property

|bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **available_layouts** = ``5`` :ref:`🔗<class_EditorDock_property_available_layouts>`

.. rst-class:: classref-property-setget

- |void| **set_available_layouts**\ (\ value\: |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\]\ )
- |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **get_available_layouts**\ (\ )

Le disposizioni disponibili per questo pannello, come maschera di bit. Come valore predefinito, il pannello consente disposizioni verticali e mobili.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_closable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closable** = ``false`` :ref:`🔗<class_EditorDock_property_closable>`

.. rst-class:: classref-property-setget

- |void| **set_closable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closable**\ (\ )

Se ``true``, il pannello si può chiudere con il pulsante Chiudi nel popup contestuale. I pannello con :ref:`global<class_EditorDock_property_global>` abilitato sono sempre chiudibili.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_default_slot:

.. rst-class:: classref-property

:ref:`DockSlot<enum_EditorDock_DockSlot>` **default_slot** = ``-1`` :ref:`🔗<class_EditorDock_property_default_slot>`

.. rst-class:: classref-property-setget

- |void| **set_default_slot**\ (\ value\: :ref:`DockSlot<enum_EditorDock_DockSlot>`\ )
- :ref:`DockSlot<enum_EditorDock_DockSlot>` **get_default_slot**\ (\ )

Lo slot predefinito utilizzato quando il pannello viene aggiunto con :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`.

Dopo aver aggiunto il pannello, è possibile spostarlo in uno slot diverso e l'editor ne ricorderà automaticamente la posizione tra una sessione e l'altra. Se si rimuove e si riaggiunge il pannello, questo verrà ripristinato allo slot predefinito.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **dock_icon** :ref:`🔗<class_EditorDock_property_dock_icon>`

.. rst-class:: classref-property-setget

- |void| **set_dock_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_dock_icon**\ (\ )

L'icona per il pannello, come texture. Se specificata, sovrascriverà :ref:`icon_name<class_EditorDock_property_icon_name>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **dock_shortcut** :ref:`🔗<class_EditorDock_property_dock_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_dock_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_dock_shortcut**\ (\ )

La scorciatoia da utilizzare per aprire il pannello.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_force_show_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_show_icon** = ``false`` :ref:`🔗<class_EditorDock_property_force_show_icon>`

.. rst-class:: classref-property-setget

- |void| **set_force_show_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_force_show_icon**\ (\ )

Se ``true``, il pannello visualizzerà sempre un'icona, a prescindere da :ref:`EditorSettings.interface/editor/docks/dock_tab_style<class_EditorSettings_property_interface/editor/docks/dock_tab_style>` o :ref:`EditorSettings.interface/editor/docks/bottom_dock_tab_style<class_EditorSettings_property_interface/editor/docks/bottom_dock_tab_style>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_global:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **global** = ``true`` :ref:`🔗<class_EditorDock_property_global>`

.. rst-class:: classref-property-setget

- |void| **set_global**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_global**\ (\ )

Se ``true``, il pannello appare nel menu **Editor > Pannelli dell'editor** e può essere chiuso. I pannello non globali si possono comunque chiudere tramite :ref:`close()<class_EditorDock_method_close>` o quando :ref:`closable<class_EditorDock_property_closable>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_icon_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **icon_name** = ``&""`` :ref:`🔗<class_EditorDock_property_icon_name>`

.. rst-class:: classref-property-setget

- |void| **set_icon_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_icon_name**\ (\ )

L'icona per il pannello, come il nome del tipo del tema ``EditorIcons`` nel tema dell'editor. Puoi trovare l'elenco delle icone disponibili `qui <https://godot-editor-icons.github.io/>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_layout_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **layout_key** = ``""`` :ref:`🔗<class_EditorDock_property_layout_key>`

.. rst-class:: classref-property-setget

- |void| **set_layout_key**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_layout_key**\ (\ )

La chiave che rappresenta questo pannello nel file di disposizione dell'editor. Se vuota, sarà utilizzato il nome visualizzato del pannello.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_EditorDock_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Il titolo della scheda del pannello. Se vuoto, sarà utilizzato il :ref:`Node.name<class_Node_property_name>` del pannello. Se il nome è generato automaticamente (contiene ``@``), sarà utilizzato il nome del primo nodo figlio.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **title_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_EditorDock_property_title_color>`

.. rst-class:: classref-property-setget

- |void| **set_title_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_title_color**\ (\ )

Il colore del titolo nella scheda del pannello. Se l'alfa è ``0.0`` sarà utilizzato il colore predefinito del font.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_transient:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transient** = ``false`` :ref:`🔗<class_EditorDock_property_transient>`

.. rst-class:: classref-property-setget

- |void| **set_transient**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_transient**\ (\ )

Se ``true``, il pannello non viene aperto o chiuso automaticamente dopo aver caricato una disposizione dell'editor, ma solo spostato. Inoltre, non spuò essere aperto tramite una scorciatoia da tastiera. È concepito per i pannelli che si aprono e chiudono in casi specifici, ad esempio dopo aver selezionato un nodo :ref:`TileMap<class_TileMap>` o :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorDock_private_method__load_layout_from_config:

.. rst-class:: classref-method

|void| **_load_layout_from_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__load_layout_from_config>`

Implementa questo metodo per gestire il caricamento della disposizione di questo pannello. È equivalente a :ref:`EditorPlugin._set_window_layout()<class_EditorPlugin_private_method__set_window_layout>`. ``section`` è una sezione univoca basata su :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__save_layout_to_config:

.. rst-class:: classref-method

|void| **_save_layout_to_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDock_private_method__save_layout_to_config>`

Implementa questo metodo per gestire il salvataggio della disposizione di questo pannello. È equivalente a :ref:`EditorPlugin._get_window_layout()<class_EditorPlugin_private_method__get_window_layout>`. ``section`` è una sezione univoca basata su :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__update_layout:

.. rst-class:: classref-method

|void| **_update_layout**\ (\ layout\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__update_layout>`

Implementa questo metodo per gestire il cambio di disposizione per questo pannello. ``layout`` è una delle costanti di :ref:`DockLayout<enum_EditorDock_DockLayout>`.

::

    func _update_layout(layout):
        box_container.vertical = (layout == DOCK_LAYOUT_VERTICAL)

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_EditorDock_method_close>`

Chiude il pannello, nascondendo la sua scheda.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_make_visible:

.. rst-class:: classref-method

|void| **make_visible**\ (\ ) :ref:`🔗<class_EditorDock_method_make_visible>`

Focalizza la scheda (o la finestra, se mobile) del pannello. Se il pannello era chiuso, verrà aperto. Se è un pannello inferiore, rende visibile il pannello inferiore.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_open:

.. rst-class:: classref-method

|void| **open**\ (\ ) :ref:`🔗<class_EditorDock_method_open>`

Apre il pannello. Apparirà nell'ultimo slot di pannelli utilizzato. Se il pannello non ha uno slot predefinito, verrà aperto in modalità mobile.

\ **Nota:** Questa operazione non focalizza il pannello. Se vuoi aprire e focalizzare il pannello, usa :ref:`make_visible()<class_EditorDock_method_make_visible>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
