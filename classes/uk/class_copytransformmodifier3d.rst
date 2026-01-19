:github_url: hide

.. _class_CopyTransformModifier3D:

CopyTransformModifier3D
=======================

**Успадковує:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, який застосовує трансформацію до кістки, скопійованої з посилання.

.. rst-class:: classref-introduction-group

Опис
--------

Застосуйте скопійоване перетворення набору кісток за допомогою методу :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` до набору кісток за допомогою методу :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` з обробкою його деякими масками та опціями.

Існує 4 способи застосування перетворення, залежно від комбінації методів :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` та :ref:`set_additive()<class_CopyTransformModifier3D_method_set_additive>`.

\ **Відносне + Адитивне:**\ 

- Витягніть опорну позу відносно решти та додайте її до пози застосованої кістки.

\ **Відносне + Неадитивне:**\ 

- Витягніть опорну позу відносно решти та додайте її до решти застосованої кістки.

\ **Не відносне + Адитивне:**\ 

- Абсолютно витягніть опорну позу та додайте її до пози застосованої кістки.

\ **Не відносне + Неадитивне:**\ 

- Абсолютно витягніть опорну позу, і поза застосованої кістки замінюється нею.

 **Примітка:** Відносний параметр доступний лише у випадку, якщо :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` має значення :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. Див. також :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_CopyTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
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
   | |void|                                                                         | :ref:`set_invert_flags<class_CopyTransformModifier3D_method_set_invert_flags>`\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ )       |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                         | :ref:`set_relative<class_CopyTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                               |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CopyTransformModifier3D_TransformFlag:

.. rst-class:: classref-enumeration

flags **TransformFlag**: :ref:`🔗<enum_CopyTransformModifier3D_TransformFlag>`

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_POSITION** = ``1``

Якщо встановлено, дозволяє копіювати позицію.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ROTATION** = ``2``

Якщо встановлено, дозволяє копіювати обертання.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_SCALE** = ``4``

Якщо встановлено, дозволяє копіювати масштаб.

.. _class_CopyTransformModifier3D_constant_TRANSFORM_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>` **TRANSFORM_FLAG_ALL** = ``7``

Якщо встановлено, дозволяє копіювати положення/обертання/масштаб.

.. rst-class:: classref-item-separator

----

.. _enum_CopyTransformModifier3D_AxisFlag:

.. rst-class:: classref-enumeration

flags **AxisFlag**: :ref:`🔗<enum_CopyTransformModifier3D_AxisFlag>`

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_X:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_X** = ``1``

Якщо встановлено, дозволяє обробляти вісь X.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Y:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Y** = ``2``

Якщо встановлено, дозволяє обробляти вісь Y.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_Z:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_Z** = ``4``

Якщо встановлено, дозволяє обробляти вісь Z.

.. _class_CopyTransformModifier3D_constant_AXIS_FLAG_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>` **AXIS_FLAG_ALL** = ``7``

Якщо встановлено, дозволяє обробку всіх осей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CopyTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_CopyTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Кількість налаштувань у модифікаторі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CopyTransformModifier3D_method_get_axis_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_axis_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_axis_flags>`

Повертає прапорці осі налаштування в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_copy_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\] **get_copy_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_copy_flags>`

Повертає прапорці копіювання налаштування за адресою ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_get_invert_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\] **get_invert_flags**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_get_invert_flags>`

Повертає прапорці інвертування налаштування за адресою ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_additive>`

Повертає ``true``, якщо опція адитивного параметра ввімкнена в налаштуванні ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_enabled>`

Повертає ``true``, якщо прапорці ввімкнення мають прапорець для осі X у налаштуванні ``index``. Див. також :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_x_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_x_inverted>`

Повертає ``true``, якщо прапорці інвертування мають прапорець для осі X у налаштуванні ``index``. Див. також :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_enabled>`

Повертає ``true``, якщо прапорці ввімкнення мають прапорець для осі Y у налаштуванні ``index``. Див. також :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_y_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_y_inverted>`

Повертає ``true``, якщо прапорці інвертування мають прапорець для осі Y у налаштуванні ``index``. Див. також :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_enabled>`

Повертає ``true``, якщо прапорці ввімкнення мають прапорець для осі Z у налаштуванні ``index``. Див. також :ref:`set_axis_flags()<class_CopyTransformModifier3D_method_set_axis_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_axis_z_inverted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_axis_z_inverted>`

Повертає ``true``, якщо прапорці інвертування мають прапорець для осі Z у налаштуванні ``index``. Див. також :ref:`set_invert_flags()<class_CopyTransformModifier3D_method_set_invert_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_position_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_position_copying>`

Повертає ``true``, якщо прапорці копіювання мають прапорець для позиції в налаштуванні за адресою ``index``. Див. також :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_relative>`

Повертає ``true``, якщо відносний параметр увімкнено в налаштуванні ``index``.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_rotation_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_rotation_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_rotation_copying>`

