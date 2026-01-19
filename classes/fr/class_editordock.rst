:github_url: hide

.. _class_EditorDock:

EditorDock
==========

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`FileSystemDock<class_FileSystemDock>`

Dockable container for the editor.

.. rst-class:: classref-introduction-group

Description
-----------

EditorDock is a :ref:`Container<class_Container>` node that can be docked in one of the editor's dock slots. Docks are added by plugins to provide space for controls related to an :ref:`EditorPlugin<class_EditorPlugin>`. The editor comes with a few built-in docks, such as the Scene dock, FileSystem dock, etc.

You can add a dock by using :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`. The dock can be customized by changing its properties.

::

    @tool
    extends EditorPlugin

    # Dock reference.
    var dock

    # Plugin initialization.
    func _enter_tree():
        dock = EditorDock.new()
        dock.title = "My Dock"
        dock.dock_icon = preload("./dock_icon.png")
        dock.default_slot = EditorDock.DOCK_SLOT_RIGHT_UL
        var dock_content = preload("./dock_content.tscn").instantiate()
        dock.add_child(dock_content)
        add_dock(dock)

    # Plugin clean-up.
    func _exit_tree():
        remove_dock(dock)
        dock.queue_free()
        dock = null

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Créer des plugins <../tutorials/plugins/editor/making_plugins>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] | :ref:`available_layouts<class_EditorDock_property_available_layouts>` | ``5``                 |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`closable<class_EditorDock_property_closable>`                   | ``false``             |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`DockSlot<enum_EditorDock_DockSlot>`                   | :ref:`default_slot<class_EditorDock_property_default_slot>`           | ``-1``                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`                           | :ref:`dock_icon<class_EditorDock_property_dock_icon>`                 |                       |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`Shortcut<class_Shortcut>`                             | :ref:`dock_shortcut<class_EditorDock_property_dock_shortcut>`         |                       |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`force_show_icon<class_EditorDock_property_force_show_icon>`     | ``false``             |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`global<class_EditorDock_property_global>`                       | ``true``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                         | :ref:`icon_name<class_EditorDock_property_icon_name>`                 | ``&""``               |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                 | :ref:`layout_key<class_EditorDock_property_layout_key>`               | ``""``                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                 | :ref:`title<class_EditorDock_property_title>`                         | ``""``                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                   | :ref:`title_color<class_EditorDock_property_title_color>`             | ``Color(0, 0, 0, 0)`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`transient<class_EditorDock_property_transient>`                 | ``false``             |
   +-------------------------------------------------------------+-----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Signaux
--------------

.. _class_EditorDock_signal_closed:

.. rst-class:: classref-signal

**closed**\ (\ ) :ref:`🔗<class_EditorDock_signal_closed>`

Emitted when the dock is closed with the Close button in the context popup, before it's removed from its parent. See :ref:`closable<class_EditorDock_property_closable>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_EditorDock_DockLayout:

.. rst-class:: classref-enumeration

flags **DockLayout**: :ref:`🔗<enum_EditorDock_DockLayout>`

.. _class_EditorDock_constant_DOCK_LAYOUT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_VERTICAL** = ``1``

Allows placing the dock in the vertical dock slots on either side of the editor.

.. _class_EditorDock_constant_DOCK_LAYOUT_HORIZONTAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_HORIZONTAL** = ``2``

Allows placing the dock in the editor's bottom panel.

.. _class_EditorDock_constant_DOCK_LAYOUT_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_FLOATING** = ``4``

Allows making the dock floating (opened as a separate window).

.. _class_EditorDock_constant_DOCK_LAYOUT_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_ALL** = ``7``

Allows placing the dock in all available slots.

.. rst-class:: classref-item-separator

----

.. _enum_EditorDock_DockSlot:

.. rst-class:: classref-enumeration

enum **DockSlot**: :ref:`🔗<enum_EditorDock_DockSlot>`

.. _class_EditorDock_constant_DOCK_SLOT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_NONE** = ``-1``

The dock is closed.

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UL** = ``0``

Dock slot, left side, upper-left (empty in default layout).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BL** = ``1``

Dock slot, left side, bottom-left (empty in default layout).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UR** = ``2``

Dock slot, left side, upper-right (in default layout includes Scene and Import docks).

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BR** = ``3``

Dock slot, left side, bottom-right (in default layout includes FileSystem and History docks).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UL** = ``4``

Dock slot, right side, upper-left (in default layout includes Inspector, Signal, and Group docks).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BL** = ``5``

Dock slot, right side, bottom-left (empty in default layout).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UR** = ``6``

Dock slot, right side, upper-right (empty in default layout).

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BR** = ``7``

Dock slot, right side, bottom-right (empty in default layout).

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM** = ``8``

Panneau du bas.

.. _class_EditorDock_constant_DOCK_SLOT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_MAX** = ``9``

Représente la taille de l’enum :ref:`DockSlot<enum_EditorDock_DockSlot>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_EditorDock_property_available_layouts:

.. rst-class:: classref-property

|bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **available_layouts** = ``5`` :ref:`🔗<class_EditorDock_property_available_layouts>`

.. rst-class:: classref-property-setget

- |void| **set_available_layouts**\ (\ value\: |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\]\ )
- |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **get_available_layouts**\ (\ )

The available layouts for this dock, as a bitmask. By default, the dock allows vertical and floating layouts.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_closable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closable** = ``false`` :ref:`🔗<class_EditorDock_property_closable>`

.. rst-class:: classref-property-setget

- |void| **set_closable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closable**\ (\ )

If ``true``, the dock can be closed with the Close button in the context popup. Docks with :ref:`global<class_EditorDock_property_global>` enabled are always closable.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_default_slot:

.. rst-class:: classref-property

:ref:`DockSlot<enum_EditorDock_DockSlot>` **default_slot** = ``-1`` :ref:`🔗<class_EditorDock_property_default_slot>`

.. rst-class:: classref-property-setget

- |void| **set_default_slot**\ (\ value\: :ref:`DockSlot<enum_EditorDock_DockSlot>`\ )
- :ref:`DockSlot<enum_EditorDock_DockSlot>` **get_default_slot**\ (\ )

The default dock slot used when adding the dock with :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>`.

