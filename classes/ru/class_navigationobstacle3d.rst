:github_url: hide

.. _class_NavigationObstacle3D:

NavigationObstacle3D
====================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Трехмерное препятствие, используемое для воздействия на запекание навигационной сетки или ограничения скорости агентов, управляемых для избегания.

.. rst-class:: classref-introduction-group

Описание
----------------

Для корректной работы препятствию необходимо определить навигационную карту и контур :ref:`vertices<class_NavigationObstacle3D_property_vertices>`. Контуры не могут пересекаться или накладываться друг на друга и ограничены проекцией плоскости. Это означает, что ось Y вершин игнорируется, вместо этого для размещения используется глобальная позиция препятствия по оси Y. Спроецированная форма выдавливается высотой препятствия вдоль оси Y.

Препятствия могут быть включены в процесс запекания навигационной сетки, когда включен :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>`. Они не добавляют проходимую геометрию, вместо этого их роль заключается в отбрасывании другой исходной геометрии внутри формы. Это можно использовать для предотвращения появления навигационной сетки в нежелательных местах, например, внутри "сплошной" геометрии или поверх нее. Если включен :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>`, запеченная форма не будет затронута смещениями запекания навигационной сетки, например, радиусом агента.

С :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>` препятствие может ограничивать скорости избегания агентов избегания. Если вершины препятствия закручены по часовой стрелке, агенты избегания будут вдавленны препятствием, в противном случае агенты избегания будут вытолкнуты. Препятствия, использующие вершины и избегание, могут деформироваться в новое положение, но не должны перемещаться в каждом кадре, поскольку каждое изменение требует перестройки карты избегания.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использовать NavigationObstacles <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle3D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle3D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`height<class_NavigationObstacle3D_property_height>`                                 | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle3D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_3d_avoidance<class_NavigationObstacle3D_property_use_3d_avoidance>`             | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`velocity<class_NavigationObstacle3D_property_velocity>`                             | ``Vector3(0, 0, 0)``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_NavigationObstacle3D_property_vertices>`                             | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle3D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle3D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationObstacle3D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

Если включено и проанализировано в процессе запекания навигационной сетки, препятствие отбросит исходную геометрию внутри его :ref:`vertices<class_NavigationObstacle3D_property_vertices>` и :ref:`height<class_NavigationObstacle3D_property_height>`, определенных в форме.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Если ``true``, препятствие влияет на избегание с помощью агентов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Битовое поле, определяющее слои избегания для этого препятствия. Агенты с соответствующим битом в маске избегания будут избегать этого препятствия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

Если включено, вершины препятствий будут вырезаны в запеченной навигационной сетке с формой, не затронутой дополнительными смещениями (например, радиусом агента).

На нее по-прежнему будет влиять дальнейшая постобработка процесса запекания, например упрощение ребер и полигонов.

Требуется включение :ref:`affect_navigation_mesh<class_NavigationObstacle3D_property_affect_navigation_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationObstacle3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Sets the obstacle height used in 2D avoidance. 2D avoidance using agents ignore obstacles that are below or above them.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Устанавливает радиус обхода препятствия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationObstacle3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

If ``true`` the obstacle affects 3D avoidance using agents with obstacle :ref:`radius<class_NavigationObstacle3D_property_radius>`.

If ``false`` the obstacle affects 2D avoidance using agents with both obstacle :ref:`vertices<class_NavigationObstacle3D_property_vertices>` as well as obstacle :ref:`radius<class_NavigationObstacle3D_property_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationObstacle3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

The wanted velocity for the obstacle, used by other agents to better predict the obstacle if it is moved with a velocity regularly (every frame), instead of warped to a new position.

\ **Note:** This property only affects avoidance for the obstacle's :ref:`radius<class_NavigationObstacle3D_property_radius>`. Does nothing for the obstacle's static vertices.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationObstacle3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

The outline vertices of the obstacle. If the vertices are winded in clockwise order, agents will be pushed in by the obstacle, otherwise they will be pushed out. Outlines cannot be crossed or overlap. If the obstacle is warped to a new position, agents cannot predict this movement and may get trapped inside the obstacle.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationObstacle3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_avoidance_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`Avoidance_layers<class_NavigationObstacle3D_property_Avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_navigation_map>`

Возвращает :ref:`RID<class_RID>` навигационной карты для этого узла NavigationObstacle. Эта функция всегда возвращает набор карт на узле NavigationObstacle, а не карту абстрактного препятствия на NavigationServer. Если карта препятствий изменяется напрямую с помощью API NavigationServer, узел NavigationObstacle не будет знать об изменении карты. Используйте :ref:`set_navigation_map()<class_NavigationObstacle3D_method_set_navigation_map>`, чтобы изменить навигационную карту для NavigationObstacle, а также обновить препятствие на NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle3D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого препятствия на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_avoidance_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`avoidance_layers<class_NavigationObstacle3D_property_avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle3D_method_set_navigation_map>`

Устанавливает :ref:`RID<class_RID>` навигационной карты, которую должен использовать этот узел NavigationObstacle, а также обновляет ``obstacle`` на NavigationServer.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
