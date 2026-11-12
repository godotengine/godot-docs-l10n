:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**繼承：** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

通過節點層次結構管理遊戲迴圈。

.. rst-class:: classref-introduction-group

說明
----

作為最重要的類之一，\ **SceneTree** 管理著場景中節點的層次結構以及場景本身。節點可以進行新增、取得、移除等操作。整個場景樹都可以暫停（因此目前場景也可以暫停）。場景可以載入、切換、重新載入。

你還可以使用 **SceneTree** 將節點分\ **組**\ 管理：你想要建立多少分組都可以，每個節點都可以新增到若干個組中，例如“敵人”組。然後你可以遍歷這些分組，甚至可以對指定分組中的所有節點執行呼叫方法、設定屬性等操作。

\ **SceneTree** 是引擎所使用的預設 :ref:`MainLoop<class_MainLoop>` 實作，因此負責遊戲循環。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`SceneTree <../tutorials/scripting/scene_tree>`

- :doc:`多解析度 <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`auto_accept_quit<class_SceneTree_property_auto_accept_quit>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`current_scene<class_SceneTree_property_current_scene>`                 |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>`           | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`edited_scene_root<class_SceneTree_property_edited_scene_root>`         |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`multiplayer_poll<class_SceneTree_property_multiplayer_poll>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`paused<class_SceneTree_property_paused>`                               | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`physics_interpolation<class_SceneTree_property_physics_interpolation>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`             | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Window<class_Window>` | :ref:`root<class_SceneTree_property_root>`                                   |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group<class_SceneTree_method_call_group>`\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                              |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group_flags<class_SceneTree_method_call_group_flags>`\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_file<class_SceneTree_method_change_scene_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_node<class_SceneTree_method_change_scene_to_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_packed<class_SceneTree_method_change_scene_to_packed>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                                                                                                                         |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneTreeTimer<class_SceneTreeTimer>`            | :ref:`create_timer<class_SceneTree_method_create_timer>`\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                              | :ref:`create_tween<class_SceneTree_method_create_tween>`\ (\ )                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                | :ref:`get_first_node_in_group<class_SceneTree_method_get_first_node_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_frame<class_SceneTree_method_get_frame>`\ (\ ) |const|                                                                                                                                                                                                 |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`            | :ref:`get_multiplayer<class_SceneTree_method_get_multiplayer>`\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const|                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count<class_SceneTree_method_get_node_count>`\ (\ ) |const|                                                                                                                                                                                       |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count_in_group<class_SceneTree_method_get_node_count_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\]   | :ref:`get_nodes_in_group<class_SceneTree_method_get_nodes_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] | :ref:`get_processed_tweens<class_SceneTree_method_get_processed_tweens>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_group<class_SceneTree_method_has_group>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                     |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_enabled<class_SceneTree_method_is_accessibility_enabled>`\ (\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_supported<class_SceneTree_method_is_accessibility_supported>`\ (\ ) |const|                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group<class_SceneTree_method_notify_group>`\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group_flags<class_SceneTree_method_notify_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`queue_delete<class_SceneTree_method_queue_delete>`\ (\ obj\: :ref:`Object<class_Object>`\ )                                                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`quit<class_SceneTree_method_quit>`\ (\ exit_code\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                            |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`reload_current_scene<class_SceneTree_method_reload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group<class_SceneTree_method_set_group>`\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group_flags<class_SceneTree_method_set_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_multiplayer<class_SceneTree_method_set_multiplayer>`\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ )                                                                      |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`unload_current_scene<class_SceneTree_method_unload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

當 ``node`` 進入該樹時發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

當 ``node`` 的 :ref:`Node.update_configuration_warnings()<class_Node_method_update_configuration_warnings>` 被呼叫時發出。僅在編輯器中發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

當 ``node`` 退出該樹時發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

當 ``node`` 的 :ref:`Node.name<class_Node_property_name>` 被更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

在該樹中的每個節點上呼叫 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 之前立即發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

在該樹中的每個節點上呼叫 :ref:`Node._process()<class_Node_private_method__process>` 之前立即發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

新場景新增到場景樹中並完成初始化後發出。切換場景時可以用這個訊號來穩定地存取 :ref:`current_scene<class_SceneTree_property_current_scene>`\ 。

::

    # 這段程式碼應當寫在自動載入里。
    get_tree().change_scene_to_file(other_scene_path)
    await get_tree().scene_changed
    print(get_tree().current_scene) # 輸出新場景。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

每當該樹的層次結構發生變化（節點被移動、重新命名等）時發出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

當樹內任意節點的 :ref:`Node.process_mode<class_Node_property_process_mode>` 更改時觸發。僅在編輯器中觸發，以更新停用節點的可見性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

沒有特殊行為地呼叫組內的節點（預設）。

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

按相反的樹層次結構順序呼叫組內的節點（所有巢狀子節點都在其各自的父節點之前呼叫）。

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

在目前影格（可以是處理影格或物理影格）末尾呼叫組內的節點，類似於 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

即使在同一影格中執行多次，也僅呼叫組內的節點一次。必須與 :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>` 結合使用才能工作。

