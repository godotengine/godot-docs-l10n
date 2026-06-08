:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**Успадковує:** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A :ref:`RigidBody2D<class_RigidBody2D>`-derived node використовується для створення :ref:`Bone2D<class_Bone2D>` в :ref:`Skeleton2D<class_Skeleton2D>` реагувати на фізику.

.. rst-class:: classref-introduction-group

Опис
--------

**PhysicalBone2D** вершина :ref:`RigidBody2D<class_RigidBody2D>`, яка може бути використана для створення :ref:`Bone2D<class_Bone2D>` в :ref:`Skeleton2D<class_Skeleton2D>` реагувати на фізику.

\ **Примітка:** Щоб зробити :ref:`Bone2D<class_Bone2D>` візуально слідувати за вершиною **PhysicalBone2D**, скористайтеся :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` модифікацією на :ref:`Skeleton2D<class_Skeleton2D>`.

\ **Примітка:** Вузли **PhysicalBone2D** не автоматично створить вузол :ref:`Joint2D<class_Joint2D>` для збереження **PhysicalBone2D**. Вони повинні бути створені вручну. Для більшості випадків ви хочете використовувати вузол :ref:`PinJoint2D<class_PinJoint2D>`. **PhysicalBone2D** вузол автоматично налаштовує вузол :ref:`Joint2D<class_Joint2D>`, коли він був доданий як дочірній вузол.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

Якщо ``true``, то **PhysicalBone2D** автоматично налаштовує першу :ref:`Joint2D<class_Joint2D>` дочірню вершину. Автоматична конфігурація обмежена для налаштування властивостей вузлів та позиціонування :ref:`Joint2D<class_Joint2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

Індекс :ref:`Bone2D<class_Bone2D>`, що це **PhysicalBone2D** повинен імітувати.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

:ref:`NodePath<class_NodePath>` до :ref:`Bone2D<class_Bone2D>`, що це **PhysicalBone2D** повинно імітувати.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

Якщо ``true``, то **PhysicalBone2D** буде тримати трансформацію кістки, яка межує при симуляції фізики.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

Якщо ``true``, то **PhysicalBone2D** почне шліфувати за допомогою фізики. Якщо ``false``, то **PhysicalBone2D** слідувати перетворенню вузла :ref:`Bone2D<class_Bone2D>`.

\ **Примітка:** Щоб мати :ref:`Bone2D<class_Bone2D>` візуально слідувати **PhysicalBone2D**, скористайтеся :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` модифікацією на :ref:`Skeleton2D<class_Skeleton2D>` вершиною :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

Повертаємо перше місце (Joint2D) дочірня вершина, якщо один існує. Це в основному функція помічника, щоб зробити його легше отримати :ref:`Joint2D<class_Joint2D>`, що **PhysicalBone2D** is autoconfiguring.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

Повертаємо boolean, що вказує на те, що **PhysicalBone2D** працює і шліфує за допомогою двигуна Godot 2D. Коли ``true``, вузол фізичногоBone2D використовує фізику.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
