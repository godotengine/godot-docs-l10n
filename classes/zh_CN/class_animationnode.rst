:github_url: hide

.. _class_AnimationNode:

AnimationNode
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimationNodeExtension<class_AnimationNodeExtension>`, :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`, :ref:`AnimationNodeSync<class_AnimationNodeSync>`, :ref:`AnimationNodeTimeScale<class_AnimationNodeTimeScale>`, :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>`, :ref:`AnimationRootNode<class_AnimationRootNode>`

:ref:`AnimationTree<class_AnimationTree>` 节点的基类。与场景节点无关。

.. rst-class:: classref-introduction-group

描述
----

:ref:`AnimationTree<class_AnimationTree>` 节点的基本资源。通常不会直接使用，不过你可以使用自定义混合公式创建自定义节点。

继承这个类的动画节点主要用于 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ ，否则请使用 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。

除 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 外，所有节点的时间信息都可以通过只读参数来访问，这些信息是在上一帧处理并存储的。

\ **注意：**\ 如果 **AnimationNode** 中存在多个输入，优先使用哪个输入的时间信息取决于 **AnimationNode** 的类型。

::

    var current_length = $AnimationTree["parameters/AnimationNodeName/current_length"]
    var current_position = $AnimationTree["parameters/AnimationNodeName/current_position"]
    var current_delta = $AnimationTree["parameters/AnimationNodeName/current_delta"]

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_AnimationNode_signal_animation_node_removed:

.. rst-class:: classref-signal

**animation_node_removed**\ (\ object_id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_removed>`

由继承自该类的节点发出，并且当其中一个动画节点移除时具有内部树。发出此信号的动画节点可以是 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` 和 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_animation_node_renamed:

.. rst-class:: classref-signal

**animation_node_renamed**\ (\ object_id\: :ref:`int<class_int>`, old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_renamed>`

由继承自该类的节点发出，并且当其中一个动画节点名称更改时具有内部树。发出此信号的动画节点可以是 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` 和 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_AnimationNode_signal_tree_changed>`

由继承自该类的节点发出，并且当其一个动画节点发生变化时具有内部树。发出此信号的动画节点可以是 :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ 、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ 、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`\ 、\ :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 和 :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AnimationNode_FilterAction:

.. rst-class:: classref-enumeration

enum **FilterAction**: :ref:`🔗<enum_AnimationNode_FilterAction>`

.. _class_AnimationNode_constant_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_IGNORE** = ``0``

不要使用筛选功能。

.. _class_AnimationNode_constant_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_PASS** = ``1``

与筛选器匹配的路径将被允许通过。

.. _class_AnimationNode_constant_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_STOP** = ``2``

与筛选器匹配的路径将被丢弃。

.. _class_AnimationNode_constant_FILTER_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_BLEND** = ``3``

与筛选器匹配的路径将被混合（根据混合值）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationNode_property_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_enabled** :ref:`🔗<class_AnimationNode_property_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filter_enabled**\ (\ )

如果为 ``true``\ ，则启用筛选功能。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationNode_private_method__get_caption:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_caption**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_caption>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以覆盖这个动画节点的标题文本。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_by_name:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **_get_child_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_by_name>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以根据名称 ``name`` 来返回对应的子动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_nodes:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_child_nodes**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_nodes>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以用 ``名称:节点`` 字典的形式按顺序返回所有子动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter_default_value**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_default_value>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以返回参数“\ ``parameter``\ ”的默认值。参数是动画节点的自定义本地存储，资源可以在多个树中重用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_list>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以返回这个节点的属性列表。参数是动画节点的自定义本地存储，资源可以在多个树中重用。格式与 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 类似。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__has_filter:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_filter**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__has_filter>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以返回混合树编辑器是否应该在这个动画节点上显示过滤器编辑。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__is_parameter_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_parameter_read_only**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__is_parameter_read_only>`

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以返回参数 ``parameter`` 是否只读。参数是动画节点的自定义本地存储，资源可以在多个树中重用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__process:

.. rst-class:: classref-method

:ref:`float<class_float>` **_process**\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_AnimationNode_private_method__process>`

