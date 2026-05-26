:github_url: hide

.. _class_EditorDock:

EditorDock
==========

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`FileSystemDock<class_FileSystemDock>`

用于编辑器的可停靠容器。

.. rst-class:: classref-introduction-group

描述
----

EditorDock 是一个 :ref:`Container<class_Container>` 节点，可以停靠在编辑器的一个停靠面板槽中。插件可以添加停靠面板来为与 :ref:`EditorPlugin<class_EditorPlugin>` 相关的控件提供空间。编辑器自带一些内置的停靠面板，例如场景面板、文件系统面板等等。

可以使用 :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>` 添加停靠面板。可以通过更改其属性来自定义停靠面板。

::

    @tool
    extends EditorPlugin

    # 停靠面板引用。
    var dock

    # 插件实例化。
    func _enter_tree():
        dock = EditorDock.new()
        dock.title = "我的停靠面板"
        dock.dock_icon = preload("./dock_icon.png")
        dock.default_slot = EditorDock.DOCK_SLOT_RIGHT_UL
        var dock_content = preload("./dock_content.tscn").instantiate()
        dock.add_child(dock_content)
        add_dock(dock)

    # 插件清理。
    func _exit_tree():
        remove_dock(dock)
        dock.queue_free()
        dock = null

.. rst-class:: classref-introduction-group

教程
----

- :doc:`创建插件 <../tutorials/plugins/editor/making_plugins>`

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

信号
----

.. _class_EditorDock_signal_closed:

.. rst-class:: classref-signal

**closed**\ (\ ) :ref:`🔗<class_EditorDock_signal_closed>`

当使用上下文弹出菜单中的“关闭”按钮关闭停靠面板时，在它从其父容器中移除之前发出。见 :ref:`closable<class_EditorDock_property_closable>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_signal_opened:

.. rst-class:: classref-signal

**opened**\ (\ ) :ref:`🔗<class_EditorDock_signal_opened>`

Emitted when the dock is opened via the Editor > Editor Docks menu, before it's made visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_EditorDock_DockLayout:

.. rst-class:: classref-enumeration

flags **DockLayout**: :ref:`🔗<enum_EditorDock_DockLayout>`

.. _class_EditorDock_constant_DOCK_LAYOUT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_VERTICAL** = ``1``

允许将停靠面板放置在编辑器两侧的垂直停靠面板插槽中。

.. _class_EditorDock_constant_DOCK_LAYOUT_HORIZONTAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_HORIZONTAL** = ``2``

Allows placing the dock in the horizontal dock slots at the bottom.

.. _class_EditorDock_constant_DOCK_LAYOUT_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_FLOATING** = ``4``

允许将停靠面板设置为浮动（以单独窗口的形式打开）。

.. _class_EditorDock_constant_DOCK_LAYOUT_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_ALL** = ``7``

允许将停靠面板放置在所有可用插槽中。

.. rst-class:: classref-item-separator

----

.. _enum_EditorDock_DockSlot:

.. rst-class:: classref-enumeration

enum **DockSlot**: :ref:`🔗<enum_EditorDock_DockSlot>`

.. _class_EditorDock_constant_DOCK_SLOT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_NONE** = ``-1``

停靠面板是关闭的。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UL** = ``0``

左侧停靠槽的左上（默认布局中为空）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BL** = ``1``

左侧停靠槽的左下（默认布局中为空）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UR** = ``2``

左侧停靠槽的右上（默认布局中为“场景”和“导入”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BR** = ``3``

左侧停靠槽的右下方（默认布局中包含“文件系统”和“历史”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UL** = ``4``

右侧停靠槽的左上方（默认布局中包含“检查器”、“信号”和“分组”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BL** = ``5``

右侧停靠槽的左下（默认布局中为空）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UR** = ``6``

右侧停靠槽的右上（默认布局中为空）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BR** = ``7``

右侧停靠槽的右下（默认布局中为空）。

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM** = ``8``

底部面板。

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_L:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_L** = ``9``

Dock slot at the bottom, below bottom panel, on the left side.

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_R:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_R** = ``10``

Dock slot at the bottom, below bottom panel, on the right side.

.. _class_EditorDock_constant_DOCK_SLOT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_MAX** = ``11``

代表 :ref:`DockSlot<enum_EditorDock_DockSlot>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorDock_property_available_layouts:

.. rst-class:: classref-property

|bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **available_layouts** = ``5`` :ref:`🔗<class_EditorDock_property_available_layouts>`

.. rst-class:: classref-property-setget

- |void| **set_available_layouts**\ (\ value\: |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\]\ )
- |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **get_available_layouts**\ (\ )

该停靠面板可用的布局，以位掩码形式表示。默认情况下，该停靠面板允许垂直布局和浮动布局。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_closable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closable** = ``false`` :ref:`🔗<class_EditorDock_property_closable>`

.. rst-class:: classref-property-setget

- |void| **set_closable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closable**\ (\ )

如果为 ``true``\ ，则可以使用上下文弹出窗口中的“关闭”按钮关闭该停靠面板。启用 :ref:`global<class_EditorDock_property_global>` 的停靠面板始终是可关闭的。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_default_slot:

.. rst-class:: classref-property

:ref:`DockSlot<enum_EditorDock_DockSlot>` **default_slot** = ``-1`` :ref:`🔗<class_EditorDock_property_default_slot>`

.. rst-class:: classref-property-setget

- |void| **set_default_slot**\ (\ value\: :ref:`DockSlot<enum_EditorDock_DockSlot>`\ )
- :ref:`DockSlot<enum_EditorDock_DockSlot>` **get_default_slot**\ (\ )

该属性定义了使用 :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>` 方法添加此面板时，所使用的默认停靠槽位。

