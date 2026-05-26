:github_url: hide

.. _class_AnimationNodeBlendSpace1D:

AnimationNodeBlendSpace1D
=========================

**继承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一组放置在一个虚拟轴上的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ ，在两个相邻节点之间交叉淡化。被 :ref:`AnimationTree<class_AnimationTree>` 使用。

.. rst-class:: classref-introduction-group

描述
----

可添加到 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的资源。

\ **AnimationNodeBlendSpace1D** 代表一个虚拟轴，可以使用 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>` 在上面添加任何类型的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。输出的是最接近当前值的两个 :ref:`AnimationRootNode<class_AnimationRootNode>` 之间的线性混合。

可以使用 :ref:`min_space<class_AnimationNodeBlendSpace1D_property_min_space>` 和 :ref:`max_space<class_AnimationNodeBlendSpace1D_property_max_space>` 来扩展轴的范围。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` | :ref:`blend_mode<class_AnimationNodeBlendSpace1D_property_blend_mode>`       | ``0``       |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`cyclic_length<class_AnimationNodeBlendSpace1D_property_cyclic_length>` | ``0.0``     |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`max_space<class_AnimationNodeBlendSpace1D_property_max_space>`         | ``1.0``     |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`min_space<class_AnimationNodeBlendSpace1D_property_min_space>`         | ``-1.0``    |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                  | :ref:`snap<class_AnimationNodeBlendSpace1D_property_snap>`                   | ``0.1``     |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sync<class_AnimationNodeBlendSpace1D_property_sync>`                   |             |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>`   | :ref:`sync_mode<class_AnimationNodeBlendSpace1D_property_sync_mode>`         | ``0``       |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+
   | :ref:`String<class_String>`                                | :ref:`value_label<class_AnimationNodeBlendSpace1D_property_value_label>`     | ``"value"`` |
   +------------------------------------------------------------+------------------------------------------------------------------------------+-------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_blend_point<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`float<class_float>`, at_index\: :ref:`int<class_int>` = -1, name\: :ref:`StringName<class_StringName>` = &""\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`find_blend_point_by_name<class_AnimationNodeBlendSpace1D_method_find_blend_point_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_blend_point_count<class_AnimationNodeBlendSpace1D_method_get_blend_point_count>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_blend_point_name<class_AnimationNodeBlendSpace1D_method_get_blend_point_name>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>` | :ref:`get_blend_point_node<class_AnimationNodeBlendSpace1D_method_get_blend_point_node>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_blend_point_position<class_AnimationNodeBlendSpace1D_method_get_blend_point_position>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_blend_point<class_AnimationNodeBlendSpace1D_method_remove_blend_point>`\ (\ point\: :ref:`int<class_int>`\ )                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reorder_blend_point<class_AnimationNodeBlendSpace1D_method_reorder_blend_point>`\ (\ from_index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ )                                                                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_name<class_AnimationNodeBlendSpace1D_method_set_blend_point_name>`\ (\ point\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_node<class_AnimationNodeBlendSpace1D_method_set_blend_point_node>`\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_position<class_AnimationNodeBlendSpace1D_method_set_blend_point_position>`\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`float<class_float>`\ )                                                                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AnimationNodeBlendSpace1D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace1D_BlendMode>`

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

动画之间的插值是线性的。

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

混合空间播放混合位置最接近的动画节点的动画。可用于逐帧的 2D 动画。

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

类似于 :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE>`\ ，但在最后一个动画的播放位置开始新的动画。

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeBlendSpace1D_SyncMode:

.. rst-class:: classref-enumeration

enum **SyncMode**: :ref:`🔗<enum_AnimationNodeBlendSpace1D_SyncMode>`

.. _class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **SYNC_MODE_NONE** = ``0``

Inactive animations are frozen and do not advance.

.. _class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_INDEPENDENT:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **SYNC_MODE_INDEPENDENT** = ``1``

Inactive animations advance with a weight of ``0``. This is equivalent to the previous ``sync = true`` behavior.

.. _class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_CYCLIC_MUTABLE:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **SYNC_MODE_CYCLIC_MUTABLE** = ``2``

All animations are time-scaled so they stay in sync, with the cycle length dynamically computed from active blend weights. This is self-normalizing: a solo animation plays at normal speed.