**已弃用：** Currently this is mostly useless as there is a lack of many APIs to extend AnimationNode by GDScript. It is planned that a more flexible API using structures will be provided in the future.

继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时，实现这个虚方法可以在这个动画节点进行处理时执行代码。参数 ``time`` 是相对增量，除非 ``seek`` 为 ``true``\ ，此时为绝对增量。

请在此处调用 :ref:`blend_input()<class_AnimationNode_method_blend_input>`\ 、\ :ref:`blend_node()<class_AnimationNode_method_blend_node>` 或 :ref:`blend_animation()<class_AnimationNode_method_blend_animation>` 函数。你也可以使用 :ref:`get_parameter()<class_AnimationNode_method_get_parameter>` 和 :ref:`set_parameter()<class_AnimationNode_method_set_parameter>` 来修改本地存储。

这个函数应当返回这个增量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_add_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_input**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_add_input>`

为节点添加一个输入。这只对创建用于 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的动画节点有用。如果添加失败，返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_animation:

.. rst-class:: classref-method

|void| **blend_animation**\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ ) :ref:`🔗<class_AnimationNode_method_blend_animation>`

按 ``blend`` 量混合一个动画（名称必须在链接的 :ref:`AnimationPlayer<class_AnimationPlayer>` 中有效）。可以传入时间 ``time`` 和增量 ``delta``\ ，以及表示是否发生寻道的 ``seeked``\ 。

\ ``looped_flag`` 在循环后立即由内部处理使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_input:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_input**\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_input>`

混合一个输入。这只对为 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 创建的动画节点有用。时间参数 ``time`` 是一个相对的增量，除非 ``seek`` 是 ``true``\ ，此时它是绝对的。可以选择传入过滤模式。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_node:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_node>`

混合另一个动画节点（在这个动画节点包含子动画节点的情况下）。这个函数只有在你继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 时才有用，否则编辑器在添加节点时不会显示你的动画节点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_find_input:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_input**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_AnimationNode_method_find_input>`

返回与名称 ``name`` 相关的输入索引，如果不存在则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_count**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_count>`

这个动画节点的输入数量，只对进入 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的动画节点有用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_name**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_name>`

通过索引获取输入的名称。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_parameter>`

获取一个参数的值。参数是你的动画节点使用的自定义本地内存，给定的资源可以在多个树中重复使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_processing_animation_tree_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_processing_animation_tree_instance_id**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_processing_animation_tree_instance_id>`

返回拥有此节点的\ :ref:`AnimationTree<class_AnimationTree>`\ 对象ID。

\ **注意：**\ 此方法应仅在\ :ref:`AnimationNodeExtension._process_animation_node()<class_AnimationNodeExtension_private_method__process_animation_node>`\ 方法内部调用，否则将返回一个无效ID。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_path_filtered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_path_filtered**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_AnimationNode_method_is_path_filtered>`

如果给定的路径被过滤，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_process_testing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_process_testing**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_is_process_testing>`

如果该动画节点正在仅测试模式下处理，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_remove_input:

.. rst-class:: classref-method

|void| **remove_input**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_method_remove_input>`

移除输入，仅在处于非活动状态时调用此输入。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_filter_path:

.. rst-class:: classref-method

|void| **set_filter_path**\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNode_method_set_filter_path>`

添加或移除筛选器的路径。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_input_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_input_name**\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_set_input_name>`

在给定的 ``input`` 索引处设置输入的名称。如果设置失败，返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_parameter:

.. rst-class:: classref-method

|void| **set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_AnimationNode_method_set_parameter>`

设置一个自定义参数。这些参数被用作本地内存，因为资源可以在树或场景中重复使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
