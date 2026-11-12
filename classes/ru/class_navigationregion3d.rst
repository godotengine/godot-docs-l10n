:github_url: hide

.. _class_NavigationRegion3D:

NavigationRegion3D
==================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Проходимая трехмерная область, которую :ref:`NavigationAgent3D<class_NavigationAgent3D>` может использовать для поиска пути.

.. rst-class:: classref-introduction-group

Описание
----------------

Проходимая 3D-область на основе :ref:`NavigationMesh<class_NavigationMesh>`, которую :ref:`NavigationAgent3D<class_NavigationAgent3D>`\ s может использовать для поиска пути.

Две области могут быть соединены друг с другом, если они имеют схожее ребро. Вы можете установить минимальное расстояние между двумя вершинами, необходимое для соединения двух ребер, с помощью :ref:`NavigationServer3D.map_set_edge_connection_margin()<class_NavigationServer3D_method_map_set_edge_connection_margin>`.

\ **Примечание:** Перекрытие навигационных сеток двух областей недостаточно для соединения двух областей. Они должны иметь схожее ребро.

Стоимость входа в эту область из другой области можно контролировать с помощью значения :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`.

\ **Примечание:** Это значение не добавляется к стоимости пути, если начальная позиция уже находится внутри этой области.

Стоимость перемещения на расстояние внутри этой области можно контролировать с помощью множителя :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`.

\ **Примечание:** Этот узел кэширует изменения своих свойств, поэтому если вы вносите изменения в базовую область :ref:`RID<class_RID>` в :ref:`NavigationServer3D<class_NavigationServer3D>`, они не будут отражены в свойствах этого узла.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование NavigationRegions <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`enabled<class_NavigationRegion3D_property_enabled>`                           | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`enter_cost<class_NavigationRegion3D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                       | :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`navigation_mesh<class_NavigationRegion3D_property_navigation_mesh>`           |          |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                   | :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_edge_connections<class_NavigationRegion3D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`bake_navigation_mesh<class_NavigationRegion3D_method_bake_navigation_mesh>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_bounds<class_NavigationRegion3D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_navigation_layer_value<class_NavigationRegion3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationRegion3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_region_rid<class_NavigationRegion3D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationRegion3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_baking<class_NavigationRegion3D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_layer_value<class_NavigationRegion3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationRegion3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_NavigationRegion3D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_bake_finished>`

Уведомляет о завершении операции запекания навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_signal_navigation_mesh_changed:

.. rst-class:: classref-signal

**navigation_mesh_changed**\ (\ ) :ref:`🔗<class_NavigationRegion3D_signal_navigation_mesh_changed>`

Уведомляет об изменении :ref:`NavigationMesh<class_NavigationMesh>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationRegion3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Определяет, включен или отключен **NavigationRegion3D**.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion3D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Битовое поле, определяющее все навигационные слои, к которым принадлежит регион. Эти навигационные слои можно проверить при запросе пути с помощью :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **navigation_mesh** :ref:`🔗<class_NavigationRegion3D_property_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_mesh**\ (\ value\: :ref:`NavigationMesh<class_NavigationMesh>`\ )
- :ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ )

Ресурс :ref:`NavigationMesh<class_NavigationMesh>` для использования.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion3D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

При поиске пути внутри навигационной сетки этого региона пройденные расстояния умножаются на :ref:`travel_cost<class_NavigationRegion3D_property_travel_cost>` для определения кратчайшего пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion3D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

Если этот параметр включен, навигационная область будет использовать краевые соединения для соединения с другими навигационными областями, находящимися в непосредственной близости от границы краевых соединений навигационной карты.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationRegion3D_method_bake_navigation_mesh:

.. rst-class:: classref-method

|void| **bake_navigation_mesh**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion3D_method_bake_navigation_mesh>`

Выпекает :ref:`NavigationMesh<class_NavigationMesh>`. Если ``on_thread`` установлен на ``true`` (по умолчанию), выпекание выполняется в отдельном потоке. Выпекание в отдельном потоке полезно, поскольку выпекание навигации — недешевая операция. После завершения оно автоматически устанавливает новый :ref:`NavigationMesh<class_NavigationMesh>`. Обратите внимание, что выпекание в отдельном потоке может быть очень медленным, если геометрия анализируется из сеток, поскольку асинхронный доступ к каждой сетке подразумевает тяжелую синхронизацию. Также обратите внимание, что выпекание в отдельном потоке автоматически отключается в операционных системах, которые не могут использовать потоки (например, Web с отключенными потоками).

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_bounds>`

Возвращает выровненный по осям ограничивающий прямоугольник для преобразованной навигационной сетки региона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_navigation_map>`

Возвращает текущую навигационную карту :ref:`RID<class_RID>`, используемую в этом регионе.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_region_rid>`

**Устарело:** Use :ref:`get_rid()<class_NavigationRegion3D_method_get_rid>` instead.

Возвращает :ref:`RID<class_RID>` этого региона на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого региона на :ref:`NavigationServer3D<class_NavigationServer3D>`. В сочетании с :ref:`NavigationServer3D.map_get_closest_point_owner()<class_NavigationServer3D_method_map_get_closest_point_owner>` может использоваться для определения **NavigationRegion3D**, ближайшего к точке на объединенной навигационной карте.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion3D_method_is_baking>`

Возвращает ``true``, когда :ref:`NavigationMesh<class_NavigationMesh>` запекается в фоновом потоке.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`navigation_layers<class_NavigationRegion3D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion3D_method_set_navigation_map>`

Устанавливает :ref:`RID<class_RID>` навигационной карты, которую должен использовать этот регион. По умолчанию регион автоматически присоединится к навигационной карте по умолчанию :ref:`World3D<class_World3D>`, поэтому эта функция требуется только для переопределения карты по умолчанию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
