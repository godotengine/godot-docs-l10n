:github_url: hide

.. _class_Node2D:

Node2D
======

**Наследует:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, :ref:`AudioListener2D<class_AudioListener2D>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`, :ref:`BackBufferCopy<class_BackBufferCopy>`, :ref:`Bone2D<class_Bone2D>`, :ref:`Camera2D<class_Camera2D>`, :ref:`CanvasGroup<class_CanvasGroup>`, :ref:`CanvasModulate<class_CanvasModulate>`, :ref:`CollisionObject2D<class_CollisionObject2D>`, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, :ref:`CollisionShape2D<class_CollisionShape2D>`, :ref:`CPUParticles2D<class_CPUParticles2D>`, :ref:`GPUParticles2D<class_GPUParticles2D>`, :ref:`Joint2D<class_Joint2D>`, :ref:`Light2D<class_Light2D>`, :ref:`LightOccluder2D<class_LightOccluder2D>`, :ref:`Line2D<class_Line2D>`, :ref:`Marker2D<class_Marker2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`, :ref:`NavigationLink2D<class_NavigationLink2D>`, :ref:`NavigationObstacle2D<class_NavigationObstacle2D>`, :ref:`NavigationRegion2D<class_NavigationRegion2D>`, :ref:`Parallax2D<class_Parallax2D>`, :ref:`ParallaxLayer<class_ParallaxLayer>`, :ref:`Path2D<class_Path2D>`, :ref:`PathFollow2D<class_PathFollow2D>`, :ref:`Polygon2D<class_Polygon2D>`, :ref:`RayCast2D<class_RayCast2D>`, :ref:`RemoteTransform2D<class_RemoteTransform2D>`, :ref:`ShapeCast2D<class_ShapeCast2D>`, :ref:`Skeleton2D<class_Skeleton2D>`, :ref:`Sprite2D<class_Sprite2D>`, :ref:`TileMap<class_TileMap>`, :ref:`TileMapLayer<class_TileMapLayer>`, :ref:`TouchScreenButton<class_TouchScreenButton>`, :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>`

Игровой 2D-объект, наследуемый всеми 2D-узлами. Имеет позицию, поворот, масштаб и наклон.

.. rst-class:: classref-introduction-group

Описание
----------------

Игровой 2D-объект с преобразованием (положение, поворот и масштаб). Все 2D-узлы, включая физические объекты и спрайты, наследуются от Node2D. Используйте Node2D в качестве родительского узла для перемещения, масштабирования и поворота дочерних элементов в 2D-проекте. Также дает контроль над порядком рендеринга узла.

\ **Примечание:** Поскольку и **Node2D**, и :ref:`Control<class_Control>` наследуются от :ref:`CanvasItem<class_CanvasItem>`, они разделяют несколько концепций из класса, таких как свойства :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` и :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индивидуальный рисунок в 2D <../tutorials/2d/custom_drawing_in_2d>`

- `Все демоверсии 2D <https://github.com/godotengine/godot-demo-projects/tree/master/2d>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_position<class_Node2D_property_global_position>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation<class_Node2D_property_global_rotation>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>` |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_scale<class_Node2D_property_global_scale>`                       |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_skew<class_Node2D_property_global_skew>`                         |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`global_transform<class_Node2D_property_global_transform>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`position<class_Node2D_property_position>`                               | ``Vector2(0, 0)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_Node2D_property_rotation>`                               | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_Node2D_property_scale>`                                     | ``Vector2(1, 1)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`skew<class_Node2D_property_skew>`                                       | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_Node2D_property_transform>`                             |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_scale<class_Node2D_method_apply_scale>`\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_angle_to<class_Node2D_method_get_angle_to>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_relative_transform_to_parent<class_Node2D_method_get_relative_transform_to_parent>`\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`global_translate<class_Node2D_method_global_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`look_at<class_Node2D_method_look_at>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_x<class_Node2D_method_move_local_x>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_y<class_Node2D_method_move_local_y>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`rotate<class_Node2D_method_rotate>`\ (\ radians\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_global<class_Node2D_method_to_global>`\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_local<class_Node2D_method_to_local>`\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`translate<class_Node2D_method_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Node2D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Node2D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Начальное положение окна определяется :ref:`position<class_Node2D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation** :ref:`🔗<class_Node2D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation**\ (\ )

Глобальное вращение в радианах. См. также :ref:`rotation<class_Node2D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation_degrees** :ref:`🔗<class_Node2D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation_degrees**\ (\ )

Вспомогательное свойство для доступа к :ref:`global_rotation<class_Node2D_property_global_rotation>` в градусах вместо радиан. См. также :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_scale** :ref:`🔗<class_Node2D_property_global_scale>`

.. rst-class:: classref-property-setget

- |void| **set_global_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_scale**\ (\ )

Глобальный масштаб. См. также :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_skew** :ref:`🔗<class_Node2D_property_global_skew>`

