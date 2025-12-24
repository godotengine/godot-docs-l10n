:github_url: hide

.. _class_AnimationNodeStateMachine:

AnimationNodeStateMachine
=========================

**繼承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

含多個 :ref:`AnimationRootNode<class_AnimationRootNode>` 的狀態機，供 :ref:`AnimationTree<class_AnimationTree>` 使用。

.. rst-class:: classref-introduction-group

說明
----

包含多個代表動畫狀態的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ ，並以圖形方式互相連接。可使用最短路徑演算法，將狀態轉換設定為自動或透過程式碼觸發。若要以程式方式控制，請從 :ref:`AnimationTree<class_AnimationTree>` 取得 :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>` 物件。


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`allow_transition_to_self<class_AnimationNodeStateMachine_property_allow_transition_to_self>` | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset_ends<class_AnimationNodeStateMachine_property_reset_ends>`                             | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` | :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>`             | ``0``     |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_node<class_AnimationNodeStateMachine_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_transition<class_AnimationNodeStateMachine_method_add_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_graph_offset<class_AnimationNodeStateMachine_method_get_graph_offset>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                                             | :ref:`get_node<class_AnimationNodeStateMachine_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\]                      | :ref:`get_node_list<class_AnimationNodeStateMachine_method_get_node_list>`\ (\ ) |const|                                                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_node_name<class_AnimationNodeStateMachine_method_get_node_name>`\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const|                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_node_position<class_AnimationNodeStateMachine_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` | :ref:`get_transition<class_AnimationNodeStateMachine_method_get_transition>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                                 | :ref:`get_transition_count<class_AnimationNodeStateMachine_method_get_transition_count>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_from<class_AnimationNodeStateMachine_method_get_transition_from>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                            |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_to<class_AnimationNodeStateMachine_method_get_transition_to>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_node<class_AnimationNodeStateMachine_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_transition<class_AnimationNodeStateMachine_method_has_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                             |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_node<class_AnimationNodeStateMachine_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition<class_AnimationNodeStateMachine_method_remove_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition_by_index<class_AnimationNodeStateMachine_method_remove_transition_by_index>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`rename_node<class_AnimationNodeStateMachine_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`replace_node<class_AnimationNodeStateMachine_method_replace_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ )                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_graph_offset<class_AnimationNodeStateMachine_method_set_graph_offset>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_node_position<class_AnimationNodeStateMachine_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AnimationNodeStateMachine_StateMachineType:

.. rst-class:: classref-enumeration

enum **StateMachineType**: :ref:`🔗<enum_AnimationNodeStateMachine_StateMachineType>`

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_ROOT** = ``0``

將尋道至開頭視為從起始狀態播放；轉場至結束狀態則視為離開狀態機。

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_NESTED** = ``1``

將尋道至開頭視為在目前狀態中尋道至動畫開頭；若轉場至結束狀態或各狀態皆無轉場，則視為離開狀態機。

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_GROUPED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_GROUPED** = ``2``

這是可由父狀態機控制的分組狀態機，本身不會獨立運作。父層或更高層必須存在 :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>` 為 :ref:`STATE_MACHINE_TYPE_ROOT<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT>` 或 :ref:`STATE_MACHINE_TYPE_NESTED<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED>` 的狀態機。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNodeStateMachine_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

若為 ``true``\ ，則可使用 :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` 傳送回目前狀態；若在該方法中啟用重設選項，動畫將重新播放。若為 ``false``\ ，傳送到自身狀態時不會發生任何事。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_reset_ends:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_ends** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_reset_ends>`

.. rst-class:: classref-property-setget

- |void| **set_reset_ends**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_ends_reset**\ (\ )

若為 ``true``\ ，則將與起始與結束節點的交叉淡入淡出視為與 RESET 動畫的混合。

多數情況下，若在狀態機的父 :ref:`AnimationNode<class_AnimationNode>` 進行額外淡入淡出，建議將此屬性設為 ``false``\ ，並使父節點與狀態機的起始／結束節點之淡入淡出時間一致，以取得較佳效果。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_state_machine_type:

.. rst-class:: classref-property

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **state_machine_type** = ``0`` :ref:`🔗<class_AnimationNodeStateMachine_property_state_machine_type>`

.. rst-class:: classref-property-setget

- |void| **set_state_machine_type**\ (\ value\: :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ )
- :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **get_state_machine_type**\ (\ )

此屬性可根據不同情境定義轉場流程。另見 :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNodeStateMachine_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_node>`

向圖形中新增新的動畫節點。\ ``position`` 僅用於編輯器中的顯示位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_transition>`

在指定的動畫節點之間新增轉場。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_graph_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_graph_offset>`

返回圖形的繪製偏移量，僅供編輯器顯示使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node>`

返回指定名稱的動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_list>`

返回一個列表，內含此狀態機中的所有動畫節點名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_name>`

返回指定動畫節點的名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_position>`

返回指定動畫節點的座標，僅供編輯器顯示使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition:

.. rst-class:: classref-method

:ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` **get_transition**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition>`

返回指定的轉場。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_count>`

返回圖形中的連線數量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_from:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_from**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_from>`

返回指定轉場的起始節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_to:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_to**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_to>`

返回指定轉場的結束節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_node>`

若圖形中包含指定的動畫節點，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_transition>`

若指定的兩個動畫節點之間存在轉場，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_node>`

從圖形中刪除指定的動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition:

.. rst-class:: classref-method

|void| **remove_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition>`

刪除兩個指定動畫節點之間的轉場。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition_by_index:

.. rst-class:: classref-method

|void| **remove_transition_by_index**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition_by_index>`

依索引刪除指定的轉場。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_rename_node>`

重新命名指定的動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_replace_node>`

以新的動畫節點取代指定的動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_graph_offset:

.. rst-class:: classref-method

|void| **set_graph_offset**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_graph_offset>`

設定圖形的繪製偏移量，僅供編輯器顯示使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_node_position>`

設定動畫節點的座標，僅供編輯器顯示使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
