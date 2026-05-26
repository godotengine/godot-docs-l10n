:github_url: hide

.. _class_Geometry2D:

Geometry2D
==========

**Успадковує:** :ref:`Object<class_Object>`

Забезпечує методи для окремих геометричних операцій 2D.

.. rst-class:: classref-introduction-group

Опис
--------

Забезпечує набір допоміжних функцій для створення геометричних форм, складних перехрестя між формами та процесом різних інших геометричних операцій в 2D.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]                     | :ref:`bresenham_line<class_Geometry2D_method_bresenham_line>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polygons<class_Geometry2D_method_clip_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polyline_with_polygon<class_Geometry2D_method_clip_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                  |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`convex_hull<class_Geometry2D_method_convex_hull>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                 |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`decompose_polygon_in_convex<class_Geometry2D_method_decompose_polygon_in_convex>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`exclude_polygons<class_Geometry2D_method_exclude_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment<class_Geometry2D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment_uncapped<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`get_closest_points_between_segments<class_Geometry2D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ )                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polygons<class_Geometry2D_method_intersect_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polyline_with_polygon<class_Geometry2D_method_intersect_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                        |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_circle<class_Geometry2D_method_is_point_in_circle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_polygon<class_Geometry2D_method_is_point_in_polygon>`\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_polygon_clockwise<class_Geometry2D_method_is_polygon_clockwise>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`line_intersects_line<class_Geometry2D_method_line_intersects_line>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ )                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                              | :ref:`make_atlas<class_Geometry2D_method_make_atlas>`\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`merge_polygons<class_Geometry2D_method_merge_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polygon<class_Geometry2D_method_offset_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ )                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polyline<class_Geometry2D_method_offset_polyline>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`point_is_inside_triangle<class_Geometry2D_method_point_is_inside_triangle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                        | :ref:`segment_intersects_circle<class_Geometry2D_method_segment_intersects_circle>`\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`segment_intersects_segment<class_Geometry2D_method_segment_intersects_segment>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_delaunay<class_Geometry2D_method_triangulate_delaunay>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_polygon<class_Geometry2D_method_triangulate_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Geometry2D_PolyBooleanOperation:

.. rst-class:: classref-enumeration

enum **PolyBooleanOperation**: :ref:`🔗<enum_Geometry2D_PolyBooleanOperation>`

.. _class_Geometry2D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_UNION** = ``0``

Створення регіонів, де заповнюється або заповнюється полігони (або обидва).

.. _class_Geometry2D_constant_OPERATION_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_DIFFERENCE** = ``1``

Створіть регіони, де заповнюється предметні полігони, крім того, де заповнюється полігони.

.. _class_Geometry2D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_INTERSECTION** = ``2``

Створіть регіони, де заповнюється як предмет, так і кліп.

.. _class_Geometry2D_constant_OPERATION_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_XOR** = ``3``

Створіть регіони, де заповнюються або затискаються полігони, але не де вони заповнені.

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyJoinType:

.. rst-class:: classref-enumeration

enum **PolyJoinType**: :ref:`🔗<enum_Geometry2D_PolyJoinType>`

.. _class_Geometry2D_constant_JOIN_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_SQUARE** = ``0``

Приєднується до всіх конвекційних кромок ``1 * delta``.

.. _class_Geometry2D_constant_JOIN_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_ROUND** = ``1``

В той час як плоскі доріжки не можуть відмінно простежити дугу, вони приблизні серії акордів дуги.

.. _class_Geometry2D_constant_JOIN_MITER:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_MITER** = ``2``

У зв’язку з нападними краями, які з'єднуються з дуже гострими кутами, виготовляють надмірно довго і вузькі «зірки». Для будь-якої даної кромки при введенні мітки буде перевищена максимальна відстань, "кваре" приєднується.

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyEndType:

.. rst-class:: classref-enumeration

enum **PolyEndType**: :ref:`🔗<enum_Geometry2D_PolyEndType>`

.. _class_Geometry2D_constant_END_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_POLYGON** = ``0``

