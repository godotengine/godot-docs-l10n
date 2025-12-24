:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**继承：** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

通过节点层次结构管理游戏循环。

.. rst-class:: classref-introduction-group

描述
----

作为最重要的类之一，\ **SceneTree** 管理着场景中节点的层次结构以及场景本身。节点可以进行添加、获取、移除等操作。整个场景树都可以暂停（因此当前场景也可以暂停）。场景可以加载、切换、重新加载。

你还可以使用 **SceneTree** 将节点分\ **组**\ 管理：你想要创建多少分组都可以，每个节点都可以添加到若干个组中，例如“敌人”组。然后你可以遍历这些分组，甚至可以对指定分组中的所有节点执行调用方法、设置属性等操作。

\ **SceneTree** 是引擎所使用的默认 :ref:`MainLoop<class_MainLoop>` 实现，因此负责游戏循环。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`SceneTree <../tutorials/scripting/scene_tree>`

- :doc:`多分辨率 <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

当 ``node`` 进入该树时发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

当 ``node`` 的 :ref:`Node.update_configuration_warnings()<class_Node_method_update_configuration_warnings>` 被调用时发出。仅在编辑器中发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

当 ``node`` 退出该树时发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

当 ``node`` 的 :ref:`Node.name<class_Node_property_name>` 被更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

在该树中的每个节点上调用 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 之前立即发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

在该树中的每个节点上调用 :ref:`Node._process()<class_Node_private_method__process>` 之前立即发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

新场景添加到场景树中并完成初始化后发出。切换场景时可以用这个信号来稳定地访问 :ref:`current_scene<class_SceneTree_property_current_scene>`\ 。

::

    # 这段代码应当写在自动加载里。
    get_tree().change_scene_to_file(other_scene_path)
    await get_tree().scene_changed
    print(get_tree().current_scene) # 输出新场景。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

每当该树的层次结构发生变化（节点被移动、重命名等）时发出。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

当树内任意节点的 :ref:`Node.process_mode<class_Node_property_process_mode>` 更改时触发。仅在编辑器中触发，以更新禁用节点的可见性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

没有特殊行为地调用组内的节点（默认）。

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

按相反的树层次结构顺序调用组内的节点（所有嵌套子节点都在其各自的父节点之前调用）。

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

在当前帧（可以是处理帧或物理帧）末尾调用组内的节点，类似于 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ 。

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

即使在同一帧中执行多次，也仅调用组内的节点一次。必须与 :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>` 结合使用才能工作。

\ **注意：**\ 不考虑不同的参数。因此，当使用不同的参数执行相同的调用时，只会执行第一个调用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

如果为 ``true``\ ，则应用程序会自动接受退出请求。

移动平台见 :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

当前加载的主场景的根节点，通常是 :ref:`root<class_SceneTree_property_root>` 的直接子节点。另见 :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`\ 、\ :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`\ 、\ :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`\ 。

\ **警告：**\ 直接设置该属性可能无法正常工作，因为这样\ *不会*\ 在场景树中添加删除节点。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

如果为 ``true``\ ，从编辑器中运行游戏时会显示碰撞形状，方便调试。

\ **注意：**\ 这个属性不应在运行时更改。在运行项目时更改 :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` 的值不会有想要的效果。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

如果为 ``true``\ ，从编辑器中运行游戏时会显示导航多边形，方便调试。

\ **注意：**\ 这个属性不应在运行时更改。在运行项目时更改 :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` 的值不会有想要的效果。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

如果为 ``true``\ ，从编辑器中运行游戏时，来自 :ref:`Path2D<class_Path2D>` 和 :ref:`Path3D<class_Path3D>` 节点的曲线将可见以进行调试。

\ **注意：**\ 该属性没有被设计为在运行时更改。在项目运行时更改 :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` 的值不会产生预期的效果。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

编辑器中当前正在编辑场景的根节点。通常是 :ref:`root<class_SceneTree_property_root>` 的直接子节点。

\ **注意：**\ 该属性在发布版本中不起任何作用。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

