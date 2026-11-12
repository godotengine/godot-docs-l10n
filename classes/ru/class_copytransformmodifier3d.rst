:github_url: hide

.. _class_CopyTransformModifier3D:

CopyTransformModifier3D
=======================

**Наследует:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, который применяет преобразование к кости, скопированной из ссылки.

.. rst-class:: classref-introduction-group

Описание
----------------

Apply the copied transform of the bone set by :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` to the bone set by :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` with processing it with some masks and options.

There are 4 ways to apply the transform, depending on the combination of :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` and :ref:`set_additive()<class_CopyTransformModifier3D_method_set_additive>`.

\ **Relative + Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's pose.

\ **Relative + Not Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's rest.

\ **Not Relative + Additive:**\ 

- Extract reference pose absolutely and add it to the apply bone's pose.

\ **Not Relative + Not Additive:**\ 

- Extract reference pose absolutely and the apply bone's pose is replaced with it.

\ **Note:** The relative and global options are only available when :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` is :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_CopyTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_axis_flags<class_CopyTransformModifier3D_method_get_axis_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] | :ref:`get_copy_flags<class_CopyTransformModifier3D_method_get_copy_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]           | :ref:`get_invert_flags<class_CopyTransformModifier3D_method_get_invert_flags>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_additive<class_CopyTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_enabled<class_CopyTransformModifier3D_method_is_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_x_inverted<class_CopyTransformModifier3D_method_is_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_enabled<class_CopyTransformModifier3D_method_is_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_y_inverted<class_CopyTransformModifier3D_method_is_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_enabled<class_CopyTransformModifier3D_method_is_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_axis_z_inverted<class_CopyTransformModifier3D_method_is_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_global<class_CopyTransformModifier3D_method_is_global>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_position_copying<class_CopyTransformModifier3D_method_is_position_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_relative<class_CopyTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_rotation_copying<class_CopyTransformModifier3D_method_is_rotation_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`is_scale_copying<class_CopyTransformModifier3D_method_is_scale_copying>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_additive<class_CopyTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_flags<class_CopyTransformModifier3D_method_set_axis_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_enabled<class_CopyTransformModifier3D_method_set_axis_x_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_x_inverted<class_CopyTransformModifier3D_method_set_axis_x_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_enabled<class_CopyTransformModifier3D_method_set_axis_y_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_y_inverted<class_CopyTransformModifier3D_method_set_axis_y_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_enabled<class_CopyTransformModifier3D_method_set_axis_z_enabled>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_axis_z_inverted<class_CopyTransformModifier3D_method_set_axis_z_inverted>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                 |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_flags<class_CopyTransformModifier3D_method_set_copy_flags>`\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_position<class_CopyTransformModifier3D_method_set_copy_position>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_rotation<class_CopyTransformModifier3D_method_set_copy_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                     |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_copy_scale<class_CopyTransformModifier3D_method_set_copy_scale>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_global<class_CopyTransformModifier3D_method_set_global>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                   |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_invert_flags<class_CopyTransformModifier3D_method_set_invert_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )       |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_relative<class_CopyTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CopyTransformModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_CopyTransformModifier3D_TransformFlag>`

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Если установлено, позволяет копировать позицию.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Если установлено, позволяет копировать поворот.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Если установлено, позволяет копировать масштаб.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Если установлено, позволяет копировать положение/поворот/масштаб.

.. rst-class:: classref-item-separator

----

.. _enum_CopyTransformModifier3D_AxisFlag:

.. rst-class:: classref-enumeration

flags **AxisFlag**: :ref:`🔗<enum_CopyTransformModifier3D_AxisFlag>`

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_X:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_X** = ``1``

Если установлено, позволяет обрабатывать ось X.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Y:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Y** = ``2``

Если установлено, позволяет обрабатывать ось Y.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Z:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Z** = ``4``

Если установлено, позволяет обрабатывать ось Z.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_ALL** = ``7``

Если установлено, позволяет обрабатывать все оси.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CopyTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_CopyTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Количество настроек в модификаторе.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CopyTransformModifier3D_method_get_axis_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_axis_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_axis_flags>`

Возвращает флаги оси настройки ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_copy_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] **get_copy_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_copy_flags>`

Возвращает флаги копирования настройки ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_invert_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_invert_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_invert_flags>`

Возвращает инвертированные флаги настройки в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_additive>`

Возвращает ``true``, если в настройке ``index`` включена опция добавления.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_enabled>`

Возвращает ``true``, если флаги включения имеют флаг для оси X в настройке в ``index``. См. также :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_inverted>`

Возвращает ``true``, если флаги инвертирования имеют флаг для оси X в настройке в ``index``. См. также :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_enabled>`