Кінцеві точки долучаються за допомогою значення :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` та шляху, наповненого полігоном.

.. _class_Geometry2D_constant_END_JOINED:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_JOINED** = ``1``

Кінцеві точки долучаються за допомогою значення :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` та шляху, наповненого полілінією.

.. _class_Geometry2D_constant_END_BUTT:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_BUTT** = ``2``

Кінцеві точки скручуються без розширення.

.. _class_Geometry2D_constant_END_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_SQUARE** = ``3``

Кінцевими точками є квадратні та розширені підрозділи ``delta``.

.. _class_Geometry2D_constant_END_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_ROUND** = ``4``

Кінцеві точки закруглені і розширені за допомогою ``delta`` юнітів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Geometry2D_method_bresenham_line:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **bresenham_line**\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Geometry2D_method_bresenham_line>`

Повертає `лінію Брезенхема <https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm>`__ між точками ``from`` і ``to``. Лінія Брезенхема — це ряд пікселів, які малюють лінію, і завжди мають товщину 1 піксель у кожному рядку та стовпці малюнка (ніколи більше, ні менше). 

Приклад коду для малювання лінії між двома вузлами :ref:`Marker2D<class_Marker2D>` за допомогою серії викликів :ref:`CanvasItem.draw_rect()<class_CanvasItem_method_draw_rect>`: 

::
 
    func _draw(): 
        for pixel in Geometry2D.bresenham_line($MarkerA.position, $MarkerB.position): 
            draw_rect(Rect2(pixel, Vector2.ONE), Color.WHITE) 

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polygons>`

Кліпи ``polygon_a`` проти ``polygon_b`` і повертає масив кліпованих полігонів. Це виконує :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` між полігонами. Повертає порожній масив, якщо ``polygon_b`` повністю перекриття ``polygon_a``.

Якщо ``polygon_b`` закривається ``polygon_a``, повертає зовнішній полігон (кордонний) і внутрішній полігон (отримка), який може відрізнятися за допомогою виклику :ref:`_polygon_clockwise()<class_Geometry2D_private_method__polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polyline_with_polygon>`

Кліпи ``полілін`` проти ``polygon`` і повертає масив затисканих полілінів. Це виконує :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` між поліліном і полігоном. Ця операція може розглядатися як різання лінії закритою формою.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_convex_hull:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **convex_hull**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_convex_hull>`

З огляду на масив :ref:`Vector2<class_Vector2>`\ s, повертає конвекційне корпус як список точок, які відповідають порядку. Останнім моментом є те ж, що і перший.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_decompose_polygon_in_convex:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **decompose_polygon_in_convex**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_decompose_polygon_in_convex>`

Розгортання полігону ``polygon`` в декілька конвекційних корпусів і повертає масив :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_exclude_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **exclude_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_exclude_polygons>`

Мутуально виключає поширену площу, визначену перехрестям ``polygon_a`` і ``polygon_b`` (див. :ref:`intersect_polygons()<class_Geometry2D_method_intersect_polygons>`) і повертає масив виключених полігонів. Це виконує :ref:`OPERATION_XOR<class_Geometry2D_constant_OPERATION_XOR>` між полігонами. Іншими словами, повертає всі, але загальна площа між полігонами.

Операція може призвести до зовнішнього полігону (кордонного) і внутрішнього полігону (холоща) виробництва, який може відрізнятися за допомогою виклику :ref:`_polygon_clockwise()<class_Geometry2D_private_method__polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment>`

Повертаємо точку 2D на сегменті 2D (``s1``, ``s2``), який найближчий до ``point``. Повернутий пункт завжди буде всередині зазначеного сегмента.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`

Повертаємо точку 2D на лінію 2D, визначену (``s1``, ``s2``), що найближче до ``point``. Повернутий пункт може бути всередині сегмента (``s1``, ``s2``) або зовні нього, тобто десь на лінії, що поширюється від сегмента.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_points_between_segments>`

З огляду на два сегменти 2D (``p1``, ``q1``) і (``p2``, ``q2``), знаходить дві точки на два сегменти, які близькі один одному. Повернутися до :ref:`PackedVector2Array<class_PackedVector2Array>`, який містить цю точку на ``p1``, ``q1``, а також точки супроводження на ``p2``, ``q2``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polygons>`

