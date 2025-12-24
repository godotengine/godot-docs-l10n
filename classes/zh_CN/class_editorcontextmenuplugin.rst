:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于在编辑器中添加自定义上下文菜单的插件。

.. rst-class:: classref-introduction-group

描述
----

**EditorContextMenuPlugin** 能够在编辑器的上下文菜单中添加自定义的选项。

目前支持三个常用区域的上下文菜单：文件系统、场景树、编辑器脚本列表面板。

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

枚举
----

.. _enum_EditorContextMenuPlugin_ContextMenuSlot:

.. rst-class:: classref-enumeration

enum **ContextMenuSlot**: :ref:`🔗<enum_EditorContextMenuPlugin_ContextMenuSlot>`

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TREE** = ``0``

“场景”面板的上下文菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 时提供的是当前所选节点路径的列表，可选回调接收的是当前所选节点列表。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

“文件系统”面板的上下文菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 和可选回调时提供的是当前所选文件路径的列表。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

“脚本”编辑器中脚本选项卡的上下文菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 时提供的是当前编辑脚本的路径，可选回调接收的是该脚本的引用。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

“文件系统”面板上下文菜单的“创建...”子菜单，或是点击空白位置的主上下文菜单中的“新建”部分。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 和可选回调时提供的是当前所选文件夹的路径。点击空白区域时，为弹出方法提供的路径列表为空。

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("新建图像文件...", create_image)
        else:
            add_context_menu_item("图像文件...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

“脚本”编辑器中代码编辑器的上下文菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 时提供的是指向 :ref:`CodeEdit<class_CodeEdit>` 的路径。你可以使用这段代码获取该节点：

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

可选回调接收的是该节点的引用。你可以使用 :ref:`CodeEdit<class_CodeEdit>` 的方法执行符号查询等操作。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

场景选项卡的上下文菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 时提供的点击场景的路径，在空白区域打开菜单时为空的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。可选回调接收的是点击场景的路径，未点击场景时为空的 :ref:`String<class_String>`\ 。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

2D 编辑器的基本右键菜单。调用 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 时提供的是光标下所有 :ref:`CanvasItem<class_CanvasItem>` 的路径。你可以使用这段代码获取这些节点：

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # 将 0 替换为想要的索引。

光标下没有节点时路径数组为空。可选回调接收的是类型为 :ref:`CanvasItem<class_CanvasItem>` 节点的类型化数组。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

创建上下文菜单时调用，可以使用 :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` 或 :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>` 函数添加自定义选项。\ ``paths`` 包含当前选中的路径（取决于菜单），可以借此有选择地添加选项。

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

在插件指定槽位的上下文菜单中添加自定义选项。激活该选项时会调用 ``callback``\ 。回调应当接受一个 :ref:`Array<class_Array>` 参数；该数组的内容取决于上下文菜单槽位。

::

    func _popup_menu(paths):
        add_context_menu_item("文件自定义选项", handle, ICON)

如果你想要为菜单项设置快捷键，请改用 :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

在插件指定槽位的上下文菜单中添加自定义选项。该选项会设置快捷键 ``shortcut`` 并重用其回调。快捷键必须事先用 :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>` 注册。

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

    func _popup_menu(paths):
        add_context_menu_item_from_shortcut("文件自定义选项", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

在插件指定槽位的上下文菜单中添加子菜单。子菜单不会自动处理，你需要自行连接信号。另外每次弹出后都会释放子菜单，所以每次都需要提供新的 :ref:`PopupMenu<class_PopupMenu>`\ 。

::

    func _popup_menu(paths):
        var popup_menu = PopupMenu.new()
        popup_menu.add_item("蓝色")
        popup_menu.add_item("白色")
        popup_menu.id_pressed.connect(_on_color_submenu_option)

        add_context_submenu_item("设置节点颜色", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

为插件的上下文菜单注册快捷键。该方法只应调用一次（例如在插件的 :ref:`Object._init()<class_Object_private_method__init>` 中调用）。当用户按下 ``shortcut`` 快捷键且菜单上下文有效时就会调用 ``callback``\ （例如聚焦“文件系统”面板）。回调应接受一个 :ref:`Array<class_Array>` 参数；数组内容取决于具体的上下文菜单槽位。

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
