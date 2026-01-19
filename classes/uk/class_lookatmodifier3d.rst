:github_url: hide

.. _class_LookAtModifier3D:

LookAtModifier3D
================

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**LookAtModifier3D** повертає кістку, щоб дивитися на ціль.

.. rst-class:: classref-introduction-group

Опис
--------

Цей :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` повертає кістку, щоб дивитися на ціль. Це корисно для руху голови персонажа, щоб дивитися на гравця, обертання вежі, щоб дивитися на ціль, або в будь-якому іншому випадку, коли ви хочете швидко й легко повернути кістку до чогось. 

У разі застосування кількох **LookAtModifier3D**, **LookAtModifier3D**, призначений батьківській кістці, має бути розміщений у списку над **LookAtModifier3D**, призначеним дочірній кістці, щоб результати для дочірньої кістки були правильними.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`bone<class_LookAtModifier3D_property_bone>`                                                           | ``-1``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`bone_name<class_LookAtModifier3D_property_bone_name>`                                                 | ``""``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`duration<class_LookAtModifier3D_property_duration>`                                                   | ``0.0``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`EaseType<enum_Tween_EaseType>`                | :ref:`ease_type<class_LookAtModifier3D_property_ease_type>`                                                 | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`   | :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`                                           | ``4``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`                                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>`                                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>`                           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` | :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`                                             | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`origin_offset<class_LookAtModifier3D_property_origin_offset>`                                         | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`origin_safe_margin<class_LookAtModifier3D_property_origin_safe_margin>`                               | ``0.1``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_damp_threshold<class_LookAtModifier3D_property_primary_damp_threshold>`                       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_damp_threshold<class_LookAtModifier3D_property_primary_negative_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_damp_threshold<class_LookAtModifier3D_property_primary_positive_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                      | :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`                         | ``1``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`relative<class_LookAtModifier3D_property_relative>`                                                   | ``true``             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_damp_threshold<class_LookAtModifier3D_property_secondary_damp_threshold>`                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`                         |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_damp_threshold<class_LookAtModifier3D_property_secondary_negative_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_damp_threshold<class_LookAtModifier3D_property_secondary_positive_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`target_node<class_LookAtModifier3D_property_target_node>`                                             | ``NodePath("")``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`TransitionType<enum_Tween_TransitionType>`    | :ref:`transition_type<class_LookAtModifier3D_property_transition_type>`                                     | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_angle_limitation<class_LookAtModifier3D_property_use_angle_limitation>`                           | ``false``            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_secondary_rotation<class_LookAtModifier3D_property_use_secondary_rotation>`                       | ``true``             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_interpolation_remaining<class_LookAtModifier3D_method_get_interpolation_remaining>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_interpolating<class_LookAtModifier3D_method_is_interpolating>`\ (\ ) |const|                       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_target_within_limitation<class_LookAtModifier3D_method_is_target_within_limitation>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_LookAtModifier3D_OriginFrom:

.. rst-class:: classref-enumeration

enum **OriginFrom**: :ref:`🔗<enum_LookAtModifier3D_OriginFrom>`

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SELF** = ``0``

Позиція спокою кістки, указана в :ref:`bone<class_LookAtModifier3D_property_bone>`, використовується як вихідна точка.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SPECIFIC_BONE** = ``1``

Глобальне положення позиції кістки, указане в :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`, використовується як джерело. 

\ **Примітка:** Рекомендується вибирати лише вихідну кістку, якщо ви не знайомі з процесом обробки кістки. Зазначена поза кістки під час обробки **LookAtModifier3D** використовується як еталон. Іншими словами, якщо ви вкажете дочірню кістку, а **LookAtModifier3D** змушує дочірню кістку рухатися, відтворений результат і напрямок не збігатимуться.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_EXTERNAL_NODE** = ``2``

Глобальна позиція :ref:`Node3D<class_Node3D>`, указана в :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>`, використовується як джерело. 

\ **Примітка:** Так само, як :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, якщо вказати :ref:`BoneAttachment3D<class_BoneAttachment3D>` із призначеною дочірньою кісткою, відтворений результат і напрямок не збігатимуться.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_LookAtModifier3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_LookAtModifier3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Індекс :ref:`bone_name<class_LookAtModifier3D_property_bone_name>` у батьківському :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_LookAtModifier3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Назва кістки :ref:`Skeleton3D<class_Skeleton3D>`, на якій працюватиме модифікація.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_duration:

.. rst-class:: classref-property

:ref:`float<class_float>` **duration** = ``0.0`` :ref:`🔗<class_LookAtModifier3D_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_duration**\ (\ )

