:github_url: hide

.. _class_IterateIK3D:

IterateIK3D
===========

**Наследует:** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`CCDIK3D<class_CCDIK3D>`, :ref:`FABRIK3D<class_FABRIK3D>`, :ref:`JacobianIK3D<class_JacobianIK3D>`

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, позволяющий приблизиться к цели путем повторения небольших вращений.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` используется для достижения цели путем повторения небольших вращений.

Каждая цепочка костей (настройка) имеет один эффектор, который обрабатывается в порядке списка настроек. Для каждого сустава можно установить определенные ограничения.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` | ``0.034906585`` |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`bool<class_bool>`   | :ref:`deterministic<class_IterateIK3D_property_deterministic>`             | ``false``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`max_iterations<class_IterateIK3D_property_max_iterations>`           | ``4``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`float<class_float>` | :ref:`min_distance<class_IterateIK3D_property_min_distance>`               | ``0.001``       |
   +---------------------------+----------------------------------------------------------------------------+-----------------+
   | :ref:`int<class_int>`     | :ref:`setting_count<class_IterateIK3D_property_setting_count>`             | ``0``           |
   +---------------------------+----------------------------------------------------------------------------+-----------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JointLimitation3D<class_JointLimitation3D>`                     | :ref:`get_joint_limitation<class_IterateIK3D_method_get_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_joint_limitation_right_axis<class_IterateIK3D_method_get_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_limitation_right_axis_vector<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                   | :ref:`get_joint_limitation_rotation_offset<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`             | :ref:`get_joint_rotation_axis<class_IterateIK3D_method_get_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_joint_rotation_axis_vector<class_IterateIK3D_method_get_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_IterateIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation<class_IterateIK3D_method_set_joint_limitation>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis<class_IterateIK3D_method_set_joint_limitation_right_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_right_axis_vector<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_limitation_rotation_offset<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ )                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis<class_IterateIK3D_method_set_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ )                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_joint_rotation_axis_vector<class_IterateIK3D_method_set_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ )                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_IterateIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                                                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_IterateIK3D_property_angular_delta_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_delta_limit** = ``0.034906585`` :ref:`🔗<class_IterateIK3D_property_angular_delta_limit>`

.. rst-class:: classref-property-setget

- |void| **set_angular_delta_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_delta_limit**\ (\ )

Максимальное значение, на которое каждая кость может повернуться за одну итерацию.

\ **Примечание:** Это ограничение применяется на каждой итерации. Например, если :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` равно ``4`` и :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` равно ``5`` градусам, то максимальное возможное вращение за один кадр составляет ``20`` градусов.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_IterateIK3D_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Если ``false``, результат вычисляется на основе результата **IterateIK3D** предыдущего кадра в качестве начального состояния.

Если ``true``, результат **IterateIK3D** предыдущего кадра отбрасывается. В этот момент новый результат вычисляется на основе положения кости без учета **IterateIK3D** в качестве начального состояния. Это означает, что результат всегда будет равен, пока целевая позиция и предыдущая позиция кости совпадают. Однако, если значения :ref:`angular_delta_limit<class_IterateIK3D_property_angular_delta_limit>` и :ref:`max_iterations<class_IterateIK3D_property_max_iterations>` установлены слишком мало, конечная кость цепочки никогда не достигнет цели.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``4`` :ref:`🔗<class_IterateIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Количество итераций, используемых решателем обратной кинематики для получения более точных результатов.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.001`` :ref:`🔗<class_IterateIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

Минимальное расстояние между конечной костью и целью. Если расстояние меньше этого значения, решатель обратной кинематики прекращает дальнейшие итерации.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_IterateIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Количество настроек.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_IterateIK3D_method_get_joint_limitation:

.. rst-class:: classref-method

:ref:`JointLimitation3D<class_JointLimitation3D>` **get_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation>`

Возвращает ограничение по суставу в ``joint`` в списке суставов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis>`

Возвращает ограничение по оси правого сустава в точке ``joint`` в списке суставов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>`

