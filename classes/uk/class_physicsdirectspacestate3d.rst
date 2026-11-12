:github_url: hide

.. _class_PhysicsDirectSpaceState3D:

PhysicsDirectSpaceState3D
=========================

**Успадковує:** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`PhysicsDirectSpaceState3DExtension<class_PhysicsDirectSpaceState3DExtension>`

Забезпечує прямий доступ до фізичного простору в :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Надає прямий доступ до фізичного простору в :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Він використовується переважно для виконання запитів до об'єктів та областей, що знаходяться в заданому просторі.

\ **Примітка:** Цей клас не призначений для безпосереднього створення екземплярів. Використовуйте :ref:`World3D.direct_space_state<class_World3D_property_direct_space_state>`, щоб отримати стан тривимірного фізичного простору світу.

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

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState3D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`cast_motion_into<class_PhysicsDirectSpaceState3D_method_cast_motion_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsCastMotionResult3D<class_PhysicsCastMotionResult3D>`\ )                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState3D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`collide_shape_into<class_PhysicsDirectSpaceState3D_method_collide_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsCollideShapeResult3D<class_PhysicsCollideShapeResult3D>`\ )         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState3D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_rest_info_into<class_PhysicsDirectSpaceState3D_method_get_rest_info_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsGetRestInfoResult3D<class_PhysicsGetRestInfoResult3D>`\ )           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState3D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_point_into<class_PhysicsDirectSpaceState3D_method_intersect_point_into>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, result\: :ref:`PhysicsIntersectPointResult3D<class_PhysicsIntersectPointResult3D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState3D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_ray_into<class_PhysicsDirectSpaceState3D_method_intersect_ray_into>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, result\: :ref:`PhysicsIntersectRayResult3D<class_PhysicsIntersectRayResult3D>`\ )             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState3D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_shape_into<class_PhysicsDirectSpaceState3D_method_intersect_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsIntersectShapeResult3D<class_PhysicsIntersectShapeResult3D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsDirectSpaceState3D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_cast_motion>`

Перевіряє, наскільки далеко може рухатися :ref:`Shape3D<class_Shape3D>` без зіткнення. Усі параметри запиту, включаючи фігуру та рух, надаються через об'єкт :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`.

Повертає масив із безпечними та небезпечними пропорціями (між 0 та 1) руху. Безпечна пропорція – це максимальна частка руху, яку можна здійснити без зіткнення. Небезпечна пропорція – це мінімальна частка відстані, на яку потрібно переміститися для зіткнення. Якщо зіткнення не виявлено, буде повернуто результат ``[1.0, 1.0]``.

\ **Примітка:** Будь-які :ref:`Shape3D<class_Shape3D>`, з якими фігура вже зіткнеться, наприклад, всередині, будуть ігноруватися. Використовуйте метод ``collide_shape``, щоб визначити :ref:`Shape3D<class_Shape3D>`, з якими фігура вже зіткнеться.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_cast_motion_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **cast_motion_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsCastMotionResult3D<class_PhysicsCastMotionResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_cast_motion_into>`

Checks how far a :ref:`Shape3D<class_Shape3D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object.

If the query is successful, this method returns ``true`` and writes the motion results into the :ref:`PhysicsCastMotionResult3D<class_PhysicsCastMotionResult3D>` object passed in ``result``. If no collision occurs, it returns ``false``.

\ **Note:** Any :ref:`Shape3D<class_Shape3D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape_into()<class_PhysicsDirectSpaceState3D_method_collide_shape_into>` to determine the :ref:`Shape3D<class_Shape3D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_collide_shape>`

Перевіряє перехрестя форми, за допомогою :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` об'єкта, проти простору. Отриманий масив містить список точок, де форма перетинає інший. Як і з :ref:`intersect_shape()<class_PhysicsDirectSpaceState3D_method_intersect_shape>`, кількість отриманих результатів можна обмежити час обробки.

Повернення очок - список пар контактних точок. Для кожної пари перша у формі, що пропущена в :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` об'єкт, другий - у складеній формі з фізичного простору.

\ **Примітка:** Цей метод не враховує ``motion`` властивість об'єкту.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_collide_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsCollideShapeResult3D<class_PhysicsCollideShapeResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_collide_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object, against the space.

If intersections are found, this method returns ``true`` and writes the collision points into the :ref:`PhysicsCollideShapeResult3D<class_PhysicsCollideShapeResult3D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of returned results can be limited using :ref:`PhysicsCollideShapeResult3D.max_collisions<class_PhysicsCollideShapeResult3D_property_max_collisions>`, to reduce the processing time.

\ **Note:** This method does not take into account the ``motion`` property of the object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_get_rest_info>`

