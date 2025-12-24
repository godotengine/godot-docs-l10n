:github_url: hide

.. _class_XRPositionalTracker:

XRPositionalTracker
===================

**繼承：** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`XRBodyTracker<class_XRBodyTracker>`, :ref:`XRControllerTracker<class_XRControllerTracker>`, :ref:`XRHandTracker<class_XRHandTracker>`

追蹤對象。

.. rst-class:: classref-introduction-group

說明
----

An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.

As controllers are turned on and the :ref:`XRInterface<class_XRInterface>` detects them, instances of this object are automatically added to this list of active tracking objects accessible through the :ref:`XRServer<class_XRServer>`.

The :ref:`XRNode3D<class_XRNode3D>` and :ref:`XRAnchor3D<class_XRAnchor3D>` both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`hand<class_XRPositionalTracker_property_hand>`       | ``0``  |
   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                              | :ref:`profile<class_XRPositionalTracker_property_profile>` | ``""`` |
   +----------------------------------------------------------+------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_input<class_XRPositionalTracker_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>`   | :ref:`get_pose<class_XRPositionalTracker_method_get_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_pose<class_XRPositionalTracker_method_has_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`invalidate_pose<class_XRPositionalTracker_method_invalidate_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_input<class_XRPositionalTracker_method_set_input>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_pose<class_XRPositionalTracker_method_set_pose>`\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_XRPositionalTracker_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_pressed>`

當該追蹤器上的一個按鈕被按下時發出。請注意，許多 XR 運作時允許將其他輸入對應到按鈕。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_released>`

當該追蹤器上的一個按鈕被釋放時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_float_changed>`

當此追蹤器上的一個觸發器或類似輸入更改值時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ name\: :ref:`String<class_String>`, vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_vector2_changed>`

當該追蹤器上的一個拇指杆或拇指板移動時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_changed:

.. rst-class:: classref-signal

**pose_changed**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_changed>`

當被此追蹤器追蹤的一個姿勢狀態發生變化時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_lost_tracking:

.. rst-class:: classref-signal

**pose_lost_tracking**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_lost_tracking>`

當被此追蹤器追蹤的一個姿勢狀態發生變化時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_profile_changed>`

當我們的追蹤器的配置發生變化時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRPositionalTracker_TrackerHand:

.. rst-class:: classref-enumeration

enum **TrackerHand**: :ref:`🔗<enum_XRPositionalTracker_TrackerHand>`

.. _class_XRPositionalTracker_constant_TRACKER_HAND_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_UNKNOWN** = ``0``

手持該追蹤器的手是未知的或不適用的。

.. _class_XRPositionalTracker_constant_TRACKER_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_LEFT** = ``1``

此追蹤器是左手控制器。

.. _class_XRPositionalTracker_constant_TRACKER_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_RIGHT** = ``2``

此追蹤器是右手控制器。

.. _class_XRPositionalTracker_constant_TRACKER_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_MAX** = ``3``

Represents the size of the :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRPositionalTracker_property_hand:

.. rst-class:: classref-property

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **hand** = ``0`` :ref:`🔗<class_XRPositionalTracker_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_hand**\ (\ value\: :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`\ )
- :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ )

定義此追蹤器與哪只手相關。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_property_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **profile** = ``""`` :ref:`🔗<class_XRPositionalTracker_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_profile**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_profile**\ (\ )

與此追蹤器關聯的配置，取決於介面，但將指示被追蹤的控制器型別。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRPositionalTracker_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_input>`

**已棄用：** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

返回此追蹤器的輸入。它可以返回一個布林值、浮點數或 :ref:`Vector2<class_Vector2>` 值，具體取決於輸入是一個按鈕、觸發器還是拇指杆/拇指板。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_pose>`

返回綁定 ``name`` 姿勢的目前 :ref:`XRPose<class_XRPose>` 狀態物件。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_has_pose:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_has_pose>`

如果追蹤器可用，並且目前正在追蹤綁定的 ``name`` 姿勢，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_invalidate_pose:

.. rst-class:: classref-method

|void| **invalidate_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRPositionalTracker_method_invalidate_pose>`

Marks this pose as invalid, we don't clear the last reported state but it allows users to decide if trackers need to be hidden if we lose tracking or just remain at their last known position.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_input:

.. rst-class:: classref-method

|void| **set_input**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_input>`

**已棄用：** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Changes the value for the given input. This method is called by an :ref:`XRInterface<class_XRInterface>` implementation and should not be used directly.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_pose:

.. rst-class:: classref-method

|void| **set_pose**\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_pose>`

Sets the transform, linear velocity, angular velocity and tracking confidence for the given pose. This method is called by an :ref:`XRInterface<class_XRInterface>` implementation and should not be used directly.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
