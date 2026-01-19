:github_url: hide

.. _class_JointLimitationCone3D:

JointLimitationCone3D
=====================

**Успадковує:** :ref:`JointLimitation3D<class_JointLimitation3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Обмеження форми конуса, яке взаємодіє з :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Обмеження форми конуса, яке взаємодіє з :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`angle<class_JointLimitationCone3D_property_angle>` | ``1.5707964`` |
   +---------------------------+----------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_JointLimitationCone3D_property_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle** = ``1.5707964`` :ref:`🔗<class_JointLimitationCone3D_property_angle>`

.. rst-class:: classref-property-setget

- |void| **set_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angle**\ (\ )

Діапазон радіусів отвору, утвореного конусом.

\ ``0`` градусів утворює сферу без отвору, ``180`` градусів утворює півсферу, а ``360`` градусів стають порожніми (без обмежень).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
