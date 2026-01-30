:github_url: hide

.. _class_PhysicsBody2D:

PhysicsBody2D
=============

**繼承：** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CharacterBody2D<class_CharacterBody2D>`, :ref:`RigidBody2D<class_RigidBody2D>`, :ref:`StaticBody2D<class_StaticBody2D>`

受物理影響的 2D 遊戲物件的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

**PhysicsBody2D** 與受物理影響的 2D 遊戲物件的抽象基底類別。所有 2D 物理體都繼承自這個類。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | input_pickable | ``false`` (overrides :ref:`CollisionObject2D<class_CollisionObject2D_property_input_pickable>`) |
   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody2D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                      |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody2D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`get_gravity<class_PhysicsBody2D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>`                | :ref:`move_and_collide<class_PhysicsBody2D_method_move_and_collide>`\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ )                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody2D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody2D_method_test_move>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsBody2D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_add_collision_exception_with>`

將一個物體新增到這個物體不能碰撞的物體列表中。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody2D_method_get_collision_exceptions>`

返回該物體的碰撞例外節點陣列。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody2D_method_get_gravity>`

Returns the gravity vector computed from all sources that can affect the body, including all gravity overrides from :ref:`Area2D<class_Area2D>` nodes and the global world gravity.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **move_and_collide**\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_move_and_collide>`

沿著運動向量 ``motion`` 移動該物體。為了在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 和 :ref:`Node._process()<class_Node_private_method__process>` 中不依賴畫面播放速率，\ ``motion`` 應該使用 ``delta`` 計算。

返回 :ref:`KinematicCollision2D<class_KinematicCollision2D>`\ ，包含停止時的碰撞資訊，或者沿運動向量接觸到其他物體時的碰撞信息。

如果 ``test_only`` 為 ``true``\ ，則該物體不會移動，但會給出可能的碰撞信息。

\ ``safe_margin`` 是用於碰撞恢復的額外邊距（詳見 :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` ）。

如果 ``recovery_as_collision`` 為 ``true``\ ，則恢復階段發生的穿透解除也會被報告為碰撞；例如，\ :ref:`CharacterBody2D<class_CharacterBody2D>` 在吸附到地板時會用這個選項來改善對地板偵測。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_remove_collision_exception_with>`

將一個物體從該物體不能碰撞的物體列表中移除。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_test_move>`

在不移動實體的情況下檢查碰撞。為了在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 或 :ref:`Node._process()<class_Node_private_method__process>` 中獨立於畫面播放速率，\ ``motion`` 應該使用 ``delta`` 來計算。

實際上是將節點的位置、縮放和旋轉設定為給定 :ref:`Transform2D<class_Transform2D>` 的位置、縮放和旋轉，然後嘗試沿向量 ``motion`` 移動實體。如果碰撞會阻止實體沿整個路徑移動，則返回 ``true``\ 。

\ ``collision`` 是型別為 :ref:`KinematicCollision2D<class_KinematicCollision2D>` 的一個可選物件，它包含有關停止時碰撞、或沿運動接觸另一個實體時碰撞的附加資訊。

\ ``safe_margin`` 是用於碰撞恢復的額外餘量（有關更多詳細資訊，請參閱 :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>`\ ）。

如果 ``recovery_as_collision`` 為 ``true``\ ，恢復階段的任何穿透也將被報告為碰撞；這對於檢查該實體是否會\ *接觸*\ 其他任意實體很有用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
