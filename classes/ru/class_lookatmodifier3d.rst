:github_url: hide

.. _class_LookAtModifier3D:

LookAtModifier3D
================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**LookAtModifier3D** вращает кость, чтобы смотреть на цель.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` вращает кость, чтобы она смотрела на цель. Это полезно для вращения головы персонажа, чтобы он смотрел на игрока, вращения башни, чтобы она смотрела на цель, или в любом другом случае, когда вы хотите заставить кость вращаться в сторону чего-то быстро и легко.

При применении нескольких **LookAtModifier3D**, **LookAtModifier3D** назначенный родительской кости, должен быть помещен выше **LookAtModifier3D**, назначенного дочерней кости в списке, чтобы результаты дочерней кости были правильными.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Перечисления
------------------------

.. _enum_LookAtModifier3D_OriginFrom:

.. rst-class:: classref-enumeration

enum **OriginFrom**: :ref:`🔗<enum_LookAtModifier3D_OriginFrom>`

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SELF** = ``0``

В качестве исходного положения используется положение покоя кости, указанное в :ref:`bone<class_LookAtModifier3D_property_bone>`.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SPECIFIC_BONE** = ``1``

Глобальная позиция позы кости, указанная в :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`, используется в качестве начала координат.

\ **Примечание:** Рекомендуется выбирать только родительскую кость, если вы не знакомы с процессом обработки костей. Указанная поза кости во время обработки **LookAtModifier3D** используется в качестве ссылки. Другими словами, если вы указываете дочернюю кость, а **LookAtModifier3D** заставляет дочернюю кость двигаться, визуализированный результат и направление не будут совпадать.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_EXTERNAL_NODE** = ``2``

Глобальное положение :ref:`Node3D<class_Node3D>`, указанное в :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>`, используется в качестве начала координат.

\ **Примечание:** То же, что и :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, при указании :ref:`BoneAttachment3D<class_BoneAttachment3D>` с назначенной дочерней костью, визуализированный результат и направление не будут совпадать.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_LookAtModifier3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_LookAtModifier3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Индекс :ref:`bone_name<class_LookAtModifier3D_property_bone_name>` в родительском :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_LookAtModifier3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Имя кости :ref:`Skeleton3D<class_Skeleton3D>`, с которой будет работать модификация.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_duration:

.. rst-class:: classref-property

:ref:`float<class_float>` **duration** = ``0.0`` :ref:`🔗<class_LookAtModifier3D_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_duration**\ (\ )

Длительность интерполяции на основе времени. Интерполяция запускается в следующих случаях:

- При изменении целевого узла

- При перевороте оси из-за ограничения угла

\ **Примечание:** Переворот происходит, когда цель находится за пределами ограничения угла, а внутренне вычисленная вторичная ось вращения прямого вектора переворачивается. Визуально это происходит, когда цель находится за пределами ограничения угла и пересекает плоскость :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>` и :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_ease_type:

.. rst-class:: classref-property

:ref:`EaseType<enum_Tween_EaseType>` **ease_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_ease_type>`

.. rst-class:: classref-property-setget

- |void| **set_ease_type**\ (\ value\: :ref:`EaseType<enum_Tween_EaseType>`\ )
- :ref:`EaseType<enum_Tween_EaseType>` **get_ease_type**\ (\ )

Тип интерполяции на основе времени. См. также :ref:`EaseType<enum_Tween_EaseType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_forward_axis:

.. rst-class:: classref-property

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **forward_axis** = ``4`` :ref:`🔗<class_LookAtModifier3D_property_forward_axis>`

.. rst-class:: classref-property-setget

- |void| **set_forward_axis**\ (\ value\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ )
- :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ )

Передняя ось кости. Этот :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` изменяет кость так, чтобы эта ось указывала на :ref:`target_node<class_LookAtModifier3D_property_target_node>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **origin_bone** :ref:`🔗<class_LookAtModifier3D_property_origin_bone>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_origin_bone**\ (\ )

Индекс :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>` в родительском :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **origin_bone_name** :ref:`🔗<class_LookAtModifier3D_property_origin_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_origin_bone_name**\ (\ )

Если :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` равен :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, то в качестве начала координат используется указанное для него глобальное положение позы кости.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_external_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **origin_external_node** :ref:`🔗<class_LookAtModifier3D_property_origin_external_node>`

.. rst-class:: classref-property-setget

- |void| **set_origin_external_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_origin_external_node**\ (\ )

Если :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` равен :ref:`ORIGIN_FROM_EXTERNAL_NODE<class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE>`, то в качестве начала координат используется указанная для него глобальная позиция :ref:`Node3D<class_Node3D>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_from:

.. rst-class:: classref-property

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **origin_from** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_origin_from>`

.. rst-class:: classref-property-setget