After the dock is added, it can be moved to a different slot and the editor will automatically remember its position between sessions. If you remove and re-add the dock, it will be reset to default.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **dock_icon** :ref:`🔗<class_EditorDock_property_dock_icon>`

.. rst-class:: classref-property-setget

- |void| **set_dock_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_dock_icon**\ (\ )

The icon for the dock, as a texture. If specified, it will override :ref:`icon_name<class_EditorDock_property_icon_name>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **dock_shortcut** :ref:`🔗<class_EditorDock_property_dock_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_dock_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_dock_shortcut**\ (\ )

The shortcut used to open the dock.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_force_show_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_show_icon** = ``false`` :ref:`🔗<class_EditorDock_property_force_show_icon>`

.. rst-class:: classref-property-setget

- |void| **set_force_show_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_force_show_icon**\ (\ )

If ``true``, the dock will always display an icon, regardless of :ref:`EditorSettings.interface/editor/dock_tab_style<class_EditorSettings_property_interface/editor/dock_tab_style>` or :ref:`EditorSettings.interface/editor/bottom_dock_tab_style<class_EditorSettings_property_interface/editor/bottom_dock_tab_style>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_global:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **global** = ``true`` :ref:`🔗<class_EditorDock_property_global>`

.. rst-class:: classref-property-setget

- |void| **set_global**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_global**\ (\ )

If ``true``, the dock appears in the **Editor > Editor Docks** menu and can be closed. Non-global docks can still be closed using :ref:`close()<class_EditorDock_method_close>` or when :ref:`closable<class_EditorDock_property_closable>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_icon_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **icon_name** = ``&""`` :ref:`🔗<class_EditorDock_property_icon_name>`

.. rst-class:: classref-property-setget

- |void| **set_icon_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_icon_name**\ (\ )

The icon for the dock, as a name from the ``EditorIcons`` theme type in the editor theme. You can find the list of available icons `here <https://godot-editor-icons.github.io/>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_layout_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **layout_key** = ``""`` :ref:`🔗<class_EditorDock_property_layout_key>`

.. rst-class:: classref-property-setget

- |void| **set_layout_key**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_layout_key**\ (\ )

The key representing this dock in the editor's layout file. If empty, the dock's displayed name will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_EditorDock_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

The title of the dock's tab. If empty, the dock's :ref:`Node.name<class_Node_property_name>` will be used. If the name is auto-generated (contains ``@``), the first child's name will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **title_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_EditorDock_property_title_color>`

.. rst-class:: classref-property-setget

- |void| **set_title_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_title_color**\ (\ )

The color of the dock tab's title. If its alpha is ``0.0``, the default font color will be used.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_transient:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transient** = ``false`` :ref:`🔗<class_EditorDock_property_transient>`

.. rst-class:: classref-property-setget

- |void| **set_transient**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_transient**\ (\ )

If ``true``, the dock is not automatically opened or closed when loading an editor layout, only moved. It also can't be opened using a shortcut. This is meant for docks that are opened and closed in specific cases, such as when selecting a :ref:`TileMap<class_TileMap>` or :ref:`AnimationTree<class_AnimationTree>` node.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorDock_private_method__load_layout_from_config:

.. rst-class:: classref-method

|void| **_load_layout_from_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__load_layout_from_config>`

Implement this method to handle loading this dock's layout. It's equivalent to :ref:`EditorPlugin._set_window_layout()<class_EditorPlugin_private_method__set_window_layout>`. ``section`` is a unique section based on :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__save_layout_to_config:

.. rst-class:: classref-method

|void| **_save_layout_to_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDock_private_method__save_layout_to_config>`

Implement this method to handle saving this dock's layout. It's equivalent to :ref:`EditorPlugin._get_window_layout()<class_EditorPlugin_private_method__get_window_layout>`. ``section`` is a unique section based on :ref:`layout_key<class_EditorDock_property_layout_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__update_layout:

.. rst-class:: classref-method

|void| **_update_layout**\ (\ layout\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__update_layout>`

Implement this method to handle the layout switching for this dock. ``layout`` is one of the :ref:`DockLayout<enum_EditorDock_DockLayout>` constants.

::

    func _update_layout(layout):
        box_container.vertical = (layout == DOCK_LAYOUT_VERTICAL)

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_EditorDock_method_close>`

Closes the dock, making its tab hidden.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_make_visible:

.. rst-class:: classref-method

|void| **make_visible**\ (\ ) :ref:`🔗<class_EditorDock_method_make_visible>`

Focuses the dock's tab (or window if it's floating). If the dock was closed, it will be opened. If it's a bottom dock, makes the bottom panel visible.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_open:

.. rst-class:: classref-method

|void| **open**\ (\ ) :ref:`🔗<class_EditorDock_method_open>`

Opens the dock. It will appear in the last used dock slot. If the dock has no default slot, it will be opened floating.

\ **Note:** This does not focus the dock. If you want to open and focus the dock, use :ref:`make_visible()<class_EditorDock_method_make_visible>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
