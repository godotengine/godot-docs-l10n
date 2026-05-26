:github_url: hide

.. _class_AnimationNode:

AnimationNode
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimationNodeExtension<class_AnimationNodeExtension>`, :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`, :ref:`AnimationNodeSync<class_AnimationNodeSync>`, :ref:`AnimationNodeTimeScale<class_AnimationNodeTimeScale>`, :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>`, :ref:`AnimationRootNode<class_AnimationRootNode>`

:ref:`AnimationTree<class_AnimationTree>` 節點的基底類別，與場景節點無關。

.. rst-class:: classref-introduction-group

說明
----

用於 :ref:`AnimationTree<class_AnimationTree>` 節點的基礎資源。通常不會直接使用，但你可以建立自訂節點並撰寫自己的混合公式。

若要建立主要用於 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的動畫節點，請繼承本類；否則應使用 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。

你可以作為唯讀參數存取時間資訊，該資訊已於前一影格為所有節點（除 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 外）處理並儲存。

\ **注意：** 當一個 **AnimationNode** 擁有多個輸入時，最終採用哪個輸入的時間資訊，取決於該動畫節點的類型。

::

    var current_length = $AnimationTree["parameters/AnimationNodeName/current_length"]
    var current_position = $AnimationTree["parameters/AnimationNodeName/current_position"]
    var current_delta = $AnimationTree["parameters/AnimationNodeName/current_delta"]

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`filter_enabled<class_AnimationNode_property_filter_enabled>` |
   +-------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`_get_caption<class_AnimationNode_private_method__get_caption>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>` | :ref:`_get_child_by_name<class_AnimationNode_private_method__get_child_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`       | :ref:`_get_child_nodes<class_AnimationNode_private_method__get_child_nodes>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`_get_parameter_default_value<class_AnimationNode_private_method__get_parameter_default_value>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                 | :ref:`_get_parameter_list<class_AnimationNode_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_has_filter<class_AnimationNode_private_method__has_filter>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_is_parameter_read_only<class_AnimationNode_private_method__is_parameter_read_only>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`_process<class_AnimationNode_private_method__process>`\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`add_input<class_AnimationNode_method_add_input>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`blend_animation<class_AnimationNode_method_blend_animation>`\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ )                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_input<class_AnimationNode_method_blend_input>`\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ )                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_node<class_AnimationNode_method_blend_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_input<class_AnimationNode_method_find_input>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_input_count<class_AnimationNode_method_get_input_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_input_name<class_AnimationNode_method_get_input_name>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`get_parameter<class_AnimationNode_method_get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_processing_animation_tree_instance_id<class_AnimationNode_method_get_processing_animation_tree_instance_id>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_path_filtered<class_AnimationNode_method_is_path_filtered>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_process_testing<class_AnimationNode_method_is_process_testing>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`remove_input<class_AnimationNode_method_remove_input>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_filter_path<class_AnimationNode_method_set_filter_path>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`set_input_name<class_AnimationNode_method_set_input_name>`\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_parameter<class_AnimationNode_method_set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_AnimationNode_signal_animation_node_removed:

.. rst-class:: classref-signal

