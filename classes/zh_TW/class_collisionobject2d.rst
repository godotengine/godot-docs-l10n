:github_url: hide

.. _class_CollisionObject2D:

CollisionObject2D
=================

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Area2D<class_Area2D>`, :ref:`PhysicsBody2D<class_PhysicsBody2D>`

2D 物理物件的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

2D 物理物件的抽象基底類別。\ **CollisionObject2D** 能夠容納任意數量的 :ref:`Shape2D<class_Shape2D>` 用作碰撞形狀。每個形狀必須分配給一個\ *形狀所有者*\ 。形狀所有者不是節點，也不會出現在編輯器中，但可以通過程式碼使用 ``shape_owner_*`` 方法存取。

\ **注意：**\ 僅支援相同畫布中不同物件的碰撞（\ :ref:`Viewport<class_Viewport>` 畫布或 :ref:`CanvasLayer<class_CanvasLayer>`\ ）。不同畫布中的物件之間的碰撞行為是未定義的。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`       | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`         | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                              | :ref:`collision_priority<class_CollisionObject2D_property_collision_priority>` | ``1.0``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` | :ref:`disable_mode<class_CollisionObject2D_property_disable_mode>`             | ``0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>`         | ``true`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_input_event<class_CollisionObject2D_private_method__input_event>`\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_enter<class_CollisionObject2D_private_method__mouse_enter>`\ (\ ) |virtual|                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_exit<class_CollisionObject2D_private_method__mouse_exit>`\ (\ ) |virtual|                                                                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_enter<class_CollisionObject2D_private_method__mouse_shape_enter>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_exit<class_CollisionObject2D_private_method__mouse_shape_exit>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`create_shape_owner<class_CollisionObject2D_method_create_shape_owner>`\ (\ owner\: :ref:`Object<class_Object>`\ )                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_layer_value<class_CollisionObject2D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_mask_value<class_CollisionObject2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                           | :ref:`get_rid<class_CollisionObject2D_method_get_rid>`\ (\ ) |const|                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`get_shape_owner_one_way_collision_direction<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_shape_owner_one_way_collision_margin<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_shape_owners<class_CollisionObject2D_method_get_shape_owners>`\ (\ )                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_disabled<class_CollisionObject2D_method_is_shape_owner_disabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_one_way_collision_enabled<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_shape_owner<class_CollisionObject2D_method_remove_shape_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_layer_value<class_CollisionObject2D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_mask_value<class_CollisionObject2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_find_owner<class_CollisionObject2D_method_shape_find_owner>`\ (\ shape_index\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_add_shape<class_CollisionObject2D_method_shape_owner_add_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ )                                                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_clear_shapes<class_CollisionObject2D_method_shape_owner_clear_shapes>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                     | :ref:`shape_owner_get_owner<class_CollisionObject2D_method_shape_owner_get_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape2D<class_Shape2D>`                   | :ref:`shape_owner_get_shape<class_CollisionObject2D_method_shape_owner_get_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_count<class_CollisionObject2D_method_shape_owner_get_shape_count>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_index<class_CollisionObject2D_method_shape_owner_get_shape_index>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`shape_owner_get_transform<class_CollisionObject2D_method_shape_owner_get_transform>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_remove_shape<class_CollisionObject2D_method_shape_owner_remove_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_disabled<class_CollisionObject2D_method_shape_owner_set_disabled>`\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_direction<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ )    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_margin<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_transform<class_CollisionObject2D_method_shape_owner_set_transform>`\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_CollisionObject2D_signal_input_event:

.. rst-class:: classref-signal