如果为 ``true``\ （默认值），则在 :ref:`process_frame<class_SceneTree_signal_process_frame>` 期间为该 SceneTree 启用 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的自动轮询。

如果为 ``false``\ ，则需要手动调用 :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` 以处理网络数据包并下发 RPC。这允许在一个不同的循环（例如物理、线程、特定时间步长）中运行 RPC，并在从线程访问 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 时进行手动 :ref:`Mutex<class_Mutex>` 保护。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

如果为 ``true``\ ，则会将场景树视为已暂停，会导致下列行为：

- 停止 2D 和 3D 物理，包括碰撞检测和相关信号。

- 可能不再调用每个节点的 :ref:`Node._process()<class_Node_private_method__process>`\ 、\ :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ 、\ :ref:`Node._input()<class_Node_private_method__input>` 等回调方法，具体由各节点的 :ref:`Node.process_mode<class_Node_property_process_mode>` 决定。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

如果为 ``true``\ ，则渲染器将在最后两个变换之间插入对象的变换（无论该对象为物理对象还是非物理对象），这样即使物理刻度与渲染帧不一致，也能看到平滑的运动。

该属性的默认值由 :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` 控制。

\ **注意：**\ 尽管这是全局设置，仍可使用 :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` 对 **SceneTree** 中的分支进行精细的控制。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

如果为 ``true``\ ，则该应用程序会在导航返回时自动退出（例如在 Android 上使用系统“返回”键）。

禁用这个选项时，如果要处理“返回”按钮，请使用 :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

场景树的根 :ref:`Window<class_Window>`\ 。这是场景树的最顶层 :ref:`Node<class_Node>`\ ，始终存在。绝对 :ref:`NodePath<class_NodePath>` 始终从这个节点开始。加载的 :ref:`current_scene<class_SceneTree_property_current_scene>` 以及“项目设置”中配置的\ :doc:`自动加载 <../tutorials/scripting/singletons_autoload>`\ 可能也是根节点的子节点。

\ **警告：**\ 请勿删除该节点。删除会导致不稳定的行为并引起崩溃。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

在该树内添加到给定 ``group``\ 的每个节点上调用 ``method``\ 。你可以通过在该方法调用末尾指定参数来将参数传递给 ``method``\ 。无法调用 ``method`` 的节点（因为该方法不存在或参数不匹配）将被忽略。另见 :ref:`set_group()<class_SceneTree_method_set_group>` 和 :ref:`notify_group()<class_SceneTree_method_notify_group>`\ 。

\ **注意：**\ 该方法立即作用于所有选定的节点，这可能会在某些性能密集型情况下导致卡顿。

\ **注意：**\ 在 C# 中，当引用内置的 Godot 方法时，\ ``method`` 必须使用 snake_case。最好使用 ``MethodName`` 类中公开的名称，以避免在每次调用时分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

在树内添加到给定 ``group`` 的每个节点上调用给定的 ``method``\ 。使用 ``flags`` 自定义该方法的行为（请参阅 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。\ ``method`` 的附加参数可以在该方法的末尾传递。无法调用 ``method`` 的节点（因为该方法不存在或参数不匹配）将被忽略。

::

    # 在帧末尾以相反的树顺序，在 “enemies” 组的所有节点上调用 “hide”。
    get_tree().call_group_flags(
            SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
            "enemies", "hide")

\ **注意：**\ 在 C# 中，当引用内置的 Godot 方法时，\ ``method`` 必须使用 snake_case。最好使用 ``MethodName`` 类中公开的名称，以避免在每次调用时分配新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

将位于给定路径 ``path`` 的场景加载进一个 :ref:`PackedScene<class_PackedScene>` 并新建其实例，然后将正在运行的场景修改为这个场景。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ；如果 ``path`` 不能被加载到一个 :ref:`PackedScene<class_PackedScene>` 中，则返回 :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`\ ；如果该场景无法被实例化，则返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

\ **注意：**\ 有关操作顺序的详细信息，请参阅 :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

将正在运行的场景更改为给定 :ref:`PackedScene<class_PackedScene>` 的新实例（新实例必须有效）。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，场景无法被实例化时返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ ，场景无效时返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ 。

