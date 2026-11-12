:github_url: hide

.. _class_NavigationObstacle2D:

NavigationObstacle2D
====================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Двумерное препятствие, используемое для воздействия на запекание навигационной сетки или ограничения скорости агентов, управляемых для избегания.

.. rst-class:: classref-introduction-group

Описание
----------------

Для корректной работы препятствия необходимо определить навигационную карту и контур :ref:`vertices<class_NavigationObstacle2D_property_vertices>`. Контуры не могут пересекаться или накладываться друг на друга.

Препятствия могут быть включены в процесс запекания навигационной сетки, если включен :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>`. Они не добавляют проходимую геометрию, вместо этого их роль заключается в отбрасывании другой исходной геометрии внутри формы. Это можно использовать для предотвращения появления навигационной сетки в нежелательных местах. Если включен :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>`, запеченная форма не будет зависеть от смещений запекания навигационной сетки, например радиуса агента.

С :ref:`Avoidance_enabled<class_NavigationObstacle2D_property_Avoidance_enabled>` препятствие может ограничивать скорости избегания с использованием агентов. Если вершины препятствия закручены по часовой стрелке, агенты избегания будут выталкиваться в препятствие, в противном случае агенты избегания будут выталкиваться из препятствия. Препятствия, использующие вершины и уклонение, могут перемещаться в новое положение, но их не следует перемещать в каждом кадре, поскольку каждое изменение требует перестройки карты уклонения.

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
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle2D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle2D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`velocity<class_NavigationObstacle2D_property_velocity>`                             | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`vertices<class_NavigationObstacle2D_property_vertices>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle2D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle2D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle2D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle2D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationObstacle2D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

Если включено и проанализировано в процессе запекания навигационной сетки, препятствие отбросит исходную геометрию внутри его определенной формы :ref:`vertices<class_NavigationObstacle2D_property_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Если ``true``, препятствие влияет на избегание с помощью агентов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Битовое поле, определяющее слои избегания для этого препятствия. Агенты с соответствующим битом в маске избегания будут избегать этого препятствия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

Если включено, вершины препятствий будут вырезаны в запеченной навигационной сетке с формой, не затронутой дополнительными смещениями (например, радиусом агента).

На нее по-прежнему будет влиять дальнейшая постобработка процесса запекания, например упрощение ребер и полигонов.

Требуется включение :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Устанавливает радиус обхода препятствия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationObstacle2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

The wanted velocity for the obstacle, used by other agents to better predict the obstacle if it is moved with a velocity regularly (every frame), instead of warped to a new position.

\ **Note:** This property only affects avoidance for the obstacle's :ref:`radius<class_NavigationObstacle2D_property_radius>`. Does nothing for the obstacle's static vertices.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **vertices** = ``PackedVector2Array()`` :ref:`🔗<class_NavigationObstacle2D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ )

The outline vertices of the obstacle. If the vertices are winded in clockwise order, agents will be pushed in by the obstacle, otherwise they will be pushed out. Outlines cannot be crossed or overlap. If the obstacle is warped to a new position, agents cannot predict this movement and may get trapped inside the obstacle.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationObstacle2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_avoidance_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`Avoidance_layers<class_NavigationObstacle2D_property_Avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_navigation_map>`

Возвращает :ref:`RID<class_RID>` навигационной карты для этого узла NavigationObstacle. Эта функция всегда возвращает набор карт на узле NavigationObstacle, а не карту абстрактного препятствия на NavigationServer. Если карта препятствий изменяется напрямую с помощью API NavigationServer, узел NavigationObstacle не будет знать об изменении карты. Используйте :ref:`set_navigation_map()<class_NavigationObstacle2D_method_set_navigation_map>`, чтобы изменить навигационную карту для NavigationObstacle, а также обновить препятствие на NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого препятствия на :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_avoidance_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_navigation_map>`

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
