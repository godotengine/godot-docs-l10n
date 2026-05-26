:github_url: hide

.. _class_AnimationNodeBlendSpace1D:

AnimationNodeBlendSpace1D
=========================

**繼承：** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一組放置於虛擬軸上的 :ref:`AnimationRootNode<class_AnimationRootNode>`\ ，在相鄰的兩節點間進行交叉淡化。供 :ref:`AnimationTree<class_AnimationTree>` 使用。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 使用的資源。

\ **AnimationNodeBlendSpace1D** 代表一條虛擬軸，可透過 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>` 新增任意 :ref:`AnimationRootNode<class_AnimationRootNode>`\ 。其輸出為最接近目前值之兩節點的線性混合。

可使用 :ref:`min_space<class_AnimationNodeBlendSpace1D_property_min_space>` 與 :ref:`max_space<class_AnimationNodeBlendSpace1D_property_max_space>` 設定軸向範圍。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_AnimationNodeBlendSpace1D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace1D_BlendMode>`

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

動畫間插值為線性模式。

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

混合空間播放與目前位置最近的動畫節點，可用於逐幀 2D 動畫。

.. _class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

類似 :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace1D_constant_BLEND_MODE_DISCRETE>`\ ，但新動畫會自上一段動畫的播放位置開始。

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

屬性說明
--------

.. _class_AnimationNodeBlendSpace1D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace1D_BlendMode>` **get_blend_mode**\ (\ )

控制動畫之間的插值方式。

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

混合空間軸向的點位置上限。參見 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_min_space:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_space** = ``-1.0`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_space**\ (\ )

混合空間軸向的點位置下限。參見 :ref:`add_blend_point()<class_AnimationNodeBlendSpace1D_method_add_blend_point>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** = ``0.1`` :ref:`🔗<class_AnimationNodeBlendSpace1D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

在軸上移動點時的捕捉間距。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** :ref:`🔗<class_AnimationNodeBlendSpace1D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

**已棄用：** Use :ref:`sync_mode<class_AnimationNodeBlendSpace1D_property_sync_mode>` instead.

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

混合空間虛擬軸的標籤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
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

回傳混合軸上的點數量。

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

回傳索引 ``point`` 之點所參照的 :ref:`AnimationNode<class_AnimationNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace1D_method_get_blend_point_position>`

回傳索引 ``point`` 之點的位置。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_remove_blend_point>`

自混合軸移除索引 ``point`` 之點。

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

更換索引 ``point`` 之點所參照的 :ref:`AnimationNode<class_AnimationNode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace1D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace1D_method_set_blend_point_position>`

更新混合軸上索引 ``point`` 之點的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