**input_event**\ (\ viewport\: :ref:`Node<class_Node>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_input_event>`

當輸入事件發生時發出。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定了一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。詳見 :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_entered>`

當滑鼠指標進入該物件的任何形狀時發出。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定了一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。請注意，在單個 **CollisionObject2D** 中的不同形狀之間移動，不會導致發出該訊號。

\ **注意：**\ 由於缺少連續的碰撞偵測，如果滑鼠移動得足夠快並且 **CollisionObject2D** 的區域很小，則該訊號可能不會按預期的順序發出。如果另一個 **CollisionObject2D** 與所討論的 **CollisionObject2D** 重疊，則也可能不會發出該信號。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_exited>`

當滑鼠指標離開該物件的所有形狀時發出。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定了一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。請注意，在單個 **CollisionObject2D** 中的不同形狀之間移動，不會導致發出該訊號。

\ **注意：**\ 由於缺少連續的碰撞偵測，如果滑鼠移動得足夠快並且 **CollisionObject2D** 的區域很小，則該訊號可能不會按預期的順序發出。如果另一個 **CollisionObject2D** 與所討論的 **CollisionObject2D** 重疊，則也可能不會發出該信號。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_entered:

.. rst-class:: classref-signal

**mouse_shape_entered**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_entered>`

當滑鼠指標進入該實體的任何形狀或從一種形狀移動到另一種形狀時發出。\ ``shape_idx`` 是新進入的 :ref:`Shape2D<class_Shape2D>` 的子索引。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_exited:

.. rst-class:: classref-signal

**mouse_shape_exited**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_exited>`

當滑鼠指標離開該實體的任何形狀時發出。\ ``shape_idx`` 是退出的 :ref:`Shape2D<class_Shape2D>` 的子索引。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CollisionObject2D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject2D_DisableMode>`

.. _class_CollisionObject2D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

當 :ref:`Node.process_mode<class_Node_property_process_mode>` 被設定為 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 時，從物理模擬中移除，停止與此 **CollisionObject2D** 的所有物理互動。

當該 :ref:`Node<class_Node>` 再次被處理時，會自動重新加入到物理模擬中。

.. _class_CollisionObject2D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

當 :ref:`Node.process_mode<class_Node_property_process_mode>` 被設定為 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 時，使物體進入靜態模式。不影響 :ref:`Area2D<class_Area2D>`\ 。處於靜態模式的 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 不會受到力和其他物體的影響。

當該 :ref:`Node<class_Node>` 再次被處理時，會自動將 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 設定回其原始模式。

.. _class_CollisionObject2D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

當 :ref:`Node.process_mode<class_Node_property_process_mode>` 被設定為 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>` 時，不影響物理模擬。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CollisionObject2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

此 CollisionObject2D 所在的實體層。碰撞物件可以存在於 32 個不同層中的一個或多個中。另見 :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`\ 。

\ **注意：**\ 只有當物件 B 在物件 A 掃描的任何層中時，物件 A 才能偵測到與物件 B 的接觸。有關更多資訊，請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

此 CollisionObject2D 掃描的實體層。碰撞物件可以掃描 32 個不同層中的一個或多個。另見 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`\ 。

\ **注意：**\ 只有當物件 B 在物件 A 掃描的任何層中時，物件 A 才能偵測到與物件 B 的接觸。有關更多資訊，請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CollisionObject2D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

發生穿透時用於解決碰撞的優先順序。優先順序越高，對物體的穿透度就越低。例如，可以用來防止玩家突破關卡的邊界。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject2D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject2D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **get_disable_mode**\ (\ )

Defines the behavior in physics when :ref:`Node.process_mode<class_Node_property_process_mode>` is set to :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_input_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_pickable** = ``true`` :ref:`🔗<class_CollisionObject2D_property_input_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pickable**\ (\ )

如果為 ``true``\ ，則該對象是可拾取的。可拾取的物件可以偵測滑鼠指標的進入/離開，滑鼠位於其中時，就會報告輸入事件。要求至少設定一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CollisionObject2D_private_method__input_event:

.. rst-class:: classref-method

|void| **_input_event**\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__input_event>`

Accepts unhandled :ref:`InputEvent<class_InputEvent>`\ s. ``shape_idx`` is the child index of the clicked :ref:`Shape2D<class_Shape2D>`. Connect to :ref:`input_event<class_CollisionObject2D_signal_input_event>` to easily pick up these events.

\ **Note:** :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>` requires :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` to be ``true`` and at least one :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` bit to be set.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_enter:

.. rst-class:: classref-method

|void| **_mouse_enter**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_enter>`

當滑鼠指標進入該實體的任何形狀時呼叫。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定了一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。請注意，在單個 **CollisionObject2D** 中的不同形狀之間移動，不會導致該函式被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_exit>`

當滑鼠指標退出該實體的所有形狀時呼叫。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少設定了一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。請注意，在單個 **CollisionObject2D** 中的不同形狀之間移動，不會導致該函式被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_enter:

.. rst-class:: classref-method

|void| **_mouse_shape_enter**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_enter>`

當滑鼠指標進入該實體的任何形狀或從一個形狀移動到另一個形狀時呼叫。\ ``shape_idx`` 是新進入的 :ref:`Shape2D<class_Shape2D>` 的子索引。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且要至少設定一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_exit:

.. rst-class:: classref-method

|void| **_mouse_shape_exit**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_exit>`

當滑鼠指標離開該實體的任何形狀時呼叫。\ ``shape_idx`` 是退出的 :ref:`Shape2D<class_Shape2D>` 的子索引。要求 :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` 為 ``true`` 並且至少要設定一個 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 位。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject2D_method_create_shape_owner>`

為給定物件建立一個新的形狀所有者。返回 ``owner_id``\ 的新所有者，供將來引用。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_rid>`

返回對象的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_shape_owner_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`

Returns the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shape_owner_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`

返回由給定 ``owner_id`` 標識的形狀所有者的 ``one_way_collision_margin``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject2D_method_get_shape_owners>`

返回一個 ``owner_id`` 識別字的 :ref:`Array<class_Array>`\ 。你可以在其他使用 ``owner_id`` 作為參數的方法中使用這些 ID。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_disabled>`

如果為 ``true``\ ，則禁用形狀所有者及其形狀。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_one_way_collision_enabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`

返回 ``true``\ ，如果源於這個 **CollisionObject2D** 的形狀所有者的碰撞不會被報告給 **CollisionObject2D**\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_remove_shape_owner>`

移除給定形狀的所有者。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_layer_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_find_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_find_owner**\ (\ shape_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_find_owner>`

返回指定形狀的 ``owner_id``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_add_shape>`

給形狀所有者新增一個 :ref:`Shape2D<class_Shape2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_clear_shapes>`

移除形狀所有者的所有形狀。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_owner>`

返回給定形狀所有者的父物件。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape2D<class_Shape2D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape>`

從給定形狀所有者返回具有給定 ID 的 :ref:`Shape2D<class_Shape2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_count>`

返回給定形狀所有者包含的形狀數量。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_index>`

從給定形狀所有者返回具有給定 ID 的 :ref:`Shape2D<class_Shape2D>` 的子索引。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_transform>`

返回形狀所有者的 :ref:`Transform2D<class_Transform2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_remove_shape>`

從給定的形狀所有者中移除一個形狀。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_disabled>`

如果為 ``true``\ ，則禁用給定的形狀所有者。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision**\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`

如果 ``enable`` 為 ``true``\ ，則源自該 **CollisionObject2D** 的形狀所有者的碰撞將不會被報告為與 **CollisionObject2D** 發生碰撞。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`

Sets the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id`` to ``direction``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`

將由給定 ``owner_id`` 標識的形狀所有者的 ``one_way_collision_margin`` 設定為 ``margin`` 圖元。

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_transform>`

設定給定形狀所有者的 :ref:`Transform2D<class_Transform2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
