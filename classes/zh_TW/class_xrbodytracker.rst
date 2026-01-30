:github_url: hide

.. _class_XRBodyTracker:

XRBodyTracker
=============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A tracked body in XR.

.. rst-class:: classref-introduction-group

說明
----

A body tracking system will create an instance of this object and add it to the :ref:`XRServer<class_XRServer>`. This tracking system will then obtain skeleton data, convert it to the Godot Humanoid skeleton and store this data on the **XRBodyTracker** object.

Use :ref:`XRBodyModifier3D<class_XRBodyModifier3D>` to animate a body mesh using body tracking data.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] | :ref:`body_flags<class_XRBodyTracker_property_body_flags>`               | ``0``                                                              |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_tracking_data<class_XRBodyTracker_property_has_tracking_data>` | ``false``                                                          |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                | type                                                                     | ``32`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] | :ref:`get_joint_flags<class_XRBodyTracker_method_get_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                                 |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                          | :ref:`get_joint_transform<class_XRBodyTracker_method_get_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const|                                                         |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_flags<class_XRBodyTracker_method_set_joint_flags>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`set_joint_transform<class_XRBodyTracker_method_set_joint_transform>`\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )              |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRBodyTracker_BodyFlags:

.. rst-class:: classref-enumeration

flags **BodyFlags**: :ref:`🔗<enum_XRBodyTracker_BodyFlags>`

.. _class_XRBodyTracker_constant_BODY_FLAG_UPPER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_UPPER_BODY_SUPPORTED** = ``1``

Upper body tracking supported.

.. _class_XRBodyTracker_constant_BODY_FLAG_LOWER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_LOWER_BODY_SUPPORTED** = ``2``

Lower body tracking supported.

.. _class_XRBodyTracker_constant_BODY_FLAG_HANDS_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_HANDS_SUPPORTED** = ``4``

Hand tracking supported.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_Joint:

.. rst-class:: classref-enumeration

enum **Joint**: :ref:`🔗<enum_XRBodyTracker_Joint>`

.. _class_XRBodyTracker_constant_JOINT_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_ROOT** = ``0``

Root joint.

.. _class_XRBodyTracker_constant_JOINT_HIPS:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HIPS** = ``1``

Hips joint.

.. _class_XRBodyTracker_constant_JOINT_SPINE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_SPINE** = ``2``

Spine joint.

.. _class_XRBodyTracker_constant_JOINT_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_CHEST** = ``3``

Chest joint.

.. _class_XRBodyTracker_constant_JOINT_UPPER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_UPPER_CHEST** = ``4``

Upper chest joint.

.. _class_XRBodyTracker_constant_JOINT_NECK:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_NECK** = ``5``

Neck joint.

.. _class_XRBodyTracker_constant_JOINT_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD** = ``6``

Head joint.

.. _class_XRBodyTracker_constant_JOINT_HEAD_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD_TIP** = ``7``

Head tip joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SHOULDER** = ``8``

Left shoulder joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_ARM** = ``9``

Left upper arm joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_ARM** = ``10``

Left lower arm joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SHOULDER** = ``11``

Right shoulder joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_ARM** = ``12``

Right upper arm joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_ARM** = ``13``

Right lower arm joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_LEG** = ``14``

Left upper leg joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_LEG** = ``15``

Left lower leg joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT** = ``16``

Left foot joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_TOES** = ``17``

Left toes joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_LEG** = ``18``

Right upper leg joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_LEG** = ``19``

Right lower leg joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT** = ``20``

Right foot joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_TOES** = ``21``

Right toes joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HAND** = ``22``

Left hand joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PALM** = ``23``

Left palm joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST** = ``24``

Left wrist joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_METACARPAL** = ``25``

Left thumb metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_PROXIMAL** = ``26``

Left thumb phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_DISTAL** = ``27``

Left thumb phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_TIP** = ``28``

Left thumb tip joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_METACARPAL** = ``29``

Left index finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL** = ``30``

Left index finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``31``

