:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**Успадковує:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Flat 2D полігонна форма для використання з оклюзійними кульками :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

**PolygonOccluder3D** зберігає форму полігону, яка може використовуватися системою відключення двигуна. Коли :ref:`OccluderInstance3D<class_OccluderInstance3D>` з **PolygonOccluder3D** вибирається в редакторі, редактор з'явиться вгорі 3D-повідомлення, щоб ви могли додати / перемістити точки. Всі точки повинні бути розміщені на одному 2D літаку, що означає, що не можна створювати довільні форми 3D з єдиною **PolygonOccluder3D**. Щоб використовувати довільні форми 3D, як occluders, скористайтеся :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` або :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

Див. :ref:`OccluderInstance3D<class_OccluderInstance3D>` документацію для інструкцій з налаштування кульлінгу.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Вибракування оклюзії <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Полігон для використання оклюзійних кульок. Полігон може бути опуклим або concave, але він повинен мати якомога менше точок, щоб максимізувати продуктивність.

Полігон повинен * не* мати міжсекційні лінії. В іншому випадку триангуляція не буде (з друкованим повідомленням про помилку).

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
