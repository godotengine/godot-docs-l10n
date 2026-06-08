:github_url: hide

.. _class_Skeleton2D:

Skeleton2D
==========

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Пароль ієрархії :ref:`Bone2D<class_Bone2D>`, використовується для створення 2D скелетної анімації.

.. rst-class:: classref-introduction-group

Опис
--------

**Skeleton2D** батьки ієрархії вершин :ref:`Bone2D<class_Bone2D>`. Займає посилання на кожну решту :ref:`Bone2D<class_Bone2D>` і діє як єдиний пункт доступу до його кісток.

Щоб встановити різні типи інверсних кінематичних засобів для даної Skeleton2D, слід створити :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`. Інверсифікація SeletonModificationStack2D.modification_count] та створення необхідної кількості модифікацій.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`2D скелети <../tutorials/animation/2d_skeletons>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`execute_modifications<class_Skeleton2D_method_execute_modifications>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Bone2D<class_Bone2D>`                                           | :ref:`get_bone<class_Skeleton2D_method_get_bone>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_bone_count<class_Skeleton2D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`                                 | :ref:`get_bone_local_pose_override<class_Skeleton2D_method_get_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_Skeleton2D_method_get_modification_stack>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_skeleton<class_Skeleton2D_method_get_skeleton>`\ (\ ) |const|                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_bone_local_pose_override<class_Skeleton2D_method_set_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_modification_stack<class_Skeleton2D_method_set_modification_stack>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ )                                                                                      |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Skeleton2D_signal_bone_setup_changed:

.. rst-class:: classref-signal

**bone_setup_changed**\ (\ ) :ref:`🔗<class_Skeleton2D_signal_bone_setup_changed>`

Увімкнено при налаштуванні :ref:`Bone2D<class_Bone2D>`, прикріпленому до цих змін скелетів. Це в першу чергу використовується всередині скелета.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Skeleton2D_method_execute_modifications:

.. rst-class:: classref-method

|void| **execute_modifications**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_execute_modifications>`

Виконує всі модифікації на :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, якщо Skeleton2D є одним призначеним.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone:

.. rst-class:: classref-method

:ref:`Bone2D<class_Bone2D>` **get_bone**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone>`

Повертаємо :ref:`Bone2D<class_Bone2D>` з вершини ієрархії, що батьківуються Skeleton2D. Об'єкт для повернення визначається параметром ``idx``. Бони індексуються, нащадивши вершину ієрархію зверху вниз, додаючи дітям кожну гілку перед переміщенням до наступного дробу.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_bone_count>`

Повертає кількість вузлів :ref:`Bone2D<class_Bone2D>` в вершині ієрархії, які з'єднуються Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_local_pose_override:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone_local_pose_override>`

Повертає локальну позу перевизначну трансформацію для ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_modification_stack>`

Повертаємо :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, прикріплений до цього скелета, якщо є один.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_skeleton>`

Повернення :ref:`RID<class_RID>` екземпляра Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_bone_local_pose_override:

.. rst-class:: classref-method

|void| **set_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Skeleton2D_method_set_bone_local_pose_override>`

Налаштовує локальну позу трансформацію, ``override_pose``, за кістку при ``bone_idx``.

\ ``strength`` - це міжполярна сила, яка буде використовуватися при подачі пози, а ``парм персистент`` визначає, якщо наноситься поза залишиться.

\ **Примітка:** Позиція повинна бути локальною трансформацією відносно вузла :ref:`Bone2D<class_Bone2D>` на ``bone_idx``!

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_modification_stack:

.. rst-class:: classref-method

|void| **set_modification_stack**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_Skeleton2D_method_set_modification_stack>`

Настроювання :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` прикріплюється до цього скелета.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
