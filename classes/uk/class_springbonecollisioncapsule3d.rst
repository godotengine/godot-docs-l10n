:github_url: hide

.. _class_SpringBoneCollisionCapsule3D:

SpringBoneCollisionCapsule3D
============================

**Успадковує:** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Зіткнення форми капсули, що взаємодіє з :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Зіткнення форми капсули, що взаємодіє з :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`         | ``0.5``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionCapsule3D_property_inside>`         | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_SpringBoneCollisionCapsule3D_property_mid_height>` |           |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`         | ``0.1``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SpringBoneCollisionCapsule3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.5`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Повна висота капсули, включаючи півсфери.

\ **Примітка:** :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` капсули повинна бути щонайменше вдвічі більшою за її :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`. В іншому випадку капсула стає сферою. Якщо :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` менша ніж вдвічі більша за :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`, властивості налаштовуються на дійсне значення.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

Якщо ``true``, зіткнення захоплює з’єднання всередині зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

Висота капсули, без урахування півкуль. Це висота центральної циліндричної частини посередині капсули та відстань між центрами двох півкуль. Це обгортка для :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус капсули.

\ **Примітка:** :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` капсули не може бути більшим за половину її :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`. В іншому випадку капсула стає сферою. Якщо :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` більший за половину :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`, властивості налаштовуються на дійсне значення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
