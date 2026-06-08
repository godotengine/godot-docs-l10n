:github_url: hide

.. _class_XRHandModifier3D:

XRHandModifier3D
================

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузлом для ручних сіточок від :ref:`XRHandTracker<class_XRHandTracker>` даних.

.. rst-class:: classref-introduction-group

Опис
--------

Ця вершина використовує дані відстеження рук з :ref:`XRHandTracker<class_XRHandTracker>`, щоб позувати скелет ручної сітки.

Посадка рук виконується шляхом створення :ref:`XRNode3D<class_XRNode3D>` представника ручної сітки, керованої тим же :ref:`XRHandTracker<class_XRHandTracker>`.

Дані відстеження руки-дані масштабуються за допомогою :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` при нанесенні до скелета, який може бути використаний для налаштування відстеженої руки, щоб відповідати масштабам моделі руки.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` | :ref:`bone_update<class_XRHandModifier3D_property_bone_update>`   | ``0``                          |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`StringName<class_StringName>`                 | :ref:`hand_tracker<class_XRHandModifier3D_property_hand_tracker>` | ``&"/user/hand_tracker/left"`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRHandModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRHandModifier3D_BoneUpdate>`

.. _class_XRHandModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Кістки скелета повністю оновлюються (потужність і обертання) щоб відповідати відстеженим кісточкам.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Кістки скелета тільки обертаються, щоб вирівняти з відстеженими кісточками, зберігаючи довжину кісток.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Представляємо розмір :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRHandModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRHandModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Визначає тип оновлень для виконання на кістках.

.. rst-class:: classref-item-separator

----

.. _class_XRHandModifier3D_property_hand_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **hand_tracker** = ``&"/user/hand_tracker/left"`` :ref:`🔗<class_XRHandModifier3D_property_hand_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_hand_tracker**\ (\ )

Назва :ref:`XRHandTracker<class_XRHandTracker>` зареєстрована з :ref:`XRServer<class_XRServer>` для отримання даних відстеження рук.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
