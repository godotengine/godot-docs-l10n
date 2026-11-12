:github_url: hide

.. _class_PhysicsDirectSpaceState3D:

PhysicsDirectSpaceState3D
=========================

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`PhysicsDirectSpaceState3DExtension<class_PhysicsDirectSpaceState3DExtension>`

Предоставляет прямой доступ к физическому пространству в :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет прямой доступ к физическому пространству в :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Используется в основном для выполнения запросов к объектам и областям, находящимся в заданном пространстве.

\ **Примечание:** Этот класс не предназначен для непосредственного создания экземпляра. Используйте :ref:`World3D.direct_space_state<class_World3D_property_direct_space_state>`, чтобы получить состояние физического трехмерного пространства мира.

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

Описания метода
------------------------------

.. _class_PhysicsDirectSpaceState3D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_cast_motion>`

Проверяет, насколько далеко :ref:`Shape3D<class_Shape3D>` может двигаться без столкновений. Все параметры для запроса, включая форму и движение, предоставляются через объект :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`.

Возвращает массив с безопасными и небезопасными пропорциями (от 0 до 1) движения. Безопасная пропорция — это максимальная часть движения, которую можно выполнить без столкновений. Небезопасная пропорция — это минимальная часть расстояния, которое необходимо пройти для столкновения. Если столкновение не обнаружено, будет возвращен результат ``[1.0, 1.0]``.

\ **Примечание:** Любые :ref:`Shape3D<class_Shape3D>`, с которыми фигура уже сталкивается, например, внутри, будут игнорироваться. Используйте :ref:`collide_shape()<class_PhysicsDirectSpaceState3D_method_collide_shape>`, чтобы определить :ref:`Shape3D<class_Shape3D>`, с которыми фигура уже сталкивается.

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

Проверяет пересечения формы, заданной через объект :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, с пространством. Результирующий массив содержит список точек, в которых форма пересекает другую. Как и в случае с :ref:`intersect_shape()<class_PhysicsDirectSpaceState3D_method_intersect_shape>`, количество возвращаемых результатов может быть ограничено для экономии времени обработки.

Возвращаемые точки представляют собой список пар точек контакта. Для каждой пары первая находится в форме, переданной в объект :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, вторая — в столкновенной форме из физического пространства.

\ **Примечание:** Этот метод не учитывает свойство ``motion`` объекта.

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

Проверяет пересечения фигуры, заданной через объект :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, с пространством. Если она сталкивается с несколькими фигурами, выбирается ближайшая. Возвращаемый объект представляет собой словарь, содержащий следующие поля:

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``linear_velocity``: скорость сталкивающегося объекта :ref:`Vector3<class_Vector3>`. Если объект является :ref:`Area3D<class_Area3D>`, результатом будет ``(0, 0, 0)``.

\ ``normal``: нормаль столкновения фигуры запроса в точке пересечения, направленная от пересекающегося объекта.

\ ``point``: точка пересечения.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс фигуры сталкивающейся фигуры.

Если фигура ничего не пересекла, то вместо этого возвращается пустой словарь.

\ **Примечание:** Этот метод не учитывает свойство ``motion`` объекта.

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

Проверяет, находится ли точка внутри какой-либо сплошной фигуры. Положение и другие параметры определяются через :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`. Фигуры, внутри которых находится точка, возвращаются в массиве, содержащем словари со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс сталкивающейся фигуры.

Количество пересечений можно ограничить параметром ``max_results``, чтобы сократить время обработки.

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

Пересекает луч в заданном пространстве. Положение луча и другие параметры определяются через :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`. Возвращаемый объект представляет собой словарь со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``normal``: нормаль поверхности объекта в точке пересечения или ``Vector3(0, 0, 0)``, если луч начинается внутри фигуры и :ref:`PhysicsRayQueryParameters3D.hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>` равен ``true``.

\ ``position``: точка пересечения.

\ ``face_index``: индекс грани в точке пересечения.

\ **Примечание:** Возвращает допустимое число, только если пересекаемая фигура является :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`. В противном случае возвращается ``-1``.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: Индекс формы сталкивающейся фигуры.

Если луч ничего не пересек, то вместо этого возвращается пустой словарь.

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

Проверяет пересечения формы, заданной через объект :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, с пространством. Пересеченные формы возвращаются в массиве, содержащем словари со следующими полями:

\ ``collider``: сталкивающийся объект.

\ ``collider_id``: идентификатор сталкивающегося объекта.

\ ``rid``: :ref:`RID<class_RID>` пересекающегося объекта.

\ ``shape``: индекс формы сталкивающейся формы.

Количество пересечений можно ограничить параметром ``max_results``, чтобы сократить время обработки.

\ **Примечание:** Этот метод не учитывает свойство ``motion`` объекта.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, result\: :ref:`PhysicsIntersectShapeResult3D<class_PhysicsIntersectShapeResult3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult3D<class_PhysicsIntersectShapeResult3D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult3D.max_intersections<class_PhysicsIntersectShapeResult3D_property_max_intersections>`, to reduce the processing time.

\ **Note:** This method does not take into account the ``motion`` property of the object.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