\ **注意：**\ 不考慮不同的參數。因此，當使用不同的參數執行相同的呼叫時，只會執行第一個呼叫。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

如果為 ``true``\ ，則套用程式會自動接受退出請求。

移動平臺見 :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

目前載入的主場景的根節點，通常是 :ref:`root<class_SceneTree_property_root>` 的直接子節點。另見 :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`\ 、\ :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`\ 、\ :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`\ 。

\ **警告：**\ 直接設定該屬性可能無法正常工作，因為這樣\ *不會*\ 在場景樹中新增刪除節點。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

If ``true``, collision shapes will be visible when running the game from the editor for debugging purposes.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

如果為 ``true``\ ，從編輯器中運作遊戲時會顯示導覽多邊形，方便除錯。

\ **注意：**\ 這個屬性不應在運作時更改。在運作專案時更改 :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` 的值不會有想要的效果。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

如果為 ``true``\ ，從編輯器中運作遊戲時，來自 :ref:`Path2D<class_Path2D>` 和 :ref:`Path3D<class_Path3D>` 節點的曲線將可見以進行除錯。

\ **注意：**\ 該屬性沒有被設計為在運作時更改。在專案運作時更改 :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` 的值不會產生預期的效果。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

編輯器中目前正在編輯場景的根節點。通常是 :ref:`root<class_SceneTree_property_root>` 的直接子節點。

\ **注意：**\ 該屬性在發佈版本中不起任何作用。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

如果為 ``true``\ （預設值），則在 :ref:`process_frame<class_SceneTree_signal_process_frame>` 期間為該 SceneTree 啟用 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的自動輪詢。

如果為 ``false``\ ，則需要手動呼叫 :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` 以處理網路封包並下發 RPC。這允許在一個不同的迴圈（例如物理、執行緒、特定時間步長）中運作 RPC，並在從執行緒存取 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 時進行手動 :ref:`Mutex<class_Mutex>` 保護。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

如果為 ``true``\ ，則會將場景樹視為已暫停，會導致下列行為：

- 停止 2D 和 3D 物理，包括碰撞檢測和相關訊號。

- 可能不再呼叫每個節點的 :ref:`Node._process()<class_Node_private_method__process>`\ 、\ :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ 、\ :ref:`Node._input()<class_Node_private_method__input>` 等回呼方法，具體由各節點的 :ref:`Node.process_mode<class_Node_property_process_mode>` 決定。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

如果為 ``true``\ ，則渲染器將在最後兩個變換之間插入物件的變換（無論該物件為物理物件還是非物理物件），這樣即使物理刻度與渲染影格不一致，也能看到平滑的運動。

該屬性的預設值由 :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` 控制。

\ **注意：**\ 儘管這是全域設定，仍可使用 :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` 對 **SceneTree** 中的分支進行精細的控制。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

