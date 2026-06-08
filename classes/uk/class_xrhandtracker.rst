:github_url: hide

.. _class_XRHandTracker:

XRHandTracker
=============

**Успадковує:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Відстежена рука в XR.

.. rst-class:: classref-introduction-group

Опис
--------

Система відстеження рук створить екземпляр цього об'єкта і додасть його до :ref:`XRServer<class_XRServer>`. Ця система відстеження буде потім отримувати дані скелета, перетворювати його до скелета Godot Humanoid і зберігати дані на об'єкті **XRHandTracker**.

Використовуйте :ref:`XRHandModifier3D<class_XRHandModifier3D>`, щоб скасувати ручну сітку за допомогою даних відстеження вручну.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`         | hand                                                                           | ``1`` (overrides :ref:`XRPositionalTracker<class_XRPositionalTracker_property_hand>`) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` | :ref:`hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` | ``0``                                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_tracking_data<class_XRHandTracker_property_has_tracking_data>`       | ``false``                                                                             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                    | type                                                                           | ``16`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`)                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_angular_velocity<class_XRHandTracker_method_get_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                   |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_XRHandTracker_method_get_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_linear_velocity<class_XRHandTracker_method_get_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`get_hand_joint_radius<class_XRHandTracker_method_get_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_hand_joint_transform<class_XRHandTracker_method_get_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                 |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_angular_velocity<class_XRHandTracker_method_set_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ )         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_flags<class_XRHandTracker_method_set_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_linear_velocity<class_XRHandTracker_method_set_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ )            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_radius<class_XRHandTracker_method_set_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_transform<class_XRHandTracker_method_set_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRHandTracker_HandTrackingSource:

.. rst-class:: classref-enumeration

enum **HandTrackingSource**: :ref:`🔗<enum_XRHandTracker_HandTrackingSource>`

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNKNOWN** = ``0``

Джерело даних відстеження рук невідомо.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNOBSTRUCTED** = ``1``

Джерело даних відстеження рук необґрунтовано, що означає, що використовується точний метод відстеження рук. До них відносяться оптичні відстеження рук, рукавиці даних тощо.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_CONTROLLER** = ``2``

Джерело даних відстеження рук є контролером, що означає, що спільні позиції посилені з вхідних контролерів.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_NOT_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_NOT_TRACKED** = ``3``

Дані відстеження руки не відстежуються, це означає, що рука закрита, контролер вимкнено, або відстеження не підтримується для поточного типу введення.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_MAX** = ``4``

Представляємо розмір :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJoint:

.. rst-class:: classref-enumeration

enum **HandJoint**: :ref:`🔗<enum_XRHandTracker_HandJoint>`

.. _class_XRHandTracker_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PALM** = ``0``

Пальмовий суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_WRIST** = ``1``

Вристий суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Тумба метакарпатичний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_PROXIMAL** = ``3``

Тонкий фаланкс проксимальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_DISTAL** = ``4``

Тонкий фаланкс дистальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_TIP** = ``5``

Наконечник натяжний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_METACARPAL** = ``6``

Індекс пальцевий метакарпатичний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL** = ``7``

Індекс пальця фаланкс проксимальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``8``

Індекс пальця фаланкс проміжний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL** = ``9``

Індекс палець фаланкс дистальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_TIP** = ``10``

Індекс кінчика пальця суглоба.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_METACARPAL** = ``11``

Середній палець метакарпатичний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``12``

Середній палець фаланкс проксимальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``13``

Середній палець фаланкс проміжний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL** = ``14``

Середній палець фаланкс дистальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_TIP** = ``15``

Середній кінчик пальця суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_METACARPAL** = ``16``

Кільце пальця метакарпального суглоба.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL** = ``17``

Кільце палець фаланкс проксимальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE** = ``18``

Кільце палець фаланкс проміжний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_DISTAL** = ``19``

Кільце палець фаланкс дистальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_TIP** = ``20``

Кільце кінчика пальця суглоба.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_METACARPAL** = ``21``

Рожевий пальчик метакарпатичний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL** = ``22``

Рожевий палець фаланкс проксимальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``23``

Рожевий палець фаланкс проміжний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL** = ``24``

Рожевий палець фаланкс дистальний суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_TIP** = ``25``

Рожевий кінчик пальця суглоб.

.. _class_XRHandTracker_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MAX** = ``26``

Представляємо розмір :ref:`HandJoint<enum_XRHandTracker_HandJoint>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_XRHandTracker_HandJointFlags>`

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_VALID** = ``1``

Дані орієнтації ручного суглоба діє.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

Активно відстежується орієнтація ручного суглоба. Чи не буде встановлено, чи тимчасово втрачено відстеження.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_VALID** = ``4``

Дані положення ручного суглоба дійсні.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_TRACKED** = ``8``

Посада ручного суглоба активно відстежується. Чи не буде встановлено, чи тимчасово втрачено відстеження.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID** = ``16``

Дані лінійної швидкості ручного суглоба дійсні.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID** = ``32``

Дані кутової швидкості ручного суглоба дійсні.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRHandTracker_property_hand_tracking_source:

.. rst-class:: classref-property

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **hand_tracking_source** = ``0`` :ref:`🔗<class_XRHandTracker_property_hand_tracking_source>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracking_source**\ (\ value\: :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`\ )
- :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **get_hand_tracking_source**\ (\ )

Джерело даних відстеження рук.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRHandTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Якщо ``true``, дані про відстеження руки дійсні.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRHandTracker_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_angular_velocity>`

Повертає кутову швидкість для даної руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] **get_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_flags>`

Повертає прапорці щодо достовірності даних відстеження для заданого суглоба кисті.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_linear_velocity>`

Повертає лінійну швидкість даної руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_radius>`

Повертає радіус даної руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_transform>`

Повертає трансформацію на ручний суглоб.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_angular_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_angular_velocity>`

Налаштовує кутову швидкість для ручного суглоба.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_flags:

.. rst-class:: classref-method

|void| **set_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_flags>`

Налаштовує прапори про дійсність даних відстеження для даної руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_linear_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_linear_velocity>`

Налаштовує лінійну швидкість даної руки.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_radius:

.. rst-class:: classref-method

|void| **set_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_radius>`

Налаштовує радіус даної руки з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_transform:

.. rst-class:: classref-method

|void| **set_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_transform>`

Налаштовує трансформацію для ручного суглоба.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
