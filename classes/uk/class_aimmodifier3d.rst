:github_url: hide

.. _class_AimModifier3D:

AimModifier3D
=============

**Успадковує:** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**AimModifier3D** повертає кістку, щоб переглянути опорну кістку.

.. rst-class:: classref-introduction-group

Опис
--------

Це спрощена версія :ref:`LookAtModifier3D<class_LookAtModifier3D>`, яка дозволяє лише кістку до посилання без розширених опцій, таких як обмеження кута або інтерполяція на основі часу.

Функцію спрощено, але натомість вона реалізована з плавним відстеженням без Ейлера, див. :ref:`set_use_euler()<class_AimModifier3D_method_set_use_euler>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_AimModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` | :ref:`get_forward_axis<class_AimModifier3D_method_get_forward_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                    | :ref:`get_primary_rotation_axis<class_AimModifier3D_method_get_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_relative<class_AimModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_euler<class_AimModifier3D_method_is_using_euler>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_using_secondary_rotation<class_AimModifier3D_method_is_using_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                             |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_forward_axis<class_AimModifier3D_method_set_forward_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_primary_rotation_axis<class_AimModifier3D_method_set_primary_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_relative<class_AimModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_euler<class_AimModifier3D_method_set_use_euler>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                              |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_use_secondary_rotation<class_AimModifier3D_method_set_use_secondary_rotation>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AimModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_AimModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Кількість налаштувань у модифікаторі.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AimModifier3D_method_get_forward_axis:

.. rst-class:: classref-method

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_forward_axis>`

Повертає передню вісь кістки.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_get_primary_rotation_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_get_primary_rotation_axis>`

Повертає вісь першого обертання. Активно, лише якщо :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_relative>`

Повертає ``true``, якщо відносний параметр увімкнено в налаштуванні ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_euler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_euler**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_euler>`

Повертає ``true``, якщо забезпечує обертання з використанням Ейлера.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_is_using_secondary_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AimModifier3D_method_is_using_secondary_rotation>`

Повертає ``true``, якщо забезпечується обертання на дві осі. Це ввімкнено, лише якщо :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_forward_axis:

.. rst-class:: classref-method

|void| **set_forward_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_forward_axis>`

Встановлює передню вісь кістки.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_primary_rotation_axis:

.. rst-class:: classref-method

|void| **set_primary_rotation_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_AimModifier3D_method_set_primary_rotation_axis>`

Встановлює вісь першого обертання. Активується лише якщо :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_relative>`

Встановлює відносний параметр у налаштуванні ``index`` на ``enabled``.

Якщо встановлює ``enabled`` на ``true``, обертання застосовується відносно пози.

Якщо встановлює ``enabled`` на ``false``, обертання застосовується відносно решти. Це означає заміну поточної пози результатом **AimModifier3D**.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_euler:

.. rst-class:: classref-method

|void| **set_use_euler**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_euler>`

Якщо встановити ``enabled`` на ``true``, це забезпечує обертання з використанням Ейлера.

Якщо встановити ``enabled`` на ``false``, це забезпечує обертання за допомогою дуги, згенерованої з вектора прямої осі та вектора до посилання.

.. rst-class:: classref-item-separator

----

.. _class_AimModifier3D_method_set_use_secondary_rotation:

.. rst-class:: classref-method

|void| **set_use_secondary_rotation**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AimModifier3D_method_set_use_secondary_rotation>`

Якщо встановити ``enabled`` на ``true``, це забезпечує обертання на дві осі. Це ввімкнено, лише якщо :ref:`is_using_euler()<class_AimModifier3D_method_is_using_euler>` має значення ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
