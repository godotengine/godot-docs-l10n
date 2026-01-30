:github_url: hide

.. _class_AnimationNodeStateMachine:

AnimationNodeStateMachine
=========================

**继承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

带有多个 :ref:`AnimationRootNode<class_AnimationRootNode>` 的状态机，用于 :ref:`AnimationTree<class_AnimationTree>`\ 。

.. rst-class:: classref-introduction-group

描述
----

包含表示动画状态的多个 :ref:`AnimationRootNode<class_AnimationRootNode>`\ ，以图的形式连接。可以使用最短路径算法，将节点过渡配置为自动发生或通过代码发生。要以编程的方式控制过渡，请从 :ref:`AnimationTree<class_AnimationTree>` 节点获取 :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>` 对象。


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_AnimationNodeStateMachine_StateMachineType:

.. rst-class:: classref-enumeration

enum **StateMachineType**: :ref:`🔗<enum_AnimationNodeStateMachine_StateMachineType>`

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_ROOT** = ``0``

寻道到开头被视为从开始状态开始播放。过渡到结束状态被视为退出状态机。

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_NESTED** = ``1``

寻道到开头被视为在当前状态下寻道到动画的开头。过渡到结束状态，或每个状态的过渡都缺失，被视为退出状态机。

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_GROUPED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_GROUPED** = ``2``

这是一个可以从父状态机控制的编组的状态机。它不能独立运行。父级或祖先中必须有一个 :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>` 为 :ref:`STATE_MACHINE_TYPE_ROOT<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT>` 或 :ref:`STATE_MACHINE_TYPE_NESTED<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED>` 的状态机。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationNodeStateMachine_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

如果为 ``true``\ ，允许使用 :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` 传送到当前状态。当在 :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` 中启用重置选项时，动画将重新启动。如果为 ``false``\ ，传送到当前状态时不会发生任何事情。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_reset_ends:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_ends** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_reset_ends>`

.. rst-class:: classref-property-setget

- |void| **set_reset_ends**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_ends_reset**\ (\ )

如果为 ``true``\ ，则将与开始和结束节点的淡入淡出视为与 RESET 动画的混合。

大多数情况下，状态机的父级 :ref:`AnimationNode<class_AnimationNode>` 执行额外的淡入淡出时，将这个属性设置为 ``false`` 并将父 :ref:`AnimationNode<class_AnimationNode>` 和该状态机的开始和结束节点的淡入淡出时间设为相同的值能够得到不错的效果。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_state_machine_type:

.. rst-class:: classref-property

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **state_machine_type** = ``0`` :ref:`🔗<class_AnimationNodeStateMachine_property_state_machine_type>`

.. rst-class:: classref-property-setget

- |void| **set_state_machine_type**\ (\ value\: :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ )
- :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **get_state_machine_type**\ (\ )

该属性可以为不同用例定义过渡过程。另见 :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationNodeStateMachine_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_node>`

向图中添加一个新的动画节点。\ ``position`` 用于在编辑器中显示。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_transition>`

在给定动画节点之间添加一个过渡。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_graph_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_graph_offset>`

返回图的绘制偏移。用于在编辑器中显示。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node>`

返回指定名称的动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_list>`

返回包含状态机中所有动画节点名称的列表。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_name>`

返回指定动画节点的名称。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_position>`

返回给定动画节点的坐标。用于在编辑器中显示。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition:

.. rst-class:: classref-method

:ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` **get_transition**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition>`

返回给定的过渡。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_count>`

返回图中的连接数。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_from:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_from**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_from>`

返回给定过渡的开始节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_to:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_to**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_to>`

返回给定过渡的末端节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_node>`

如果图中包含给定的动画节点，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_transition>`

如果在给定动画节点之间存在过渡，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_node>`

从图中删除指定的动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition:

.. rst-class:: classref-method

|void| **remove_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition>`

删除两个指定动画节点之间的过渡。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition_by_index:

.. rst-class:: classref-method

|void| **remove_transition_by_index**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition_by_index>`

按索引删除给定的过渡。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_rename_node>`

重命名给定的动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_replace_node>`

用新的动画节点替换给定的动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_graph_offset:

.. rst-class:: classref-method

|void| **set_graph_offset**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_graph_offset>`

设置图形的绘制偏移。用于在编辑器中显示。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_node_position>`

设置动画节点的坐标。用于在编辑器中显示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