如果為 ``true``\ ，則該套用程式會在導覽返回時自動退出（例如在 Android 上使用系統“返回”鍵）。

停用這個選項時，如果要處理“返回”按鈕，請使用 :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

場景樹的根 :ref:`Window<class_Window>`\ 。這是場景樹的最頂層 :ref:`Node<class_Node>`\ ，始終存在。絕對 :ref:`NodePath<class_NodePath>` 始終從這個節點開始。載入的 :ref:`current_scene<class_SceneTree_property_current_scene>` 以及“專案設定”中設定的\ :doc:`自動載入 <../tutorials/scripting/singletons_autoload>`\ 可能也是根節點的子節點。

\ **警告：**\ 請勿刪除該節點。刪除會導致不穩定的行為並引起崩潰。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

在該樹內新增到給定 ``group``\ 的每個節點上呼叫 ``method``\ 。你可以通過在該方法呼叫末尾指定參數來將參數傳遞給 ``method``\ 。無法呼叫 ``method`` 的節點（因為該方法不存在或參數不匹配）將被忽略。另見 :ref:`set_group()<class_SceneTree_method_set_group>` 和 :ref:`notify_group()<class_SceneTree_method_notify_group>`\ 。

\ **注意：**\ 該方法立即作用於所有選定的節點，這可能會在某些效能密集型情況下導致卡頓。

\ **注意：**\ 在 C# 中，當參照內建的 Godot 方法時，\ ``method`` 必須使用 snake_case。最好使用 ``MethodName`` 類中公開的名稱，以避免在每次呼叫時分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

在樹內新增到給定 ``group`` 的每個節點上呼叫給定的 ``method``\ 。使用 ``flags`` 自訂該方法的行為（請參閱 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。\ ``method`` 的附加參數可以在該方法的末尾傳遞。無法呼叫 ``method`` 的節點（因為該方法不存在或參數不匹配）將被忽略。

::

    # 在影格末尾以相反的樹順序，在 “enemies” 組的所有節點上呼叫 “hide”。
    get_tree().call_group_flags(
            SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
            "enemies", "hide")

\ **注意：**\ 在 C# 中，當參照內建的 Godot 方法時，\ ``method`` 必須使用 snake_case。最好使用 ``MethodName`` 類中公開的名稱，以避免在每次呼叫時分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

將位於給定路徑 ``path`` 的場景載入為一個 :ref:`PackedScene<class_PackedScene>` 並建立新實例，然後將正在執行的場景修改為這個場景。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果 ``path`` 不能被載入為一個 :ref:`PackedScene<class_PackedScene>` ，則回傳 :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`\ ；如果該場景無法被實例化，則回傳 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

\ **注意：**\ 有關操作順序的詳細資訊，請參閱 :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_node:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_node>`

將正在執行的場景切換為給定的 :ref:`Node<class_Node>`\ 。當你希望在切換前設定新場景時非常有用。

成功時返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，\ ``node`` 為 ``null`` 時返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ ，\ ``node`` 已經在場景樹中時返回 :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`\ 。

\ **注意：**\ 當 :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>` 被呼叫時，操作按以下順序發生：

1. 目前場景節點被立即從樹中移除。從那時起，在目前（即將退出）場景上呼叫的 :ref:`Node.get_tree()<class_Node_method_get_tree>` 將返回 ``null``\ 。\ :ref:`current_scene<class_SceneTree_property_current_scene>` 也將變為 ``null``\ ，因為新場景尚不可用。

2. 在影格末尾時，已從樹中移除的、之前的目前場景將被刪除（從記憶體中釋放），然後新場景節點將被新增到樹中。\ :ref:`Node.get_tree()<class_Node_method_get_tree>` 和 :ref:`current_scene<class_SceneTree_property_current_scene>` 將恢復正常工作。

這確保了兩個場景不會同時執行，並且仍然會以類似於 :ref:`Node.queue_free()<class_Node_method_queue_free>` 的安全方式釋放之前的場景。

