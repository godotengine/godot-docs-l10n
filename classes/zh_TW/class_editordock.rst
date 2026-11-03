:github_url: hide

.. _class_EditorDock:

EditorDock
==========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`FileSystemDock<class_FileSystemDock>`

用於編輯器的可停靠容器。

.. rst-class:: classref-introduction-group

說明
----

EditorDock 是一個 :ref:`Container<class_Container>` 節點，可以停靠在編輯器的一個停靠面板槽中。外掛可以新增停靠面板來為與 :ref:`EditorPlugin<class_EditorPlugin>` 相關的控制項提供空間。編輯器自帶一些內建的停靠面板，例如場景面板、檔案系統面板等等。

可以使用 :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>` 新增停靠面板。可以通過更改其屬性來自訂停靠面板。

::

    @tool
    extends EditorPlugin

    # 停靠面板參照。
    var dock

    # 外掛實例化。
    func _enter_tree():
        dock = EditorDock.new()
        dock.title = "我的停靠面板"
        dock.dock_icon = preload("./dock_icon.png")
        dock.default_slot = EditorDock.DOCK_SLOT_RIGHT_UL
        var dock_content = preload("./dock_content.tscn").instantiate()
        dock.add_child(dock_content)
        add_dock(dock)

    # 外掛清理。
    func _exit_tree():
        remove_dock(dock)
        dock.queue_free()
        dock = null

.. rst-class:: classref-introduction-group

教學
----

- :doc:`建立外掛 <../tutorials/plugins/editor/making_plugins>`

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_EditorDock_signal_closed:

.. rst-class:: classref-signal

**closed**\ (\ ) :ref:`🔗<class_EditorDock_signal_closed>`

當使用情境彈出選單中的“關閉”按鈕關閉停靠面板時，在它從其父容器中移除之前發出。見 :ref:`closable<class_EditorDock_property_closable>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_signal_opened:

.. rst-class:: classref-signal

**opened**\ (\ ) :ref:`🔗<class_EditorDock_signal_opened>`

當通過 Editor > Editor Docks 選單打開該 Dock 時，會在其變為可見狀態之前發出此訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorDock_DockLayout:

.. rst-class:: classref-enumeration

flags **DockLayout**: :ref:`🔗<enum_EditorDock_DockLayout>`

.. _class_EditorDock_constant_DOCK_LAYOUT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_VERTICAL** = ``1``

允許將停靠面板放置在編輯器兩側的垂直停靠面板插槽中。

.. _class_EditorDock_constant_DOCK_LAYOUT_HORIZONTAL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_HORIZONTAL** = ``2``

允許將該停靠面板（Dock）放置在底部的水平停靠槽中。

.. _class_EditorDock_constant_DOCK_LAYOUT_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_FLOATING** = ``4``

允許將停靠面板設定為浮動（以單獨視窗的形式打開）。

.. _class_EditorDock_constant_DOCK_LAYOUT_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DockLayout<enum_EditorDock_DockLayout>` **DOCK_LAYOUT_ALL** = ``7``

允許將停靠面板放置在所有可用插槽中。

.. rst-class:: classref-item-separator

----

.. _enum_EditorDock_DockSlot:

.. rst-class:: classref-enumeration

enum **DockSlot**: :ref:`🔗<enum_EditorDock_DockSlot>`

.. _class_EditorDock_constant_DOCK_SLOT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_NONE** = ``-1``

停靠面板是關閉的。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UL** = ``0``

左側停靠槽的左上（預設佈局中為空）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BL** = ``1``

左側停靠槽的左下（預設佈局中為空）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_UR** = ``2``

左側停靠槽的右上（預設佈局中為“場景”和“匯入”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_LEFT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_LEFT_BR** = ``3``

左側停靠槽的右下方（預設版面配置中包含“檔案系統”和“歷史”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UL** = ``4``

右側停靠槽的左上方（預設版面配置中包含“屬性檢視器”、“訊號”和“分組”面板）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BL:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BL** = ``5``

右側停靠槽的左下（預設佈局中為空）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_UR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_UR** = ``6``

右側停靠槽的左上（預設佈局中為空）。

.. _class_EditorDock_constant_DOCK_SLOT_RIGHT_BR:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_RIGHT_BR** = ``7``

右側停靠槽的右下（預設佈局中為空）。

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM** = ``8``

底部面板。

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_L:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_L** = ``9``

位於底部面板下方、左側的停靠槽位。

.. _class_EditorDock_constant_DOCK_SLOT_BOTTOM_R:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_BOTTOM_R** = ``10``

位於底部面板下方、右側的停靠槽位。

.. _class_EditorDock_constant_DOCK_SLOT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DockSlot<enum_EditorDock_DockSlot>` **DOCK_SLOT_MAX** = ``11``

