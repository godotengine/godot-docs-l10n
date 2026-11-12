:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

Предоставляет прямой доступ к физическому пространству в :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет прямой доступ к физическому пространству в :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Используется в основном для выполнения запросов к объектам и областям, находящимся в заданном пространстве.

\ **Примечание:** Этот класс не предназначен для непосредственного создания экземпляра. Используйте :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>`, чтобы получить состояние физического 2D-пространства мира.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Трассировка лучей <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`cast_motion_into<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ )                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`collide_shape_into<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ )         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_rest_info_into<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ )           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_point_into<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_ray_into<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ )             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_shape_into<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

Проверяет, насколько далеко :ref:`Shape2D<class_Shape2D>` может двигаться без столкновений. Все параметры для запроса, включая форму и движение, предоставляются через объект :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`.

Возвращает массив с безопасными и небезопасными пропорциями (от 0 до 1) движения. Безопасная пропорция — это максимальная часть движения, которую можно выполнить без столкновений. Небезопасная пропорция — это минимальная часть расстояния, которое необходимо пройти для столкновения. Если столкновение не обнаружено, будет возвращен результат ``[1.0, 1.0]``.

\ **Примечание:** Любые :ref:`Shape2D<class_Shape2D>`, с которыми фигура уже сталкивается, например, внутри, будут игнорироваться. Используйте :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>`, чтобы определить :ref:`Shape2D<class_Shape2D>`, с которыми фигура уже сталкивается.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_cast_motion_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **cast_motion_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`

Checks how far a :ref:`Shape2D<class_Shape2D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object.

If the query is successful, this method returns ``true`` and writes the motion results into the :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>` object passed in ``result``. If no collision occurs, it returns ``false``.

\ **Note:** Any :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape_into()<class_PhysicsDirectSpaceState2D_method_collide_shape_into>` to determine the :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

Проверяет пересечения формы, заданной через объект :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, с пространством. Результирующий массив содержит список точек, где форма пересекает другую. Как и в случае с :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>`, количество возвращаемых результатов может быть ограничено для экономии времени обработки.

Возвращаемые точки представляют собой список пар точек контакта. Для каждой пары первая находится в форме, переданной в объект :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, вторая находится в столкновенной форме из физического пространства.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If intersections are found, this method returns ``true`` and writes the collision points into the :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of returned results can be limited using :ref:`PhysicsCollideShapeResult2D.max_collisions<class_PhysicsCollideShapeResult2D_property_max_collisions>`, to reduce the processing time.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

Проверяет пересечения фигуры, заданной через объект :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, с пространством. Если она сталкивается с несколькими фигурами, выбирается ближайшая. Возвращаемый объект представляет собой словарь, содержащий следующие поля:

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``linear_velocity``: скорость сталкивающегося объекта :ref:`Vector2<class_Vector2>`. Если объект является :ref:`Area2D<class_Area2D>`, результатом будет ``(0, 0)``.

\ ``normal``: нормаль столкновения фигуры запроса в точке пересечения, направленная от пересекающегося объекта.

\ ``point``: точка пересечения.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс фигуры сталкивающейся фигуры.

Если фигура ничего не пересекает, то возвращается пустой словарь.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_rest_info_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If the shape collides with one or more shapes, this method returns ``true`` and writes the nearest collision information into the :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>` object passed in ``result``. If no collisions occur, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

Проверяет, находится ли точка внутри какой-либо сплошной фигуры. Положение и другие параметры определяются через :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`. Фигуры, внутри которых находится точка, возвращаются в массиве, содержащем словари со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс формы сталкивающейся фигуры.

Количество пересечений можно ограничить с помощью параметра ``max_results``, чтобы сократить время обработки.

\ **Примечание:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` и :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` в режиме построения ``Segments`` не являются сплошными фигурами. Поэтому они не будут обнаружены.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_point_into**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`

Checks whether a point is inside any solid shape. Position and other parameters are defined through :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`.

If one or more shapes overlap the point, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectPointResult2D.max_intersections<class_PhysicsIntersectPointResult2D_property_max_intersections>`, to reduce the processing time.

\ **Note:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`\ s and :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`\ s in ``Segments`` build mode are not solid shapes. Therefore, they will not be detected.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

Пересекает луч в заданном пространстве. Положение луча и другие параметры определяются через :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`. Возвращаемый объект представляет собой словарь со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``normal``: нормаль поверхности объекта в точке пересечения или ``Vector2(0, 0)``, если луч начинается внутри фигуры и :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` равен ``true``.

\ ``position``: точка пересечения.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс фигуры сталкивающейся фигуры.

Если луч ничего не пересек, то возвращается пустой словарь.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_ray_into**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`

Intersects a ray in a given space. Ray position and other parameters are defined through :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`.

If the ray hits a shape, this method returns ``true`` and writes the intersection information into the :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>` object passed in ``result``. If nothing is hit, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

Проверяет пересечения формы, заданной через объект :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, с пространством. Пересеченные формы возвращаются в массиве, содержащем словари со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс формы сталкивающейся формы.

Количество пересечений можно ограничить параметром ``max_results``, чтобы сократить время обработки.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult2D.max_intersections<class_PhysicsIntersectShapeResult2D_property_max_intersections>`, to reduce the processing time.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
