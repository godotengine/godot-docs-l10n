:github_url: hide

.. _class_XRTracker:

XRTracker
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`XRFaceTracker<class_XRFaceTracker>`, :ref:`XRPositionalTracker<class_XRPositionalTracker>`

追蹤對象。

.. rst-class:: classref-introduction-group

說明
----

This object is the base of all XR trackers.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_XRTracker_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_XRTracker_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_desc**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_desc**\ (\ )

此追蹤器的描述。

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&"Unknown"`` :ref:`🔗<class_XRTracker_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker_name**\ (\ )

The unique name of this tracker. The trackers that are available differ between various XR runtimes and can often be configured by the user. Godot maintains a number of reserved names that it expects the :ref:`XRInterface<class_XRInterface>` to implement if applicable:

- ``"head"`` identifies the :ref:`XRPositionalTracker<class_XRPositionalTracker>` of the player's head

- ``"left_hand"`` identifies the :ref:`XRControllerTracker<class_XRControllerTracker>` in the player's left hand

- ``"right_hand"`` identifies the :ref:`XRControllerTracker<class_XRControllerTracker>` in the player's right hand

- ``"/user/hand_tracker/left"`` identifies the :ref:`XRHandTracker<class_XRHandTracker>` for the player's left hand

- ``"/user/hand_tracker/right"`` identifies the :ref:`XRHandTracker<class_XRHandTracker>` for the player's right hand

- ``"/user/body_tracker"`` identifies the :ref:`XRBodyTracker<class_XRBodyTracker>` for the player's body

- ``"/user/face_tracker"`` identifies the :ref:`XRFaceTracker<class_XRFaceTracker>` for the player's face

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_type:

.. rst-class:: classref-property

:ref:`TrackerType<enum_XRServer_TrackerType>` **type** = ``128`` :ref:`🔗<class_XRTracker_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_type**\ (\ value\: :ref:`TrackerType<enum_XRServer_TrackerType>`\ )
- :ref:`TrackerType<enum_XRServer_TrackerType>` **get_tracker_type**\ (\ )

該追蹤器的型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
