:github_url: hide

.. _class_XRBodyModifier3D:

XRBodyModifier3D
================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузлом для сітчастих корпусів з :ref:`XRBodyTracker<class_XRBodyTracker>` даних.

.. rst-class:: classref-introduction-group

Опис
--------

Цей вузол використовує дані відстеження тіла з :ref:`XRBodyTracker<class_XRBodyTracker>`, щоб позувати скелет з сітки тіла.

Посадка тіла здійснюється шляхом створення :ref:`XRNode3D<class_XRNode3D>` представника сітки тіла, керованої тим же :ref:`XRBodyTracker<class_XRBodyTracker>`.

Положення про відстеження тіла-дані вагомі :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` при нанесенні на скелет, який може бути використаний для регулювання відстеженого тіла, щоб відповідати масштабам моделі тіла.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`body_tracker<class_XRBodyModifier3D_property_body_tracker>` | ``&"/user/body_tracker"`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] | :ref:`body_update<class_XRBodyModifier3D_property_body_update>`   | ``7``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`               | :ref:`bone_update<class_XRBodyModifier3D_property_bone_update>`   | ``0``                     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRBodyModifier3D_BodyUpdate:

.. rst-class:: classref-enumeration

flags **BodyUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BodyUpdate>`

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_UPPER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_UPPER_BODY** = ``1``

Стики верхнього тіла скелета оновлюються.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_LOWER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_LOWER_BODY** = ``2``

Стики нижнього тіла скелета оновлюються.

.. _class_XRBodyModifier3D_constant_BODY_UPDATE_HANDS:

.. rst-class:: classref-enumeration-constant

:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>` **BODY_UPDATE_HANDS** = ``4``

Стики скелета оновлюються.

.. rst-class:: classref-item-separator

----

.. _enum_XRBodyModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRBodyModifier3D_BoneUpdate>`

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Кістки скелета повністю оновлюються (потужність і обертання) щоб відповідати відстеженим кісточкам.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Кістки скелета тільки обертаються, щоб вирівняти з відстеженими кісточками, зберігаючи довжину кісток.

.. _class_XRBodyModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Представляємо розмір :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRBodyModifier3D_property_body_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **body_tracker** = ``&"/user/body_tracker"`` :ref:`🔗<class_XRBodyModifier3D_property_body_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_body_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_body_tracker**\ (\ )

Назва :ref:`XRBodyTracker<class_XRBodyTracker>` зареєстрована з :ref:`XRServer<class_XRServer>` для отримання даних відстеження тіла з.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_body_update:

.. rst-class:: classref-property

|bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **body_update** = ``7`` :ref:`🔗<class_XRBodyModifier3D_property_body_update>`

.. rst-class:: classref-property-setget

- |void| **set_body_update**\ (\ value\: |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\]\ )
- |bitfield|\[:ref:`BodyUpdate<enum_XRBodyModifier3D_BodyUpdate>`\] **get_body_update**\ (\ )

Визначає частини тіла для оновлення.

.. rst-class:: classref-item-separator

----

.. _class_XRBodyModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRBodyModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRBodyModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Визначає тип оновлень для виконання на кістках.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