Перевіряє перетини фігури, заданої через об’єкт :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, з пробілом. Якщо вона стикається з кількома фігурами, вибирається найближча. Повернений об’єкт – це словник, що містить такі поля:

\ ``collider_id``: ідентифікатор об’єкта зіткнення. 

\ ``лінійна_швидкість``: швидкість об’єкта, що зіткнувся :ref:`Vector3<class_Vector3>`. Якщо об’єкт є :ref:`Area3D<class_Area3D>`, результатом є ``(0, 0, 0)``. 

\ ``нормаль``: нормаль зіткнення фігури запиту в точці перетину, спрямована від об’єкта, що перетинається. 

\ ``точка``: точка перетину. 

\ ``rid``: :ref:`RID<class_RID>` об’єкта, що перетинається. 

\ ``форма``: індекс фігури, що зіштовхується. 

Якщо фігура нічого не перетинає, замість неї повертається порожній словник. 

\ **Примітка.** Цей метод не враховує властивість ``motion`` об’єкта.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_get_rest_info_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_rest_info_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsGetRestInfoResult3D<class_PhysicsGetRestInfoResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_get_rest_info_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object, against the space.

If the shape collides with one or more shapes, this method returns ``true`` and writes the nearest collision information into the :ref:`PhysicsGetRestInfoResult3D<class_PhysicsGetRestInfoResult3D>` object passed in ``result``. If no collisions occur, it returns ``false``.

\ **Note:** This method does not take into account the ``motion`` property of the object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_point>`

Перевірте, чи є точка всередині будь-якої твердої форми. Положення та інші параметри визначаються за допомогою :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`. Форми точки всередині подаються в масиві, що містить словники з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``rid``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма``: Індекс форми згортання форми.

Кількість перехрестя може бути обмежена параметром ``max_results``, щоб скоротити час обробки.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_point_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_point_into**\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, result\: :ref:`PhysicsIntersectPointResult3D<class_PhysicsIntersectPointResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_point_into>`

Checks whether a point is inside any solid shape. Position and other parameters are defined through :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`.

If one or more shapes overlap the point, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectPointResult3D<class_PhysicsIntersectPointResult3D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectPointResult3D.max_intersections<class_PhysicsIntersectPointResult3D_property_max_intersections>`, to reduce the processing time.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_ray>`

Включає промінь в заданому просторі. Рентгенівська позиція та інші параметри визначаються за допомогою :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`. Повернутий об'єкт є словником з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``нормальний``: Нормальною поверхнею об'єкта на місці перетину, або ``Vector3(0, 0, 0)``, якщо промен починається всередині форми і :ref:`PhysicsRayQueryParameters3D.hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>` є ``true``.

\ ``позиція``: Точка перетину.

\ ``face_index``: Індекс обличчя на перетині точки.

\ **Примітка:** Повертає дійсний номер тільки якщо міжсектифікована форма є :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`. В іншому випадку ``-1`` повертається.

\ `` рід``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма``: Індекс форми згортання форми.

Якщо промен не перев'язував нічого, то повернувся порожній словник.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_ray_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_ray_into**\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`, result\: :ref:`PhysicsIntersectRayResult3D<class_PhysicsIntersectRayResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_ray_into>`

Intersects a ray in a given space. Ray position and other parameters are defined through :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`.

If the ray hits a shape, this method returns ``true`` and writes the intersection information into the :ref:`PhysicsIntersectRayResult3D<class_PhysicsIntersectRayResult3D>` object passed in ``result``. If nothing is hit, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_shape>`

Перевіряє перехрестя форми, за допомогою :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` об'єкта, проти простору. У масиві, що містить словники з наступними полями:

\ ``collider``: Об'єкт зв'язку.

\ ``collider_id``: Код об'єкта.

\ ``rid``: Інтерсекційний об'єкт :ref:`RID<class_RID>`.

\ `` форма ``: Індекс форми згортання форми.

Кількість перехрестя може бути обмежена параметром ``max_results``, щоб скоротити час обробки.

\ **Примітка:** Цей метод не враховує ``motion`` властивість об'єкту.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsIntersectShapeResult3D<class_PhysicsIntersectShapeResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult3D<class_PhysicsIntersectShapeResult3D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult3D.max_intersections<class_PhysicsIntersectShapeResult3D_property_max_intersections>`, to reduce the processing time.

\ **Note:** This method does not take into account the ``motion`` property of the object.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
