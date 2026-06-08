:github_url: hide

.. _class_XRBodyTracker:

XRBodyTracker
=============

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Відстежене тіло в XR.

.. rst-class:: classref-introduction-group

Опис
--------

Система відстеження тіла створить екземпляр цього об'єкта і додасть його до :ref:`XRServer<class_XRServer>`. Ця система відстеження буде потім отримувати дані скелета, перетворювати його до скелета Godot Humanoid і зберігати дані на об'єкті **XRBodyTracker**.

Використовуйте :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, щоб анімувати сіточку тіла, використовуючи дані відстеження тіла.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
------------

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

Переліки
----------------

.. _enum_XRBodyTracker_BodyFlags:

.. rst-class:: classref-enumeration

flags **BodyFlags**: :ref:`🔗<enum_XRBodyTracker_BodyFlags>`

.. _class_XRBodyTracker_constant_BODY_FLAG_UPPER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_UPPER_BODY_SUPPORTED** = ``1``

Підтримувані вище відстеження тіла.

.. _class_XRBodyTracker_constant_BODY_FLAG_LOWER_BODY_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_LOWER_BODY_SUPPORTED** = ``2``

Підтримувані відстеження нижніх кінцівок.

.. _class_XRBodyTracker_constant_BODY_FLAG_HANDS_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>` **BODY_FLAG_HANDS_SUPPORTED** = ``4``

Відстеження рук підтримується.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_Joint:

.. rst-class:: classref-enumeration

enum **Joint**: :ref:`🔗<enum_XRBodyTracker_Joint>`

.. _class_XRBodyTracker_constant_JOINT_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_ROOT** = ``0``

Кореневий суглоб.

.. _class_XRBodyTracker_constant_JOINT_HIPS:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HIPS** = ``1``

Хіпсовий суглоб.

.. _class_XRBodyTracker_constant_JOINT_SPINE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_SPINE** = ``2``

Спінський суглоб.

.. _class_XRBodyTracker_constant_JOINT_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_CHEST** = ``3``

Шестий суглоб.

.. _class_XRBodyTracker_constant_JOINT_UPPER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_UPPER_CHEST** = ``4``

Верхній сунд грудей.

.. _class_XRBodyTracker_constant_JOINT_NECK:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_NECK** = ``5``

Змішувати суглоб.

.. _class_XRBodyTracker_constant_JOINT_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD** = ``6``

Головний суглоб.

.. _class_XRBodyTracker_constant_JOINT_HEAD_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_HEAD_TIP** = ``7``

Наконечник голови.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SHOULDER** = ``8``

Лівий суглоб плеча.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_ARM** = ``9``

Лівий верхній суглоб руки.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_ARM** = ``10``

Лівий нижній суглоб руки.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SHOULDER:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SHOULDER** = ``11``

Правове плече суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_ARM** = ``12``

Правий верхній шов суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_ARM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_ARM** = ``13``

Право нижньої руки суглоба.

.. _class_XRBodyTracker_constant_JOINT_LEFT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_UPPER_LEG** = ``14``

Ліва верхня нога суглоба.

.. _class_XRBodyTracker_constant_JOINT_LEFT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_LOWER_LEG** = ``15``

Лівий нижній суглоб ноги.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT** = ``16``

Лівий суглоб стопи.

.. _class_XRBodyTracker_constant_JOINT_LEFT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_TOES** = ``17``

Ліві пальці суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_UPPER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_UPPER_LEG** = ``18``

Права верхня нога суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_LOWER_LEG:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_LOWER_LEG** = ``19``

Право нижньої ноги суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT** = ``20``

Правий суглоб стопи.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_TOES:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_TOES** = ``21``

Прямокутний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HAND** = ``22``

Ліворучний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PALM** = ``23``

Лівий пальмовий суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST** = ``24``

Лівий зап'ясний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_METACARPAL** = ``25``

Лівий палець метакарпальовий суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_PROXIMAL** = ``26``

Лівий палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_PHALANX_DISTAL** = ``27``

Лівий палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_THUMB_TIP** = ``28``

Наконечник лівого пальця.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_METACARPAL** = ``29``

Лівий індекс пальцевий метакарпальський суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_PROXIMAL** = ``30``

Лівий індекс пальця фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``31``

Лівий індекс пальця фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_PHALANX_DISTAL** = ``32``

Лівий індекс пальця фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_INDEX_FINGER_TIP** = ``33``

Лівий індекс кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_METACARPAL** = ``34``

Лівий середній пальцевий метакарпатичний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``35``

Лівий середній палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``36``

Лівий середній палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_PHALANX_DISTAL** = ``37``

Лівий середній палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FINGER_TIP** = ``38``

Лівий середній кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_METACARPAL** = ``39``

Ліворучний пальчик метакарпатичний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_PROXIMAL** = ``40``

Лівий кільце палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_INTERMEDIATE** = ``41``

Лівий кільце палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_PHALANX_DISTAL** = ``42``

Лівий кільце палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_RING_FINGER_TIP** = ``43``

Лівий кінчик пальця суглоба.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_METACARPAL** = ``44``

Лівий рожевий пальцевий метакарпальський суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_PROXIMAL** = ``45``

Лівий рожевий палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``46``

Ліво-рожевий палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_PHALANX_DISTAL** = ``47``

Лівий рожевий палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_PINKY_FINGER_TIP** = ``48``

Лівий рожевий кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HAND** = ``49``

Праворучний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PALM** = ``50``

Прямий пальмовий суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST** = ``51``

Правий зап'ясний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_METACARPAL** = ``52``

Правий палець метакарпальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_PROXIMAL** = ``53``

Прямий палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_PHALANX_DISTAL** = ``54``

Прямий палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_THUMB_TIP** = ``55``

Клапан правого пальця.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_METACARPAL** = ``56``

Правий індекс пальцевий метакарпальський суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_PROXIMAL** = ``57``

Правильний індекс пальця фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``58``

Правий індекс пальця фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_PHALANX_DISTAL** = ``59``

Право індексу палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_INDEX_FINGER_TIP** = ``60``

Правий індекс кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_METACARPAL** = ``61``

Прямий середній пальцевий метакарпатичний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``62``

Прямий середній палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``63``

Прямий середній палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_PHALANX_DISTAL** = ``64``

Прямий середній палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FINGER_TIP** = ``65``

Прямий середній кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_METACARPAL** = ``66``

Праве кільце пальця метакарпального суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_PROXIMAL** = ``67``

Праве кільце палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_INTERMEDIATE** = ``68``

Праве кільце палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_PHALANX_DISTAL** = ``69``

Праве кільце палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_RING_FINGER_TIP** = ``70``

Клапан правого пальця суглоба.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_METACARPAL** = ``71``

Прямий рожевий пальцевий метакарпальський суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_PROXIMAL** = ``72``

Прямий рожевий палець фаланкс проксимальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``73``

Прямий рожевий палець фаланкс проміжний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_PHALANX_DISTAL** = ``74``

Прямий рожевий палець фаланкс дистальний суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_PINKY_FINGER_TIP** = ``75``

Прямий рожевий кінчик пальця суглоб.

.. _class_XRBodyTracker_constant_JOINT_LOWER_CHEST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LOWER_CHEST** = ``76``

Нижній грудний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_SCAPULA** = ``77``

Лівий лопатковий суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_WRIST_TWIST** = ``78``

Поворотний суглоб лівого зап'ястя.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_SCAPULA:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_SCAPULA** = ``79``

Правий лопатковий суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_WRIST_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_WRIST_TWIST** = ``80``

Правий зап'ястний суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_FOOT_TWIST** = ``81``

Скручувальний суглоб лівої стопи.

.. _class_XRBodyTracker_constant_JOINT_LEFT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_HEEL** = ``82``

Лівий п'ятковий суглоб.

.. _class_XRBodyTracker_constant_JOINT_LEFT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_LEFT_MIDDLE_FOOT** = ``83``

Лівий середній суглоб стопи.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_FOOT_TWIST:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_FOOT_TWIST** = ``84``

Скручувальний суглоб правої стопи.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_HEEL:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_HEEL** = ``85``

Правий п'ятковий суглоб.

.. _class_XRBodyTracker_constant_JOINT_RIGHT_MIDDLE_FOOT:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_RIGHT_MIDDLE_FOOT** = ``86``

Правий середній суглоб стопи.

.. _class_XRBodyTracker_constant_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Joint<enum_XRBodyTracker_Joint>` **JOINT_MAX** = ``87``

