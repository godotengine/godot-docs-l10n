:github_url: hide

.. _class_EditorResourcePicker:

EditorResourcePicker
====================

**繼承：** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorScriptPicker<class_EditorScriptPicker>`

Godot 編輯器用於選擇 :ref:`Resource<class_Resource>` 型別屬性的控制項。

.. rst-class:: classref-introduction-group

說明
----

此 :ref:`Control<class_Control>` 節點用於編輯器的屬性屬性檢視器以允許編輯 :ref:`Resource<class_Resource>` 型別屬性。它提供了建立、載入、保存和轉換資源的選項。可以與 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 屬性檢視器外掛程式一起使用以重新建立相同的行為。

\ **注意：**\ 這個 :ref:`Control<class_Control>` 不包括資源的任何編輯器，因為編輯是由屬性屬性檢視器本身或子屬性檢視器控制的。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`     | :ref:`base_type<class_EditorResourcePicker_property_base_type>`             | ``""``    |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`editable<class_EditorResourcePicker_property_editable>`               | ``true``  |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Resource<class_Resource>` | :ref:`edited_resource<class_EditorResourcePicker_property_edited_resource>` |           |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>`         | ``false`` |
   +---------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handle_menu_selected<class_EditorResourcePicker_private_method__handle_menu_selected>`\ (\ id\: :ref:`int<class_int>`\ ) |virtual|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_set_create_options<class_EditorResourcePicker_private_method__set_create_options>`\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_allowed_types<class_EditorResourcePicker_method_get_allowed_types>`\ (\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_toggle_pressed<class_EditorResourcePicker_method_set_toggle_pressed>`\ (\ pressed\: :ref:`bool<class_bool>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_EditorResourcePicker_signal_resource_changed:

.. rst-class:: classref-signal

**resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_changed>`

當正在編輯的資源改變值時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, inspect\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_signal_resource_selected>`

當資源值被設定，並且使用者點擊它編輯時觸發。當 ``inspect`` 為 ``true`` 時，該訊號是由本文功能表“編輯”或“檢查”選項引起的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EditorResourcePicker_property_base_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_type** = ``""`` :ref:`🔗<class_EditorResourcePicker_property_base_type>`

.. rst-class:: classref-property-setget

- |void| **set_base_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_type**\ (\ )

允許資源型別的基本型別。可以是幾個選項的逗號分離列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_EditorResourcePicker_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果為 ``true``\ ，則可以選擇和編輯該值。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_edited_resource:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **edited_resource** :ref:`🔗<class_EditorResourcePicker_property_edited_resource>`

.. rst-class:: classref-property-setget

- |void| **set_edited_resource**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_edited_resource**\ (\ )

已編輯的資源值。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_EditorResourcePicker_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

如果為 ``true``\ ，帶有資源預覽的主按鈕在切換模式下工作。使用 :ref:`set_toggle_pressed()<class_EditorResourcePicker_method_set_toggle_pressed>` 來手動設定狀態。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorResourcePicker_private_method__handle_menu_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handle_menu_selected**\ (\ id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__handle_menu_selected>`

該虛方法可以被實作，以處理預設未處理的本文功能表專案目。請參閱 :ref:`_set_create_options()<class_EditorResourcePicker_private_method__set_create_options>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_private_method__set_create_options:

.. rst-class:: classref-method

|void| **_set_create_options**\ (\ menu_node\: :ref:`Object<class_Object>`\ ) |virtual| :ref:`🔗<class_EditorResourcePicker_private_method__set_create_options>`

This virtual method is called when updating the context menu of an :ref:`editable<class_EditorResourcePicker_property_editable>` **EditorResourcePicker**. Implement this method to override the "New" items section with your own options. ``menu_node`` is a reference to the :ref:`PopupMenu<class_PopupMenu>` node.

\ **Note:** Implement :ref:`_handle_menu_selected()<class_EditorResourcePicker_private_method__handle_menu_selected>` to handle these custom items.

\ **Note:** Relevant built-in options ("Load", "Copy", "Paste", etc.) are automatically added to the ``menu_node`` afterwards, using their hard-coded IDs starting from ``0``. Custom options need to use non-colliding IDs to be handled properly. Using ``id = 100 + custom_option_index`` is safe (this is what the default items in the "New" section use).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_get_allowed_types:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_allowed_types**\ (\ ) |const| :ref:`🔗<class_EditorResourcePicker_method_get_allowed_types>`

返回一個與 :ref:`base_type<class_EditorResourcePicker_property_base_type>` 對應的所有允許的型別和子型別的列表。如果 :ref:`base_type<class_EditorResourcePicker_property_base_type>` 是空，將返回一個空的列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePicker_method_set_toggle_pressed:

.. rst-class:: classref-method

|void| **set_toggle_pressed**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorResourcePicker_method_set_toggle_pressed>`

設定主按鈕的切換模式狀態。只有當 :ref:`toggle_mode<class_EditorResourcePicker_property_toggle_mode>` 被設定為 ``true`` 時才起作用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