如果你想要穩定地存取新場景，請等待 :ref:`scene_changed<class_SceneTree_signal_scene_changed>` 訊號。

\ **警告：** 使用此方法之後，\ **SceneTree** 將獲得該節點的所有權，並在再次切換場景時自動釋放它。你對該節點的一切參照都將失效。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

將正在執行的場景切換為指定 :ref:`PackedScene<class_PackedScene>` （必須有效）的一個新實例。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果該場景無法被實例化，則回傳 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。如果場景無效，則回傳 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ 。

\ **注意：**\ 有關操作順序的詳細資訊，請參閱 :ref:`change_scene_to_node()<class_SceneTree_method_change_scene_to_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

回傳一個新的 :ref:`SceneTreeTimer<class_SceneTreeTimer>`\ 。在以秒為單位的 ``time_sec`` 過去後，該計時器將發出 :ref:`SceneTreeTimer.timeout<class_SceneTreeTimer_signal_timeout>` 並自動釋放。

如果 ``process_always`` 為 ``false``\ ，則當將 :ref:`paused<class_SceneTree_property_paused>` 設定為 ``true`` 時，該計時器將被暫停。

如果 ``process_in_physics`` 為 ``true``\ ，則該計時器將在物理影格結束時，而不是在過程影格結束時更新。

如果 ``ignore_time_scale`` 為 ``true``\ ，則該計時器將忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 並使用實際的、經過的時間更新。

該方法通常用於建立一次性的延遲計時器，如下例所示：


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("開始")
        await get_tree().create_timer(1.0).timeout
        print("結束")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("開始");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("結束");
    }



\ **注意：**\ 該計時器總是在樹中的所有節點\ *之後*\ 更新。在該計時器更新之前，將呼叫節點的 :ref:`Node._process()<class_Node_private_method__process>` 方法（如果 ``process_in_physics`` 被設定為 ``true``\ ，則呼叫 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

建立並回傳在該樹中處理的新的 :ref:`Tween<class_Tween>`\ 。該 Tween 將在下一個處理影格或物理影格中自動開始（取決於其 :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ）。

\ **注意：**\ 使用該方法建立的 :ref:`Tween<class_Tween>` 不會被綁定到任何 :ref:`Node<class_Node>`\ 。它可能會繼續工作，直到沒有任何東西可以進行動畫。如果希望在 :ref:`Node<class_Node>` 被釋放時自動終結該 :ref:`Tween<class_Tween>`\ ，請使用 :ref:`Node.create_tween()<class_Node_method_create_tween>` 或 :ref:`Tween.bind_node()<class_Tween_method_bind_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

回傳樹中找到的第一個加入了 ``group`` 分組的 :ref:`Node<class_Node>`\ ，尋找時按照場景層次結構順序。如果沒有找到匹配的節點則回傳 ``null``\ 。另見 :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

回傳程式開始執行之後已經處理了多少個物理處理步驟。測量的\ *不是*\ 經過的時間。另見 :ref:`physics_frame<class_SceneTree_signal_physics_frame>`\ 。已渲染的影格數見 :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

搜尋為給定路徑配置的 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ ，如果不存在，則搜尋父路徑，直到找到一個。如果路徑為空，或沒有找到，則傳回預設值。請請參閱\ :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

回傳該樹中的節點數。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

回傳分配給給定組的節點數。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

回傳一個 :ref:`Array<class_Array>`\ ，其中包含的是樹中所有加入了 ``group`` 分組的節點，按照場景層次結構排序。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

回傳樹中目前存在的 :ref:`Tween<class_Tween>` 的 :ref:`Array<class_Array>`\ ，包括暫停的補間。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

如果樹中存在新增到給定組 ``name`` 的節點，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

如果啟用了無障礙特性則回傳 ``true``\ ，此時會主動處理無障礙資訊的更新。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

如果作業系統支援無障礙特性且在專案設定中進行了啟用，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

