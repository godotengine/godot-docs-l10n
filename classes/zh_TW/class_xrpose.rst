:github_url: hide

.. _class_XRPose:

XRPose
======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

這個物件包含了追蹤物件姿勢相關的所有資料。

.. rst-class:: classref-introduction-group

說明
----

XR 運作時通常可以識別裝置上的多個位置，例如空間追蹤的控制器。

XR 運作時會為每個姿勢都提供朝向、位置、線速度和角速度。這個物件包含某個姿勢的狀態。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_XRPose_TrackingConfidence:

.. rst-class:: classref-enumeration

enum **TrackingConfidence**: :ref:`🔗<enum_XRPose_TrackingConfidence>`

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_NONE** = ``0``

此姿勢沒有可用的追蹤資訊。

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_LOW** = ``1``

追蹤資訊可能不準確或是估計而來的。例如，對於內向外型追蹤，這表示的是控制器可能被（部分）遮擋。

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_HIGH** = ``2``

Tracking information is considered accurate and up to date.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRPose_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

該姿勢的角速度。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRPose_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

如果為 ``true``\ ，則我們的追蹤資料是最新的。如果為 ``false``\ ，我們將不再接收新的追蹤資料，並且我們的狀態是最後一個有效狀態。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

該姿勢的線速度。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&""`` :ref:`🔗<class_XRPose_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

The name of this pose. Usually, this name is derived from an action map set up by the user. Godot also suggests some pose names that :ref:`XRInterface<class_XRInterface>` objects are expected to implement:

- ``root`` is the root location, often used for tracked objects that do not have further nodes.

- ``aim`` is the tip of a controller with its orientation pointing outwards, often used for raycasts.

- ``grip`` is the location where the user grips the controller.

- ``skeleton`` is the root location for a hand mesh, when using hand tracking and an animated skeleton is supplied by the XR runtime.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_tracking_confidence:

.. rst-class:: classref-property

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **tracking_confidence** = ``0`` :ref:`🔗<class_XRPose_property_tracking_confidence>`

.. rst-class:: classref-property-setget

- |void| **set_tracking_confidence**\ (\ value\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ )
- :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **get_tracking_confidence**\ (\ )

此姿勢的追蹤置信度，提供了有關此記錄的空間定位準確度的洞察力。

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRPose_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

該變換包含由 XR 運作時報告的原點和變換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRPose_method_get_adjusted_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_adjusted_transform**\ (\ ) |const| :ref:`🔗<class_XRPose_method_get_adjusted_transform>`

返回受到世界縮放和我們參考系影響的 :ref:`transform<class_XRPose_property_transform>`\ 。這是用於放置 :ref:`XRNode3D<class_XRNode3D>` 對象的變換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
