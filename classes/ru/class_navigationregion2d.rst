:github_url: hide

.. _class_NavigationRegion2D:

NavigationRegion2D
==================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Проходимая 2D-область, которую :ref:`NavigationAgent2D<class_NavigationAgent2D>` может использовать для поиска пути.

.. rst-class:: classref-introduction-group

Описание
----------------

Проходимая 2D-область на основе :ref:`NavigationPolygon<class_NavigationPolygon>`, которую :ref:`NavigationAgent2D<class_NavigationAgent2D>`\ s может использовать для поиска пути.

Два региона могут быть соединены друг с другом, если они имеют общее ребро. Вы можете установить минимальное расстояние между двумя вершинами, необходимое для соединения двух ребер, с помощью :ref:`NavigationServer2D.map_set_edge_connection_margin()<class_NavigationServer2D_method_map_set_edge_connection_margin>`.

\ **Примечание:** Перекрытие навигационных полигонов двух регионов недостаточно для соединения двух регионов. Они должны иметь общее ребро.

Стоимость поиска пути при входе в регион из другого региона можно контролировать с помощью значения :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>`.

\ **Примечание:** Это значение не добавляется к стоимости пути, если начальная позиция уже находится внутри этого региона.

Стоимость поиска пути при перемещении на расстояние внутри этого региона можно контролировать с помощью множителя :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>`.

\ **Примечание:** Этот узел кэширует изменения своих свойств, поэтому если вы вносите изменения в базовый регион :ref:`RID<class_RID>` в :ref:`NavigationServer2D<class_NavigationServer2D>`, они не будут отражены в свойствах этого узла.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование NavigationRegions <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`enabled<class_NavigationRegion2D_property_enabled>`                           | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationPolygon<class_NavigationPolygon>` | :ref:`navigation_polygon<class_NavigationRegion2D_property_navigation_polygon>`     |          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_edge_connections<class_NavigationRegion2D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`bake_navigation_polygon<class_NavigationRegion2D_method_bake_navigation_polygon>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_bounds<class_NavigationRegion2D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_navigation_layer_value<class_NavigationRegion2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_navigation_map<class_NavigationRegion2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_region_rid<class_NavigationRegion2D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_rid<class_NavigationRegion2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_baking<class_NavigationRegion2D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_layer_value<class_NavigationRegion2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_map<class_NavigationRegion2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_NavigationRegion2D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_bake_finished>`

Выдается после завершения операции запекания навигационного полигона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_signal_navigation_polygon_changed:

.. rst-class:: classref-signal

**navigation_polygon_changed**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_navigation_polygon_changed>`

Выдается при замене используемого навигационного полигона или при внесении изменений во внутренние компоненты текущего навигационного полигона.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationRegion2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Определяет, включен или отключен **NavigationRegion2D**.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Битовое поле, определяющее все навигационные слои, к которым принадлежит регион. Эти навигационные слои можно проверить при запросе пути с помощью :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_polygon:

.. rst-class:: classref-property

:ref:`NavigationPolygon<class_NavigationPolygon>` **navigation_polygon** :ref:`🔗<class_NavigationRegion2D_property_navigation_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_polygon**\ (\ value\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )
- :ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ )

Ресурс :ref:`NavigationPolygon<class_NavigationPolygon>` для использования.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

При поиске пути внутри навигационной сетки этого региона пройденные расстояния умножаются на :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` для определения кратчайшего пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

Если этот параметр включен, навигационная область будет использовать краевые соединения для соединения с другими навигационными областями, находящимися в непосредственной близости от границы краевых соединений навигационной карты.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationRegion2D_method_bake_navigation_polygon:

.. rst-class:: classref-method

|void| **bake_navigation_polygon**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion2D_method_bake_navigation_polygon>`

Запекает :ref:`NavigationPolygon<class_NavigationPolygon>`. Если ``on_thread`` установлен в ``true`` (по умолчанию), запекание выполняется в отдельном потоке.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_bounds>`

Возвращает выровненный по осям прямоугольник для преобразованной навигационной сетки региона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_map>`

Возвращает текущую навигационную карту :ref:`RID<class_RID>`, используемую в этом регионе.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_region_rid>`

**Устарело:** Use :ref:`get_rid()<class_NavigationRegion2D_method_get_rid>` instead.

Возвращает :ref:`RID<class_RID>` этого региона на :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого региона на :ref:`NavigationServer2D<class_NavigationServer2D>`. В сочетании с :ref:`NavigationServer2D.map_get_closest_point_owner()<class_NavigationServer2D_method_map_get_closest_point_owner>` может использоваться для определения **NavigationRegion2D**, ближайшего к точке на объединенной навигационной карте.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_is_baking>`

Возвращает ``true``, когда :ref:`NavigationPolygon<class_NavigationPolygon>` запекается в фоновом потоке.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_map>`

Устанавливает :ref:`RID<class_RID>` навигационной карты, которую должен использовать этот регион. По умолчанию регион автоматически присоединится к навигационной карте по умолчанию :ref:`World2D<class_World2D>`, поэтому эта функция требуется только для переопределения карты по умолчанию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