Інтерсекти ``polygon_a`` з ``polygon_b`` і повертає масив інтерсекційних полігонів. Це виконує :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>` між полігонами. Іншими словами, повертає загальну площу, поділений полігонами. Повертає порожній масив, якщо не відбувається перетин.

Операція може призвести до зовнішнього полігону (кордонного) і внутрішнього полігону (холоща) виробництва, який може відрізнятися за допомогою виклику :ref:`_polygon_clockwise()<class_Geometry2D_private_method__polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polyline_with_polygon>`

Перетинає ``polyline`` з ``polygon`` та повертає масив перетнутих поліліній. Це виконує :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>` між полілінією та полігоном. Цю операцію можна розглядати як розсікання лінії із замкнутою формою.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_circle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_circle**\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_circle>`

Повертає ``true``, якщо ``point`` знаходиться всередині кола або якщо воно розташоване точно *on* на межі кола, інакше повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_polygon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_polygon**\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_polygon>`

Повертає ``true``, якщо ``point`` знаходиться всередині ``polygon`` або якщо він розташований точно *on* полігон межа, інакше повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_polygon_clockwise:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_polygon_clockwise**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_polygon_clockwise>`

Повертаємо ``true``, якщо ``polygon`` будуть замовлені годинниковим замовленням, інакше повертає ``false``.

\ **Примітка:** Припустимо, що система координації коробки, де `` +x`` є правою і `` +y``. Якщо використовувати координати екрана (`` +y`` вниз), то результат буде потрібно розбити (тобто ``true`` результат буде вказувати на проти годинникової стрілки.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_line_intersects_line:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **line_intersects_line**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_line_intersects_line>`

Returns the point of intersection between the two lines (``from_a``, ``dir_a``) and (``from_b``, ``dir_b``). Returns a :ref:`Vector2<class_Vector2>`, or ``null`` if the lines are parallel.

\ ``from`` and ``dir`` are *not* endpoints of a line segment or ray but the slope (``dir``) and a known point (``from``) on that line. To get the intersection between two line segments, use :ref:`segment_intersects_segment()<class_Geometry2D_method_segment_intersects_segment>`.


.. tabs::

 .. code-tab:: gdscript

    var from_a = Vector2.ZERO
    var dir_a = Vector2.RIGHT
    var from_b = Vector2.DOWN

    # Returns Vector2(1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(1, -1))
    # Returns Vector2(-1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(-1, -1))
    # Returns null
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2.RIGHT)

 .. code-tab:: csharp

    var fromA = Vector2.Zero;
    var dirA = Vector2.Right;
    var fromB = Vector2.Down;

    // Returns new Vector2(1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(1, -1));
    // Returns new Vector2(-1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(-1, -1));
    // Returns null
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, Vector2.Right);



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_make_atlas:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_atlas**\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_make_atlas>`

З огляду на масив :ref:`Vector2<class_Vector2>`, що представляє плитку, будує атлас. Повернутий словник має два ключі: `` точки`` є :ref:`PackedVector2Array<class_PackedVector2Array>`, що визначає позиції кожної плитки, ``size`` містить загальний розмір всього атласу, як :ref:`Vector2i<class_Vector2i>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_merge_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **merge_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_merge_polygons>`

``polygon_a`` і ``polygon_b`` і повертає масив зливних полігонів. Це виконує :ref:`OPERATION_UNION<class_Geometry2D_constant_OPERATION_UNION>` між полігонами.

Операція може призвести до зовнішнього полігону (корпусного) і декількох внутрішніх полігонів (холок) виробництва яких можна відрізняти за допомогою виклику :ref:`_polygon_clockwise()<class_Geometry2D_private_method__polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ ) :ref:`🔗<class_Geometry2D_method_offset_polygon>`

Збільшує або зменшує ``polygon`` на ``delta`` одиниць (пікселів). Якщо ``delta`` додатне, полігон зростає назовні. Якщо ``delta`` від'ємне, полігон стискає всередину. Повертає масив полігонів, оскільки роздування/зменшення може призвести до появи кількох дискретних полігонів. Повертає порожній масив, якщо ``delta`` від'ємне, а його абсолютне значення приблизно перевищує мінімальні розміри обмежувального прямокутника полігону.

