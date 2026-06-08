:github_url: hide

.. _class_BoneTwistDisperser3D:

BoneTwistDisperser3D
====================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который распространяет и распределяет скручивание дочерней кости на родительские кости.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс **BoneTwistDisperser3D** обеспечивает плавную интерполяцию скручивания между несколькими костями, распределяя скручивание конечной кости по родительским. При этом изменяется только скручивание, без изменения глобальной позиции каждого сустава.

Это полезно для плавного скручивания костей в сочетании с :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>` и IK.

\ **Примечание:** Если извлечённое скручивание превышает 180 градусов, происходит переворот. Это поведение аналогично :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`.

\ **Примечание:** Большинство методов этого класса принимают параметр ``index``. Он указывает, какую запись из списка настроек следует возвращать, если IK содержит несколько записей (например, ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_BoneTwistDisperser3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`setting_count<class_BoneTwistDisperser3D_property_setting_count>`         | ``0``    |
   +-------------------------+---------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_settings<class_BoneTwistDisperser3D_method_clear_settings>`\ (\ )                                                                                                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_damping_curve<class_BoneTwistDisperser3D_method_get_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` | :ref:`get_disperse_mode<class_BoneTwistDisperser3D_method_get_disperse_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_BoneTwistDisperser3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_BoneTwistDisperser3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_BoneTwistDisperser3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_BoneTwistDisperser3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_BoneTwistDisperser3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_BoneTwistDisperser3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_twist_amount<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_reference_bone<class_BoneTwistDisperser3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_reference_bone_name<class_BoneTwistDisperser3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_BoneTwistDisperser3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_BoneTwistDisperser3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                         | :ref:`get_twist_from<class_BoneTwistDisperser3D_method_get_twist_from>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_weight_position<class_BoneTwistDisperser3D_method_get_weight_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_twist_from_rest<class_BoneTwistDisperser3D_method_is_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_damping_curve<class_BoneTwistDisperser3D_method_set_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_disperse_mode<class_BoneTwistDisperser3D_method_set_disperse_mode>`\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ )            |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_BoneTwistDisperser3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_BoneTwistDisperser3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_BoneTwistDisperser3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_BoneTwistDisperser3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_twist_amount<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ )      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_BoneTwistDisperser3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_BoneTwistDisperser3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from<class_BoneTwistDisperser3D_method_set_twist_from>`\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ )                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from_rest<class_BoneTwistDisperser3D_method_set_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_weight_position<class_BoneTwistDisperser3D_method_set_weight_position>`\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ )                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_BoneTwistDisperser3D_DisperseMode:

.. rst-class:: classref-enumeration

enum **DisperseMode**: :ref:`🔗<enum_BoneTwistDisperser3D_DisperseMode>`

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_EVEN:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_EVEN** = ``0``

Назначьте значения таким образом, чтобы они монотонно возрастали от ``0.0`` до ``1.0``, обеспечивая при этом равенство всех весов. Например, для пяти суставов значения будут ``0.2``, ``0.4``, ``0.6``, ``0.8`` и ``1.0``, начиная с корневой кости.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_WEIGHTED** = ``1``

Назначьте значения таким образом, чтобы они монотонно возрастали от ``0.0`` до ``1.0`` в зависимости от длины костей между суставными сегментами. См. также :ref:`set_weight_position()<class_BoneTwistDisperser3D_method_set_weight_position>`.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_CUSTOM** = ``2``

Вы можете присваивать произвольные значения списку суставов. См. также :ref:`set_joint_twist_amount()<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`.

Когда :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` имеет значение ``false``, дочерний элемент опорной кости существует исключительно для определения оси скручивания, поэтому его пользовательское значение абсолютно никак не влияет на результат.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_BoneTwistDisperser3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_BoneTwistDisperser3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

Если ``true``, решатель извлекает ось кости из положения кости каждый кадр.

Если ``false``, решатель извлекает ось кости из положения кости и кэширует её.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_BoneTwistDisperser3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Количество настроек.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_BoneTwistDisperser3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_clear_settings>`

Очищает все настройки.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_damping_curve>`

Возвращает кривую затухания, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` равен :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_disperse_mode:

.. rst-class:: classref-method

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **get_disperse_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_disperse_mode>`

