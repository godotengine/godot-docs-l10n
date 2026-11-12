:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

Базовый класс столкновения, взаимодействующий с :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Столкновение может быть дочерним элементом :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`. Если оно не является дочерним элементом :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, оно не оказывает никакого эффекта.

Столкновение и скольжение выполняются в процессе модификации :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` в порядке его списка столкновений, который задается :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>`. Если :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` равен ``true``, порядок соответствует :ref:`SceneTree<class_SceneTree>`.

Если задан :ref:`bone<class_SpringBoneCollision3D_property_bone>`, он синхронизируется с позой кости предка :ref:`Skeleton3D<class_Skeleton3D>`, что выполняется до процесса модификации :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` в качестве предварительного процесса.

\ **Предупреждение:** Масштабированный **SpringBoneCollision3D**, скорее всего, не будет вести себя так, как ожидается. Убедитесь, что родительский :ref:`Skeleton3D<class_Skeleton3D>` и его кости не масштабированы.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone<class_SpringBoneCollision3D_property_bone>`                       | ``-1``                                                                        |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_SpringBoneCollision3D_property_bone_name>`             | ``""``                                                                        |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                   | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                       | :ref:`position_offset<class_SpringBoneCollision3D_property_position_offset>` |                                                                               |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                 | :ref:`rotation_offset<class_SpringBoneCollision3D_property_rotation_offset>` |                                                                               |
   +---------------------------------------------------------------------+------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SpringBoneCollision3D_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Индекс прикрепленной кости.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Название прикрепленной кости.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

Смещение положения относительно положения позы :ref:`bone<class_SpringBoneCollision3D_property_bone>` :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

Смещение вращения относительно вращения позы :ref:`bone<class_SpringBoneCollision3D_property_bone>` :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

Получить родительский узел :ref:`Skeleton3D<class_Skeleton3D>` родительского узла :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, если он найден.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