在樹內新增到該 ``group`` 的所有節點上，使用給定 ``notification`` 呼叫 :ref:`Object.notification()<class_Object_method_notification>`\ 。另見 :doc:`Godot 通知 <../tutorials/best_practices/godot_notifications>`\ 、\ :ref:`call_group()<class_SceneTree_method_call_group>` 和 :ref:`set_group()<class_SceneTree_method_set_group>`\ 。

\ **注意：**\ 該方法立即作用於所有選定的節點，這可能會在某些效能密集型情況下導致卡頓。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

使用給定的 ``notification`` 對新增到 ``group`` 的該樹內的所有節點呼叫 :ref:`Object.notification()<class_Object_method_notification>` 。使用 ``call_flags`` 自訂該方法的行為（見 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

將要刪除的給定 ``obj`` 排隊，在目前影格末尾呼叫其 :ref:`Object.free()<class_Object_method_free>`\ 。該方法與 :ref:`Node.queue_free()<class_Node_method_queue_free>` 類似。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

在目前迭代結束時使用退出程式碼 ``exit_code`` 退出應用程式。

按照慣例，退出程式碼 ``0`` 表示成功，其他退出程式碼均表示出錯。出於可移植性考慮，退出程式碼應該在 ``0`` 和 ``125``\ （含）之間。

\ **注意：**\ 這個方法在 iOS 上不起作用。根據 `《iOS 人機介面指南》 <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__ 中的建議，使用者應通過 Home 按鈕關閉應用程式。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

重新載入目前活動的場景，將 :ref:`current_scene<class_SceneTree_property_current_scene>` 替換為其原始 :ref:`PackedScene<class_PackedScene>` 的新實例。

成功時回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，如果尚未定義 :ref:`current_scene<class_SceneTree_property_current_scene>`\ ，則回傳 :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`\ ，如果 :ref:`current_scene<class_SceneTree_property_current_scene>` 無法載入到 :ref:`PackedScene<class_PackedScene>` 中，則回傳 :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`\ ，如果場景無法實例化，則回傳 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

將該樹內被新增到給定 ``group`` 的所有節點上的給定 ``property`` 設定為 ``value``\ 。沒有 ``property`` 的節點將被忽略。另見 :ref:`call_group()<class_SceneTree_method_call_group>` 和 :ref:`notify_group()<class_SceneTree_method_notify_group>`\ 。

\ **注意：**\ 該方法立即作用於所有選定的節點上，這可能會在某些效能密集型的情況下導致卡頓。

\ **注意：**\ 在 C# 中，在參照 Godot 內建屬性時，\ ``property`` 必須是 snake_case。最好使用 ``PropertyName`` 類中公開的名稱，以避免在每次呼叫時分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

將該樹內被新增到給定 ``group`` 的所有節點上的給定 ``property`` 設定為 ``value``\ 。沒有 ``property`` 的節點將被忽略。使用 ``call_flags`` 自訂該方法的行為（請參閱 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。

\ **注意：**\ 在 C# 中，在參照 Godot 內建方法時，\ ``property`` 必須是 snake_case。最好使用 ``SignalName`` 類中公開的名稱，以避免在每次呼叫時分配一個新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

用給定的 ``root_path`` 設定自訂的 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ （同時控制相對的子路徑），如果 ``root_path`` 為空，則會覆蓋預設值。

\ **注意：**\ :ref:`MultiplayerAPI<class_MultiplayerAPI>` 不能為包含 ``root_path`` 的子路徑設定，巢狀的自訂多人遊戲是不被允許的。例如，如果為 ``"/root/Foo"`` 設定了一項，則為 ``"/root/Foo/Bar"`` 設定一項將導致錯誤。

\ **注意：**\ :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` 應該在根路徑 ``root_path`` 下的子節點就緒\ *之前*\ 呼叫。如果在自訂多人 API 設定之前將 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`\ 、\ :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 這樣的多人節點新增到樹中，這些節點將無法正常工作。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

如果目前場景已載入，呼叫此方法將進行解除安裝。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
