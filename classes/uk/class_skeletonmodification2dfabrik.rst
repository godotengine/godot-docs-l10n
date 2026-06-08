:github_url: hide

.. _class_SkeletonModification2DFABRIK:

SkeletonModification2DFABRIK
============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модифікація, яка використовує FABRIK для маніпуляції рядками :ref:`Bone2D<class_Bone2D>`, щоб досягти мети.

.. rst-class:: classref-introduction-group

Опис
--------

Цей :ref:`SkeletonModification2D<class_SkeletonModification2D>` використовує алгоритм під назвою Forward And Backward Reaching Inverse Kinematics, або FABRIK, для обертання ланцюжка кісток так, щоб він досяг цілі.

FABRIK працює, знаючи положення та довжини серії кісток, яку зазвичай називають «ланцюгом кісток». Спочатку він виконує прохід вперед, який розміщує останню кістку в положенні цілі. Потім усі інші кістки переміщуються до верхівкової кістки, щоб вони залишалися на визначеній відстані від кістки. Потім виконується прохід назад, де корінь/перша кістка в ланцюзі FABRIK повертається до початку координат. Потім усі інші кістки переміщуються, щоб вони залишалися на визначеній відстані від кістки. Це позиціонує ланцюжок кісток таким чином, щоб він досяг цілі, коли це можливо, але всі кістки залишаються на правильній відстані одна від одної.

Завдяки тому, як працює FABRIK, він часто дає більш природні результати, ніж ті, що спостерігаються в :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`.

\ **Примітка:** Модифікатор FABRIK має ``fabrik_joints``, які є об'єктами даних, що містять дані для кожного суглоба в ланцюжку FABRIK. Це відрізняється від вузлів :ref:`Bone2D<class_Bone2D>`! Суглоби FABRIK містять дані, необхідні для кожного :ref:`Bone2D<class_Bone2D>` в ланцюжку кісток, що використовується FABRIK.

Щоб допомогти контролювати рух суглобів FABRIK, можна передати вектор магніту, який може зміщувати кістки в певному напрямку перед розв'язанням, надаючи певний рівень контролю над кінцевим результатом.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`fabrik_data_chain_length<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>` | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DFABRIK_property_target_nodepath>`                   | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone2d_node<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_bone_index<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_magnet_position<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ )       |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_fabrik_joint_use_target_rotation<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **fabrik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_fabrik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_fabrik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fabrik_data_chain_length**\ (\ )

Кількість суглобів FABRIK у модифікації FABRIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DFABRIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Додаток NodePath до вузла, яка є метою для модифікації FABRIK. Цей вузол є те, що мережа FABRIK спробує повернути кістковий ланцюг.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone2d_node>`

Повертає вузол :ref:`Bone2D<class_Bone2D>`, призначений суглобу FABRIK у ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_bone_index>`

Повертає індекс вузла :ref:`Bone2D<class_Bone2D>`, призначеного суглобу FABRIK у ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_magnet_position>`

Повертає вектор положення магніту для суглоба ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DFABRIK_method_get_fabrik_joint_use_target_rotation>`

Повертає, чи з’єднання використовує цільове обертання, а не дозволяє FABRIK обертати з’єднання. Ця опція стосується лише кінчика/кінцевого з’єднання ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone2d_node>`

Встановлює вузол :ref:`Bone2D<class_Bone2D>`, призначений суглобу FABRIK, у ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_fabrik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_bone_index>`

Встановлює індекс кістки, ``bone_idx``, з'єднання FABRIK на ``joint_idx``. Коли це можливо, це також оновить ``bone2d_node`` з'єднання FABRIK на основі даних, наданих зв'язаним скелетом.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position:

.. rst-class:: classref-method

|void| **set_fabrik_joint_magnet_position**\ (\ joint_idx\: :ref:`int<class_int>`, magnet_position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_magnet_position>`

Встановлює вектор магнітного положення для суглоба ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation:

.. rst-class:: classref-method

|void| **set_fabrik_joint_use_target_rotation**\ (\ joint_idx\: :ref:`int<class_int>`, use_target_rotation\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DFABRIK_method_set_fabrik_joint_use_target_rotation>`

Налаштовує, чи буде використовуватися спільний з'єднання ``joint_idx``, а не дозволяючи FABRIK обертати вузол.

\ **Примітка:** Цей варіант працює тільки для наконечника/фінального суглоба в ланцюжку. Для всіх інших вузлів цей варіант буде ігноруватися.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
