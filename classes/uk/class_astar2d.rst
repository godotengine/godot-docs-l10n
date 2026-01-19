:github_url: hide

.. _class_AStar2D:

AStar2D
=======

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Реалізація A\* для пошуку найкоротшого шляху між двома вершинами на зв’язному графі в 2D-просторі.

.. rst-class:: classref-introduction-group

Опис
--------

Реалізація алгоритму A\*, який використовується для пошуку найкоротшого шляху між двома вершинами на зв’язному графі у 2D-просторі.

 Дивіться :ref:`AStar3D<class_AStar3D>` для детальнішого пояснення використання цього класу. **AStar2D** — це оболонка для :ref:`AStar3D<class_AStar3D>`, яка забезпечує 2D-координати.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Навігація на основі сітки з AStarGrid2D Демонстрація <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`neighbor_filter_enabled<class_AStar2D_property_neighbor_filter_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_compute_cost<class_AStar2D_private_method__compute_cost>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_estimate_cost<class_AStar2D_private_method__estimate_cost>`\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_filter_neighbor<class_AStar2D_private_method__filter_neighbor>`\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const|                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_AStar2D_method_add_point>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`, weight_scale\: :ref:`float<class_float>` = 1.0\ )                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`are_points_connected<class_AStar2D_method_are_points_connected>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_AStar2D_method_clear>`\ (\ )                                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`connect_points<class_AStar2D_method_connect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`disconnect_points<class_AStar2D_method_disconnect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_available_point_id<class_AStar2D_method_get_available_point_id>`\ (\ ) |const|                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_closest_point<class_AStar2D_method_get_closest_point>`\ (\ to_position\: :ref:`Vector2<class_Vector2>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_position_in_segment<class_AStar2D_method_get_closest_position_in_segment>`\ (\ to_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_id_path<class_AStar2D_method_get_id_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_capacity<class_AStar2D_method_get_point_capacity>`\ (\ ) |const|                                                                                                                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_connections<class_AStar2D_method_get_point_connections>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_count<class_AStar2D_method_get_point_count>`\ (\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_ids<class_AStar2D_method_get_point_ids>`\ (\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_point_path<class_AStar2D_method_get_point_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_AStar2D_method_get_point_position>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_weight_scale<class_AStar2D_method_get_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_point<class_AStar2D_method_has_point>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_disabled<class_AStar2D_method_is_point_disabled>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_AStar2D_method_remove_point>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reserve_space<class_AStar2D_method_reserve_space>`\ (\ num_nodes\: :ref:`int<class_int>`\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_disabled<class_AStar2D_method_set_point_disabled>`\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ )                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_AStar2D_method_set_point_position>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_weight_scale<class_AStar2D_method_set_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ )                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AStar2D_property_neighbor_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **neighbor_filter_enabled** = ``false`` :ref:`🔗<class_AStar2D_property_neighbor_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_neighbor_filter_enabled**\ (\ )

Якщо ``true``, увімкнено фільтрацію сусідів за допомогою :ref:`_filter_neighbor()<class_AStar2D_private_method__filter_neighbor>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AStar2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__compute_cost>`

Викликається під час обчислення вартості між двома з’єднаними точками.

 Зверніть увагу, що ця функція прихована в класі **AStar2D** за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__estimate_cost>`

Викликається під час оцінки вартості між точкою та кінцевою точкою шляху.

 Зверніть увагу, що ця функція прихована в класі **AStar2D** за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_private_method__filter_neighbor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_filter_neighbor**\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar2D_private_method__filter_neighbor>`

Викликається, коли neighborhood входить в обробку, і якщо :ref:`neighbor_filter_enabled<class_AStar2D_property_neighbor_filter_enabled>` має значення ``true``. Якщо повертається значення ``true``, точка не буде оброблена.

Зверніть увагу, що ця функція прихована в класі **AStar2D** за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`, weight_scale\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AStar2D_method_add_point>`

Додає нову точку в задану позицію з указаним ідентифікатором. ``id`` має бути 0 або більше, а ``weight_scale`` має бути 0,0 або більше.

\ ``weight_scale`` множиться на результат :ref:`_compute_cost()<class_AStar2D_private_method__compute_cost>` під час визначення загальної вартості подорожі по сегменту від сусідньої точки до цієї точки. Таким чином, за інших рівних умов алгоритм віддає перевагу точкам із нижчими параметрами ``weight_scale`` для формування шляху.

::

    [gdscript]
    var astar = AStar2D.new()
    astar.add_point(1, Vector2(1, 0), 4) # Додає точку (1, 0) з weight_scale 4 та id 1
    [/gdscript]
    [csharp]
    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(1, 0), 4); // Додає точку (1, 0) з weight_scale 4 та id 1
    [/csharp][/codeblocks]

 Якщо для заданого [param id] вже існує точка, її позиція та шкала ваги оновлюються до заданих значень.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_are_points_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_points_connected**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_AStar2D_method_are_points_connected>`

Повертає, чи існує з’єднання/відрізок між заданими точками. Якщо ``bidirectional`` має значення ``false``, повертає, чи можливий рух від ``id`` до ``to_id`` через цей сегмент.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStar2D_method_clear>`

Очищає всі точки та сегменти.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_connect_points:

.. rst-class:: classref-method

|void| **connect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_connect_points>`

Створює відрізок між заданими точками. Якщо ``bidirectional`` має значення ``false``, дозволено лише рух від ``id`` до ``to_id``, а не у зворотному напрямку.

::

    [gdscript]
    var astar = AStar2D.new()
    astar.add_point(1, Vector2(1, 1))
    astar.add_point(2, Vector2(0, 5))
    astar.connect_points(1, 2, false)
    [/gdscript]
    [csharp]
    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(1, 1));
    astar.AddPoint(2, new Vector2(0, 5));
    astar.ConnectPoints(1, 2, false);
    [/csharp][/codeblocks]

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_disconnect_points:

.. rst-class:: classref-method

|void| **disconnect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_disconnect_points>`

Видаляє відрізок між заданими точками. Якщо ``bidirectional`` має значення ``false``, блокується лише переміщення від ``id`` до ``to_id``, і, можливо, залишається односпрямований сегмент.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_available_point_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_point_id**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_available_point_id>`

Повертає ідентифікатор наступної доступної точки без пов’язаної з нею точки.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_closest_point**\ (\ to_position\: :ref:`Vector2<class_Vector2>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_AStar2D_method_get_closest_point>`

Повертає ідентифікатор найближчої точки до ``to_position``, необов’язково враховуючи вимкнені точки. Повертає ``-1``, якщо в пулі балів немає балів.

\ **Примітка:** якщо кілька точок є найближчими до ``to_position``, буде повернено ту з найменшим ідентифікатором, що гарантує детермінований результат.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_closest_position_in_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_position_in_segment**\ (\ to_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_closest_position_in_segment>`

Повертає найближчу позицію до ``to_position``, яка знаходиться всередині сегмента між двома сполученими точками.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 5))
    astar.connect_points(1, 2)
    var res = astar.get_closest_position_in_segment(Vector2(3, 3)) # Повертає (0, 3)

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 5));
    astar.ConnectPoints(1, 2);
    Vector2 res = astar.GetClosestPositionInSegment(new Vector2(3, 3)); // Повертає (0, 3)



 Результат знаходиться в сегменті, який проходить від ``y = 0`` до ``y = 5``. Це найближча позиція на відрізку до даної точки.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_id_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar2D_method_get_id_path>`

Повертає масив з ідентифікаторами точок, які утворюють шлях, знайдений AStar2D між заданими точками. Масив упорядковується від початкової до кінцевої точки шляху.

Якщо точка ``from_id`` вимкнена, повертає порожній масив (навіть якщо ``from_id == to_id``).

Якщо точка ``from_id`` не вимкнена, то немає дійсного шляху до цілі, а ``parum allow_partial_path`` є ``true``, повертає шлях до точки, найближчої до цільового значення, яку можна досягти.

\ **Примітка.** Якщо ``allow_partial_path`` має значення ``true`` і ``to_id`` вимкнено, пошук може тривати надзвичайно довго.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 1), 1) # Вага за замовчуванням — 1
    astar.add_point(3, Vector2(1, 1))
    astar.add_point(4, Vector2(2, 0))

    astar.connect_points(1, 2, false)
    astar.connect_points(2, 3, false)
    astar.connect_points(4, 3, false)
    astar.connect_points(1, 4, false)

    var res = astar.get_id_path(1, 3) # Повертає [1, 2, 3]

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 1), 1); // Вага за замовчуванням — 1
    astar.AddPoint(3, new Vector2(1, 1));
    astar.AddPoint(4, new Vector2(2, 0));

    astar.ConnectPoints(1, 2, false);
    astar.ConnectPoints(2, 3, false);
    astar.ConnectPoints(4, 3, false);
    astar.ConnectPoints(1, 4, false);
    long[] res = astar.GetIdPath(1, 3); // Повертає [1, 2, 3]



Якщо ви зміните вагу другої точки на 3, тоді результатом буде ``[1, 4, 3]``, тому що тепер, навіть якщо відстань більша, «легше» пройти через точку 4, ніж через точку 2.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_capacity**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_capacity>`

