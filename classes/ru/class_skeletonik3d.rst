:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**Устарело:** This class may be changed or removed in future versions.

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, используемый для поворота всех костей цепочки костей :ref:`Skeleton3D<class_Skeleton3D>` таким образом, чтобы разместить конечную кость в желаемом трехмерном положении.

.. rst-class:: classref-introduction-group

Описание
----------------

SkeletonIK3D используется для вращения всех костей цепочки костей :ref:`Skeleton3D<class_Skeleton3D>` таким образом, чтобы поместить конечную кость в желаемое положение в 3D. Типичный сценарий для IK в играх — поместить ноги персонажа на землю или руки персонажа на удерживаемый в данный момент объект. SkeletonIK использует FabrikInverseKinematic внутренне для решения цепочки костей и применяет результаты к свойству :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` для всех затронутых костей в цепочке. При полном применении это перезаписывает любое преобразование костей из :ref:`Animation<class_Animation>` или пользовательских поз костей, установленных пользователями. Применяемое количество можно контролировать с помощью свойства :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>`.

::

    # Автоматически применять эффект IK к каждому новому кадру (не к текущему)
    skeleton_ik_node.start()

    # Применить эффект IK только к текущему кадру
    skeleton_ik_node.start(true)

    # Остановить эффект IK и сбросить bones_global_pose_override на скелете
    skeleton_ik_node.stop()

    # Применить полный эффект IK
    skeleton_ik_node.set_influence(1.0)

    # Применить половины эффекта IK
    skeleton_ik_node.set_influence(0.5)

    # Применить нулевой эффект IK (значение 0,01 или ниже также удаляет bones_global_pose_override для скелета)
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**Устарело:** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Значение интерполяции для того, насколько результаты IK применяются к текущей цепочке костей скелета. Значение ``1.0`` полностью перезапишет все преобразования костей скелета, а значение ``0.0`` визуально отключит SkeletonIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

Вторичное целевое положение (первое — свойство :ref:`target<class_SkeletonIK3D_property_target>` или :ref:`target_node<class_SkeletonIK3D_property_target_node>`) для цепи IK. Используйте положение магнита (целевой полюс) для управления изгибом цепи IK. Работает только в том случае, если в цепочке костей больше 2 костей. Положение кости средней цепи будет линейно интерполировано с положением магнита.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Количество итерационных циклов, используемых решателем IK для получения более точных (и элегантных) результатов костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

Минимальное расстояние между костью и целью. Если расстояние меньше этого значения, решатель IK останавливает дальнейшие итерации.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

Если ``true``, то вращение кончика кости перезаписывается вращением :ref:`target<class_SkeletonIK3D_property_target>` (или :ref:`target_node<class_SkeletonIK3D_property_target_node>`, если определено).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Название текущей корневой кости, первой кости в цепочке IK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

The first target of the IK chain where the tip bone is placed and, if :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` is ``true``, how the tip bone is rotated. If :ref:`target_node<class_SkeletonIK3D_property_target_node>` points to a valid node, that node's transform is used instead and this property is ignored.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Целевой узел :ref:`NodePath<class_NodePath>` для цепочки IK. Если доступно, вместо свойства :ref:`target<class_SkeletonIK3D_property_target>` используется текущий :ref:`Transform3D<class_Transform3D>` узла.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

Имя текущей конечной кости, последней кости в цепочке IK, размещенной в преобразовании :ref:`target<class_SkeletonIK3D_property_target>` (или :ref:`target_node<class_SkeletonIK3D_property_target_node>`, если оно определено).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

Если ``true``, то указывает решателю IK учитывать вторичную цель магнита (цель полюса) при расчете костной цепи. Используйте положение магнита (цель полюса) для управления изгибом цепи IK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Возвращает родительский узел :ref:`Skeleton3D<class_Skeleton3D>`, который присутствовал, когда SkeletonIK вошел в дерево сцены. Возвращает ``null``, если родительский узел не был узлом :ref:`Skeleton3D<class_Skeleton3D>`, когда SkeletonIK3D вошел в дерево сцены.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

Возвращает ``true``, если SkeletonIK применяет эффекты IK на продолжающихся кадрах к костям :ref:`Skeleton3D<class_Skeleton3D>`. Возвращает ``false``, если SkeletonIK остановлен или :ref:`start()<class_SkeletonIK3D_method_start>` был использован с параметром ``one_time``, установленным на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

Начинает применять эффекты IK в каждом кадре к костям :ref:`Skeleton3D<class_Skeleton3D>`, но вступит в силу только со следующего кадра. Если ``one_time`` равен ``true``, это вступит в силу немедленно, но также сбросится в следующем кадре.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

Прекращает применение эффектов IK в каждом кадре к костям :ref:`Skeleton3D<class_Skeleton3D>`, а также вызывает :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` для удаления существующих переопределений для всех костей.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
