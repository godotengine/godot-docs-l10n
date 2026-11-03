:github_url: hide

.. _class_XRBodyTracker:

XRBodyTracker
=============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

XR 中追蹤的身體。

.. rst-class:: classref-introduction-group

說明
----

身體追蹤系統將建立該物件的實例並將其新增到 :ref:`XRServer<class_XRServer>`\ 。然後，該追蹤系統將取得骨架資料，將其轉換為 Godot 類人型骨架，並將該資料儲存在 **XRBodyTracker** 物件上。

使用 :ref:`XRBodyModifier3D<class_XRBodyModifier3D>` 通過身體追蹤資料來動畫化身體網格。

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

支援上半身追蹤。

.. _class_XRBodyTracker_constant_BODY_FLAG_LOWER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_LOWER_BODY_SUPPORTED** = ``2``

支援下半身追蹤。

.. _class_XRBodyTracker_constant_BODY_FLAG_HANDS_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_HANDS_SUPPORTED** = ``4``

支援手部追蹤。

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_Joint:

.. rst-class:: classref-enumeration

enum **Joint**: :ref:`🔗<enum_XRBodyTracker_Joint>`

.. _class_XRBodyTracker_constant_JOINT_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_ROOT** = ``0``

根關節。

.. _class_XRBodyTracker_constant_JOINT_HIPS:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HIPS** = ``1``

髖關節。

.. _class_XRBodyTracker_constant_JOINT_SPINE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_SPINE** = ``2``

脊柱關節。

.. _class_XRBodyTracker_constant_JOINT_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_CHEST** = ``3``

胸關節。

.. _class_XRBodyTracker_constant_JOINT_UPPER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_UPPER_CHEST** = ``4``

上胸關節。

.. _class_XRBodyTracker_constant_JOINT_NECK:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_NECK** = ``5``

頸關節。

.. _class_XRBodyTracker_constant_JOINT_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD** = ``6``

頭關節。

.. _class_XRBodyTracker_constant_JOINT_HEAD_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD_TIP** = ``7``

頭部尖端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SHOULDER** = ``8``

左肩關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_ARM** = ``9``

左上臂關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_ARM** = ``10``

左下臂關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SHOULDER** = ``11``

右肩關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_ARM** = ``12``

右上臂關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_ARM** = ``13``

右下臂關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_LEG** = ``14``

左大腿關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_LEG** = ``15``

左小腿關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT** = ``16``

左腳關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_TOES** = ``17``

左腳腳趾關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_LEG** = ``18``

右大腿關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_LEG** = ``19``

右小腿關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT** = ``20``

右腳關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_TOES** = ``21``

右腳腳趾關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HAND** = ``22``

左手關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PALM** = ``23``

左掌關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST** = ``24``

左腕關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_METACARPAL** = ``25``

左大拇指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_PROXIMAL** = ``26``

左大拇指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_DISTAL** = ``27``

左大拇指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_TIP** = ``28``

左大拇指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_METACARPAL** = ``29``

左食指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL** = ``30``

左食指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``31``

左食指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL** = ``32``

左食指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_TIP** = ``33``

左食指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_METACARPAL** = ``34``

左中指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``35``

左中指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``36``

左中指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL** = ``37``

左中指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_TIP** = ``38``

左中指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_METACARPAL** = ``39``

左無名指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL** = ``40``

左無名指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE** = ``41``

左無名指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_DISTAL** = ``42``

左無名指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_TIP** = ``43``

左無名指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_METACARPAL** = ``44``

左小指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL** = ``45``

左小指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``46``

左小指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL** = ``47``

左小指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_TIP** = ``48``

左小指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HAND** = ``49``

右手關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PALM** = ``50``

右掌關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST** = ``51``

右腕關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_METACARPAL** = ``52``

右大拇指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_PROXIMAL** = ``53``

右大拇指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_DISTAL** = ``54``

右大拇指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_TIP** = ``55``

右大拇指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_METACARPAL** = ``56``

右食指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL** = ``57``

右食指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``58``

右食指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL** = ``59``

右食指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_TIP** = ``60``

右食指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_METACARPAL** = ``61``

右中指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``62``

右中指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``63``

右中指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL** = ``64``

右中指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_TIP** = ``65``

右中指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_METACARPAL** = ``66``

右無名指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL** = ``67``

右無名指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE** = ``68``

右無名指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL** = ``69``

右無名指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_TIP** = ``70``

右無名指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_METACARPAL** = ``71``

右小指掌骨關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL** = ``72``

右小指指骨近端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``73``

右小指指骨中間關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL** = ``74``

右小指指骨遠端關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_TIP** = ``75``

右小指指尖關節。

.. _class_XRBodyTracker_constant_JOINT_LOWER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LOWER_CHEST** = ``76``

下胸關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SCAPULA** = ``77``

左肩關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST_TWIST** = ``78``

左手腕關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SCAPULA** = ``79``

右肩關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST_TWIST** = ``80``

右手腕關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT_TWIST** = ``81``

左腳腕關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HEEL** = ``82``

左腳跟關節。

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FOOT** = ``83``

左腳掌關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT_TWIST** = ``84``

右腳腕關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HEEL** = ``85``

右腳跟關節。

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FOOT** = ``86``

右腳掌關節。

.. _class_XRBodyTracker_constant_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_MAX** = ``87``

代表 :ref:`Joint<enum_XRBodyTracker_Joint>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_JointFlags:

.. rst-class:: classref-enumeration

flags **JointFlags**: :ref:`🔗<enum_XRBodyTracker_JointFlags>`

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_VALID** = ``1``

該關節的方向資料有效。

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

關節的方向是主動追蹤的。如果追蹤暫時丟失，則可能無法設定。

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_VALID** = ``4``

該關節的位置資料有效。

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_TRACKED** = ``8``

關節的位置是主動追蹤的。如果追蹤暫時丟失，則可能無法設定。

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

捕獲的身體追蹤資料的型別。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRBodyTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

如果為 ``true``\ ，則身體追蹤資料有效。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRBodyTracker_method_get_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] **get_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_flags>`

設定有關給定身體關節的追蹤資料的有效性的標誌。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_get_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_transform>`

回傳給定身體關節的變換。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_flags:

.. rst-class:: classref-method

|void| **set_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_flags>`

設定有關給定身體關節的追蹤資料的有效性的標誌。

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_transform:

.. rst-class:: classref-method

|void| **set_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_transform>`

設定給定身體關節的變換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