Возвращает ``true``, если флаги включения имеют флаг для оси Y в настройке в ``index``. См. также :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_inverted>`

Возвращает ``true``, если флаги инвертирования имеют флаг для оси Y в настройке в ``index``. См. также :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_enabled>`

Возвращает ``true``, если флаги включения имеют флаг для оси Z в настройке в ``index``. См. также :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_inverted>`

Возвращает ``true``, если флаги инвертирования имеют флаг для оси Z в настройке в ``index``. См. также :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_global:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_global**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_global>`

Returns ``true`` if the global option is enabled in the setting at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_position_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_position_copying>`

Возвращает ``true``, если флаги копирования имеют флаг для позиции в настройке в ``index``. См. также :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_relative>`

Возвращает ``true``, если относительная опция включена в настройке в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_rotation_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_rotation_copying>`

Возвращает ``true``, если флаги копирования имеют флаг для поворота в настройке в ``index``. См. также :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_scale_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_scale_copying>`

Возвращает ``true``, если флаги копирования имеют флаг для масштаба в настройке в ``index``. См. также :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_additive>`

Sets additive option in the setting at ``index`` to ``enabled``. This mainly affects the process of applying transform to the :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

If ``enabled`` is ``true``, the processed transform is added to the pose of the current apply bone.

If ``enabled`` is ``false``, the pose of the current apply bone is replaced with the processed transform. However, if set :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` to ``true``, the transform is relative to rest.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_flags:

.. rst-class:: classref-method

|void| **set_axis_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_flags>`

Устанавливает флаги для копирования осей. Если флаг действителен, ось копируется.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_enabled:

.. rst-class:: classref-method

|void| **set_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_enabled>`

If ``enabled`` is ``true``, the X-axis will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_inverted:

.. rst-class:: classref-method

|void| **set_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_inverted>`

If ``enabled`` is ``true``, the X-axis will be inverted.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_enabled:

.. rst-class:: classref-method

|void| **set_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_enabled>`

If ``enabled`` is ``true``, the Y-axis will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_inverted:

.. rst-class:: classref-method

|void| **set_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_inverted>`

If ``enabled`` is ``true``, the Y-axis will be inverted.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_enabled:

.. rst-class:: classref-method

|void| **set_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_enabled>`

If ``enabled`` is ``true``, the Z-axis will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_inverted:

.. rst-class:: classref-method

|void| **set_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_inverted>`

If ``enabled`` is ``true``, the Z-axis will be inverted.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_flags:

.. rst-class:: classref-method

|void| **set_copy_flags**\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_flags>`

Устанавливает флаги для обработки операций преобразования. Если флаг действителен, операция преобразования обрабатывается.

\ **Примечание:** Если вращение допустимо только для одной оси, он учитывает крен допустимой оси. Если вращение допустимо для двух осей, он отменяет крен недопустимой оси.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_position:

.. rst-class:: classref-method

|void| **set_copy_position**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_position>`

If ``enabled`` is ``true``, the position will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_rotation:

.. rst-class:: classref-method

|void| **set_copy_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_rotation>`

If ``enabled`` is ``true``, the rotation will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_scale:

.. rst-class:: classref-method

|void| **set_copy_scale**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_scale>`

If ``enabled`` is ``true``, the scale will be copied.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_global:

.. rst-class:: classref-method

|void| **set_global**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_global>`

Sets the global option in the setting at ``index`` to ``enabled``.

If ``enabled`` is ``true``, the global pose of the reference bone is extracted and applied so that the global pose of the apply bone coincides with it.

If ``enabled`` is ``false``, the local pose of the reference bone is extracted and applied to the local pose of the apply bone.

\ **Note:** If the parent of the reference bone has a non-uniform scale, the reference bone is sheared as seen from global space. Since the local pose cannot bring in the shear, the scale may not be applied as intended.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_invert_flags:

.. rst-class:: classref-method

|void| **set_invert_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_invert_flags>`

Устанавливает флаги для инвертирования осей. Если флаг действителен, ось копируется.

\ **Примечание:** Инвертированный масштаб означает обратное число, а не отрицательный масштаб. Например, инвертирование ``2.0`` означает ``0.5``.

\ **Примечание:** Инвертированное вращение переворачивает элементы кватерниона. Например, инверсия по двум осям перевернет крен каждой оси, а инверсия по трем осям перевернет конечную ориентацию. Однако следует помнить, что переворот только одной оси может вызвать непреднамеренное вращение неперевернутых осей из-за характеристик кватерниона.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_relative>`

Sets relative option in the setting at ``index`` to ``enabled``.

If ``enabled`` is ``true``, the extracted and applying transform is relative to the rest.

If ``enabled`` is ``false``, the extracted transform is absolute.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
