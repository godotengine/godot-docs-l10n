:github_url: hide

.. _class_PhysicalBoneSimulator3D:

PhysicalBoneSimulator3D
=======================

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Node, який може бути батьком :ref:`PhysicalBone3D<class_PhysicalBone3D>` і може застосувати результати моделювання до :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Node, який може бути батьком :ref:`PhysicalBone3D<class_PhysicalBone3D>` і може застосувати результати моделювання до :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`\ (\ ) |const|                                                                                            |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_add_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                               |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_remove_collision_exception<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`\ (\ exception\: :ref:`RID<class_RID>`\ )                         |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_start_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`physical_bones_stop_simulation<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`\ (\ )                                                                                  |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicalBoneSimulator3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBoneSimulator3D_method_is_simulating_physics>`

Повертає логічне значення, яке вказує, чи запущено та чи виконується симуляція **PhysicalBoneSimulator3D**.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_add_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_add_collision_exception>`

Додає виключення зіткнення до фізичної кістки.

Працює так само, як вузол :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception:

.. rst-class:: classref-method

|void| **physical_bones_remove_collision_exception**\ (\ exception\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_remove_collision_exception>`

Вилучає виключення зіткнення до фізичної кістки.

Працює так само, як вузол :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation:

.. rst-class:: classref-method

|void| **physical_bones_start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_start_simulation>`

Повідомляє вершини :ref:`PhysicalBone3D<class_PhysicalBone3D>` у Скелеті, щоб розпочати імітацію та реагацію на фізичний світ.

Додатково можна пропустити список кісткових імен, що дозволяє імітувати тільки пропущені кістки.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation:

.. rst-class:: classref-method

|void| **physical_bones_stop_simulation**\ (\ ) :ref:`🔗<class_PhysicalBoneSimulator3D_method_physical_bones_stop_simulation>`

Розмістіть вузол :ref:`PhysicalBone3D<class_PhysicalBone3D>` у Скелеті, щоб зупинити імітацію.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