Тривалість інтерполяції на основі часу. Інтерполяція запускається в таких випадках: 

- Коли цільовий вузол змінено 

- Коли вісь перевернуто через обмеження кута 

\ **Примітка.** Переворот відбувається, коли ціль знаходиться за межами обмеження кута, а внутрішньо обчислена вторинна вісь обертання вектора вперед перевертається. Візуально це відбувається, коли ціль знаходиться за межами обмеження кута та перетинає площину :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>` і :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_ease_type:

.. rst-class:: classref-property

:ref:`EaseType<enum_Tween_EaseType>` **ease_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_ease_type>`

.. rst-class:: classref-property-setget

- |void| **set_ease_type**\ (\ value\: :ref:`EaseType<enum_Tween_EaseType>`\ )
- :ref:`EaseType<enum_Tween_EaseType>` **get_ease_type**\ (\ )

Тип простоти інтерполяції на основі часу. Дивіться також :ref:`EaseType<enum_Tween_EaseType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_forward_axis:

.. rst-class:: classref-property

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **forward_axis** = ``4`` :ref:`🔗<class_LookAtModifier3D_property_forward_axis>`

.. rst-class:: classref-property-setget

- |void| **set_forward_axis**\ (\ value\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ )
- :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ )

Передня вісь кістки. Цей :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` модифікує кістку так, щоб ця вісь вказувала на :ref:`target_node<class_LookAtModifier3D_property_target_node>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **origin_bone** :ref:`🔗<class_LookAtModifier3D_property_origin_bone>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_origin_bone**\ (\ )

Індекс :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>` у батьківському :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **origin_bone_name** :ref:`🔗<class_LookAtModifier3D_property_origin_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_origin_bone_name**\ (\ )

Якщо :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` дорівнює :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, загальна позиція кістки, указана для цього, використовується як джерело.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_external_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **origin_external_node** :ref:`🔗<class_LookAtModifier3D_property_origin_external_node>`

.. rst-class:: classref-property-setget

- |void| **set_origin_external_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_origin_external_node**\ (\ )

Якщо :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` є :ref:`ORIGIN_FROM_EXTERNAL_NODE<class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE>`, глобальна позиція :ref:`Node3D<class_Node3D>`, указана для цього, використовується як джерело.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_from:

.. rst-class:: classref-property

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **origin_from** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_origin_from>`

.. rst-class:: classref-property-setget

- |void| **set_origin_from**\ (\ value\: :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>`\ )
- :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **get_origin_from**\ (\ )

Це значення визначає, з якого джерела буде отримано для використання в обчисленні прямого вектора.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_LookAtModifier3D_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Зсув походження пози кістки. Зіставлення початків за зсувом корисно у випадках, коли кілька кісток завжди мають бути спрямовані в одному напрямку, наприклад очі. 

\ **Примітка:** це значення вказує на локальне положення об’єкта, встановленого в :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **origin_safe_margin** = ``0.1`` :ref:`🔗<class_LookAtModifier3D_property_origin_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_origin_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_origin_safe_margin**\ (\ )

Якщо ціль проходить занадто близько до початку координат, ніж це значення, використовується інтерполяція на основі часу, навіть якщо ціль знаходиться в межах кутових обмежень, щоб запобігти тому, щоб кутова швидкість стала занадто високою.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_damp_threshold**\ (\ )

Порогове значення для початку демпфування для :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`. Він забезпечує нелінійну (b-сплайн) інтерполяцію, нехай він відчуває більший опір, чим більше він повертається до межі краю. Це корисно для імітації обмежень руху людини. 

Якщо ``1.0``, демпфування не виконується. Якщо ``0.0``, демпфування виконується завжди.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_limit_angle**\ (\ )

Граничний кут основного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` має значення ``true``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_damp_threshold**\ (\ )

Поріг для початку демпфування для :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_limit_angle**\ (\ )

Граничний кут від'ємної сторони основного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` дорівнює ``false``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_damp_threshold**\ (\ )

Поріг для початку демпфування для :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_limit_angle**\ (\ )

