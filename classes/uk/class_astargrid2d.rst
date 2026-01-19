:github_url: hide

.. _class_AStarGrid2D:

AStarGrid2D
===========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Реалізація A\* для пошуку найкоротшого шляху між двома точками на частковій двовимірній сітці.

.. rst-class:: classref-introduction-group

Опис
--------

**AStarGrid2D** — це варіант :ref:`AStar2D<class_AStar2D>`, який спеціалізується на часткових двовимірних сітках. Його простіше використовувати, оскільки не потрібно вручну створювати точки та з’єднувати їх разом. Цей клас також підтримує кілька типів евристик, режими діагонального переміщення та режим стрибків для прискорення обчислень.

 Щоб використовувати **AStarGrid2D**, вам потрібно лише встановити :ref:`region<class_AStarGrid2D_property_region>` сітки, за бажанням :ref:`cell_size<class_AStarGrid2D_property_cell_size>`, а потім викликати метод :ref:`update()<class_AStarGrid2D_method_update>`:


.. tabs::

 .. code-tab:: gdscript

    var astar_grid = AStarGrid2D.new()
    astar_grid.region = Rect2i(0, 0, 32, 32)
    astar_grid.cell_size = Vector2(16, 16)
    astar_grid.update()
    print(astar_grid.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # друкує (0, 0), (1, 1), (2, 2), (3, 3), (3, 4)
    print(astar_grid.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # друкує (0, 0), (16, 16), (32, 32), (48, 48), (48, 64)

 .. code-tab:: csharp

    AStarGrid2D astarGrid = new AStarGrid2D();
    astarGrid.Region = new Rect2I(0, 0, 32, 32);
    astarGrid.CellSize = new Vector2I(16, 16);
    astarGrid.Update();
    GD.Print(astarGrid.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // виводить (0, 0), (1, 1), (2, 2), (3, 3), (3, 4)
    GD.Print(astarGrid.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // виводить (0, 0), (16, 16), (32, 32), (48, 48), (48, 64)



 Щоб видалити точку з сітки пошуку контурів, її потрібно встановити як «суцільну» за допомогою :ref:`set_point_solid()<class_AStarGrid2D_method_set_point_solid>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Навігація на основі сітки з AStarGrid2D Демонстрація <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`CellShape<enum_AStarGrid2D_CellShape>`       | :ref:`cell_shape<class_AStarGrid2D_property_cell_shape>`                                 | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`cell_size<class_AStarGrid2D_property_cell_size>`                                   | ``Vector2(1, 1)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_compute_heuristic<class_AStarGrid2D_property_default_compute_heuristic>`   | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_estimate_heuristic<class_AStarGrid2D_property_default_estimate_heuristic>` | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` | :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>`                           | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`jumping_enabled<class_AStarGrid2D_property_jumping_enabled>`                       | ``false``              |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`offset<class_AStarGrid2D_property_offset>`                                         | ``Vector2(0, 0)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>`                        | :ref:`region<class_AStarGrid2D_property_region>`                                         | ``Rect2i(0, 0, 0, 0)`` |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                    | :ref:`size<class_AStarGrid2D_property_size>`                                             | ``Vector2i(0, 0)``     |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_compute_cost<class_AStarGrid2D_private_method__compute_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_estimate_cost<class_AStarGrid2D_private_method__estimate_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                            |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_AStarGrid2D_method_clear>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_solid_region<class_AStarGrid2D_method_fill_solid_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_weight_scale_region<class_AStarGrid2D_method_fill_weight_scale_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ )                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]     | :ref:`get_id_path<class_AStarGrid2D_method_get_id_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_point_data_in_region<class_AStarGrid2D_method_get_point_data_in_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`              | :ref:`get_point_path<class_AStarGrid2D_method_get_point_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_point_position<class_AStarGrid2D_method_get_point_position>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_point_weight_scale<class_AStarGrid2D_method_get_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_dirty<class_AStarGrid2D_method_is_dirty>`\ (\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_bounds<class_AStarGrid2D_method_is_in_bounds>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_boundsv<class_AStarGrid2D_method_is_in_boundsv>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_point_solid<class_AStarGrid2D_method_is_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_solid<class_AStarGrid2D_method_set_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_weight_scale<class_AStarGrid2D_method_set_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`update<class_AStarGrid2D_method_update>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AStarGrid2D_Heuristic:

.. rst-class:: classref-enumeration

enum **Heuristic**: :ref:`🔗<enum_AStarGrid2D_Heuristic>`

.. _class_AStarGrid2D_constant_HEURISTIC_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_EUCLIDEAN** = ``0``

`Евклідова евристика <https://en.wikipedia.org/wiki/Euclidean_distance>`__, яка використовуватиметься для пошуку шляху за такою формулою:

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resuit = sqrt(dx * dx + dy * dy)

\ **Примітка:** Це також внутрішня евристика, яка використовується в :ref:`AStar3D<class_AStar3D>` і :ref:`AStar2D<class_AStar2D>` за замовчуванням (із включенням можливої координати осі z).

.. _class_AStarGrid2D_constant_HEURISTIC_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MANHATTAN** = ``1``

`Манхеттенська евристика <https://en.wikipedia.org/wiki/Taxicab_geometry>`__, яка використовуватиметься для пошуку шляху за такою формулою:

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resuit = dx + dy

\ **Примітка:** Ця евристика призначена для використання з 4-сторонніми ортогональними рухами, які забезпечуються встановленням :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>` значення :ref:`DIAGONAL_MODE_NEVER<class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER>`.

.. _class_AStarGrid2D_constant_HEURISTIC_OCTILE:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_OCTILE** = ``2``

Октильна евристика для пошуку шляху за такою формулою:

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    f = sqrt(2) - 1
    resuit = (dx < dy) ? f * dx + dy : f * dy + dx;

.. _class_AStarGrid2D_constant_HEURISTIC_CHEBYSHEV:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_CHEBYSHEV** = ``3``

`Евристика Чебишева <https://en.wikipedia.org/wiki/Chebyshev_distance>`__, яка буде використовуватися для пошуку шляху за такою формулою:

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resuit = max(dx, dy)

.. _class_AStarGrid2D_constant_HEURISTIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MAX** = ``4``

Представляє розмір переліку :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`.

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_DiagonalMode:

.. rst-class:: classref-enumeration

enum **DiagonalMode**: :ref:`🔗<enum_AStarGrid2D_DiagonalMode>`

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ALWAYS** = ``0``

Алгоритм пошуку шляху ігноруватиме суцільні сусіди навколо цільової комірки та допускатиме проходження за допомогою діагоналей.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_NEVER** = ``1``

Алгоритм пошуку шляху ігноруватиме всі діагоналі, а шлях завжди буде ортогональним.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE** = ``2``

Алгоритм пошуку шляху уникатиме використання діагоналей, якщо принаймні дві перешкоди розміщені навколо сусідніх комірок конкретного сегмента шляху.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES** = ``3``

Алгоритм пошуку шляху уникає використання діагоналей, якщо навколо сусідніх комірок певного сегмента шляху є будь-яка перешкода.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_MAX** = ``4``

Представляє розмір переліку :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_CellShape:

.. rst-class:: classref-enumeration

enum **CellShape**: :ref:`🔗<enum_AStarGrid2D_CellShape>`

.. _class_AStarGrid2D_constant_CELL_SHAPE_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_SQUARE** = ``0``

Форма клітини прямокутна.

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_RIGHT** = ``1``

Ромбова форма комірки (для ізометричного вигляду). Розташування координат комірки, де горизонтальна вісь йде вгору-вправо, а вертикальна – вниз-вправо.

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_DOWN** = ``2``

Ромбова форма комірки (для ізометричного вигляду). Розташування координат комірки, де горизонтальна вісь йде вниз-праворуч, а вертикальна – вниз-ліворуч.

.. _class_AStarGrid2D_constant_CELL_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_MAX** = ``3``

Представляє розмір переліку :ref:`CellShape<enum_AStarGrid2D_CellShape>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AStarGrid2D_property_cell_shape:

.. rst-class:: classref-property

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **cell_shape** = ``0`` :ref:`🔗<class_AStarGrid2D_property_cell_shape>`

.. rst-class:: classref-property-setget

- |void| **set_cell_shape**\ (\ value\: :ref:`CellShape<enum_AStarGrid2D_CellShape>`\ )
- :ref:`CellShape<enum_AStarGrid2D_CellShape>` **get_cell_shape**\ (\ )

Форма клітини. Впливає на те, як позиції розміщуються в сітці. Якщо змінено, потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>` перед пошуком наступного шляху.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **cell_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AStarGrid2D_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_cell_size**\ (\ )

Розмір клітинки точки, яка буде застосована для обчислення кінцевої позиції точки, яку повертає :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>`. Якщо змінено, потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>` перед пошуком наступного шляху.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_compute_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_compute_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_compute_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_compute_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_compute_heuristic**\ (\ )

Стандартний :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`, який використовуватиметься для обчислення вартості між двома точками, якщо :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` не перевизначено.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_estimate_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_estimate_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_estimate_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_estimate_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_estimate_heuristic**\ (\ )

Стандартний :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`, який використовуватиметься для обчислення вартості між точкою та кінцевою точкою, якщо :ref:`_estimate_cost()<class_AStarGrid2D_private_method__estimate_cost>` не було замінено.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_diagonal_mode:

.. rst-class:: classref-property

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **diagonal_mode** = ``0`` :ref:`🔗<class_AStarGrid2D_property_diagonal_mode>`

.. rst-class:: classref-property-setget

- |void| **set_diagonal_mode**\ (\ value\: :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ )
- :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **get_diagonal_mode**\ (\ )

Спеціальний режим :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`, який змусить шлях уникати або приймати вказані діагоналі.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_jumping_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **jumping_enabled** = ``false`` :ref:`🔗<class_AStarGrid2D_property_jumping_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_jumping_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_jumping_enabled**\ (\ )

Вмикає або вимикає стрибки для пропуску проміжних точок і прискорює алгоритм пошуку.

\ **Примітка:** Наразі ввімкнення вимикає врахування масштабування ваги під час пошуку шляху.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Зміщення сітки, яке буде застосовано для обчислення результуючої позиції точки, яку повертає :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>`. Якщо змінено, потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>` перед пошуком наступного шляху.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_AStarGrid2D_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_region**\ (\ )

Область клітинок сітки, доступна для пошуку шляху. Якщо змінено, потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>` перед пошуком наступного шляху.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

**Застаріло:** Use :ref:`region<class_AStarGrid2D_property_region>` instead.

Розмір сітки (кількість комірок розміром :ref:`cell_size<class_AStarGrid2D_property_cell_size>` на кожній осі). Якщо змінено, потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>` перед пошуком наступного шляху.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AStarGrid2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__compute_cost>`

Викликається під час обчислення вартості між двома з’єднаними точками.

 Зауважте, що ця функція прихована в класі **AStarGrid2D** за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__estimate_cost>`

Викликається під час розрахунку вартості між двома з’єднаними точками.

Зверніть увагу, що ця функція прихована в класі **AStarGrid2D** для замовчування.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_clear>`

Очищає сітку та встановлює :ref:`region<class_AStarGrid2D_property_region>` на ``Rect2i(0, 0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_solid_region:

.. rst-class:: classref-method

|void| **fill_solid_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_fill_solid_region>`

Заповнює задану область ``region`` у сітці вказаним значенням для суцільного прапора.

\ **Примітка:** Виклик :ref:`update()<class_AStarGrid2D_method_update>` не потрібен після виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_weight_scale_region:

.. rst-class:: classref-method

|void| **fill_weight_scale_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_fill_weight_scale_region>`

Заповнює задану область ``region`` у сітці вказаним значенням для шкали ваги.

\ **Примітка:** Виклик :ref:`update()<class_AStarGrid2D_method_update>` не потрібен після виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_id_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_id_path>`

Повертає масив з ідентифікаторами точок, які утворюють шлях, знайдений AStar2D між заданими точками. Масив упорядковується від початкової до кінцевої точки шляху.

Якщо точка ``from_id`` вимкнена, повертає порожній масив (навіть якщо ``from_id == to_id``).

Якщо точка ``from_id`` не вимкнена, то немає дійсного шляху до цілі, а ``parum allow_partial_path`` є ``true``, повертає шлях до точки, найближчої до цільового значення, яку можна досягти.

\ **Примітка.** Якщо ``allow_partial_path`` має значення ``true`` і ``to_id`` твердо, пошук може тривати надзвичайно довго.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_data_in_region:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_point_data_in_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_data_in_region>`

Повертає масив словників із точковими даними (``id``: :ref:`Vector2i<class_Vector2i>`, ``position``: :ref:`Vector2<class_Vector2>`, ``solid``: :ref:`bool<class_bool>`, ``weight_scale``: :ref:`float<class_float>`) у ``області param``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_point_path>`

Повертає масив із точками, які знаходяться на шляху, знайденому **AStarGrid2D** між заданими точками. Масив упорядковується від початкової до кінцевої точки шляху.

Якщо точка ``from_id`` вимкнена, повертає порожній масив (навіть якщо ``from_id == to_id``).

Якщо точка ``from_id`` не вимкнена, то немає дійсного шляху до цілі, а ``parum allow_partial_path`` є ``true``, повертає шлях до точки, найближчої до цільового значення, яку можна досягти.

\ **Примітка:** Цей метод не є безпечним для потоків; його можна використовувати лише з одного :ref:`Thread<class_Thread>` за певний час. Розгляньте можливість використання :ref:`Mutex<class_Mutex>`, щоб забезпечити ексклюзивний доступ до однієї теми та уникнути перегонів.

Крім того, коли ``allow_partial_path`` має значення ``true`` і ``to_id`` твердо, пошук може тривати надзвичайно довго.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_position>`

Повертає положення точки, пов’язаної з заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_weight_scale>`

Повертає шкалу ваги точки, пов’язаної з заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_dirty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dirty**\ (\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_dirty>`

Вказує на те, що параметри сітки було змінено, і потрібно викликати :ref:`update()<class_AStarGrid2D_method_update>`.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_bounds:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_bounds**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_bounds>`

Повертає ``true``, якщо ``x`` і ``y`` є дійсною координацією сітки (id), тобто якщо він знаходиться всередині :ref:`region<class_AStarGrid2D_property_region>`. ``region.has_point(Vector2i(x, y)``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_boundsv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_boundsv**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_boundsv>`

Повертаємо ``true``, якщо вектор ``id`` є вірною сітчастою координацією, тобто якщо він знаходиться всередині ``члена``. ``region.has_point(id)``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_point_solid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_point_solid>`

Повертає ``true``, якщо для точки вимкнено пошук шляху. За замовчуванням усі точки ввімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_solid:

.. rst-class:: classref-method

|void| **set_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_solid>`

Вимикає або вмикає вказану точку для пошуку шляху. Корисно для створення перешкод. За замовчуванням усі точки ввімкнено.

\ **Примітка:** Виклик :ref:`update()<class_AStarGrid2D_method_update>` не потрібен після виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_weight_scale>`

Встановлює ``weight_scale`` для точки з указаним ``id``. ``weight_scale`` множиться на результат :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` під час визначення загальної вартості подорожі по сегменту від сусідньої точки до цієї точки.

\ **Примітка:** Виклик :ref:`update()<class_AStarGrid2D_method_update>` не потрібен після виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_update>`

Оновлює внутрішній стан сітки відповідно до параметрів, щоб підготувати її до пошуку шляху. Потрібно викликати, якщо такі параметри, як :ref:`region<class_AStarGrid2D_property_region>`, :ref:`cell_size<class_AStarGrid2D_property_cell_size>` або :ref:`offset<class_AStarGrid2D_property_offset>` змінюються. :ref:`is_dirty()<class_AStarGrid2D_method_is_dirty>` поверне ``true``, якщо це так і це потрібно викликати.

\ **Примітка: ** Усі дані точок (твердість і шкала ваги) буде видалено.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