.. rst-class:: classref-property-setget

- |void| **set_global_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_skew**\ (\ )

Глобальный перекос в радианах. См. также :ref:`skew<class_Node2D_property_skew>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **global_transform** :ref:`🔗<class_Node2D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_global_transform**\ (\ )

Глобальный :ref:`Transform2D<class_Transform2D>`. См. также :ref:`transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Node2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Позиция относительно родителя узла. См. также :ref:`global_position<class_Node2D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Node2D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

Вращение в радианах относительно родителя узла. См. также :ref:`global_rotation<class_Node2D_property_global_rotation>`.

\ **Примечание:** Это свойство редактируется в инспекторе в градусах. Если вы хотите использовать градусы в скрипте, используйте :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Node2D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Вспомогательное свойство для доступа к :ref:`rotation<class_Node2D_property_rotation>` в градусах вместо радиан. См. также :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Node2D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

Масштаб узла относительно родительского узла. Немасштабированное значение: ``(1, 1)``. См. также :ref:`global_scale<class_Node2D_property_global_scale>`.

\ **Примечание:** Отрицательные масштабы X в 2D не разлагаются из матрицы преобразования. Из-за способа представления масштаба с помощью матриц преобразования в Godot отрицательные масштабы на оси X будут изменены на отрицательные масштабы на оси Y и поворот на 180 градусов при разложении.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **skew** = ``0.0`` :ref:`🔗<class_Node2D_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_skew**\ (\ )

Если установлено ненулевое значение, наклоняет узел в одном или другом направлении. Это можно использовать для псевдо-3D эффектов. См. также :ref:`global_skew<class_Node2D_property_global_skew>`.

\ **Примечание:** Наклон выполняется только по оси X и *между* вращением и масштабированием.

\ **Примечание:** Это свойство редактируется в инспекторе в градусах. Если вы хотите использовать градусы в скрипте, используйте ``skew = deg_to_rad(value_in_degrees)``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_Node2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

:ref:`Transform2D<class_Transform2D>` узла относительно родителя узла. См. также :ref:`global_transform<class_Node2D_property_global_transform>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Node2D_method_apply_scale:

.. rst-class:: classref-method

|void| **apply_scale**\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_apply_scale>`

Умножает текущий масштаб на вектор ``ratio``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle_to**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_get_angle_to>`

Возвращает угол между узлом и точкой ``point`` в радианах. См. также :ref:`look_at()<class_Node2D_method_look_at>`.

\ `Иллюстрация возвращаемого угла. <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/node2d_get_angle_to.png>`__

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_relative_transform_to_parent:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_relative_transform_to_parent**\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node2D_method_get_relative_transform_to_parent>`

Возвращает :ref:`Transform2D<class_Transform2D>` относительно родителя данного узла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_global_translate>`

Добавляет вектор ``offset`` к глобальной позиции узла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_look_at>`

Поворачивает узел так, чтобы его локальная ось +X указывала на ``point``, которая, как ожидается, будет использовать глобальные координаты. Этот метод представляет собой комбинацию методов :ref:`rotate()<class_Node2D_method_rotate>` и :ref:`get_angle_to()<class_Node2D_method_get_angle_to>`.

\ ``point`` не должен совпадать с положением узла, иначе узел всегда будет смотреть вправо.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_x:

.. rst-class:: classref-method

|void| **move_local_x**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_x>`

Применяет локальное смещение по оси X узла на основе ``delta``. Если ``scaled`` равен ``false``, нормализует движение так, чтобы оно не зависело от :ref:`scale<class_Node2D_property_scale>` узла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_y:

.. rst-class:: classref-method

|void| **move_local_y**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_y>`

Применяет локальное смещение по оси Y узла на основе ``delta``. Если ``scaled`` равен ``false``, нормализует движение так, чтобы оно не зависело от :ref:`scale<class_Node2D_property_scale>` узла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ radians\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node2D_method_rotate>`

Применяет вращение к узлу в радианах, начиная с его текущего положения. Это эквивалентно ``rotation += radians``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_global**\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_global>`

Преобразует предоставленную локальную позицию в позицию в глобальном координатном пространстве. Ожидается, что входные данные будут локальными относительно **Node2D**, на котором они вызваны. Например, применение этого метода к позициям дочерних узлов правильно преобразует их позиции в глобальное координатное пространство, но применение его к собственной позиции узла даст неверный результат, поскольку он включит собственную трансформацию узла в его глобальную позицию.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_local**\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_local>`

Преобразует предоставленную глобальную позицию в позицию в локальном координатном пространстве. Выход будет локальным относительно **Node2D**, на котором он вызван. Например, он подходит для определения позиций дочерних узлов, но не подходит для определения своей собственной позиции относительно своего родителя.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_translate>`

Перемещает узел на заданное значение ``offset`` в локальных координатах. Это эквивалентно ``position += offset``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