Повертає ємність структури, що підтримує точки, корисно в поєднанні з :ref:`reserve_space()<class_AStar2D_method_reserve_space>`.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_connections:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_connections**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_get_point_connections>`

Повертає масив з ідентифікаторами точок, які утворюють з’єднання з даною точкою.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar2D.new()
    astar.add_point(1, Vector2(0, 0))
    astar.add_point(2, Vector2(0, 1))
    astar.add_point(3, Vector2(1, 1))
    astar.add_point(4, Vector2(2, 0))

    astar.connect_points(1, 2, істина)
    astar.connect_points(1, 3, істина)

    var neighbours = astar.get_point_connections(1) # Повертає [2, 3]

 .. code-tab:: csharp

    var astar = new AStar2D();
    astar.AddPoint(1, new Vector2(0, 0));
    astar.AddPoint(2, new Vector2(0, 1));
    astar.AddPoint(3, new Vector2(1, 1));
    astar.AddPoint(4, new Vector2(2, 0));

    astar.ConnectPoints(1, 2, true);
    astar.ConnectPoints(1, 3, true);

    long[] neighbors = astar.GetPointConnections(1); // Повертає [2, 3]



.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_count>`

Повертає поточну кількість балів у пулі балів.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_ids:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_ids**\ (\ ) :ref:`🔗<class_AStar2D_method_get_point_ids>`