面板添加后，可被移动至其他槽位，编辑器会自动在不同会话间记住其位置。若移除后重新添加，该面板将被重置至默认槽位。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **dock_icon** :ref:`🔗<class_EditorDock_property_dock_icon>`

.. rst-class:: classref-property-setget

- |void| **set_dock_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_dock_icon**\ (\ )

该停靠面板的图标，作为纹理。如果已指定，则它将覆盖 :ref:`icon_name<class_EditorDock_property_icon_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **dock_shortcut** :ref:`🔗<class_EditorDock_property_dock_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_dock_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_dock_shortcut**\ (\ )

用于打开停靠面板的快捷键。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_force_show_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_show_icon** = ``false`` :ref:`🔗<class_EditorDock_property_force_show_icon>`

.. rst-class:: classref-property-setget

- |void| **set_force_show_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_force_show_icon**\ (\ )

If ``true``, the dock will always display an icon, regardless of :ref:`EditorSettings.interface/editor/docks/dock_tab_style<class_EditorSettings_property_interface/editor/docks/dock_tab_style>` or :ref:`EditorSettings.interface/editor/docks/bottom_dock_tab_style<class_EditorSettings_property_interface/editor/docks/bottom_dock_tab_style>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_global:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **global** = ``true`` :ref:`🔗<class_EditorDock_property_global>`

.. rst-class:: classref-property-setget

- |void| **set_global**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_global**\ (\ )

如果为 ``true``\ ，则停靠面板会出现在\ **编辑器 > 编辑器面板**\ 菜单中，并且可以被关闭。非全局的停靠面板仍然可以使用 :ref:`close()<class_EditorDock_method_close>` 关闭，或者当 :ref:`closable<class_EditorDock_property_closable>` 为 ``true`` 时关闭。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_icon_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **icon_name** = ``&""`` :ref:`🔗<class_EditorDock_property_icon_name>`

.. rst-class:: classref-property-setget

- |void| **set_icon_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_icon_name**\ (\ )

停靠面板的图标，名称取自编辑器主题中的 ``EditorIcons`` 主题类型。可以在\ `此处 <https://godot-editor-icons.github.io/>`__\ 找到可用的图标列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_layout_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **layout_key** = ``""`` :ref:`🔗<class_EditorDock_property_layout_key>`

.. rst-class:: classref-property-setget

- |void| **set_layout_key**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_layout_key**\ (\ )

该键值用于在编辑器的布局文件中表示该停靠面板。如果为空，则将改用该停靠面板的显示名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_EditorDock_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

停靠面板选项卡的标题。如果为空，则使用停靠面板的 :ref:`Node.name<class_Node_property_name>`\ 。如果名称是自动生成的（包含 ``@``\ ），则会改用第一个子节点的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **title_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_EditorDock_property_title_color>`

.. rst-class:: classref-property-setget

- |void| **set_title_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_title_color**\ (\ )

停靠面板选项卡标题的颜色。如果其 Alpha 为 ``0.0``\ ，则将使用默认字体颜色。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_transient:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transient** = ``false`` :ref:`🔗<class_EditorDock_property_transient>`

.. rst-class:: classref-property-setget

- |void| **set_transient**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_transient**\ (\ )

如果为 ``true``\ ，则加载编辑器布局时，停靠面板不会自动打开或关闭，只会移动。它也无法通过快捷键打开。这是为在特定情况下打开和关闭的停靠面板而设计的，例如选择 :ref:`TileMap<class_TileMap>` 或 :ref:`AnimationTree<class_AnimationTree>` 节点时。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorDock_private_method__load_layout_from_config:

.. rst-class:: classref-method

|void| **_load_layout_from_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__load_layout_from_config>`

实现该方法以处理加载该停靠面板的布局。它等效于 :ref:`EditorPlugin._set_window_layout()<class_EditorPlugin_private_method__set_window_layout>`\ 。\ ``section`` 是基于 :ref:`layout_key<class_EditorDock_property_layout_key>` 的独特节。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__save_layout_to_config:

.. rst-class:: classref-method

|void| **_save_layout_to_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDock_private_method__save_layout_to_config>`

实现该方法来处理保存该停靠面板的布局。它等价于 :ref:`EditorPlugin._get_window_layout()<class_EditorPlugin_private_method__get_window_layout>`\ 。\ ``section`` 是基于 :ref:`layout_key<class_EditorDock_property_layout_key>` 的独特节。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__update_layout:

.. rst-class:: classref-method

|void| **_update_layout**\ (\ layout\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__update_layout>`

实现该方法以处理该停靠面板的布局切换。\ ``layout`` 是 :ref:`DockLayout<enum_EditorDock_DockLayout>` 枚举常量之一。

::

    func _update_layout(layout):
        box_container.vertical = (layout == DOCK_LAYOUT_VERTICAL)

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_EditorDock_method_close>`

关闭该停靠面板，使其选项卡隐藏。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_make_visible:

.. rst-class:: classref-method

|void| **make_visible**\ (\ ) :ref:`🔗<class_EditorDock_method_make_visible>`

聚焦停靠面板的选项卡（如果是浮动窗口，则聚焦窗口）。如果该停靠面板已关闭，则会将其打开。如果是底部停靠面板，则使底部面板可见。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_open:

.. rst-class:: classref-method

|void| **open**\ (\ ) :ref:`🔗<class_EditorDock_method_open>`

打开停靠面板。它将显示在上次使用的停靠插槽中。如果该停靠面板没有默认插槽，它将以浮动窗口的形式打开。

\ **注意：**\ 它不会聚焦停靠面板。如果想打开并聚焦停靠面板，请使用 :ref:`make_visible()<class_EditorDock_method_make_visible>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
