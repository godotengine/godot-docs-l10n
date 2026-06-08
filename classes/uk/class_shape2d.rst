:github_url: hide

.. _class_Shape2D:

Shape2D
=======

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CapsuleShape2D<class_CapsuleShape2D>`, :ref:`CircleShape2D<class_CircleShape2D>`, :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, :ref:`RectangleShape2D<class_RectangleShape2D>`, :ref:`SegmentShape2D<class_SegmentShape2D>`, :ref:`SeparationRayShape2D<class_SeparationRayShape2D>`, :ref:`WorldBoundaryShape2D<class_WorldBoundaryShape2D>`

Абстрактний базовий клас для 2D форм, що використовуються для фізичного зіткнення.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас для всіх форм 2D, призначених для використання в фізиці.

\ **Продуктивність:** Примітивні форми, особливо :ref:`CircleShape2D<class_CircleShape2D>`, швидко перевіряють зіткнення. :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` є повільніше, і :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` є найповільніше.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape2D_property_custom_solver_bias>` | ``0.0`` |
   +---------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide<class_Shape2D_method_collide>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_and_get_contacts<class_Shape2D_method_collide_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide_with_motion<class_Shape2D_method_collide_with_motion>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_with_motion_and_get_contacts<class_Shape2D_method_collide_with_motion_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`draw<class_Shape2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ )                                                                                                                                                                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_rect<class_Shape2D_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Shape2D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape2D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

Призначений для користувача маніпулятор форми. Захищаючи, скільки органів реагують на виконання контакту, коли ця форма береться.

При налаштуванні до ``0``, значення за замовчуванням від :ref:`ProjectSettings.physics/2d/solver/default_contact_bias<class_ProjectSettings_property_physics/2d/solver/default_contact_bias>` використовується.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Shape2D_method_collide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide>`

Повертаємо ``true``, якщо ця форма збігається з іншим.

Цей метод потребує матриці перетворення для цієї форми (``Local_xform``), форми для перевірки зіткнень з (``with_shape``), і матриці перетворення цієї форми (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide_and_get_contacts>`

Повертає список пар контактної точки, де ця форма торкається іншого.

Якщо немає зіткнень, повертається список порожній. В іншому випадку повернутий список містить контактні точки, розміщені в парах, з записами, що чергуються між точками на межі цієї форми та пунктами на межі ``with_shape``.

Пара зіткнення А, Б можна використовувати для розрахунку норми зіткнення з ``(B - A).normalized()``, а глибина зіткнення з ``(B - A). Довжина()``. Ця інформація, як правило, використовується для окремих форм, особливо в розчинниках зіткнення.

Цей метод потребує матриці перетворення для цієї форми (``Local_xform``), форми для перевірки зіткнень з (``with_shape``), і матриці перетворення цієї форми (``shape_xform``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_with_motion**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion>`

Повертаємо вашу увагу на те, що ця форма буде відповідати іншим, якщо надана дія була застосована.

Цей метод потребує матриці перетворення для цієї форми (``Local_xform``), руху для тестування на цю форму (``Local_motion``), форму для перевірки зіткнень (``with_shape``), матриці перетворення цієї форми (``shape_xform``), а руху для тестування на інший об'єкт (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_with_motion_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion_and_get_contacts>`

Повертає список пар контактної точки, де ця форма доторкнеться іншого, якщо надана дія була застосована.

Якщо не буде зіткнень, повернутий список порожній. В іншому випадку повернутий список містить контактні точки, розміщені в парах, з записами, що чергуються між точками на межі цієї форми та пунктами на межі ``with_shape``.

Пара зіткнення А, Б можна використовувати для розрахунку норми зіткнення з ``(B - A).normalized()``, а глибина зіткнення з ``(B - A). Довжина()``. Ця інформація, як правило, використовується для окремих форм, особливо в розчинниках зіткнення.

Цей метод потребує матриці перетворення для цієї форми (``Local_xform``), руху для тестування на цю форму (``Local_motion``), форму для перевірки зіткнень (``with_shape``), матриці перетворення цієї форми (``shape_xform``), а руху для тестування на інший об'єкт (``shape_motion``).

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Shape2D_method_draw>`

Накладає тверду форму на :ref:`CanvasItem<class_CanvasItem>` з :ref:`RenderingServer<class_RenderingServer>` API, заповнений заданим ``color``. Точний спосіб малювання є специфічним для кожної форми і не можна налаштувати.

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Shape2D_method_get_rect>`

Повертаємо :ref:`Rect2<class_Rect2>`, що представляє фігури, що межують.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
