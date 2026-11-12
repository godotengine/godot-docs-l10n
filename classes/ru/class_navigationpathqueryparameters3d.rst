:github_url: hide

.. _class_NavigationPathQueryParameters3D:

NavigationPathQueryParameters3D
===============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет параметры для запросов пути 3D-навигации.

.. rst-class:: classref-introduction-group

Описание
----------------

Изменяя различные свойства этого объекта, такие как начальная и конечная позиция, вы можете настроить запросы пути к :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использовать NavigationPathQueryObjects <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters3D_property_excluded_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters3D_property_included_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters3D_property_map>`                                           | ``RID()``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters3D_property_metadata_flags>`                     | ``7``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters3D_property_navigation_layers>`               | ``1``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters3D_property_path_postprocessing>`           | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters3D_property_path_return_max_length>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters3D_property_path_search_max_distance>` | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>` | ``4096``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`       | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`                 | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters3D_property_simplify_path>`                       | ``false``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters3D_property_start_position>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters3D_property_target_position>`                   | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_NavigationPathQueryParameters3D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters3D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

Запрос пути использует алгоритм поиска пути A\* по умолчанию.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

Применяет алгоритм funnel к сырому коридору пути, найденному алгоритмом поиска пути. Это даст кратчайший возможный путь внутри коридора. Данная постобработка сильно зависит от структуры полигонов навигационной сетки и созданного коридора. Особенно в тайловых или сеточных разбиениях могут возникать искусственные углы при диагональном перемещении из-за неровного коридора пути, обусловленного формами ячеек.

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

Centers every position in the middle of the traveled navigation mesh's polygon edge. This creates better paths for tile- or grid-based layouts that restrict the movement to the cells' centers.

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

Не применяет постобработку и возвращает необработанный коридор пути, найденный алгоритмом поиска пути.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

Не включайте никаких дополнительных метаданных о возвращаемом пути.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

Укажите тип навигационного примитива (регион или ссылка), через который проходит каждая точка пути.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

Включите :ref:`RID<class_RID>` регионов и ссылок, через которые проходит каждая точка пути.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

Включите ``ObjectID`` :ref:`Object<class_Object>`, которые управляют областями и связями, через которые проходит каждая точка пути.

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

Включите все доступные метаданные о возвращаемом пути.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationPathQueryParameters3D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

Список :ref:`RID<class_RID>` регионов, которые будут исключены из запроса пути. Используйте :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>`, чтобы получить :ref:`RID<class_RID>`, связанный с узлом :ref:`NavigationRegion3D<class_NavigationRegion3D>`.

\ **Примечание:** Возвращаемый массив копируется, и любые изменения в нем не обновят исходное значение свойства. Чтобы обновить значение, вам нужно изменить возвращаемый массив, а затем снова задать его для свойства.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

Список :ref:`RID<class_RID>` регионов, которые будут включены в запрос пути. Используйте :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>`, чтобы получить :ref:`RID<class_RID>`, связанный с узлом :ref:`NavigationRegion3D<class_NavigationRegion3D>`. Если оставить пустым, будут включены все регионы. Если регион окажется и включенным, и исключенным одновременно, он будет исключен.

\ **Примечание:** Возвращаемый массив копируется, и любые изменения в нем не обновят исходное значение свойства. Чтобы обновить значение, вам необходимо изменить возвращаемый массив, а затем снова задать его для свойства.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

Навигационная карта :ref:`RID<class_RID>`, используемая в запросе пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

Дополнительная информация для включения в навигационный путь.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Слои навигации, которые будет использовать запрос (в виде битовой маски).

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Постобработка пути, примененная к необработанному коридору пути, найденному :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

Максимально допустимая длина возвращаемого пути в мировых единицах. При превышении этой длины путь будет обрезан. Значение ``0`` или ниже считается отключенным.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

Максимально допустимый радиус возвращаемого пути от начала пути (в мировых единицах). При превышении этого радиуса путь будет обрезан. Значение ``0`` или ниже считается отключенным.

\ **Примечание:** При этом будет выполнена операция обрезания пути по форме сферы, при этом первая точка пути будет соответствовать центру сферы.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

Максимальное расстояние, на которое может отдалиться искомый полигон от начального полигона, прежде чем поиск пути отменит поиск пути к целевому полигону (возможно, недостижимому или очень удалённому). В этом случае поиск пути сбрасывается и строит путь от начального полигона до полигона, который был найден ближайшим к целевой позиции. Значение ``0`` или ниже считается неограниченным. В случае неограниченного значения поиск пути будет искать все полигоны, соединённые с начальным полигоном, пока не будет найден целевой полигон или пока не будут исчерпаны все доступные варианты поиска полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

Максимальное количество полигонов, которые будут просмотрены до того, как поиск пути отменит поиск пути к целевому полигону (возможно, недостижимому или очень удалённому). В этом случае поиск пути сбрасывается и строит путь от начального полигона до полигона, который был найден ближайшим к целевой позиции. Значение ``0`` или меньше считается неограниченным. В случае неограниченного поиска пути поиск пути будет искать все полигоны, соединённые с начальным полигоном, пока не будет найден целевой полигон или пока не будут исчерпаны все доступные варианты поиска полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

Алгоритм поиска пути, используемый в запросе пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in world units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Если ``true``, будет возвращена упрощенная версия пути с удаленными менее критическими точками пути. Степень упрощения контролируется :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`. Упрощение использует вариант алгоритма Ramer-Douglas-Peucker для прореживания точек кривой.

Упрощение пути может быть полезно для смягчения различных проблем следования по пути, которые могут возникнуть с определенными типами агентов и поведением сценария. Например, «рулевое управление» или избегание в «открытых полях».

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **start_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_start_position**\ (\ )

Начальная позиция поиска пути в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Положение цели поиска пути в глобальных координатах.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
