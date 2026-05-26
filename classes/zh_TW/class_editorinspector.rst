:github_url: hide

.. _class_EditorInspector:

EditorInspector
===============

**繼承：** :ref:`ScrollContainer<class_ScrollContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於編輯物件屬性的控制項。

.. rst-class:: classref-introduction-group

說明
----

這是實作編輯器設定對話框、屬性檢視器面板等中屬性編輯功能的 Control。若要取得在編輯器屬性檢視器面板中使用的 **EditorInspector**\ ，請使用 :ref:`EditorInterface.get_inspector()<class_EditorInterface_method_get_inspector>`\ 。

\ **EditorInspector** 將會依照由 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 傳回的陣列順序顯示屬性。

如果屬性的名稱類似路徑 (亦即如果它包含斜線 /)，\ **EditorInspector** 將會沿著路徑為「目錄」建立巢狀區段。例如，如果屬性名稱為 ``highlighting/gdscript/node_path_color``\ ，它將會顯示為「Node Path Color」，位於巢狀於「Highlighting」區段內的「GDScript」區段中。

如果屬性具有 :ref:`@GlobalScope.PROPERTY_USAGE_GROUP<class_@GlobalScope_constant_PROPERTY_USAGE_GROUP>` 用途，它將會將名稱以屬性提示字串開頭的後續屬性分組。當屬性名稱不是以該提示字串開頭，或當一個新的群組開始時，群組即結束。空的群組名稱實際上會結束目前群組。\ **EditorInspector** 將會為每個群組建立一個頂層區段。例如，如果一個具有群組用途的屬性名稱為 ``Collide With``\ ，且其提示字串為 ``collide_with_``\ ，則後續的 ``collide_with_area`` 屬性將會顯示為「Area」，位於「Collide With」區段內。還有一個特殊情況：當提示字串包含屬性的名稱時，該屬性也會被分組。這主要是為了幫助分組像 ``font``\ 、\ ``font_color`` 和 ``font_size`` 這樣的屬性 (使用提示字串 ``font_``)。

如果屬性具有 :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>` 用途，將會以與群組相同的方式建立一個子群組，並為每個子群組建立一個第二層區段。

\ **注意：** 與從類似路徑的屬性名稱建立的區段不同，\ **EditorInspector** 不會將從群組建立的區段名稱大寫。因此，具有群組用途的屬性通常使用大寫名稱，而非 snake_case 的名稱。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | draw_focus_border      | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_draw_focus_border>`)   |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`           | focus_mode             | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                             |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | follow_focus           | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_follow_focus>`)        |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` | horizontal_scroll_mode | ``0`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_horizontal_scroll_mode>`) |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`collapse_all_folding<class_EditorInspector_method_collapse_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorInspector<class_EditorInspector>` | :ref:`create_default_inspector<class_EditorInspector_method_create_default_inspector>`\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static|                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`edit<class_EditorInspector_method_edit>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_all_folding<class_EditorInspector_method_expand_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_revertable<class_EditorInspector_method_expand_revertable>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                   | :ref:`get_edited_object<class_EditorInspector_method_get_edited_object>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_selected_path<class_EditorInspector_method_get_selected_path>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorProperty<class_EditorProperty>`   | :ref:`instantiate_property_editor<class_EditorInspector_method_instantiate_property_editor>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_EditorInspector_signal_edited_object_changed:

.. rst-class:: classref-signal

**edited_object_changed**\ (\ ) :ref:`🔗<class_EditorInspector_signal_edited_object_changed>`

當正在被屬性檢視器編輯的物件已變更時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorInspector_signal_object_id_selected>`

當 :ref:`Object<class_Object>` 的編輯按鈕在屬性檢視器中被按下時發出。 這主要用於遠端場景樹屬性檢視器。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_deleted>`

當屬性從屬性檢視器中被移除時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_edited:

.. rst-class:: classref-signal

**property_edited**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_edited>`

當屬性在屬性檢視器中被編輯時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`, advance\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_keyed>`

當屬性在屬性檢視器中被 Key 時發出。當動畫面板被切換時，可以透過點擊屬性旁邊的「Key」圖示來 Key 屬性。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_selected:

.. rst-class:: classref-signal

**property_selected**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_selected>`

當屬性在屬性檢視器中被選取時觸發。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_toggled:

.. rst-class:: classref-signal

**property_toggled**\ (\ property\: :ref:`String<class_String>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_toggled>`

當屬性檢視器中的布林值屬性被切換狀態時發出。

\ **注意：** 如果內部 ``autoclear`` 屬性已啟用，此訊號從未發出。由於此屬性在編輯器屬性檢視器中總是已啟用，因此此訊號不會由編輯器本身發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_resource_selected>`

當在屬性檢視器中選取資源時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_restart_requested:

.. rst-class:: classref-signal

**restart_requested**\ (\ ) :ref:`🔗<class_EditorInspector_signal_restart_requested>`

當在屬性檢視器中編輯了需要重新啟動才能套用的屬性時發出。這僅用於專案設定和編輯器設定。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorInspector_method_collapse_all_folding:

.. rst-class:: classref-method

|void| **collapse_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_collapse_all_folding>`

Collapses all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_create_default_inspector:

.. rst-class:: classref-method

:ref:`EditorInspector<class_EditorInspector>` **create_default_inspector**\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static| :ref:`🔗<class_EditorInspector_method_create_default_inspector>`

Creates an inspector with the same configuration as the one used in the editor's Inspector dock. When passing a :ref:`LineEdit<class_LineEdit>` into ``filter_line_edit``, the inspector will filter its properties based on :ref:`LineEdit.text<class_LineEdit_property_text>` whenever :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` is emitted.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_edit:

.. rst-class:: classref-method

|void| **edit**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorInspector_method_edit>`

Shows the properties of the given ``object`` in this inspector for editing. To clear the inspector, call this method with ``null``.

\ **Note:** If you want to edit an object in the editor's main inspector, use the ``edit_*`` methods in :ref:`EditorInterface<class_EditorInterface>` instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_all_folding:

.. rst-class:: classref-method

|void| **expand_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_all_folding>`

Expands all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_revertable:

.. rst-class:: classref-method

|void| **expand_revertable**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_revertable>`

Expands only the foldable sections that contain a revertable (i.e. non-default) property.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorInspector_method_get_edited_object>`

返回發出該訊號的物件。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_selected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_path**\ (\ ) |const| :ref:`🔗<class_EditorInspector_method_get_selected_path>`

獲取目前選定屬性的路徑。

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_instantiate_property_editor:

.. rst-class:: classref-method

:ref:`EditorProperty<class_EditorProperty>` **instantiate_property_editor**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_EditorInspector_method_instantiate_property_editor>`

Creates a property editor that can be used by plugin UI to edit the specified property of an ``object``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