\ **注意：**\ 当 :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` 被调用时，操作按以下顺序发生：

1. 当前场景节点被立即从树中移除。从那时起，在当前（传出）场景上调用的 :ref:`Node.get_tree()<class_Node_method_get_tree>` 将返回 ``null``\ 。\ :ref:`current_scene<class_SceneTree_property_current_scene>` 也将变为 ``null``\ ，因为新场景尚不可用。

2. 在帧末尾时，已从树中移除的、之前的当前场景将被删除（从内存中释放），然后新场景将被实例化并添加到树中。\ :ref:`Node.get_tree()<class_Node_method_get_tree>` 和 :ref:`current_scene<class_SceneTree_property_current_scene>` 将恢复正常工作。

这确保了两个场景不会同时运行，并且仍然会以类似于 :ref:`Node.queue_free()<class_Node_method_queue_free>` 的安全方式释放之前的场景。

如果你想要稳定地访问新场景，请等待 :ref:`scene_changed<class_SceneTree_signal_scene_changed>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

返回一个新的 :ref:`SceneTreeTimer<class_SceneTreeTimer>`\ 。在以秒为单位的 ``time_sec`` 过去后，该计时器将发出 :ref:`SceneTreeTimer.timeout<class_SceneTreeTimer_signal_timeout>` 并自动释放。

如果 ``process_always`` 为 ``false``\ ，则当将 :ref:`paused<class_SceneTree_property_paused>` 设置为 ``true`` 时，该计时器将被暂停。

如果 ``process_in_physics`` 为 ``true``\ ，则该计时器将在物理帧结束时，而不是在过程帧结束时更新。

如果 ``ignore_time_scale`` 为 ``true``\ ，则该计时器将忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 并使用实际的、经过的时间更新。

该方法通常用于创建一次性的延迟计时器，如下例所示：


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("开始")
        await get_tree().create_timer(1.0).timeout
        print("结束")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("开始");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("结束");
    }



\ **注意：**\ 该计时器总是在树中的所有节点\ *之后*\ 更新。在该计时器更新之前，将调用节点的 :ref:`Node._process()<class_Node_private_method__process>` 方法（如果 ``process_in_physics`` 被设置为 ``true``\ ，则调用 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

创建并返回在该树中处理的新的 :ref:`Tween<class_Tween>`\ 。该 Tween 将在下一个处理帧或物理帧中自动开始（取决于其 :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`\ ）。

\ **注意：**\ 使用该方法创建的 :ref:`Tween<class_Tween>` 不会被绑定到任何 :ref:`Node<class_Node>`\ 。它可能会继续工作，直到没有任何东西可以进行动画。如果希望在 :ref:`Node<class_Node>` 被释放时自动终结该 :ref:`Tween<class_Tween>`\ ，请使用 :ref:`Node.create_tween()<class_Node_method_create_tween>` 或 :ref:`Tween.bind_node()<class_Tween_method_bind_node>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

返回树中找到的第一个加入了 ``group`` 分组的 :ref:`Node<class_Node>`\ ，查找时按照场景层次结构顺序。如果没有找到匹配的节点则返回 ``null``\ 。另见 :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

返回程序开始运行之后已经处理了多少个物理处理步骤。测量的\ *不是*\ 经过的时间。另见 :ref:`physics_frame<class_SceneTree_signal_physics_frame>`\ 。已渲染的帧数见 :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

搜索为给定路径配置的 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ ，如果不存在，则会搜索父路径，直到找到为止。如果路径为空，或者没有找到，则返回默认路径。参见 :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

返回该树中的节点数。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

返回分配给给定组的节点数。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

返回一个 :ref:`Array<class_Array>`\ ，其中包含的是树中所有加入了 ``group`` 分组的节点，按照场景层次结构排序。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

返回树中当前存在的 :ref:`Tween<class_Tween>` 的 :ref:`Array<class_Array>`\ ，包括暂停的补间。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

如果树中存在添加到给定组 ``name`` 的节点，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

如果启用了无障碍特性则返回 ``true``\ ，此时会主动处理无障碍信息的更新。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

