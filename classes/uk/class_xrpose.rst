:github_url: hide

.. _class_XRPose:

XRPose
======

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Цей об'єкт містить всі дані, пов'язані з позою на відстеженому об'єкті.

.. rst-class:: classref-introduction-group

Опис
--------

XR runtimes часто ідентифікують декілька локацій на пристроях, таких як контролери, які є просторово відстеженими.

Орієнтація, розташування, лінійна швидкість та кутова швидкість забезпечуються для кожної пози від XR runtime. Цей об'єкт містить цей стан поз.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`angular_velocity<class_XRPose_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`has_tracking_data<class_XRPose_property_has_tracking_data>`     | ``false``                                           |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                             | :ref:`linear_velocity<class_XRPose_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                                |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`name<class_XRPose_property_name>`                               | ``&""``                                             |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`tracking_confidence<class_XRPose_property_tracking_confidence>` | ``0``                                               |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`transform<class_XRPose_property_transform>`                     | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-----------------------------------------------------------+-----------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_adjusted_transform<class_XRPose_method_get_adjusted_transform>`\ (\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRPose_TrackingConfidence:

.. rst-class:: classref-enumeration

enum **TrackingConfidence**: :ref:`🔗<enum_XRPose_TrackingConfidence>`

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_NONE** = ``0``

Немає інформації про відстеження для цієї пози.

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_LOW** = ``1``

Відстеження інформації може бути неточною або оціненою. Наприклад, з внутрішньою відстеженням, це буде вказувати контролер (частково) застарілим.

.. _class_XRPose_constant_XR_TRACKING_CONFIDENCE_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **XR_TRACKING_CONFIDENCE_HIGH** = ``2``

Відстеження інформації вважається точним і до дати.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRPose_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

Кутова швидкість для цієї пози.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRPose_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

Якщо ``true`` наші дані відстеження додаються до дати. Якщо ``false`` ми не будемо отримувати нові дані про відстеження, і наш стан є тим, що останній дійсний стан був.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_XRPose_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

Лінійна швидкість цієї пози.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&""`` :ref:`🔗<class_XRPose_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

Назва цієї пози. Зазвичай це ім’я походить від карти дій, налаштованої користувачем. Godot також пропонує деякі назви поз, які мають реалізувати об’єкти :ref:`XRInterface<class_XRInterface>`: 

- ``root`` – це коренева локація, яка часто використовується для відстежуваних об’єктів, які не мають додаткових вузлів. 

- ``aim`` — це кінчик контролера з орієнтацією, що вказує назовні, часто використовується для raycasts. 

- ``ручка`` – місце, де користувач тримає контролер. 

- ``скелет`` є кореневим місцем для ручної сітки, коли використовується відстеження рук, а анімований скелет надається середовищем виконання XR.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_tracking_confidence:

.. rst-class:: classref-property

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **tracking_confidence** = ``0`` :ref:`🔗<class_XRPose_property_tracking_confidence>`

.. rst-class:: classref-property-setget

- |void| **set_tracking_confidence**\ (\ value\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ )
- :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **get_tracking_confidence**\ (\ )

Відстеження довіри до цієї пози, забезпечує розуміння того, наскільки точним є просторове положення цього запису.

.. rst-class:: classref-item-separator

----

.. _class_XRPose_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRPose_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

Трансформація, що містить оригінальний і трансформований як повідомляється XR runtime.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRPose_method_get_adjusted_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_adjusted_transform**\ (\ ) |const| :ref:`🔗<class_XRPose_method_get_adjusted_transform>`

Повертаємо вашу увагу на те, що наша мета полягає в тому, щоб допомогти нашим клієнтам. Це трансформатор, який використовується для позиції :ref:`XRNode3D<class_XRNode3D>` об'єктів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
