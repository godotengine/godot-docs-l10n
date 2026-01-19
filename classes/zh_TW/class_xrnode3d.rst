:github_url: hide

.. _class_XRNode3D:

XRNode3D
========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`XRAnchor3D<class_XRAnchor3D>`, :ref:`XRController3D<class_XRController3D>`

A 3D node that has its position automatically updated by the :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

說明
----

This node can be bound to a specific pose of an :ref:`XRPositionalTracker<class_XRPositionalTracker>` and will automatically have its :ref:`Node3D.transform<class_Node3D_property_transform>` updated by the :ref:`XRServer<class_XRServer>`. Nodes of this type must be added as children of the :ref:`XROrigin3D<class_XROrigin3D>` node.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`pose<class_XRNode3D_property_pose>`                           | ``&"default"``                                                                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`show_when_tracked<class_XRNode3D_property_show_when_tracked>` | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRNode3D_property_tracker>`                     | ``&""``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_has_tracking_data<class_XRNode3D_method_get_has_tracking_data>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_is_active<class_XRNode3D_method_get_is_active>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>` | :ref:`get_pose<class_XRNode3D_method_get_pose>`\ (\ )                                                                                                                                                                                                                                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`trigger_haptic_pulse<class_XRNode3D_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_XRNode3D_signal_tracking_changed:

.. rst-class:: classref-signal

**tracking_changed**\ (\ tracking\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRNode3D_signal_tracking_changed>`

當\ :ref:`tracker<class_XRNode3D_property_tracker>`\ 開始或停止接收正在追蹤的\ :ref:`pose<class_XRNode3D_property_pose>`\ 的更新追蹤資料時發出。\ ``tracking``\ 參數指示追蹤器是否正在取得更新的追蹤資料。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRNode3D_property_pose:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **pose** = ``&"default"`` :ref:`🔗<class_XRNode3D_property_pose>`

.. rst-class:: classref-property-setget

- |void| **set_pose_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_pose_name**\ (\ )

我們綁定到的姿勢的名稱。設計時並不知道追蹤器支援哪些姿勢。

Godot 定義了許多標準姿勢名稱，例如 ``aim`` 和 ``grip``\ ，但也可以在給定的 :ref:`XRInterface<class_XRInterface>` 中配置其他名稱。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_show_when_tracked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_when_tracked** = ``false`` :ref:`🔗<class_XRNode3D_property_show_when_tracked>`

.. rst-class:: classref-property-setget

- |void| **set_show_when_tracked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_show_when_tracked**\ (\ )

Enables showing the node when tracking starts, and hiding the node when tracking is lost.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&""`` :ref:`🔗<class_XRNode3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

我們綁定到的追蹤器的名稱。設計時並不知道有哪些追蹤器可用。

Godot 定義了許多標準追蹤器，例如 ``left_hand`` 和 ``right_hand``\ ，但也可以在給定的 :ref:`XRInterface<class_XRInterface>` 中配置其他追蹤器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRNode3D_method_get_has_tracking_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_has_tracking_data**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_has_tracking_data>`

如果 :ref:`tracker<class_XRNode3D_property_tracker>` 中有被追蹤 :ref:`pose<class_XRNode3D_property_pose>` 的目前追蹤資料，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_active**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_is_active>`

如果 :ref:`tracker<class_XRNode3D_property_tracker>` 已註冊，並且 :ref:`pose<class_XRNode3D_property_pose>` 正在被追蹤，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ ) :ref:`🔗<class_XRNode3D_method_get_pose>`

返回包含被追蹤姿勢的目前狀態的 :ref:`XRPose<class_XRPose>`\ 。這可以存取此姿勢的其他屬性。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRNode3D_method_trigger_haptic_pulse>`

Triggers a haptic pulse on a device associated with this interface.

\ ``action_name`` is the name of the action for this pulse.

\ ``frequency`` is the frequency of the pulse, set to ``0.0`` to have the system use a default frequency.

\ ``amplitude`` is the amplitude of the pulse between ``0.0`` and ``1.0``.

\ ``duration_sec`` is the duration of the pulse in seconds.

\ ``delay_sec`` is a delay in seconds before the pulse is given.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