如果操作系统支持无障碍特性且在项目设置中进行了启用，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

在树内添加到该 ``group`` 的所有节点上，使用给定 ``notification`` 调用 :ref:`Object.notification()<class_Object_method_notification>`\ 。另见 :doc:`Godot 通知 <../tutorials/best_practices/godot_notifications>`\ 、\ :ref:`call_group()<class_SceneTree_method_call_group>` 和 :ref:`set_group()<class_SceneTree_method_set_group>`\ 。

\ **注意：**\ 该方法立即作用于所有选定的节点，这可能会在某些性能密集型情况下导致卡顿。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

使用给定的 ``notification`` 对添加到 ``group`` 的该树内的所有节点调用 :ref:`Object.notification()<class_Object_method_notification>` 。使用 ``call_flags`` 自定义该方法的行为（见 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

将要删除的给定 ``obj`` 排队，在当前帧末尾调用其 :ref:`Object.free()<class_Object_method_free>`\ 。该方法与 :ref:`Node.queue_free()<class_Node_method_queue_free>` 类似。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

在当前迭代结束时使用退出代码 ``exit_code`` 退出应用程序。

按照惯例，退出代码 ``0`` 表示成功，其他退出代码均表示出错。出于可移植性考虑，退出代码应该在 ``0`` 和 ``125``\ （含）之间。

\ **注意：**\ 这个方法在 iOS 上不起作用。根据 `《iOS 人机界面指南》 <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__ 中的建议，用户应通过 Home 按钮关闭应用程序。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

重新加载当前活动的场景，将 :ref:`current_scene<class_SceneTree_property_current_scene>` 替换为其原始 :ref:`PackedScene<class_PackedScene>` 的新实例。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，如果尚未定义 :ref:`current_scene<class_SceneTree_property_current_scene>`\ ，则返回 :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`\ ，如果 :ref:`current_scene<class_SceneTree_property_current_scene>` 无法加载到 :ref:`PackedScene<class_PackedScene>` 中，则返回 :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`\ ，如果场景无法实例化，则返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

将该树内被添加到给定 ``group`` 的所有节点上的给定 ``property`` 设置为 ``value``\ 。没有 ``property`` 的节点将被忽略。另见 :ref:`call_group()<class_SceneTree_method_call_group>` 和 :ref:`notify_group()<class_SceneTree_method_notify_group>`\ 。

\ **注意：**\ 该方法立即作用于所有选定的节点上，这可能会在某些性能密集型的情况下导致卡顿。

\ **注意：**\ 在 C# 中，在引用 Godot 内置属性时，\ ``property`` 必须是 snake_case。最好使用 ``PropertyName`` 类中公开的名称，以避免在每次调用时分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

将该树内被添加到给定 ``group`` 的所有节点上的给定 ``property`` 设置为 ``value``\ 。没有 ``property`` 的节点将被忽略。使用 ``call_flags`` 自定义该方法的行为（请参阅 :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`\ ）。

\ **注意：**\ 在 C# 中，在引用 Godot 内置方法时，\ ``property`` 必须是 snake_case。最好使用 ``SignalName`` 类中公开的名称，以避免在每次调用时分配一个新的 :ref:`StringName<class_StringName>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

用给定的 ``root_path`` 设置自定义的 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ （同时控制相对的子路径），如果 ``root_path`` 为空，则会覆盖默认值。

\ **注意：**\ :ref:`MultiplayerAPI<class_MultiplayerAPI>` 不能为包含 ``root_path`` 的子路径配置，嵌套的自定义多人游戏是不被允许的。例如，如果为 ``"/root/Foo"`` 配置了一项，则为 ``"/root/Foo/Bar"`` 设置一项将导致错误。

\ **注意：**\ :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` 应该在根路径 ``root_path`` 下的子节点就绪\ *之前*\ 调用。如果在自定义多人 API 设置之前将 :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`\ 、\ :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` 这样的多人节点添加到树中，这些节点将无法正常工作。

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

如果当前场景已加载，调用此方法将进行卸载。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