代表 :ref:`DockSlot<enum_EditorDock_DockSlot>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EditorDock_property_available_layouts:

.. rst-class:: classref-property

|bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **available_layouts** = ``5`` :ref:`🔗<class_EditorDock_property_available_layouts>`

.. rst-class:: classref-property-setget

- |void| **set_available_layouts**\ (\ value\: |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\]\ )
- |bitfield|\[:ref:`DockLayout<enum_EditorDock_DockLayout>`\] **get_available_layouts**\ (\ )

該停靠面板可用的版面配置，以位元遮罩形式表示。預設情況下，該停靠面板允許垂直版面配置和浮動版面配置。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_closable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closable** = ``false`` :ref:`🔗<class_EditorDock_property_closable>`

.. rst-class:: classref-property-setget

- |void| **set_closable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closable**\ (\ )

如果為 ``true``\ ，則可以使用情境彈出視窗中的“關閉”按鈕關閉該停靠面板。啟用 :ref:`global<class_EditorDock_property_global>` 的停靠面板始終是可關閉的。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_default_slot:

.. rst-class:: classref-property

:ref:`DockSlot<enum_EditorDock_DockSlot>` **default_slot** = ``-1`` :ref:`🔗<class_EditorDock_property_default_slot>`

.. rst-class:: classref-property-setget

- |void| **set_default_slot**\ (\ value\: :ref:`DockSlot<enum_EditorDock_DockSlot>`\ )
- :ref:`DockSlot<enum_EditorDock_DockSlot>` **get_default_slot**\ (\ )

該屬性定義了使用 :ref:`EditorPlugin.add_dock()<class_EditorPlugin_method_add_dock>` 方法新增此面板時，所使用的預設停靠槽位。

面板新增後，可被移動至其他槽位，編輯器會自動在不同會話間記住其位置。若移除後重新新增，該面板將被重設至預設槽位。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **dock_icon** :ref:`🔗<class_EditorDock_property_dock_icon>`

.. rst-class:: classref-property-setget

- |void| **set_dock_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_dock_icon**\ (\ )

該停靠面板的圖示，作為紋理。如果已指定，則它將覆蓋 :ref:`icon_name<class_EditorDock_property_icon_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_dock_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **dock_shortcut** :ref:`🔗<class_EditorDock_property_dock_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_dock_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_dock_shortcut**\ (\ )

用於打開停靠面板的快捷鍵。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_force_show_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_show_icon** = ``false`` :ref:`🔗<class_EditorDock_property_force_show_icon>`

.. rst-class:: classref-property-setget

- |void| **set_force_show_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_force_show_icon**\ (\ )

如果設為 ``true``\ ，無論 :ref:`EditorSettings.interface/editor/docks/dock_tab_style<class_EditorSettings_property_interface/editor/docks/dock_tab_style>` 或 :ref:`EditorSettings.interface/editor/docks/bottom_dock_tab_style<class_EditorSettings_property_interface/editor/docks/bottom_dock_tab_style>` 怎麼設定，該停靠面板（Dock）都會始終顯示圖示。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_global:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **global** = ``true`` :ref:`🔗<class_EditorDock_property_global>`

.. rst-class:: classref-property-setget

- |void| **set_global**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_global**\ (\ )

如果為 ``true``\ ，則停靠面板會出現在\ **編輯器 > 編輯器面板**\ 選單中，並且可以被關閉。非全域的停靠面板仍然可以使用 :ref:`close()<class_EditorDock_method_close>` 關閉，或者當 :ref:`closable<class_EditorDock_property_closable>` 為 ``true`` 時關閉。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_icon_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **icon_name** = ``&""`` :ref:`🔗<class_EditorDock_property_icon_name>`

.. rst-class:: classref-property-setget

- |void| **set_icon_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_icon_name**\ (\ )

停靠面板的圖示，名稱取自編輯器主題中的 ``EditorIcons`` 主題型別。可以在\ `此處 <https://godot-editor-icons.github.io/>`__\ 找到可用的圖示清單。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_layout_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **layout_key** = ``""`` :ref:`🔗<class_EditorDock_property_layout_key>`