Возвращает значение, указывающее, следует ли использовать автоматическое присвоение суммы или разрешить ручное присвоение.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone>`

Возвращает индекс конечной кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_direction>`

Возвращает направление хвоста конечной кости цепочки костей, когда :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_name>`

Возвращает имя конечной кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone>`

Возвращает индекс кости в ``joint`` в списке суставов цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone_name>`

Возвращает имя кости в ``joint`` в списке суставов цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_count>`

Возвращает количество суставов в списке суставов цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_twist_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`

Возвращает величину скручивания в ``joint`` в списке суставов цепочки костей, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` имеет значение :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone>`

Возвращает опорную кость для извлечения скручивания в настройке по адресу ``index``.

Эта кость является либо концом цепочки, либо ее родительской, в зависимости от :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone_name>`

Возвращает имя опорной кости для извлечения значения скручивания в настройке по адресу ``index``.

Эта кость является либо концом цепочки, либо ее родительской костью, в зависимости от :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone>`

Возвращает индекс корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone_name>`

Возвращает имя корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_twist_from:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_twist_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_twist_from>`

Возвращает вращение в произвольное состояние перед поворотом для текущей позы кости, чтобы извлечь поворот, когда :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` имеет значение ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_weight_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_weight_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_weight_position>`

Возвращает позицию, в которой следует разделить сегмент между суставами для присвоения весов, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` равен :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_end_bone_extended>`

Возвращает ``true``, если конечная кость удлинена и имеет хвост.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_twist_from_rest:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_twist_from_rest**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_twist_from_rest>`

Возвращает ``true``, если величина скручивания вычисляется как разница между состоянием покоя кости и текущим положением кости.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_damping_curve:

.. rst-class:: classref-method

|void| **set_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_damping_curve>`

Устанавливает кривую затухания, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` имеет значение :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_disperse_mode:

.. rst-class:: classref-method

|void| **set_disperse_mode**\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_disperse_mode>`

Определяет, следует ли использовать автоматическое присвоение сумм или разрешить ручное присвоение.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone>`

Устанавливает индекс конечной кости в костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_direction>`

Устанавливает направление хвоста конечной кости цепочки костей, когда :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_name>`

Задает имя конечной кости цепочки костей.

\ **Примечание:** Конечная кость должна быть дочерней по отношению к корневой кости.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_extend_end_bone>`

Если ``enabled`` равно ``true``, конечная кость удлиняется, образуя хвост.

Если ``enabled`` равно ``false``, :ref:`get_reference_bone()<class_BoneTwistDisperser3D_method_get_reference_bone>` становится родительским элементом для конечной кости и использует вектор к конечной кости в качестве оси скручивания.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_joint_twist_amount:

.. rst-class:: classref-method

|void| **set_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`

Устанавливает величину скручивания в ``joint`` в списке суставов цепочки костей, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` имеет значение :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone>`

Устанавливает индекс корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone_name>`

Задает имя корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from:

.. rst-class:: classref-method

|void| **set_twist_from**\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from>`

Устанавливает вращение в произвольное состояние перед скручиванием для текущей позы кости, чтобы извлечь скручивание, когда :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` равен ``false``.

Другими словами, вызвав :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>` с помощью :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` конкретного :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, вы можете извлечь только скручивания, сгенерированные модификаторами, обработанными после, но до этого **BoneTwistDisperser3D**.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from_rest:

.. rst-class:: classref-method

|void| **set_twist_from_rest**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from_rest>`

Если ``enabled`` равно ``true``, то величина скручивания вычисляется как разница между положением кости в состоянии покоя и текущим положением кости.

Если ``enabled`` равно ``false``, то величина скручивания вычисляется как разница между :ref:`get_twist_from()<class_BoneTwistDisperser3D_method_get_twist_from>` и текущим положением кости. См. также :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_weight_position:

.. rst-class:: classref-method

|void| **set_weight_position**\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_weight_position>`

Задает положение, в котором следует разделить сегмент между суставами для присвоения весов, когда :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` равен :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

Например, если ``weight_position`` равен ``0.5``, и между тремя суставами существуют два костных сегмента длиной ``1.0``, каждому суставу присваиваются веса от корня до конца в соотношениях ``0.5``, ``1.0`` и ``0.5``. Тогда значения становятся ``0.25``, ``0.75`` и ``1.0`` соответственно.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