Возвращает вектор правой оси ограничения сустава в точке ``joint`` в списке суставов костной цепи.

Если :ref:`get_joint_limitation_right_axis()<class_IterateIK3D_method_get_joint_limitation_right_axis>` равен :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`, этот метод возвращает ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_limitation_rotation_offset:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_limitation_rotation_offset>`

Возвращает смещение вращения ограничения сустава в ``joint`` в списке суставов костной цепи.

Вращение выполняется в локальном пространстве, которое строится на основе направления кости (как правило, от родителя к потомку) как оси +Y и :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` как оси +X.

Если оси +X и +Y не ортогональны, ось +X неявно изменяется, чтобы сделать её ортогональной.

Также, если длина :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` равна нулю, пространство создаётся путём вращения опоры кости с использованием кратчайшей дуги, которая поворачивает ось +Y опоры кости в соответствии с направлением кости.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis:

.. rst-class:: classref-method

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **get_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis>`

Возвращает ось вращения в ``joint`` в списке суставов цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_joint_rotation_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_joint_rotation_axis_vector>`

Возвращает вектор оси вращения для указанного сустава в костной цепи. Этот вектор представляет ось, вокруг которой может вращаться сустав. Он определяется на основе оси вращения, заданной для сустава.

Если :ref:`get_joint_rotation_axis()<class_IterateIK3D_method_get_joint_rotation_axis>` равен :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`, этот метод возвращает ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IterateIK3D_method_get_target_node>`

Возвращает целевой узел, до которого пытается добраться конечная кость.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation:

.. rst-class:: classref-method

|void| **set_joint_limitation**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, limitation\: :ref:`JointLimitation3D<class_JointLimitation3D>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation>`

Устанавливает ограничение на количество суставов в ``joint`` в списке суставов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis>`

Устанавливает ограничение по оси вращения сустава справа в точке ``joint`` в списке суставов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_right_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_limitation_right_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_right_axis_vector>`

Устанавливает необязательный вектор оси ограничения сустава справа в ``joint`` в списке суставов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_limitation_rotation_offset:

.. rst-class:: classref-method

|void| **set_joint_limitation_rotation_offset**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, offset\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_limitation_rotation_offset>`

Устанавливает смещение вращения ограничения сустава в ``joint`` в списке суставов костной цепи.

Вращение выполняется в локальном пространстве, которое строится на основе направления кости (как правило, от родителя к потомку) как оси +Y и :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` как оси +X.

Если оси +X и +Y не ортогональны, ось +X неявно изменяется, чтобы сделать её ортогональной.

Также, если длина :ref:`get_joint_limitation_right_axis_vector()<class_IterateIK3D_method_get_joint_limitation_right_axis_vector>` равна нулю, пространство создаётся путём вращения опоры кости с использованием кратчайшей дуги, которая поворачивает ось +Y опоры кости в соответствии с направлением кости.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis>`

Устанавливает ось вращения в точке ``joint`` в списке суставов цепочки костей.

Оси основаны на пространстве :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>`. Если ``axis`` равно :ref:`SkeletonModifier3D.ROTATION_AXIS_CUSTOM<class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM>`, вы можете указать любую ось.

\ **Примечание:** Ось вращения и вектор направления не должны быть коллинеарными, чтобы избежать непреднамеренного вращения, поскольку :ref:`ChainIK3D<class_ChainIK3D>` не учитывает силы скручивания.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_joint_rotation_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis_vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_IterateIK3D_method_set_joint_rotation_axis_vector>`

Задает вектор оси вращения для указанного сустава в костной цепи.

Этот вектор нормализуется внутренним процессом и представляет ось, вокруг которой может вращаться костная цепь.

Если длина вектора равна ``0``, он считается синонимом :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`.

.. rst-class:: classref-item-separator

----

.. _class_IterateIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_IterateIK3D_method_set_target_node>`

Задает целевой узел, до которого пытается добраться конечная кость.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
