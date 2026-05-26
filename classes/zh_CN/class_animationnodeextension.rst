:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于从 GDScript、C# 或 C++ 中继承 :ref:`AnimationRootNode<class_AnimationRootNode>` 的基类。

.. rst-class:: classref-introduction-group

描述
----

**AnimationNodeExtension** 暴露了 :ref:`AnimationRootNode<class_AnimationRootNode>` 的 API，使得用户能够在 GDScript、C# 或 C++ 中扩展它。这个类并不应被直接使用，而是被其他类扩展。它用于为 :ref:`AnimationTree<class_AnimationTree>` 系统创建自定义节点。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

方法 :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>` 用于供自定义节点覆盖的版本。它返回一个含有处理过的动画数据的 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

\ :ref:`PackedFloat64Array<class_PackedFloat64Array>` 参数包含回放的信息，依次包括以下的浮点数编码值：回放时间与偏移、开始和结束时间、是否为检索请求（编码为一个大于 ``0`` 的浮点数）、是否为外部检索请求（编码为一个大于 ``0`` 的浮点数）、当前位置 :ref:`LoopedFlag<enum_Animation_LoopedFlag>`\ （编码为一个浮点数）、当前混合权重。

此函数必须返回该节点时间信息的一个 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ，其依次包含以下值：动画长度、时间位置、偏移、\ :ref:`LoopMode<enum_Animation_LoopMode>`\ （编码为一个浮点数）、动画是否即将结束（编码为一个大于 ``0`` 的浮点数）、动画是否永不结束（编码为一个大于 ``0`` 的浮点数）。返回数组必须包含所有值。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

返回给定节点信息的动画剩余时间。对于循环动画，若 ``break_loop`` 为 ``true``\ ，将仅返回剩余时间，否则将返回一个巨大的整型数值。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

如果给定的 ``node_info`` 对应的动画正在循环，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