**animation_node_removed**\ (\ object_id\: :ref:`int<class_int>`, node_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_removed>`

繼承此類且具有內部樹的節點在其中一個動畫節點被移除時會發出此訊號。發出者包含 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` 與 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_animation_node_renamed:

.. rst-class:: classref-signal

**animation_node_renamed**\ (\ object_id\: :ref:`int<class_int>`, old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_renamed>`

繼承此類且具有內部樹的節點在其動畫節點名稱變更時會發出此訊號。發出者包含 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` 與 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_node_updated:

.. rst-class:: classref-signal

**node_updated**\ (\ object_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_signal_node_updated>`

**實驗性：** 此訊號可能在未來版本中變更或移除。

Emitted by :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>` when its :ref:`AnimationNodeAnimation.animation<class_AnimationNodeAnimation_property_animation>` resource is changed, or by :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` when its connections change.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_AnimationNode_signal_tree_changed>`

繼承此類且具有內部樹的節點在其動畫節點內容變更時會發出此訊號。發出者包含 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`\ 、\ :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 與 :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AnimationNode_FilterAction:

.. rst-class:: classref-enumeration

enum **FilterAction**: :ref:`🔗<enum_AnimationNode_FilterAction>`

.. _class_AnimationNode_constant_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_IGNORE** = ``0``

不使用篩選。

.. _class_AnimationNode_constant_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_PASS** = ``1``

符合篩選器的路徑將被允許通過。

.. _class_AnimationNode_constant_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_STOP** = ``2``

符合篩選器的路徑將被捨棄。

.. _class_AnimationNode_constant_FILTER_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_BLEND** = ``3``

符合篩選器的路徑將依混合值進行混合。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AnimationNode_property_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_enabled** :ref:`🔗<class_AnimationNode_property_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filter_enabled**\ (\ )

若為 ``true``\ ，啟用篩選功能。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AnimationNode_private_method__get_caption:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_caption**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_caption>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可覆寫動畫節點的顯示標題。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_by_name:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **_get_child_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_by_name>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可依 ``name`` 取得子動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_nodes:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_child_nodes**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_nodes>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法以 ``名稱: 節點`` 字典順序回傳所有子動畫節點。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter_default_value**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_default_value>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可回傳參數 ``parameter`` 的預設值。參數是動畫節點的自訂本地記憶體，可於多棵樹重用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_list>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可回傳本節點的屬性清單。參數為動畫節點的自訂本地記憶體，資源可於多棵樹重用。格式類似 :ref:`Object.get_property_list()<class_Object_method_get_property_list>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__has_filter:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_filter**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__has_filter>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法以決定混合樹編輯器是否要在此節點顯示篩選器編輯。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__is_parameter_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_parameter_read_only**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__is_parameter_read_only>`

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可判定參數 ``parameter`` 是否唯讀。參數是動畫節點的自訂本地記憶體，可於多棵樹重用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__process:

.. rst-class:: classref-method

:ref:`float<class_float>` **_process**\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_AnimationNode_private_method__process>`

**已棄用：** Currently this is mostly useless as there is a lack of many APIs to extend AnimationNode by GDScript. It is planned that a more flexible API using structures will be provided in the future.

繼承 :ref:`AnimationRootNode<class_AnimationRootNode>` 時，實作此虛方法可在處理本動畫節點時執行自訂程式碼。\ ``time`` 為相對增量，除非 ``seek`` 為 ``true``\ ，則為絕對值。

可在此呼叫 :ref:`blend_input()<class_AnimationNode_method_blend_input>`\ 、\ :ref:`blend_node()<class_AnimationNode_method_blend_node>` 或 :ref:`blend_animation()<class_AnimationNode_method_blend_animation>`\ 。亦可使用 :ref:`get_parameter()<class_AnimationNode_method_get_parameter>` 與 :ref:`set_parameter()<class_AnimationNode_method_set_parameter>` 來讀寫本地記憶體。

此函式應回傳處理後的 delta。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_add_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_input**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_add_input>`

為動畫節點新增一個輸入。僅對用於 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的節點有用。若新增失敗則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_animation:

.. rst-class:: classref-method

|void| **blend_animation**\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ ) :ref:`🔗<class_AnimationNode_method_blend_animation>`

依 ``blend`` 值混合動畫（名稱必須存在於連結的 :ref:`AnimationPlayer<class_AnimationPlayer>` 中）。可傳入 ``time``\ 、\ ``delta``\ ，以及是否發生 ``seeked``\ 。

\ ``looped_flag`` 由內部流程於迴圈結束後立即使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_input:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_input**\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_input>`

混合一個輸入。僅對用於 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的節點有用。\ ``time`` 為相對增量，除非 ``seek`` 為 ``true``\ ，此時為絕對值。可選擇傳入篩選模式。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_node:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_node>`

混合另一個動畫節點（當此節點包含子動畫節點時）。僅在你繼承自 :ref:`AnimationRootNode<class_AnimationRootNode>` 時有意義，否則編輯器無法顯示它以供新增。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_find_input:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_input**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_AnimationNode_method_find_input>`

回傳與名稱 ``name`` 對應的輸入索引；若不存在則回傳 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_count**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_count>`

此動畫節點的輸入數量，僅對用於 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的節點有用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_name**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_name>`

依索引取得輸入名稱。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_parameter>`

取得參數值。參數是動畫節點的自訂本地記憶體，可於多棵樹重用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_processing_animation_tree_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_processing_animation_tree_instance_id**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_processing_animation_tree_instance_id>`

回傳擁有此節點的 :ref:`AnimationTree<class_AnimationTree>` 之物件 ID。

\ **注意：** 僅應在 :ref:`AnimationNodeExtension._process_animation_node()<class_AnimationNodeExtension_private_method__process_animation_node>` 之內呼叫；否則將回傳無效 ID。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_path_filtered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_path_filtered**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_AnimationNode_method_is_path_filtered>`

若指定路徑已被過濾則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_process_testing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_process_testing**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_is_process_testing>`

若此動畫節點正於僅測試模式下被處理，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_remove_input:

.. rst-class:: classref-method

|void| **remove_input**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_method_remove_input>`

移除輸入；僅在節點非活動時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_filter_path:

.. rst-class:: classref-method

|void| **set_filter_path**\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNode_method_set_filter_path>`

新增或移除篩選器路徑。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_input_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_input_name**\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_set_input_name>`

設定索引 ``input`` 處輸入的名稱；若設定失敗則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_parameter:

.. rst-class:: classref-method

|void| **set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_AnimationNode_method_set_parameter>`

設定自訂參數。此參數作為本地記憶體，資源可在多棵樹或多個場景共用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