Повертає масив усіх ідентифікаторів точок.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar2D_method_get_point_path>`

Повертає масив із точками, які знаходяться на шляху, знайденому AStar2D між заданими точками. Масив упорядковується від початкової до кінцевої точки шляху.

Якщо точка ``from_id`` вимкнена, повертає порожній масив (навіть якщо ``from_id == to_id``).

Якщо точка ``from_id`` не вимкнена, то немає дійсного шляху до цілі, а ``parum allow_partial_path`` є ``true``, повертає шлях до точки, найближчої до цільового значення, яку можна досягти.

\ **Примітка:** Цей метод не є безпечним для потоків; його можна використовувати лише з одного :ref:`Thread<class_Thread>` за певний час. Розгляньте можливість використання :ref:`Mutex<class_Mutex>`, щоб забезпечити ексклюзивний доступ до однієї теми та уникнути перегонів.

Крім того, коли ``allow_partial_path`` має значення ``true`` і ``to_id`` вимкнено, пошук може тривати надзвичайно довго.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_position>`

Повертає положення точки, пов’язаної з заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_get_point_weight_scale>`

Повертає шкалу ваги точки, пов’язаної з заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_has_point>`

Повертає, чи існує точка, пов’язана з заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_is_point_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_disabled**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar2D_method_is_point_disabled>`

Повертає, чи вимкнено точку для пошуку шляху. За замовчуванням усі точки ввімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_remove_point>`

Вилучає точку, пов’язану з заданим ``id``, із пулу точок.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_reserve_space:

.. rst-class:: classref-method

|void| **reserve_space**\ (\ num_nodes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar2D_method_reserve_space>`

Резервує місце внутрішньо для точок ``num_nodes``. Корисно, якщо ви додаєте відому велику кількість точок одночасно, наприклад, точки на сітці.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_disabled:

.. rst-class:: classref-method

|void| **set_point_disabled**\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar2D_method_set_point_disabled>`

Вимикає або вмикає вказану точку для пошуку шляху. Корисно для створення тимчасової перешкоди.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AStar2D_method_set_point_position>`

Встановлює ``position`` для точки з указаним ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStar2D_method_set_point_weight_scale>`

Встановлює ``weight_scale`` для точки з указаним ``id``. ``weight_scale`` множиться на результат :ref:`_compute_cost()<class_AStar2D_private_method__compute_cost>` під час визначення загальної вартості подорожі по сегменту від сусідньої точки до цієї точки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
