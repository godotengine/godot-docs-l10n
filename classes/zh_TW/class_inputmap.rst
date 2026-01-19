:github_url: hide

.. _class_InputMap:

InputMap
========

**繼承：** :ref:`Object<class_Object>`

管理所有 :ref:`InputEventAction<class_InputEventAction>` 的單例。

.. rst-class:: classref-introduction-group

說明
----

管理所有的 :ref:`InputEventAction<class_InputEventAction>`\ ，可以通過專案設定功能表\ **專案 > 專案設定 > 輸入對應**\ 或在程式碼中用 :ref:`add_action()<class_InputMap_method_add_action>` 和 :ref:`action_add_event()<class_InputMap_method_action_add_event>` 建立/修改。請參閱 :ref:`Node._input()<class_Node_private_method__input>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `使用 InputEvent：InputMap <../tutorials/inputs/inputevent.html#inputmap>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_add_event<class_InputMap_method_action_add_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_event<class_InputMap_method_action_erase_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_events<class_InputMap_method_action_erase_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`action_get_deadzone<class_InputMap_method_action_get_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] | :ref:`action_get_events<class_InputMap_method_action_get_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`action_has_event<class_InputMap_method_action_has_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_set_deadzone<class_InputMap_method_action_set_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_action<class_InputMap_method_add_action>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ )                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_action<class_InputMap_method_erase_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`event_is_action<class_InputMap_method_event_is_action>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_action_description<class_InputMap_method_get_action_description>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_actions<class_InputMap_method_get_actions>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_action<class_InputMap_method_has_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`load_from_project_settings<class_InputMap_method_load_from_project_settings>`\ (\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_InputMap_method_action_add_event:

.. rst-class:: classref-method

|void| **action_add_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_add_event>`

給某個動作新增一個 :ref:`InputEvent<class_InputEvent>`\ 。這個 :ref:`InputEvent<class_InputEvent>` 將觸發這個動作。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_event:

.. rst-class:: classref-method

|void| **action_erase_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_erase_event>`

從某個動作中刪除一個 :ref:`InputEvent<class_InputEvent>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_events:

.. rst-class:: classref-method

|void| **action_erase_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_erase_events>`

從某個動作中刪除所有事件。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_deadzone:

.. rst-class:: classref-method

:ref:`float<class_float>` **action_get_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_deadzone>`

返回該操作的死區值。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_events:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] **action_get_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_events>`

返回與給定動作關聯的 :ref:`InputEvent<class_InputEvent>` 的陣列。

\ **注意：**\ 在編輯器中使用時（例如在工具腳本或 :ref:`EditorPlugin<class_EditorPlugin>` 中使用），這個方法返回的是編輯器動作對應的事件。如果你想要在編輯器中存取你的專案的輸入綁定，請讀取 :ref:`ProjectSettings<class_ProjectSettings>` 的 ``input/*`` 設定。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_has_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **action_has_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_has_event>`

如果該動作有給定的 :ref:`InputEvent<class_InputEvent>` 與之相關，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_set_deadzone:

.. rst-class:: classref-method

|void| **action_set_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ ) :ref:`🔗<class_InputMap_method_action_set_deadzone>`

為該動作設定死區值。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ ) :ref:`🔗<class_InputMap_method_add_action>`

在 **InputMap** 上新增空的動作，死區可使用 ``deadzone`` 配置。

然後可以用 :ref:`action_add_event()<class_InputMap_method_action_add_event>` 給這個動作新增 :ref:`InputEvent<class_InputEvent>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_erase_action:

.. rst-class:: classref-method

|void| **erase_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_erase_action>`

從 **InputMap** 中刪除一個動作。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_event_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **event_is_action**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputMap_method_event_is_action>`

如果給定的事件是現有動作的一部分，返回 ``true``\ 。如果給定的 :ref:`InputEvent<class_InputEvent>` 沒有被按下，這個方法會忽略鍵盤（為了正確地偵測釋放）。如果你不想要這種行為，請參閱 :ref:`action_has_event()<class_InputMap_method_action_has_event>`\ 。

如果 ``exact_match`` 是 ``false``\ ，它會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_action_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_description**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_get_action_description>`

Returns the human-readable description of the given action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_actions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_actions**\ (\ ) :ref:`🔗<class_InputMap_method_get_actions>`

返回 **InputMap** 中所有動作的陣列。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_has_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_has_action>`

如果 **InputMap** 有一個給定名稱的註冊動作，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_load_from_project_settings:

.. rst-class:: classref-method

|void| **load_from_project_settings**\ (\ ) :ref:`🔗<class_InputMap_method_load_from_project_settings>`

清除 **InputMap** 中的所有 :ref:`InputEventAction<class_InputEventAction>`\ ，並從 :ref:`ProjectSettings<class_ProjectSettings>` 專案設定中重新載入它。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
