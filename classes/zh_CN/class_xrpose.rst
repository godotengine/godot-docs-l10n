:github_url: hide

.. _class_XRPose:

XRPose
======

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

这个对象包含了跟踪对象姿势相关的所有数据。

.. rst-class:: classref-introduction-group

描述
----

XR 运行时通常可以识别设备上的多个位置，例如空间跟踪的控制器。

XR 运行时会为每个姿势都提供朝向、位置、线速度和角速度。这个对象包含某个姿势的状态。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`angular_velocity<class_XRPose_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`has_tracking_data<class_XRPose_property_has_tracking_data>`     | ``false``                                           |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`linear_velocity<class_XRPose_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`name<class_XRPose_property_name>`                               | ``&""``                                             |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`tracking_confidence<class_XRPose_property_tracking_confidence>` | ``0``                                               |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`transform<class_XRPose_property_transform>`                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_adjusted_transform<class_XRPose_method_get_adjusted_transform>`\ (\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_XRPose_TrackingConfidence:

.. rst-class:: classref-enumeration

enum **TrackingConfidence**: :ref:`🔗<enum_XRPose_TrackingConfidence>`

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_NONE** = ``0``

此姿势没有可用的追踪信息。

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_LOW** = ``1``

追踪信息可能不准确或是估计而来的。例如，对于内向外型追踪，这表示的是控制器可能被（部分）遮挡。

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_HIGH** = ``2``

追踪信息被认为是准确且最新的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRPose_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

该姿势的角速度。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRPose_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

如果为 ``true``\ ，则我们的追踪数据是最新的。如果为 ``false``\ ，我们将不再接收新的追踪数据，并且我们的状态是最后一个有效状态。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

该姿势的线速度。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&""`` :ref:`🔗<class_XRPose_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

姿势的名称。姿势名称通常派生自用户设置的动作映射。Godot 也针对姿势名称给出了一些建议，希望 :ref:`XRInterface<class_XRInterface>` 能够实现：

-``root`` 是根位置，通常用于没有其他节点的被追踪物体。

-``aim`` 是控制器的顶端，方向朝外，常用于射线投射。

-``grip`` 是用户持握控制器的位置。

-``skeleton`` 是在使用手部跟踪且 XR 运行时提供的动画骨架时，手部网格的根位置。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_tracking_confidence:

.. rst-class:: classref-property

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **tracking_confidence** = ``0`` :ref:`🔗<class_XRPose_property_tracking_confidence>`

.. rst-class:: classref-property-setget

- |void| **set_tracking_confidence**\ (\ value\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ )
- :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **get_tracking_confidence**\ (\ )

此姿势的追踪置信度，提供了有关此记录的空间定位准确度的洞察力。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRPose_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

该变换包含由 XR 运行时报告的原点和变换。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRPose_method_get_adjusted_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_adjusted_transform**\ (\ ) |const| :ref:`🔗<class_XRPose_method_get_adjusted_transform>`

返回受到世界缩放和我们参考系影响的 :ref:`transform<class_XRPose_property_transform>`\ 。这是用于放置 :ref:`XRNode3D<class_XRNode3D>` 对象的变换。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
