:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**Успадковує:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

3D конвекційна поліхедронова форма використовується для зіткнення фізики.

.. rst-class:: classref-introduction-group

Опис
--------

3D конвекційно-поліхедронова форма, призначена для використання в фізиці. Зазвичай використовується для забезпечення форми :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **ConvexPolygonShape3D** is *solid*, що означає, що він виявляє зіткнення з об'єктів, які повністю всередині нього, на відміну від :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, який є порожнистим. Це робить його більш придатними для виявлення і фізики.

\ **Конвекційний декомпозиція:** Конкавований поліхедрон може розбитись на кілька конвекційних полігедра. Це дозволяє динамічним органам фізики мати складні зіткнені зіткнень (у вартість виконання) і може бути досягнуто за допомогою декількох вузлів **ConvexPolygonShape3D**. Для створення конвекційної декомпозиції з сітки виберіть вузол :ref:`MeshInstance3D<class_MeshInstance3D>`, перейдіть до меню **Mesh**, яке з'являється над переглядом і виберіть **Create Кілька конвекцій Collision Siblings**. Крім того, :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>` можна назвати в скрипті, щоб виконати цю декомпозицію в режимі run-time.

\ **Примітка:** **ConvexPolygonShape3D** швидше перевіряє зіткнення порівняно з :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, але він повільніше, ніж примітивні форми зіткнення, такі як :ref:`SphereShape3D<class_SphereShape3D>` і :ref:`BoxShape3D<class_BoxShape3D>`. Його використання, як правило, обмежуються об'єктами середнього розміру, які не можуть мати їх зіткнення точно представлені примітивними формами.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація тестів з 3D-фізики <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

Список 3D точок, що утворюють конвекційну форму полігону.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
