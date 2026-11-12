:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**Застаріло:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол використовується для обертання всіх кісток :ref:`Skeleton3D<class_Skeleton3D>` кісткового ланцюжка, що розміщує кінцеву кістку на бажаному положенні 3D.

.. rst-class:: classref-introduction-group

Опис
--------

SkeletonIK3D використовується для обертання всіх кісток ланцюга кісток :ref:`Skeleton3D<class_Skeleton3D>` таким чином, що кінцева кістка розміщується в бажаному 3D-положенні. Типовий скрипт для IK в іграх полягає в тому, щоб покласти ноги персонажа на землю або руки персонажа на предмет, який зараз тримається. SkeletonIK використовує FabrikInverseKinematic внутрішньо для вирішення ланцюжка кісток і застосовує результати до властивості :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` для всіх уражених кісток у ланцюжку. Якщо застосовано повністю, це перезаписує будь-яку трансформацію кістки з :ref:`Animation<class_Animation>` або спеціальні пози кістки, встановлені користувачами. Застосовувану кількість можна контролювати за допомогою властивості :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>`. 

::
 
    # Автоматично застосовувати ефект IK до кожного нового кадру (не поточного) 
    skeleton_ik_node.start() 

    # Застосувати ефект IK лише до поточного кадру 
    skeleton_ik_node.start(true) 

    # Зупинити ефект IK і скинути bones_global_pose_override на Skeleton 
    skeleton_ik_node.stop() 

    # Застосуйте повний ефект IK 
    skeleton_ik_node.set_influence(1.0) 

    # Застосуйте ефект половини IK 
    skeleton_ik_node.set_influence(0,5) 

    # Застосувати нульовий ефект IK (значення 0,01 або менше також усуває bones_global_pose_override на Skeleton) 
    skeleton_ik_node.set_influence(0.0) 

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**Застаріло:** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Значення взаємозв'язку для того, скільки результатів IK застосовуються в поточному кістковому ланцюжку скелета. Вартість ``1.0`` повністю перезаписати всі кісткові перетвори скелета, а значення ``0.0`` візуально відключить скелети.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

Положення вторинної цілі (перше – це властивість :ref:`target<class_SkeletonIK3D_property_target>` або :ref:`target_node<class_SkeletonIK3D_property_target_node>`) для ланцюга IK. Використовуйте положення магніту (полюсну ціль) для керування вигином ланцюга IK. Працює лише якщо ланцюг кісток має більше 2 кісток. Положення середньої кістки ланцюга буде лінійно інтерпольовано з положенням магніту.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Кількість петель ітерації, що використовуються розчинником IK для отримання більш точного (і елегантного) результатів кісткової ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

Мінімальна відстань між кісткою і цільовою метою. Якщо відстань нижче цього значення, то розчинник IK припиняє подальшу ітерацію.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

Якщо ``true`` перезаписує обертання кінчика кістки обертанням :ref:`target<class_SkeletonIK3D_property_target>` (або :ref:`target_node<class_SkeletonIK3D_property_target_node>` якщо визначено).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Назва поточної кореневої кістки, перша кісточка в ланцюжку IK.

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

Цільова вершина :ref:`NodePath<class_NodePath>` для ланцюга IK. При наявності поточного вузла :ref:`Transform3D<class_Transform3D>` використовується замість об'єкта :ref:`target<class_SkeletonIK3D_property_target>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

Назва поточної кінчикової кістки, останньої кістки в ланцюзі IK, розміщеної на :ref:`target<class_SkeletonIK3D_property_target>` перетворення (або :ref:`target_node<class_SkeletonIK3D_property_target_node>` якщо визначено).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

Якщо ``true``, інструктує розчинник IK для розгляду вторинної магнітної цілі (полярна ціль) при обчисленні кісткового ланцюжка. Використовуйте магнітне положення (полярне призначення) для управління вигином ланцюга IK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Повертає батьківський вузол :ref:`Skeleton3D<class_Skeleton3D>`, який був присутній, коли SkeletonIK увійшов до дерева сцени. Повертає ``null``, якщо батьківський вузол не був вузлом :ref:`Skeleton3D<class_Skeleton3D>`, коли SkeletonIK3D увійшов до дерева сцен.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

Повертаємо ``true``, якщо SkeletonIK застосовує IK-ефекти подовжує кадри до кісток :ref:`Skeleton3D<class_Skeleton3D>`. ``false``, якщо SkeletonIK припиняється або :ref:`start()<class_SkeletonIK3D_method_start>` був використаний з ``one_time`` параметром ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

Починає застосовувати IK-ефекти на кожному кадрі до кісток :ref:`Skeleton3D<class_Skeleton3D>`, але займе тільки ефект від наступного кадру. Якщо ``one_time`` є ``true``, це займе ефект відразу, але також скидати на наступному кадрі.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

Стопи застосування IK ефектів на кожному кадрі до кісток :ref:`Skeleton3D<class_Skeleton3D>`, а також дзвінки :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` для видалення наявних накладок на всіх кістках.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
