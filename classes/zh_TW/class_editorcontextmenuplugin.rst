:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於在編輯器中新增自訂快捷選單的外掛程式。

.. rst-class:: classref-introduction-group

說明
----

**EditorContextMenuPlugin** 能夠在編輯器的情境選單中新增自訂的選項。

目前支援三個常用區域的情境選單：檔案系統、場景樹、編輯器腳本清單面板。

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

“場景”面板的情境選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 時提供的是目前所選節點路徑的清單，可選回呼接收的是目前所選節點清單。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

“檔案系統”面板的情境選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 和可選回呼時提供的是目前所選檔案路徑的清單。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

“腳本”編輯器中腳本分頁的情境選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 時提供的是目前編輯腳本的路徑，可選回呼接收的是該腳本的參照。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

“檔案系統”面板情境選單的“建立...”子選單，或是點選空白位置的主情境選單中的“新建”部分。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 和可選回呼時提供的是目前所選資料夾的路徑。點選空白區域時，為彈出方法提供的路徑清單為空。

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("新建影像檔案...", create_image)
        else:
            add_context_menu_item("影像檔案...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

“腳本”編輯器中程式碼編輯器的情境選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 時提供的是指向 :ref:`CodeEdit<class_CodeEdit>` 的路徑。你可以使用這段程式碼取得該節點：

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

可選回呼接收的是該節點的參照。你可以使用 :ref:`CodeEdit<class_CodeEdit>` 的方法執行符號查詢等操作。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

場景分頁的情境選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 時提供的點選場景的路徑，在空白區域打開選單時為空的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。可選回呼接收的是點選場景的路徑，未點選場景時為空的 :ref:`String<class_String>`\ 。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

2D 編輯器的基本右鍵選單。呼叫 :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 時提供的是游標下所有 :ref:`CanvasItem<class_CanvasItem>` 的路徑。你可以使用這段程式碼取得這些節點：

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # 將 0 替換為想要的索引。

游標下沒有節點時路徑陣列為空。可選回呼接收的是型別為 :ref:`CanvasItem<class_CanvasItem>` 節點的型別化陣列。

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_INSPECTOR_PROPERTY:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_INSPECTOR_PROPERTY** = ``7``

屬性檢視器右鍵選單的情境選單。\ :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` 將被呼叫，並傳入一個包含兩項的陣列：第一項是物件的 ID，第二項是屬性名稱。可以通過 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 從 ID 取得物件，但需要先將其轉換為整數。選項回呼將直接接收 EditorProperty。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

建立情境選單時呼叫，可以使用 :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` 或 :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>` 函式新增自訂選項。\ ``paths`` 包含目前選中的路徑（取決於選單），可以借此有選擇地新增選項。

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

在外掛指定槽位的情境選單中新增自訂選項。啟用該選項時會呼叫 ``callback``\ 。回呼應當接受一個 :ref:`Array<class_Array>` 參數；該陣列的內容取決於情境選單槽位。

::

    func _popup_menu(paths):
        add_context_menu_item("檔案自訂選項", handle, ICON)

如果你想要為選單項設定快捷鍵，請改用 :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

在外掛指定槽位的情境選單中新增自訂選項。該選項會設定快捷鍵 ``shortcut`` 並重用其回呼。快捷鍵必須事先用 :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>` 注冊。

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

    func _popup_menu(paths):
        add_context_menu_item_from_shortcut("檔案自訂選項", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

在外掛指定槽位的情境選單中新增子選單。子選單不會自動處理，你需要自行連接訊號。另外每次彈出後都會釋放子選單，所以每次都需要提供新的 :ref:`PopupMenu<class_PopupMenu>`\ 。

::

    func _popup_menu(paths):
        var popup_menu = PopupMenu.new()
        popup_menu.add_item("藍色")
        popup_menu.add_item("白色")
        popup_menu.id_pressed.connect(_on_color_submenu_option)

        add_context_submenu_item("設定節點顏色", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

為外掛的情境選單注冊快捷鍵。該方法只應呼叫一次（例如在外掛的 :ref:`Object._init()<class_Object_private_method__init>` 中呼叫）。當使用者按下 ``shortcut`` 快捷鍵且選單情境有效時就會呼叫 ``callback``\ （例如聚焦“檔案系統”面板）。回呼應接受一個 :ref:`Array<class_Array>` 參數；陣列內容取決於具體的情境選單槽位。

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