Граничний кут позитивної сторони первинного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` дорівнює ``false``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_rotation_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **primary_rotation_axis** = ``1`` :ref:`🔗<class_LookAtModifier3D_property_primary_rotation_axis>`

.. rst-class:: classref-property-setget

- |void| **set_primary_rotation_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ )

Вісь першого повороту. Цей :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` працює, об’єднуючи обертання за кутами Ейлера, щоб запобігти обертанню :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_relative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relative** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_relative**\ (\ )

Відносний параметр. Якщо ``true``, обертання застосовується відносно пози. Якщо ``false``, обертання застосовується відносно решти. Це означає заміну поточної пози результатом **LookAtModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_damp_threshold**\ (\ )

Порогове значення для початку демпфування для :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_limit_angle**\ (\ )

Граничний кут вторинного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` має значення ``true``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_damp_threshold**\ (\ )

Порогове значення для початку демпфування для :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_limit_angle**\ (\ )

Граничний кут від'ємної сторони вторинного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` дорівнює ``false``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_damp_threshold**\ (\ )

Порогове значення для початку демпфування для :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_limit_angle**\ (\ )

Граничний кут позитивної сторони вторинного обертання, коли :ref:`symmetry_limition<class_LookAtModifier3D_property_symmetry_limition>` дорівнює ``false``, у радіанах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_symmetry_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **symmetry_limitation** :ref:`🔗<class_LookAtModifier3D_property_symmetry_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limitation_symmetry**\ (\ )

Якщо ``true``, обмеження поширюються від кістки симетрично.

Якщо ``false``, обмеження можна вказати окремо для кожної сторони опори для кістки.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_LookAtModifier3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

:ref:`NodePath<class_NodePath>` до вузла, який є метою перегляду модифікації. Цей вузол є тим, до чого модифікація повертатиме кістку.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_transition_type:

.. rst-class:: classref-property

:ref:`TransitionType<enum_Tween_TransitionType>` **transition_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_transition_type>`

.. rst-class:: classref-property-setget

- |void| **set_transition_type**\ (\ value\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )
- :ref:`TransitionType<enum_Tween_TransitionType>` **get_transition_type**\ (\ )

Тип переходу інтерполяції на основі часу. Дивіться також :ref:`TransitionType<enum_Tween_TransitionType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_angle_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_angle_limitation** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_use_angle_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_use_angle_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_angle_limitation**\ (\ )

Якщо ``true``, обмежує величину обертання. Наприклад, це допомагає запобігти обертанню шиї персонажа на 360 градусів.

\ **Примітка:** Як і у випадку зі змішуванням :ref:`AnimationTree<class_AnimationTree>`, передбачено інтерполяцію, яка надає перевагу :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>`. Це означає, що інтерполяція в деяких випадках не вибирає найкоротший шлях.

\ **Примітка:** Деякі значення для :ref:`transition_type<class_LookAtModifier3D_property_transition_type>` (такі як :ref:`Tween.TRANS_BACK<class_Tween_constant_TRANS_BACK>`, :ref:`Tween.TRANS_ELASTIC<class_Tween_constant_TRANS_ELASTIC>` та :ref:`Tween.TRANS_SPRING<class_Tween_constant_TRANS_SPRING>`) можуть перевищувати обмеження. Якщо інтерполяція відбувається з перевищенням обмежень, результат може не враховувати залишок кістки.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_secondary_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_secondary_rotation** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_use_secondary_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_use_secondary_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ )

Якщо ``true``, забезпечує обертання за двома осями.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_LookAtModifier3D_method_get_interpolation_remaining:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_interpolation_remaining**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_get_interpolation_remaining>`

Повертає решту секунд інтерполяції на основі часу.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_interpolating:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_interpolating**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_interpolating>`

Повертає ``true``, якщо виконується інтерполяція на основі часу. Якщо ``true``, це еквівалентно тому, як :ref:`get_interpolation_remaining()<class_LookAtModifier3D_method_get_interpolation_remaining>` повертає ``0.0``.

Це корисно для визначення, чи можна безпечно видалити **LookAtModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_target_within_limitation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_within_limitation**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_target_within_limitation>`

Повертає, чи знаходиться ціль у межах кутових обмежень. Це корисно для скасування :ref:`target_node<class_LookAtModifier3D_property_target_node>`, коли ціль знаходиться за межами кутових обмежень. 

\ **Примітка:** значення оновлюється після :ref:`SkeletonModifier3D._process_modification()<class_SkeletonModifier3D_private_method__process_modification>`. Щоб правильно отримати це значення, ми рекомендуємо використовувати сигнал :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