- |void| **set_origin_from**\ (\ value\: :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>`\ )
- :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **get_origin_from**\ (\ )

Это значение определяет, из какого источника извлекается значение для использования при расчете прямого вектора.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_LookAtModifier3D_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Смещение начала позы кости. Сопоставление начала по смещению полезно в случаях, когда несколько костей должны всегда смотреть в одном направлении, например, глаза.

\ **Примечание:** Это значение указывает локальное положение объекта, заданного в :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **origin_safe_margin** = ``0.1`` :ref:`🔗<class_LookAtModifier3D_property_origin_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_origin_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_origin_safe_margin**\ (\ )

Если цель движется слишком близко к началу координат, чем это значение, используется временная интерполяция, даже если цель находится в пределах угловых ограничений, чтобы не допустить слишком высокого значения угловой скорости.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_damp_threshold**\ (\ )

Порог для начала демпфирования для :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`. Он обеспечивает нелинейную (b-сплайн) интерполяцию, позволяя ему чувствовать большее сопротивление, чем больше он вращается к пределу края. Это полезно для моделирования пределов человеческого движения.

Если ``1.0``, демпфирование не выполняется. Если ``0.0``, демпфирование выполняется всегда.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_limit_angle**\ (\ )

Предельный угол основного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``true``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_damp_threshold**\ (\ )

Пороговое значение для начала демпфирования для :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_limit_angle**\ (\ )

Предельный угол отрицательной стороны основного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``false``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_damp_threshold**\ (\ )

Пороговое значение для начала демпфирования для :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_limit_angle**\ (\ )

Предельный угол положительной стороны основного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``false``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_rotation_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **primary_rotation_axis** = ``1`` :ref:`🔗<class_LookAtModifier3D_property_primary_rotation_axis>`

.. rst-class:: classref-property-setget

- |void| **set_primary_rotation_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ )

Ось первого вращения. Этот :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` работает, компонуя вращение по углам Эйлера, чтобы предотвратить вращение :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_relative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relative** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_relative**\ (\ )

Относительная опция. Если ``true``, вращение применяется относительно позы. Если ``false``, вращение применяется относительно всего остального. Это означает замену текущей позы результатом **LookAtModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_damp_threshold**\ (\ )

Пороговое значение для начала демпфирования :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_limit_angle**\ (\ )

Предельный угол вторичного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``true``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_damp_threshold**\ (\ )

Пороговое значение для начала демпфирования :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_limit_angle**\ (\ )

Предельный угол отрицательной стороны вторичного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``false``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_damp_threshold**\ (\ )

Пороговое значение для начала демпфирования для :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_limit_angle**\ (\ )

Предельный угол положительной стороны вторичного вращения, когда :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` равно ``false``, в радианах.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_symmetry_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **symmetry_limitation** :ref:`🔗<class_LookAtModifier3D_property_symmetry_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limitation_symmetry**\ (\ )

Если ``true``, ограничения распространяются от кости симметрично.

Если ``false``, ограничение можно указать отдельно для каждой стороны костной опоры.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_LookAtModifier3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

:ref:`NodePath<class_NodePath>` к узлу, который является целью для модификации look at. Этот узел — то, к чему модификация будет поворачивать кость.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_transition_type:

.. rst-class:: classref-property

:ref:`TransitionType<enum_Tween_TransitionType>` **transition_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_transition_type>`

.. rst-class:: classref-property-setget

- |void| **set_transition_type**\ (\ value\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )
- :ref:`TransitionType<enum_Tween_TransitionType>` **get_transition_type**\ (\ )

Тип перехода временной интерполяции. См. также :ref:`TransitionType<enum_Tween_TransitionType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_angle_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_angle_limitation** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_use_angle_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_use_angle_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_angle_limitation**\ (\ )

Если ``true``, ограничивается величина вращения. Например, это помогает предотвратить вращение шеи персонажа на 360 градусов.

\ **Примечание:** Как и в случае смешивания :ref:`AnimationTree<class_AnimationTree>`, предоставляется интерполяция, которая отдаёт предпочтение :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>`. Это означает, что в некоторых случаях интерполяция не выбирает кратчайший путь.

\ **Примечание:** Некоторые значения :ref:`transition_type<class_LookAtModifier3D_property_transition_type>` (например, :ref:`Tween.TRANS_BACK<class_Tween_constant_TRANS_BACK>`, :ref:`Tween.TRANS_ELASTIC<class_Tween_constant_TRANS_ELASTIC>` и :ref:`Tween.TRANS_SPRING<class_Tween_constant_TRANS_SPRING>`) могут превышать ограничения. Если интерполяция происходит с превышением ограничений, результат может не учитывать опору кости.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_secondary_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_secondary_rotation** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_use_secondary_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_use_secondary_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ )

Если ``true``, обеспечивает вращение по двум осям.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_LookAtModifier3D_method_get_interpolation_remaining:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_interpolation_remaining**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_get_interpolation_remaining>`

Возвращает оставшиеся секунды временной интерполяции.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_interpolating:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_interpolating**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_interpolating>`

Возвращает ``true``, если выполняется интерполяция на основе времени. Если ``true``, это эквивалентно :ref:`get_interpolation_remaining()<class_LookAtModifier3D_method_get_interpolation_remaining>`, возвращающему ``0.0``. 

Это полезно для определения того, можно ли безопасно удалить **LookAtModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_target_within_limitation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_within_limitation**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_target_within_limitation>`

Возвращает, находится ли цель в пределах ограничений угла. Это полезно для отмены установки :ref:`target_node<class_LookAtModifier3D_property_target_node>`, когда цель находится вне ограничений угла.

\ **Примечание:** Значение обновляется после :ref:`SkeletonModifier3D._process_modification()<class_SkeletonModifier3D_private_method__process_modification>`. Для корректного получения этого значения мы рекомендуем использовать сигнал :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
