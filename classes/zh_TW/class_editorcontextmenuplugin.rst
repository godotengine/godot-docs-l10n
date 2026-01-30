:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於在編輯器中新增自訂快捷選單的外掛程式。

.. rst-class:: classref-introduction-group

說明
----

**EditorContextMenuPlugin** allows for the addition of custom options in the editor's context menu.

Currently, context menus are supported for three commonly used areas: the file system, scene tree, and editor script list panel.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_popup_menu<class_EditorContextMenuPlugin_private_method__popup_menu>`\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item<class_EditorContextMenuPlugin_method_add_context_menu_item>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                             |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item_from_shortcut<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_submenu_item<class_EditorContextMenuPlugin_method_add_context_submenu_item>`\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_menu_shortcut<class_EditorContextMenuPlugin_method_add_menu_shortcut>`\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ )                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorContextMenuPlugin_ContextMenuSlot:

.. rst-class:: classref-enumeration

enum **ContextMenuSlot**: :ref:`🔗<enum_EditorContextMenuPlugin_ContextMenuSlot>`

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TREE** = ``0``

Context menu of Scene dock. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with a list of paths to currently selected nodes, while option callback will receive the list of currently selected nodes.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

Context menu of FileSystem dock. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` and option callback will be called with list of paths of the currently selected files.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

Context menu of Script editor's script tabs. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with the path to the currently edited script, while option callback will receive reference to that script.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

The "Create..." submenu of FileSystem dock's context menu, or the "New" section of the main context menu when empty space is clicked. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` and option callback will be called with the path of the currently selected folder. When clicking the empty space, the list of paths for popup method will be empty.

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("New Image File...", create_image)
        else:
            add_context_menu_item("Image File...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

Context menu of Script editor's code editor. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with the path to the :ref:`CodeEdit<class_CodeEdit>` node. You can fetch it using this code:

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

The option callback will receive reference to that node. You can use :ref:`CodeEdit<class_CodeEdit>` methods to perform symbol lookups etc.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

Context menu of scene tabs. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with the path of the clicked scene, or empty :ref:`PackedStringArray<class_PackedStringArray>` if the menu was opened on empty space. The option callback will receive the path of the clicked scene, or empty :ref:`String<class_String>` if none was clicked.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

Context menu of 2D editor's basic right-click menu. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` will be called with paths to all :ref:`CanvasItem<class_CanvasItem>` nodes under the cursor. You can fetch them using this code:

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # Replace 0 with the desired index.

The paths array is empty if there weren't any nodes under cursor. The option callback will receive a typed array of :ref:`CanvasItem<class_CanvasItem>` nodes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

Called when creating a context menu, custom options can be added by using the :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` or :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>` functions. ``paths`` contains currently selected paths (depending on menu), which can be used to conditionally add options.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

Add custom option to the context menu of the plugin's specified slot. When the option is activated, ``callback`` will be called. Callback should take single :ref:`Array<class_Array>` argument; array contents depend on context menu slot.

::

    func _popup_menu(paths):
        add_context_menu_item("File Custom options", handle, ICON)

If you want to assign shortcut to the menu item, use :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>` instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

Add custom option to the context menu of the plugin's specified slot. The option will have the ``shortcut`` assigned and reuse its callback. The shortcut has to be registered beforehand with :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>`.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

    func _popup_menu(paths):
        add_context_menu_item_from_shortcut("File Custom options", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

Add a submenu to the context menu of the plugin's specified slot. The submenu is not automatically handled, you need to connect to its signals yourself. Also the submenu is freed on every popup, so provide a new :ref:`PopupMenu<class_PopupMenu>` every time.

::

    func _popup_menu(paths):
        var popup_menu = PopupMenu.new()
        popup_menu.add_item("Blue")
        popup_menu.add_item("White")
        popup_menu.id_pressed.connect(_on_color_submenu_option)

        add_context_submenu_item("Set Node Color", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

Registers a shortcut associated with the plugin's context menu. This method should be called once (e.g. in plugin's :ref:`Object._init()<class_Object_private_method__init>`). ``callback`` will be called when user presses the specified ``shortcut`` while the menu's context is in effect (e.g. FileSystem dock is focused). Callback should take single :ref:`Array<class_Array>` argument; array contents depend on context menu slot.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