Повертає ``true``, якщо прапорці копіювання мають прапорець для обертання в налаштуванні ``index``. Див. також :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_is_scale_copying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_copying**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CopyTransformModifier3D_method_is_scale_copying>`

Повертає ``true``, якщо прапорці копіювання мають прапорець для масштабу в налаштуванні ``index``. Див. також :ref:`set_copy_flags()<class_CopyTransformModifier3D_method_set_copy_flags>`.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_additive>`

Встановлює опцію адитивного перетворення в налаштуванні ``index`` на ``enabled``. Це головним чином впливає на процес застосування перетворення до :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

Якщо встановити ``enabled`` на ``true``, оброблене перетворення додається до пози поточної застосованої кістки.

Якщо встановити ``enabled`` на ``false``, поза поточної застосованої кістки замінюється обробленим перетворенням. Однак, якщо встановити :ref:`set_relative()<class_CopyTransformModifier3D_method_set_relative>` на ``true``, перетворення здійснюється відносно до спокою.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_flags:

.. rst-class:: classref-method

|void| **set_axis_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_flags>`

Встановлює прапорці для копіювання осей. Якщо прапорець дійсний, вісь копіюється.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_enabled:

.. rst-class:: classref-method

|void| **set_axis_x_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_enabled>`

Якщо встановити ``enabled`` на ``true``, вісь X буде скопійована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_x_inverted:

.. rst-class:: classref-method

|void| **set_axis_x_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_x_inverted>`

Якщо встановити ``enabled`` на ``true``, вісь X буде інвертована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_enabled:

.. rst-class:: classref-method

|void| **set_axis_y_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_enabled>`

Якщо встановити ``enabled`` на ``true``, вісь Y буде скопійована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_y_inverted:

.. rst-class:: classref-method

|void| **set_axis_y_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_y_inverted>`

Якщо встановити ``enabled`` на ``true``, вісь Y буде інвертована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_enabled:

.. rst-class:: classref-method

|void| **set_axis_z_enabled**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_enabled>`

Якщо встановити ``enabled`` на ``true``, вісь Z буде скопійована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_axis_z_inverted:

.. rst-class:: classref-method

|void| **set_axis_z_inverted**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_axis_z_inverted>`

Якщо встановити ``enabled`` на ``true``, вісь Z буде інвертована.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_flags:

.. rst-class:: classref-method

|void| **set_copy_flags**\ (\ index\: :ref:`int<class_int>`, copy_flags\: |bitfield|\[:ref:`TransformFlag<enum_CopyTransformModifier3D_TransformFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_flags>`

Встановлює прапорці для обробки операцій перетворення. Якщо прапорець дійсний, операція перетворення обробляється.

\ **Примітка:** Якщо обертання дійсне лише для однієї осі, воно враховує кут дійсної осі. Якщо обертання дійсне для двох осей, воно відкидає кут недійсної осі.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_position:

.. rst-class:: classref-method

|void| **set_copy_position**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_position>`

Якщо встановити ``enabled`` на ``true``, позицію буде скопійовано.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_rotation:

.. rst-class:: classref-method

|void| **set_copy_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_rotation>`

Якщо встановити ``enabled`` на ``true``, обертання буде скопійовано.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_copy_scale:

.. rst-class:: classref-method

|void| **set_copy_scale**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_copy_scale>`

Якщо встановити ``enabled`` на ``true``, масштаб буде скопійовано.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_invert_flags:

.. rst-class:: classref-method

|void| **set_invert_flags**\ (\ index\: :ref:`int<class_int>`, axis_flags\: |bitfield|\[:ref:`AxisFlag<enum_CopyTransformModifier3D_AxisFlag>`\]\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_invert_flags>`

Встановлює прапорці для інвертування осей. Якщо прапорець дійсний, вісь копіюється.

\ **Примітка:** Інвертований масштаб означає обернене число, а не від'ємний масштаб. Наприклад, інвертування ``2.0`` означає ``0.5``.

\ **Примітка:** Інвертований поворот перевертає елементи кватерніона. Наприклад, двоосьова інверсія перевертає кут нахилу кожної осі, а триосьова інверсія перевертає кінцеву орієнтацію. Однак майте на увазі, що перевертання лише однієї осі може спричинити ненавмисне обертання неперевернутими осями через характеристики кватерніона.

.. rst-class:: classref-item-separator

----

.. _class_CopyTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CopyTransformModifier3D_method_set_relative>`

Встановлює відносний параметр у налаштуванні ``index`` на ``enabled``.

Якщо встановити ``enabled`` на ``true``, витягнуте та застосоване перетворення є відносним до решти.

Якщо встановити ``enabled`` на ``false``, витягнуте перетворення є абсолютним.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
