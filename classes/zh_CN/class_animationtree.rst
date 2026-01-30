:github_url: hide

.. _class_AnimationTree:

AnimationTree
=============

**继承：** :ref:`AnimationMixer<class_AnimationMixer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于 :ref:`AnimationPlayer<class_AnimationPlayer>` 中高级动画过渡的节点。

.. rst-class:: classref-introduction-group

描述
----

用于 :ref:`AnimationPlayer<class_AnimationPlayer>` 中高级动画过渡的节点。

\ **注意：**\ 与 :ref:`AnimationPlayer<class_AnimationPlayer>` 连接时，该 :ref:`AnimationPlayer<class_AnimationPlayer>` 的部分属性和方法将不会像预期的那样发挥作用。播放和过渡应该只使用 **AnimationTree** 和组成它的 :ref:`AnimationNode<class_AnimationNode>` 来处理。\ :ref:`AnimationPlayer<class_AnimationPlayer>` 节点应仅用于添加、删除和编辑动画。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`advance_expression_base_node<class_AnimationTree_property_advance_expression_base_node>` | ``NodePath(".")``                                                                             |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`anim_player<class_AnimationTree_property_anim_player>`                                   | ``NodePath("")``                                                                              |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | callback_mode_discrete                                                                         | ``2`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_callback_mode_discrete>`) |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                                 | deterministic                                                                                  | ``true`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_deterministic>`)       |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>`                                       | :ref:`tree_root<class_AnimationTree_property_tree_root>`                                       |                                                                                               |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` | :ref:`get_process_callback<class_AnimationTree_method_get_process_callback>`\ (\ ) |const|                                                                              |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`set_process_callback<class_AnimationTree_method_set_process_callback>`\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_AnimationTree_signal_animation_player_changed:

.. rst-class:: classref-signal

**animation_player_changed**\ (\ ) :ref:`🔗<class_AnimationTree_signal_animation_player_changed>`

当 :ref:`anim_player<class_AnimationTree_property_anim_player>` 被改变时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AnimationTree_AnimationProcessCallback:

.. rst-class:: classref-enumeration

enum **AnimationProcessCallback**: :ref:`🔗<enum_AnimationTree_AnimationProcessCallback>`

.. _class_AnimationTree_constant_ANIMATION_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_PHYSICS** = ``0``

**已弃用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_IDLE** = ``1``

**已弃用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_IDLE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_MANUAL** = ``2``

**已弃用：** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_MANUAL<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL>`.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationTree_property_advance_expression_base_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **advance_expression_base_node** = ``NodePath(".")`` :ref:`🔗<class_AnimationTree_property_advance_expression_base_node>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression_base_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_advance_expression_base_node**\ (\ )

用于评估 :ref:`AnimationNode<class_AnimationNode>` :ref:`Expression<class_Expression>` 的 :ref:`Node<class_Node>` 的路径，内部未明确指定路径时使用。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_anim_player:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **anim_player** = ``NodePath("")`` :ref:`🔗<class_AnimationTree_property_anim_player>`

.. rst-class:: classref-property-setget

- |void| **set_animation_player**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_player**\ (\ )

用于动画的 :ref:`AnimationPlayer<class_AnimationPlayer>` 的路径。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_tree_root:

.. rst-class:: classref-property

:ref:`AnimationRootNode<class_AnimationRootNode>` **tree_root** :ref:`🔗<class_AnimationTree_property_tree_root>`

.. rst-class:: classref-property-setget

- |void| **set_tree_root**\ (\ value\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )
- :ref:`AnimationRootNode<class_AnimationRootNode>` **get_tree_root**\ (\ )

该 **AnimationTree** 的根动画节点。见 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationTree_method_get_process_callback:

.. rst-class:: classref-method

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **get_process_callback**\ (\ ) |const| :ref:`🔗<class_AnimationTree_method_get_process_callback>`

**已弃用：** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

返回要更新动画的过程通知。

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_method_set_process_callback:

.. rst-class:: classref-method

|void| **set_process_callback**\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) :ref:`🔗<class_AnimationTree_method_set_process_callback>`

**已弃用：** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

设置要更新动画的过程通知。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
