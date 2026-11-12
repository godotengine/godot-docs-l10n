:github_url: hide

.. _class_PhysicsCastMotionResult2D:

PhysicsCastMotionResult2D
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a shape motion cast query.

.. rst-class:: classref-introduction-group

Опис
--------

This class contains the safe and unsafe fractions computed by :ref:`PhysicsDirectSpaceState2D.cast_motion_into()<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`safe_fraction<class_PhysicsCastMotionResult2D_property_safe_fraction>`     | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`unsafe_fraction<class_PhysicsCastMotionResult2D_property_unsafe_fraction>` | ``1.0`` |
   +---------------------------+----------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsCastMotionResult2D_property_safe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_safe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_safe_fraction**\ (\ )

The maximum fraction of the motion that can be made without a collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCastMotionResult2D_property_unsafe_fraction:

.. rst-class:: classref-property

:ref:`float<class_float>` **unsafe_fraction** = ``1.0`` :ref:`🔗<class_PhysicsCastMotionResult2D_property_unsafe_fraction>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_unsafe_fraction**\ (\ )

The minimum fraction of the distance that must be moved for a collision.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