Представляємо розмір об'єкта :ref:`Joint<enum_XRBodyTracker_Joint>`.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyTracker_JointFlags:

.. rst-class:: classref-enumeration

flags **JointFlags**: :ref:`🔗<enum_XRBodyTracker_JointFlags>`

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_VALID** = ``1``

Дані орієнтації суглоба діє.

.. _class_XRBodyTracker_constant_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

Активно відстежується орієнтація суглоба. Чи не буде встановлено, чи тимчасово втрачено відстеження.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_VALID** = ``4``

Дані про позицію суглоба діють.

.. _class_XRBodyTracker_constant_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`JointFlags<enum_XRBodyTracker_JointFlags>` **JOINT_FLAG_POSITION_TRACKED** = ``8``

Посада суглоба активно відстежується. Чи не буде встановлено, чи тимчасово втрачено відстеження.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRBodyTracker_property_body_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **body_flags** = ``0`` :ref:`🔗<class_XRBodyTracker_property_body_flags>`

.. rst-class:: classref-property-setget

- |void| **set_body_flags**\ (\ value\: |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\]\ )
- |bitfield|\[:ref:`BodyFlags<enum_XRBodyTracker_BodyFlags>`\] **get_body_flags**\ (\ )

Вибрані дані про відстеження тіла.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRBodyTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Якщо ``true``, дані відстеження тіла дійсні.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRBodyTracker_method_get_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\] **get_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_flags>`

Повертає прапорці щодо достовірності даних відстеження для заданого суглоба тіла.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_get_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`\ ) |const| :ref:`🔗<class_XRBodyTracker_method_get_joint_transform>`

Повертає трансформацію для даної частини тіла.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_flags:

.. rst-class:: classref-method

|void| **set_joint_flags**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, flags\: |bitfield|\[:ref:`JointFlags<enum_XRBodyTracker_JointFlags>`\]\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_flags>`

Встановлює прапори про дійсність даних відстеження для даного тіла.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyTracker_method_set_joint_transform:

.. rst-class:: classref-method

|void| **set_joint_transform**\ (\ joint\: :ref:`Joint<enum_XRBodyTracker_Joint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRBodyTracker_method_set_joint_transform>`

Встановлює трансформацію для даної частини тіла.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
