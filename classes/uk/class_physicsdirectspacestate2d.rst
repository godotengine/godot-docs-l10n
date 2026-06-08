:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**Успадковує:** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

Забезпечує прямий доступ до фізичного простору в :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Надає прямий доступ до фізичного простору в :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Він використовується переважно для виконання запитів до об'єктів та областей, що знаходяться в заданому просторі.

\ **Примітка:** Цей клас не призначений для безпосереднього створення екземплярів. Використовуйте :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>`, щоб отримати стан фізичного двовимірного простору світу.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Рей-розміщення <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

Перевіряє, як далеко :ref:`Shape2D<class_Shape2D>` може переміщатися без узгодження. Всі параметри для запиту, включаючи форму і рух, поставляються через об'єкт :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`.

Повертає масив з безпечними і небезпечними пропорціями (закінчення 0 і 1) руху. Безпечна пропорція - максимальна дробова частка руху, яка може бути виконана без зіткнення. Небезпечна пропорція є мінімальною часткою відстані, яка повинна бути перенесена на зіткнення. Якщо ви не виявите результат ``[1.0, 1.0]`` буде повернено.

\ **Примітка:** Будь-який :ref:`Shape2D<class_Shape2D>`, що форма вже співає з e.g. всередині, буде ігноруватися. Використовуйте :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>` для визначення :ref:`Shape2D<class_Shape2D>`, що форма вже відповідає.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

Перевіряє перехрестя форми, надані через об'єкт :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`. Отриманий масив містить список точок, де форма перетинає інший. Як і з :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>`, кількість отриманих результатів можна обмежити час обробки.

Повернення очок - список пар контактних точок. Для кожної пари перша у формі, що пропущена в :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` об'єкт, другий - у складеній формі з фізичного простору.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

Перевіряє перетини фігури, заданої через об'єкт :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, з простором. Якщо фігура стикається з кількома фігурами, вибирається найближча. Повернений об'єкт – це словник, що містить такі поля:

\ ``collider_id``: Ідентифікатор об'єкта, що стикається.

\ ``linear_velocity``: Швидкість об'єкта, що стикається :ref:`Vector2<class_Vector2>`. Якщо об'єкт є :ref:`Area2D<class_Area2D>`, результатом є ``(0, 0)``.

\ ``normal``: Нормаль зіткнення фігури запиту в точці перетину, спрямована від об'єкта, що стикається.

\ ``point``: Точка перетину.

\ ``rid``: :ref:`RID<class_RID>` об'єкта, що стикається.

\ ``shape``: Індекс фігури, що стикається.

Якщо фігура нічого не перетинала, то повертається порожній словник.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

Перевірте, чи є точка всередині будь-якої твердої форми. Положення та інші параметри визначаються за допомогою :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`. Форми точки всередині подаються в масиві, що містить словники з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``rid``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма``: Індекс форми згортання форми.

Кількість перехрестя може бути обмежена параметром ``max_results``, щоб скоротити час обробки.

\ **Примітка:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` і :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` в ``Сегменти`` режим побудови не твердих форм. Тому вони не будуть виявлені.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

Включає промінь в заданому просторі. Рентгенівська позиція та інші параметри визначаються за допомогою :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`. Повернутий об'єкт є словником з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``нормальний``: Нормальна поверхня об'єкта на місці перетину, або ``Vector2(0, 0)``, якщо промен починається всередині форми і :ref:`PhysicsShapeQueryParameters2D.hit_from_inside<class_PhysicsShapeQueryParameters2D_property_hit_from_inside>` ``true``.

\ ``позиція``: Точка перетину.

\ ``rid``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма``: Індекс форми згортання форми.

Якщо промен не перев'язував нічого, то повернувся порожній словник.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

Перевіряє перехрестя форми, надані через об'єкт :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`. У масиві, що містить словники з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``rid``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма ``: Індекс форми згортання форми.

Кількість перехрестя може бути обмежена параметром ``max_results``, щоб скоротити час обробки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
