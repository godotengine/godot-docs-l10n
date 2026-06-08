:github_url: hide

.. _class_RDAccelerationStructureInstance:

RDAccelerationStructureInstance
===============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Інстанція структури прискорення (використовується :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Опис
--------

**RDAccelerationStructureInstance** описує екземпляр структури прискорення нижнього рівня (BLAS), що використовується в методі ``RenderingDevice.tlas_build``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RID<class_RID>`                                                                                                  | :ref:`blas<class_RDAccelerationStructureInstance_property_blas>`                   | ``RID()``                                           |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] | :ref:`flags<class_RDAccelerationStructureInstance_property_flags>`                 | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`hit_sbt_range<class_RDAccelerationStructureInstance_property_hit_sbt_range>` | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`id<class_RDAccelerationStructureInstance_property_id>`                       | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`mask<class_RDAccelerationStructureInstance_property_mask>`                   | ``255``                                             |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                                                                  | :ref:`transform<class_RDAccelerationStructureInstance_property_transform>`         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RDAccelerationStructureInstance_property_blas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **blas** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureInstance_property_blas>`

.. rst-class:: classref-property-setget

- |void| **set_blas**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_blas**\ (\ )

BLAS, на який посилається цей екземпляр. Якщо ``null``, екземпляр розглядається як заповнювач, але все одно враховується при обчисленні ``gl_InstanceIndex`` у GLSL.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **flags** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\]\ )
- |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **get_flags**\ (\ )

Параметри для екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_hit_sbt_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **hit_sbt_range** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_hit_sbt_range>`

.. rst-class:: classref-property-setget

- |void| **set_hit_sbt_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hit_sbt_range**\ (\ )

Діапазон таблиці прив’язки шейдерів, що використовується для цього екземпляра, виділений за допомогою методу :ref:`RenderingDevice.hit_sbt_range_alloc()<class_RenderingDevice_method_hit_sbt_range_alloc>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **id** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_id>`

.. rst-class:: classref-property-setget

- |void| **set_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_id**\ (\ )

Ідентифікатор користувацького екземпляра, доступ до якого можна отримати в GLSL за допомогою ``gl_InstanceCustomIndexEXT``.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **mask** = ``255`` :ref:`🔗<class_RDAccelerationStructureInstance_property_mask>`

.. rst-class:: classref-property-setget

- |void| **set_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mask**\ (\ )

Маска видимості, яка використовується для керування тим, які промені можуть перетинати цей екземпляр.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_RDAccelerationStructureInstance_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

Перетворення, застосоване до BLAS, на яке посилається цей екземпляр.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