Left index finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL** = ``32``

Left index finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_TIP** = ``33``

Left index finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_METACARPAL** = ``34``

Left middle finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``35``

Left middle finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``36``

Left middle finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL** = ``37``

Left middle finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_TIP** = ``38``

Left middle finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_METACARPAL** = ``39``

Left ring finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL** = ``40``

Left ring finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE** = ``41``

Left ring finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_DISTAL** = ``42``

Left ring finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_TIP** = ``43``

Left ring finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_METACARPAL** = ``44``

Left pinky finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL** = ``45``

Left pinky finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``46``

Left pinky finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL** = ``47``

Left pinky finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_TIP** = ``48``

Left pinky finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HAND** = ``49``

Right hand joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PALM** = ``50``

Right palm joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST** = ``51``

Right wrist joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_METACARPAL** = ``52``

Right thumb metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_PROXIMAL** = ``53``

Right thumb phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_DISTAL** = ``54``

Right thumb phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_TIP** = ``55``

Right thumb tip joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_METACARPAL** = ``56``

Right index finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL** = ``57``

Right index finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``58``

Right index finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL** = ``59``

Right index finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_TIP** = ``60``

Right index finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_METACARPAL** = ``61``

Right middle finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``62``

Right middle finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``63``

Right middle finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL** = ``64``

Right middle finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_TIP** = ``65``

Right middle finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_METACARPAL** = ``66``

Right ring finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL** = ``67``

Right ring finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE** = ``68``

Right ring finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL** = ``69``

Right ring finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_TIP** = ``70``

Right ring finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_METACARPAL** = ``71``

Right pinky finger metacarpal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL** = ``72``

Right pinky finger phalanx proximal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``73``

Right pinky finger phalanx intermediate joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL** = ``74``

Right pinky finger phalanx distal joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_TIP** = ``75``

Right pinky finger tip joint.

.. _class_XRBodyTracker_constant_JOINT_LOWER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LOWER_CHEST** = ``76``

Lower chest joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SCAPULA** = ``77``

Left scapula joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST_TWIST** = ``78``

Left wrist twist joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SCAPULA** = ``79``

Right scapula joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST_TWIST** = ``80``

Right wrist twist joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT_TWIST** = ``81``

Left foot twist joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HEEL** = ``82``

Left heel joint.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FOOT** = ``83``

Left middle foot joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT_TWIST** = ``84``

Right foot twist joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HEEL** = ``85``

Right heel joint.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FOOT** = ``86``

Right middle foot joint.

.. _class_XRBodyTracker_constant_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_MAX** = ``87``

Represents the size of the :ref:`Joint<enum_XRBodyTracker_Joint>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_JointFlags:

.. rst-class:: classref-enumeration

flags **JointFlags**: :ref:`🔗<enum_XRBodyTracker_JointFlags>`

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_VALID** = ``1``

The joint's orientation data is valid.

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

The joint's orientation is actively tracked. May not be set if tracking has been temporarily lost.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_VALID** = ``4``

The joint's position data is valid.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_TRACKED** = ``8``

The joint's position is actively tracked. May not be set if tracking has been temporarily lost.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRBodyTracker_property_body_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **body_flags** = ``0`` :ref:`🔗<class_XRBodyTracker_property_body_flags>`

.. rst-class:: classref-property-setget

- |void| **set_body_flags**\ (\ value\: |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\]\ )
- |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **get_body_flags**\ (\ )

The type of body tracking data captured.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRBodyTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

If ``true``, the body tracking data is valid.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRBodyTracker_method_get_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] **get_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_flags>`

Returns flags about the validity of the tracking data for the given body joint.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_get_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_transform>`

Returns the transform for the given body joint.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_flags:

.. rst-class:: classref-method

|void| **set_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_flags>`

Sets flags about the validity of the tracking data for the given body joint.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_transform:

.. rst-class:: classref-method

|void| **set_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_transform>`

Sets the transform for the given body joint.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
