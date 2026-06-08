:github_url: hide

.. _class_SkeletonModification2DCCDIK:

SkeletonModification2DCCDIK
===========================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модифікація, яка використовує CCDIK, щоб маніпулювати цикл кісток, щоб досягти мети в 2D.

.. rst-class:: classref-introduction-group

Опис
--------

Ця :ref:`SkeletonModification2D<class_SkeletonModification2D>` використовує алгоритм, який називається Cyclic Координація Dcent Inverse Kinematics, або CCDIK, щоб маніпулювати ланцюг кісток в :ref:`Skeleton2D<class_Skeleton2D>`, так що він досягає певної мети.

CCDIK працює шляхом обертування набору кісток, як правило, називається "бону ланцюг", на одній осі. Кожна кістка обертається, щоб зіткнутися з мішеною з наконечника (за замовчуванням), яка над ланцюжком кісток дозволяє її швидко обертати, щоб досягти мети. Оскільки кістки тільки обертаються на одній осі, CCDIK *can* дивляться більш робототехніку, ніж інші IK розчинники.

\ **Примітка:** У модифікаторі CCDIK ``ccdik_joints``, які є об'єктами даних, які містять дані для кожного суглоба в мережі CCDIK. Це відрізняється від кістки! CCDIK проводить дані, необхідні для кожної кістки в кістковій ланцюжку, що використовується CCDIK.

CCDIK також повністю підтримує обмеження кута, що дозволяє більш контролювати, як розчин відповідає.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`ccdik_data_chain_length<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>` | ``0``            |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DCCDIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`tip_nodepath<class_SkeletonModification2DCCDIK_property_tip_nodepath>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`get_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`get_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone2d_node<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ )        |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_bone_index<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ )                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_invert<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_max<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_constraint_angle_min<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_enable_constraint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_ccdik_joint_rotate_from_joint<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **ccdik_data_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_ccdik_data_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_ccdik_data_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ccdik_data_chain_length**\ (\ )

Кількість суглобів CCDIK в модифікації CCDIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Додаток NodePath до вузла, яка є метою для модифікації CCDIK. Цей вузол є те, що мережа CCDIK спробує повернути кістковий ланцюг.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_property_tip_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **tip_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DCCDIK_property_tip_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_tip_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_tip_node**\ (\ )

Кінцева позиція ланцюга CCDIK. Зазвичай це має бути дитиною :ref:`Bone2D<class_Bone2D>` вузла, прикріпленого до фіналу :ref:`Bone2D<class_Bone2D>` в мережі CCDIK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone2d_node>`

Повертає вузол :ref:`Bone2D<class_Bone2D>`, призначене для з'єднання CCDIK на ``Joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_bone_index>`

Повертає індекс вузла :ref:`Bone2D<class_Bone2D>`, призначеного для з'єднання CCDIK в ``Joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_invert>`

Повертає, чи використовується зв’язок CCDIK на ``joint_idx``. Подивитися :ref:`set_ccdik_joint_constraint_angle_invert()<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>` для деталей.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_max>`

Повертає максимальне кутове обмеження для з'єднання в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_constraint_angle_min>`

Повертає мінімальний кут нахилу для суглоба на ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_enable_constraint>`

Повертаємо, чи ввімкнено кутові обмеження на з’єднання CCDIK при ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DCCDIK_method_get_ccdik_joint_rotate_from_joint>`

Повертає, чи встановлений суглоб на ``joint_idx``, щоб обертати з суглоба, ``true``, або обертати з кінчика, ``false``. За замовчуванням є обертати з кінчика.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone2d_node**\ (\ joint_idx\: :ref:`int<class_int>`, bone2d_nodepath\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone2d_node>`

Налаштовує вузол :ref:`Bone2D<class_Bone2D>`, призначену для суглоба CCDIK на ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index:

.. rst-class:: classref-method

|void| **set_ccdik_joint_bone_index**\ (\ joint_idx\: :ref:`int<class_int>`, bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_bone_index>`

Встановлює кістковий індекс, ``bone_idx``, суглоб CCDIK на ``joint_idx``. Після можливо, це також буде оновлено ``bone2d_node`` з'єднання CCDIK на основі даних, що надаються пов'язаним скелетом.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_invert**\ (\ joint_idx\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_invert>`

Налаштовує, чи використовується спільний вузол CCDIK на ``joint_idx``.

Неперевершений штепсельний концентрат тільки обмежує зв'язок CCDIK до кутів *аутсайд* вводять мінімум і максимальні кути. З цієї причини вона називається інвертованим спільним обмеженням, оскільки вона обмежує суглоб назовні вхідних значень.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_max**\ (\ joint_idx\: :ref:`int<class_int>`, angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_max>`

Встановлює обмеження максимального кута для з'єднання на ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_ccdik_joint_constraint_angle_min**\ (\ joint_idx\: :ref:`int<class_int>`, angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_constraint_angle_min>`

Встановлює мінімальне кутове обмеження для з'єднання в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_enable_constraint**\ (\ joint_idx\: :ref:`int<class_int>`, enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_enable_constraint>`

Визначають, чи увімкнено кутові обмеження на з’єднанні CCDIK при ``joint_idx``. Коли ``true``, обмеження будуть ввімкнено і враховані при вирішенні.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint:

.. rst-class:: classref-method

|void| **set_ccdik_joint_rotate_from_joint**\ (\ joint_idx\: :ref:`int<class_int>`, rotate_from_joint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DCCDIK_method_set_ccdik_joint_rotate_from_joint>`

Налаштовує, чи встановлений суглоб на ``joint_idx``, щоб обертати з суглоба, ``true``, або обертати з кінчика, ``false``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
