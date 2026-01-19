:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`BoneTwistDisperser3D<class_BoneTwistDisperser3D>`, :ref:`IKModifier3D<class_IKModifier3D>`, :ref:`LimitAngularVelocityModifier3D<class_LimitAngularVelocityModifier3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

Вузол, який може змінювати кістки Skeleton3D.

.. rst-class:: classref-introduction-group

Опис
--------

**SkeletonModifier3D** отримує цільовий :ref:`Skeleton3D<class_Skeleton3D>`, маючи батьківський елемент :ref:`Skeleton3D<class_Skeleton3D>`.

Якщо є :ref:`AnimationMixer<class_AnimationMixer>`, модифікація завжди виконується після процесу відтворення :ref:`AnimationMixer<class_AnimationMixer>`.

Цей вузол слід використовувати для реалізації користувацьких IK-розв'язувачів, обмежень або фізики скелета.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Дизайн скелетного модифікатора 3D <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

Повідомляє про завершення модифікації.

\ **Примітка:** Якщо ви хочете отримати змінену позу кістки за допомогою модифікатора, ви повинні використовувати :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` або :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>` у момент спрацьовування цього сигналу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

Перераховане значення для осі +X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

Перераховане значення для осі -X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

Перераховане значення для осі +Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

Перераховане значення для осі -Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

Перераховане значення для осі +Z.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

Перераховане значення для осі -Z.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_BoneDirection:

.. rst-class:: classref-enumeration

enum **BoneDirection**: :ref:`🔗<enum_SkeletonModifier3D_BoneDirection>`

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_X** = ``0``

Перераховане значення для осі +X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_X** = ``1``

Перераховане значення для осі -X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Y** = ``2``

Перераховане значення для осі +Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Y** = ``3``

Перераховане значення для осі -Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Z** = ``4``

Перераховане значення для осі +Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Z** = ``5``

Перераховане значення для осі -Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_FROM_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_FROM_PARENT** = ``6``

Перераховане значення для осі від батьківської кістки до дочірньої кістки.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_SecondaryDirection:

.. rst-class:: classref-enumeration

enum **SecondaryDirection**: :ref:`🔗<enum_SkeletonModifier3D_SecondaryDirection>`

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_NONE** = ``0``

Перечислюване значення для випадку, коли вісь невизначена.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_X** = ``1``

Перераховане значення для осі +X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_X** = ``2``

Перераховане значення для осі -X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Y** = ``3``

Перераховане значення для осі +Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Y** = ``4``

Перераховане значення для осі -Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Z** = ``5``

Перераховане значення для осі +Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Z** = ``6``

Перераховане значення для осі -Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_CUSTOM** = ``7``

Перечислюване значення для додаткової осі.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_RotationAxis:

.. rst-class:: classref-enumeration

enum **RotationAxis**: :ref:`🔗<enum_SkeletonModifier3D_RotationAxis>`

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_X** = ``0``

Перераховане значення повороту осі Х.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Y** = ``1``

Перераховане значення повороту осі Y.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Z** = ``2``

Перераховане значення повороту осі Z.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_ALL** = ``3``

Перераховане значення для необмеженого обертання.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_CUSTOM** = ``4``

Перечислюване значення для додаткової осі обертання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Якщо ``true``, то **SkeletonModifier3D** буде оброблятися.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

Встановлює вплив модифікації.

\ **Примітка:** Це значення використовується :ref:`Skeleton3D<class_Skeleton3D>` для змішування, тому **SkeletonModifier3D** має завжди застосовувати лише 100% результату без інтерполяції.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**Застаріло:** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

Перевизначте цей віртуальний метод, щоб реалізувати власний модифікатор скелета. Вам слід виконати такі дії, як отримання поточної пози :ref:`Skeleton3D<class_Skeleton3D>` та застосування її тут.

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` не повинен застосовувати :ref:`influence<class_SkeletonModifier3D_property_influence>` до поз кісток, оскільки :ref:`Skeleton3D<class_Skeleton3D>` автоматично застосовує вплив до всіх поз кісток, встановлених модифікатором.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

Перевизначте цей віртуальний метод, щоб реалізувати власний модифікатор скелета. Вам слід виконати такі дії, як отримання поточної пози :ref:`Skeleton3D<class_Skeleton3D>` та застосування цієї пози тут.

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` не повинен застосовувати :ref:`influence<class_SkeletonModifier3D_property_influence>` до поз кісток, оскільки :ref:`Skeleton3D<class_Skeleton3D>` автоматично застосовує вплив до всіх поз кісток, встановлених модифікатором.

\ ``delta`` передається з батьківського :ref:`Skeleton3D<class_Skeleton3D>`. Див. також :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`.

\ **Примітка:** Цей метод може бути викликаний поза :ref:`Node._process()<class_Node_private_method__process>` та :ref:`Node._physics_process()<class_Node_private_method__physics_process>` з ``delta``, що дорівнює ``0.0``, оскільки модифікація повинна бути оброблена негайно після ініціалізації :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

Викликається, коли змінюється скелет.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

Викликається, коли потрібно перевірити назви та індекси кісток, наприклад, під час входу в дерево сцени або зміни скелета.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

Повертає батьківський вузол :ref:`Skeleton3D<class_Skeleton3D>`, якщо він існує. В іншому випадку повертає ``null``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
