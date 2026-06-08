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

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState3D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState3D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState3D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState3D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState3D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState3D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

.. _class_PhysicsDirectSpaceState3D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_collide_shape>`

Перевіряє перехрестя форми, за допомогою :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` об'єкта, проти простору. Отриманий масив містить список точок, де форма перетинає інший. Як і з :ref:`intersect_shape()<class_PhysicsDirectSpaceState3D_method_intersect_shape>`, кількість отриманих результатів можна обмежити час обробки.

Повернення очок - список пар контактних точок. Для кожної пари перша у формі, що пропущена в :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` об'єкт, другий - у складеній формі з фізичного простору.

\ **Примітка:** Цей метод не враховує ``motion`` властивість об'єкту.

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

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
