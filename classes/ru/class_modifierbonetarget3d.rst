:github_url: hide

.. _class_ModifierBoneTarget3D:

ModifierBoneTarget3D
====================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который динамически копирует 3D-преобразование кости в ее родителе :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел выбирает кость в :ref:`Skeleton3D<class_Skeleton3D>` и прикрепляется к ней. Это означает, что узел **ModifierBoneTarget3D** будет динамически копировать 3D-преобразование выбранной кости.

Функциональность аналогична :ref:`BoneAttachment3D<class_BoneAttachment3D>`, но этот узел использует цикл :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` и предназначен для использования в качестве ещё одного целевого объекта :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone<class_ModifierBoneTarget3D_property_bone>`           | ``-1``                                                                        |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_ModifierBoneTarget3D_property_bone_name>` | ``""``                                                                        |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ModifierBoneTarget3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Индекс прикрепленной кости.

.. rst-class:: classref-item-separator

----

.. _class_ModifierBoneTarget3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_ModifierBoneTarget3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Название прикрепленной кости.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