\ **Note:** If you apply :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>` to the result when handling animations of different lengths, synchronization will be broken. In such cases, it is recommended to use :ref:`AnimationNodeAnimation.use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` to align the animation lengths.

.. _class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_CYCLIC_CONSTANT:

.. rst-class:: classref-enumeration-constant

:ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **SYNC_MODE_CYCLIC_CONSTANT** = ``3``

All animations are time-scaled so they complete one cycle in :ref:`cyclic_length<class_AnimationNodeBlendSpace1D_property_cyclic_length>` seconds, keeping them in sync regardless of their individual lengths.

\ **Note:** If you apply :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>` to the result when handling animations of different lengths, synchronization will be broken. In such cases, it is recommended to use :ref:`AnimationNodeAnimation.use_custom_timeline<class_AnimationNodeAnimation_property_use_custom_timeline>` to align the animation lengths.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationNodeBlendSpace1D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **get_blend_mode**\ (\ )

控制动画之间的插值。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_cyclic_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **cyclic_length** = ``0.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_cyclic_length>`

.. rst-class:: classref-property-setget

- |void| **set_cyclic_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cyclic_length**\ (\ )

The cycle length in seconds used by :ref:`SYNC_MODE_CYCLIC_CONSTANT<class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_CYCLIC_CONSTANT>`. All animations are time-scaled so they complete one full cycle in this duration. Must be greater than ``0`` for cyclic sync to take effect.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_max_space:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_space** = ``1.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_max_space>`

.. rst-class:: classref-property-setget

- |void| **set_max_space**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_space**\ (\ )

用于点位置的混合空间轴的上限。见 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_min_space:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_space** = ``-1.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_space**\ (\ )

用于点位置的混合空间轴的下限。见 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** = ``0.1`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

当在轴上移动一个点时，要捕捉到的位置增量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** :ref:`🔗<class_AnimationNodeBlendSpace1D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

**已弃用：** Use :ref:`sync_mode<class_AnimationNodeBlendSpace1D_property_sync_mode>` instead.

If ``true``, sync mode is enabled (equivalent to :ref:`SYNC_MODE_INDEPENDENT<class_AnimationNodeBlendSpace1D_constant_SYNC_MODE_INDEPENDENT>`). This property is kept for backward compatibility.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_sync_mode:

.. rst-class:: classref-property

:ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **sync_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_sync_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sync_mode**\ (\ value\: :ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>`\ )
- :ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` **get_sync_mode**\ (\ )

Controls how animations are synced when blended. See :ref:`SyncMode<enum_AnimationNodeBlendSpace1D_SyncMode>` for available options.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_value_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **value_label** = ``"value"`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_value_label>`

.. rst-class:: classref-property-setget

- |void| **set_value_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_value_label**\ (\ )

混合空间虚拟轴的标签。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AnimationNodeBlendSpace1D_method_add_blend_point:

.. rst-class:: classref-method

|void| **add_blend_point**\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`float<class_float>`, at_index\: :ref:`int<class_int>` = -1, name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_add_blend_point>`

Adds a new point with ``name`` that represents a ``node`` on the virtual axis at a given position set by ``pos``. You can insert it at a specific index using the ``at_index`` argument. If you use the default value for ``at_index``, the point is inserted at the end of the blend points array.

\ **Note:** If no name is provided, safe index is used as reference. In the future, empty names will be deprecated, so explicitly passing a name is recommended.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_find_blend_point_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_point_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_find_blend_point_by_name>`

Returns the index of the blend point with the given ``name``. Returns ``-1`` if no blend point with that name is found.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_point_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_count>`

返回混合轴上的点的数量。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_point_name**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_name>`

Returns the name of the blend point at index ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_node:

.. rst-class:: classref-method

:ref:`AnimationRootNode<class_AnimationRootNode>` **get_blend_point_node**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_node>`

返回索引 ``point`` 处的点所引用的 :ref:`AnimationNode<class_AnimationNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_position>`

返回索引 ``point`` 处的点的位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_remove_blend_point>`

从混合轴移除索引 ``point`` 处的点。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_reorder_blend_point:

.. rst-class:: classref-method

|void| **reorder_blend_point**\ (\ from_index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_reorder_blend_point>`

Swaps the blend points at indices ``from_index`` and ``to_index``, exchanging their positions and properties.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_name:

.. rst-class:: classref-method

|void| **set_blend_point_name**\ (\ point\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_name>`

Sets the name of the blend point at index ``point``. If the name conflicts with an existing point, a unique name will be generated automatically.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_node:

.. rst-class:: classref-method

|void| **set_blend_point_node**\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_node>`

更改索引 ``point`` 处的点所引用的 :ref:`AnimationNode<class_AnimationNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_position>`

更新混合轴上索引 ``point`` 处的点的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