Вершини кожного полігону будуть заокруглені, як визначено ``join_type``.

Операція може призвести до створення зовнішнього полігону (межі) та внутрішнього полігону (діри), які можна розрізнити, викликавши :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

\ **Примітка:** Щоб перевести вершини полігону, помножте їх на :ref:`Transform2D<class_Transform2D>`:


.. tabs::

 .. code-tab:: gdscript

    var polygon = PackedVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
    var offset = Vector2(50, 50)
    polygon = Transform2D(0, offset) * polygon
    print(polygon) # Виводить [(50.0, 50.0), (150.0, 50.0), (150.0, 150.0), (50.0, 150.0)]

 .. code-tab:: csharp

    Vector2[] polygon = [new Vector2(0, 0), new Vector2(100, 0), new Vector2(100, 100), new Vector2(0, 100)];
    var offset = new Vector2(50, 50);
    polygon = new Transform2D(0, offset) * polygon;
    GD.Print((Variant)polygon); // Друкує [(50, 50), (150, 50), (150, 150), (50, 150)]



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polyline:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polyline**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) :ref:`🔗<class_Geometry2D_method_offset_polyline>`

Надуває або здуває ``polyline`` на ``delta`` одиниць (пікселів), створюючи полігони. Якщо ``delta`` додатне, змушує полілінію зростати назовні. Повертає масив полігонів, оскільки надування/здуття може призвести до появи кількох дискретних полігонів. Якщо ``delta`` від'ємне, повертає порожній масив.

Вершини кожного полігону будуть заокруглені, як визначено ``join_type``.

Кінцеві точки кожного полігону будуть заокруглені, як визначено ``end_type``.

Операція може призвести до створення зовнішнього полігону (межі) та внутрішнього полігону (діри), які можна розрізнити, викликавши :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_point_is_inside_triangle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **point_is_inside_triangle**\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Geometry2D_method_point_is_inside_triangle>`

Повертає, якщо ``point`` знаходиться всередині трикутника, визначеного ``a``, ``b`` та ``c``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_circle:

.. rst-class:: classref-method

:ref:`float<class_float>` **segment_intersects_circle**\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_circle>`

З огляду на 2D сегмент (``segment_from``, ``segment_to``), повертає положення на сегменті (як число від 0 до 1), при якому сегмент потрапляє в коло, який знаходиться в положенні ``circle_position`` і має Радіус ``circle_radius``. Якщо сегмент не перетинає коло, -1 повертається (це також так, якщо лінія, що розширює сегмент, перетинає коло, але сегмент не).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_segment**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_segment>`

Checks if two line segments intersect, with line ``a`` between ``from_a`` and ``to_a`` and line ``b`` between ``from_b`` and ``to_b``. If the line segments intersect, the point of intersection is returned as a :ref:`Vector2<class_Vector2>`. If no intersection takes place, ``null`` is returned.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_delaunay**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_delaunay>`

Трианггулює область, зазначену за допомогою дискретного набору ``points``, що немає сенсу всередині обміну будь-якого отриманого трикутника. Повертає ``Packedint32Array``, де кожен трикутник складається з трьох послідовних точкових індексів у ``puls`` (I.E. Повернений масив буде мати `` n * 3 `` елементів, з `` n `` - це кількість знайдених трикутники). Якщо триангуляція не вдалося, порожній ``Packedint32Array`` повертається.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_polygon>`

Триангулює полігон, вказаний точками ``polygon``. Повертаємо :ref:`PackedInt32Array<class_PackedInt32Array>`, де кожен трикутник складається з трьох послідовних індексів точки в ``polygon`` (тобто повернутий масив буде мати ``n * 3`` елементи, з ``n`` є числом знайдених трикутників). Вихідні трикутники завжди будуть проти годинникової стрілки, а контур буде розбитий, якщо це годинниковою стрілкою. Якщо тріангуляція не вдалося, порожня :ref:`PackedInt32Array<class_PackedInt32Array>` повертається.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