.. rst-class:: classref-property-setget

- |void| **set_layout_key**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_layout_key**\ (\ )

該鍵值用於在編輯器的版面配置檔案中表示該停靠面板。如果為空，則將改用該停靠面板的顯示名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_EditorDock_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

停靠面板分頁的標題。如果為空，則使用停靠面板的 :ref:`Node.name<class_Node_property_name>`\ 。如果名稱是自動生成的（包含 ``@``\ ），則會改用第一個子節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_title_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **title_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_EditorDock_property_title_color>`

.. rst-class:: classref-property-setget

- |void| **set_title_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_title_color**\ (\ )

停靠面板分頁標題的顏色。如果其 Alpha 為 ``0.0``\ ，則將使用預設字型顏色。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_property_transient:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transient** = ``false`` :ref:`🔗<class_EditorDock_property_transient>`

.. rst-class:: classref-property-setget

- |void| **set_transient**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_transient**\ (\ )

如果為 ``true``\ ，則載入編輯器版面配置時，停靠面板不會自動打開或關閉，只會移動。它也無法通過快捷鍵打開。這是為在特定情況下打開和關閉的停靠面板而設計的，例如選擇 :ref:`TileMap<class_TileMap>` 或 :ref:`AnimationTree<class_AnimationTree>` 節點時。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorDock_private_method__load_layout_from_config:

.. rst-class:: classref-method

|void| **_load_layout_from_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__load_layout_from_config>`

實作該方法以處理載入該停靠面板的版面配置。它等效於 :ref:`EditorPlugin._set_window_layout()<class_EditorPlugin_private_method__set_window_layout>`\ 。\ ``section`` 是基於 :ref:`layout_key<class_EditorDock_property_layout_key>` 的獨特節。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__save_layout_to_config:

.. rst-class:: classref-method

|void| **_save_layout_to_config**\ (\ config\: :ref:`ConfigFile<class_ConfigFile>`, section\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDock_private_method__save_layout_to_config>`

實作該方法來處理儲存該停靠面板的版面配置。它等價於 :ref:`EditorPlugin._get_window_layout()<class_EditorPlugin_private_method__get_window_layout>`\ 。\ ``section`` 是基於 :ref:`layout_key<class_EditorDock_property_layout_key>` 的獨特節。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_private_method__update_layout:

.. rst-class:: classref-method

|void| **_update_layout**\ (\ layout\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDock_private_method__update_layout>`

實作該方法以處理該停靠面板的版面配置切換。\ ``layout`` 是 :ref:`DockLayout<enum_EditorDock_DockLayout>` 列舉常數之一。

::

    func _update_layout(layout):
        box_container.vertical = (layout == DOCK_LAYOUT_VERTICAL)

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_EditorDock_method_close>`

關閉該停靠面板，使其分頁隱藏。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_make_visible:

.. rst-class:: classref-method

|void| **make_visible**\ (\ ) :ref:`🔗<class_EditorDock_method_make_visible>`

聚焦停靠面板的分頁（如果是浮動視窗，則聚焦視窗）。如果該停靠面板已關閉，則會將其打開。如果是底部停靠面板，則使底部面板可見。

.. rst-class:: classref-item-separator

----

.. _class_EditorDock_method_open:

.. rst-class:: classref-method

|void| **open**\ (\ ) :ref:`🔗<class_EditorDock_method_open>`

打開停靠面板。它將顯示在上次使用的停靠插槽中。如果該停靠面板沒有預設插槽，它將以浮動視窗的形式打開。

\ **注意：**\ 它不會聚焦停靠面板。如果想打開並聚焦停靠面板，請使用 :ref:`make_visible()<class_EditorDock_method_make_visible>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
