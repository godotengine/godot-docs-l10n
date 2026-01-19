:github_url: hide

.. _class_ChainIK3D:

ChainIK3D
=========

**Успадковує:** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`IterateIK3D<class_IterateIK3D>`, :ref:`SplineIK3D<class_SplineIK3D>`

:ref:`SkeletonModifier3D<class_SkeletonModifier3D>` для застосування оберненої кінематики до ланцюгів кісток, що містять довільну кількість кісток.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, який автоматично генерує список суглобів з кісток між кореневою кісткою та кінцевою кісткою.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_ChainIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_ChainIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_end_bone_length<class_ChainIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_ChainIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_ChainIK3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_ChainIK3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_ChainIK3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_ChainIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_ChainIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_ChainIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_ChainIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_ChainIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_length<class_ChainIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_ChainIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_ChainIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_ChainIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_ChainIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ChainIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone>`

Повертає індекс кінцевої кістки ланцюга кісток.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_direction>`

Повертає напрямок хвоста кінцевої кістки ланцюжка кісток, коли :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_length>`

Повертає довжину кінця кісткового ланцюжка, коли :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_end_bone_name>`

Повертає назву кінцевої кістки ланцюжка кісток.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone>`

Повертає індекс кістки в ``joint`` у списку суглобів кісткового ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_bone_name>`

Повертає назву кістки в ``joint`` у списку суглобів ланцюга кісток.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_joint_count>`

Повертає кількість з’єднань у списку з’єднань кісткового ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone>`

Повертає індекс кореневої кістки ланцюга кісток.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_get_root_bone_name>`

Повертає назву кореневої кістки ланцюга кісток.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ChainIK3D_method_is_end_bone_extended>`

Повертає ``true``, якщо кінцева кістка подовжена, щоб мати хвіст.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone>`

Встановлює кінцевий кістковий індекс кісткового ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_direction>`

Встановлює напрямок кінцевої кістки ланцюжка кісток, якщо :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_length>`

Встановлює довжину хвоста кінцевої кістки ланцюжка кісток, якщо :ref:`is_end_bone_extended()<class_ChainIK3D_method_is_end_bone_extended>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_end_bone_name>`

Встановлює назву кінцевої кістки ланцюжка кісток.

\ **Примітка:** Кінцева кістка має бути кореневою кісткою або дочірньою кісткою кореневої кістки. Якщо вони однакові, хвіст потрібно розширити за допомогою :ref:`set_extend_end_bone()<class_ChainIK3D_method_set_extend_end_bone>`, щоб змінити кістку.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ChainIK3D_method_set_extend_end_bone>`

Якщо ``enabled`` має значення ``true``, кінцева кістка подовжується, щоб мати хвіст.

Конфігурація розширеного хвоста призначається останньому елементу у списку суглобів. Іншими словами, якщо встановити ``enabled`` на ``false``, конфігурація останнього елемента у списку суглобів не впливає на результат моделювання.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone>`

Встановлює індекс кореневої кістки кісткового ланцюга.

.. rst-class:: classref-item-separator

----

.. _class_ChainIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ChainIK3D_method_set_root_bone_name>`

Встановлює назву кореневої кістки ланцюга кісток.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
