:github_url: hide

.. _class_XRTracker:

XRTracker
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`XRFaceTracker<class_XRFaceTracker>`, :ref:`XRPositionalTracker<class_XRPositionalTracker>`

追踪对象。

.. rst-class:: classref-introduction-group

描述
----

所有 XR 追踪器的基类对象。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`String<class_String>`                   | :ref:`description<class_XRTracker_property_description>` | ``""``         |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`StringName<class_StringName>`           | :ref:`name<class_XRTracker_property_name>`               | ``&"Unknown"`` |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | :ref:`type<class_XRTracker_property_type>`               | ``128``        |
   +-----------------------------------------------+----------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRTracker_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_XRTracker_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_desc**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_desc**\ (\ )

此追踪器的描述。

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&"Unknown"`` :ref:`🔗<class_XRTracker_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker_name**\ (\ )

该追踪器的唯一名称。可用的追踪器因各种 XR 运行时而异，并且通常可以由用户配置。Godot 维护了一些保留名称，如果可应用，它希望 :ref:`XRInterface<class_XRInterface>` 实现这些名称：

- ``head`` 标识玩家头部的 :ref:`XRPositionalTracker<class_XRPositionalTracker>`\ 

- ``left_hand`` 标识玩家左手的 :ref:`XRControllerTracker<class_XRControllerTracker>`\ 

- ``right_hand`` 标识玩家右手的 :ref:`XRControllerTracker<class_XRControllerTracker>`\ 

- ``/user/hand_tracker/left`` 标识玩家左手的 :ref:`XRHandTracker<class_XRHandTracker>`\ 

- ``/user/hand_tracker/right`` 标识玩家右手的 :ref:`XRHandTracker<class_XRHandTracker>`\ 

- ``/user/body_tracker`` 标识玩家身体的 :ref:`XRBodyTracker<class_XRBodyTracker>`\ 

- ``/user/face_tracker`` 标识玩家脸部的 :ref:`XRFaceTracker<class_XRFaceTracker>`

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_type:

.. rst-class:: classref-property

:ref:`TrackerType<enum_XRServer_TrackerType>` **type** = ``128`` :ref:`🔗<class_XRTracker_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_type**\ (\ value\: :ref:`TrackerType<enum_XRServer_TrackerType>`\ )
- :ref:`TrackerType<enum_XRServer_TrackerType>` **get_tracker_type**\ (\ )

该追踪器的类型。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
