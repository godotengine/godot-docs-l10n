:github_url: hide

.. _class_SkeletonModification2DTwoBoneIK:

SkeletonModification2DTwoBoneIK
===============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модифікація, яка повертає дві кістки, використовуючи закон косинусів, щоб досягти цілі.

.. rst-class:: classref-introduction-group

Опис
--------

Цей :ref:`SkeletonModification2D<class_SkeletonModification2D>` використовує алгоритм, який зазвичай називається TwoBoneIK. Цей алгоритм працює, використовуючи закон косинусів і довжини кісток, щоб визначити, яке обертання мають кістки на даний момент і яке обертання їм потрібно, щоб створити повний трикутник, де перша кістка, друга кістка та ціль утворюють три вершини трикутника. Оскільки алгоритм працює, створюючи трикутник, він може працювати лише з двома кістками.

TwoBoneIK чудово підходить для рук, ніг та взагалі будь-яких суглобів, які можна представити лише двома кістками, що згинаються, щоб досягти цілі. Цей розв'язувач легший, ніж :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, але дає подібні, природні результати.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_bend_direction<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`         | ``false``        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_maximum_distance<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_minimum_distance<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_bend_direction** = ``false`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`

.. rst-class:: classref-property-setget

- |void| **set_flip_bend_direction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_bend_direction**\ (\ )

Якщо ``true``, кістки в модифікації будуть згинатися назовні, а не всередину під час скорочення. Якщо ``false``, кістки будуть згинатися всередину під час скорочення.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_maximum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_maximum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_maximum_distance**\ (\ )

Максимальна відстань, на якій може бути ціль. Якщо ціль знаходиться далі, ніж ця відстань, модифікація вирішить так, ніби вона знаходиться на цій максимальній відстані. Якщо встановлено значення ``0``, модифікація вирішуватиметься без обмежень відстані.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_minimum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_minimum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_minimum_distance**\ (\ )

Мінімальна відстань, на якій може бути ціль. Якщо ціль знаходиться ближче, ніж ця відстань, модифікація вирішить так, ніби вона знаходиться на цій мінімальній відстані. Якщо встановлено значення ``0``, модифікація вирішуватиметься без обмежень відстані.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

NodePath до вузла, який є метою для модифікації TwoBoneIK. Цей вузол модифікація використовуватиме під час згинання вузлів :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_one_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`

Повертає вузол :ref:`Bone2D<class_Bone2D>`, який використовується як перша кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_one_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`

Повертає індекс вузла :ref:`Bone2D<class_Bone2D>`, який використовується як перша кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_two_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`

Повертає вузол :ref:`Bone2D<class_Bone2D>`, який використовується як друга кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_two_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`

Повертає індекс вузла :ref:`Bone2D<class_Bone2D>`, який використовується як друга кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_one_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`

Встановлює вузол :ref:`Bone2D<class_Bone2D>`, який використовується як перша кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_one_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`

Встановлює індекс вузла :ref:`Bone2D<class_Bone2D>`, який використовується як перша кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_two_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`

Встановлює вузол :ref:`Bone2D<class_Bone2D>`, який використовується як друга кістка в модифікації TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_two_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`

Встановлює індекс вузла :ref:`Bone2D<class_Bone2D>`, який використовується як друга кістка в модифікації TwoBoneIK.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
