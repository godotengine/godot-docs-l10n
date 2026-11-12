:github_url: hide

.. _class_NavigationAgent3D:

NavigationAgent3D
=================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D-агент, используемый для поиска пути к нужному месту с обходом препятствий.

.. rst-class:: classref-introduction-group

Описание
----------------

3D-агент, используемый для поиска пути к заданной позиции с избеганием статических и динамических препятствий. Этот расчёт может использоваться родительским узлом для динамического перемещения по пути. Для корректной работы требуются навигационные данные.

Динамические препятствия обходят с помощью функции предотвращения столкновений RVO. Избегание вычисляется до физических процессов, поэтому информацию о поиске пути можно безопасно использовать на этапе физических процессов.

\ **Примечание:** После установки свойства :ref:`target_position<class_NavigationAgent3D_property_target_position>` метод :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` необходимо использовать один раз в каждом кадре физики для обновления внутренней логики пути навигационного агента. Возвращаемая им позиция вектора должна использоваться в качестве следующей позиции движения для родительского узла агента.

\ **Примечание:** Некоторые методы этого класса, такие как :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`, могут инициировать новый расчёт пути. Вызов этих методов в обратном вызове сигнала агента, например, :ref:`waypoint_reached<class_NavigationAgent3D_signal_waypoint_reached>`, может привести к бесконечной рекурсии. Рекомендуется вызывать эти методы на этапе физики или, в качестве альтернативы, откладывать их вызов до конца кадра (см. :ref:`Object.call_deferred()<class_Object_method_call_deferred>` или :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование NavigationAgents <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>`                       | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`                         | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`                             | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>`                     | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_enabled<class_NavigationAgent3D_property_debug_enabled>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                      | :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>`           | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_point_size<class_NavigationAgent3D_property_debug_path_custom_point_size>` | ``4.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`height<class_NavigationAgent3D_property_height>`                                             | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`keep_y_velocity<class_NavigationAgent3D_property_keep_y_velocity>`                           | ``true``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`max_neighbors<class_NavigationAgent3D_property_max_neighbors>`                               | ``10``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`max_speed<class_NavigationAgent3D_property_max_speed>`                                       | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`                       | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`                       | ``50.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>`               | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_height_offset<class_NavigationAgent3D_property_path_height_offset>`                     | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`                       | ``5.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`                   | ``7``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationAgent3D_property_path_postprocessing>`                   | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationAgent3D_property_path_return_max_radius>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationAgent3D_property_path_search_max_distance>`         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationAgent3D_property_path_search_max_polygons>`         | ``4096``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`               | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`radius<class_NavigationAgent3D_property_radius>`                                             | ``0.5``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`                         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationAgent3D_property_simplify_path>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>`           | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationAgent3D_property_target_position>`                           | ``Vector3(0, 0, 0)``  |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_agents<class_NavigationAgent3D_property_time_horizon_agents>`                   | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_obstacles<class_NavigationAgent3D_property_time_horizon_obstacles>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`use_3d_avoidance<class_NavigationAgent3D_property_use_3d_avoidance>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`velocity<class_NavigationAgent3D_property_velocity>`                                         | ``Vector3(0, 0, 0)``  |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`distance_to_target<class_NavigationAgent3D_method_distance_to_target>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_layer_value<class_NavigationAgent3D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_mask_value<class_NavigationAgent3D_method_get_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`\ ) |const|                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                   | :ref:`get_current_navigation_path<class_NavigationAgent3D_method_get_current_navigation_path>`\ (\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_current_navigation_path_index<class_NavigationAgent3D_method_get_current_navigation_path_index>`\ (\ ) |const|                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` | :ref:`get_current_navigation_result<class_NavigationAgent3D_method_get_current_navigation_result>`\ (\ ) |const|                                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_final_position<class_NavigationAgent3D_method_get_final_position>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_navigation_layer_value<class_NavigationAgent3D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_navigation_map<class_NavigationAgent3D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_next_path_position<class_NavigationAgent3D_method_get_next_path_position>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_path_length<class_NavigationAgent3D_method_get_path_length>`\ (\ ) |const|                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_rid<class_NavigationAgent3D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_navigation_finished<class_NavigationAgent3D_method_is_navigation_finished>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reachable<class_NavigationAgent3D_method_is_target_reachable>`\ (\ )                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reached<class_NavigationAgent3D_method_is_target_reached>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_layer_value<class_NavigationAgent3D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_mask_value<class_NavigationAgent3D_method_set_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_layer_value<class_NavigationAgent3D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_map<class_NavigationAgent3D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_velocity_forced<class_NavigationAgent3D_method_set_velocity_forced>`\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ )                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_NavigationAgent3D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_link_reached>`

Сигнализирует, что агент достиг навигационной ссылки. Выдается, когда агент перемещается в пределах :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` от следующей позиции пути, когда эта позиция является навигационной ссылкой.

Словарь сведений может содержать следующие ключи в зависимости от значения :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: начальная позиция достигнутой ссылки.

- ``type``: всегда :ref:`NavigationPathQueryResult3D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``: :ref:`RID<class_RID>` ссылки.

- ``owner``: объект, управляющий ссылкой (обычно :ref:`NavigationLink3D<class_NavigationLink3D>`).

- ``link_entry_position``: Если доступен ``owner`` и владелец — :ref:`NavigationLink3D<class_NavigationLink3D>`, он будет содержать глобальную позицию точки ссылки, в которую входит агент.

- ``link_exit_position``: Если доступен ``owner`` и владелец — :ref:`NavigationLink3D<class_NavigationLink3D>`, он будет содержать глобальную позицию точки ссылки, из которой выходит агент.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_navigation_finished>`

Сигнализирует о том, что навигация агента завершена. Если цель достижима, навигация заканчивается, когда цель достигнута. Если цель недостижима, навигация заканчивается, когда достигнута последняя точка маршрута. Этот сигнал выдается только один раз на загруженный путь.

Этот сигнал будет выдан сразу после :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>`, когда цель достижима.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_path_changed>`

Выдается, когда агенту необходимо обновить загруженный путь:

- потому что путь ранее был пуст.

- потому что карта навигации изменилась.

- потому что агент оттолкнулся от текущего сегмента пути дальше, чем :ref:`path_max_distance<class_NavigationAgent3D_property_path_max_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent3D_signal_target_reached>`

Сигнализирует о том, что агент достиг цели, т. е. агент переместился в пределах :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` от :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Этот сигнал посылается только один раз на загруженный путь.

Этот сигнал будет посылаться непосредственно перед :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`, когда цель достижима.

Не всегда возможно достичь цели, но всегда должно быть возможно достичь конечной позиции. См. :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_velocity_computed>`

Уведомляет, когда вычисляется скорость избегания столкновений. Выпускается каждое обновление, пока :ref:`avoidance_enabled<class_NavigationAgent3D_property_avoidance_enabled>` имеет значение ``true`` и у агента есть навигационная карта.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent3D_signal_waypoint_reached>`

Сигнализирует о том, что агент достиг путевой точки. Выдается, когда агент перемещается в пределах :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` от следующей позиции пути.

Словарь сведений может содержать следующие ключи в зависимости от значения :ref:`path_metadata_flags<class_NavigationAgent3D_property_path_metadata_flags>`:

- ``position``: позиция путевой точки, которая была достигнута.

- ``type``: тип навигационного примитива (регион или ссылка), который содержит эту путевую точку.

- ``rid``: :ref:`RID<class_RID>` содержащего навигационного примитива (регион или ссылка).

- ``owner``: объект, который управляет содержащим навигационным примитивом (регион или ссылка).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationAgent3D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Если ``true``, агент регистрируется для обратного вызова избегания RVO на :ref:`NavigationServer3D<class_NavigationServer3D>`. Когда :ref:`velocity<class_NavigationAgent3D_property_velocity>` задано и обработка завершена, ``safe_velocity`` Vector3 принимается с сигнальным соединением на :ref:`velocity_computed<class_NavigationAgent3D_signal_velocity_computed>`. Обработка избегания со многими зарегистрированными агентами имеет значительные затраты производительности и должна быть включена только для агентов, которым это в данный момент требуется.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Битовое поле, определяющее слои избегания для этого NavigationAgent. Другие агенты с соответствующим битом в :ref:`Avoidance_mask<class_NavigationAgent3D_property_Avoidance_mask>` будут избегать этого агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

Битовое поле, определяющее, какие еще агенты избегания и препятствия этот NavigationAgent будет избегать, если бит соответствует хотя бы одному из их :ref:`Avoidance_layers<class_NavigationAgent3D_property_Avoidance_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

Агент не корректирует скорость для других агентов, которые соответствуют :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`, но имеют более низкий :ref:`avoidance_priority<class_NavigationAgent3D_property_avoidance_priority>`. Это, в свою очередь, заставляет других агентов с более низким приоритетом корректировать свои скорости еще больше, чтобы избежать столкновения с этим агентом.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

Если ``true``, отображаются визуальные отладочные данные для этого агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

Если :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` равен ``true``, то этот цвет используется для этого агента вместо глобального цвета.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent3D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

Если :ref:`debug_use_custom<class_NavigationAgent3D_property_debug_use_custom>` равен ``true``, то для рендеринга точек пути этого агента, вместо глобального размера точки, используется этот растеризованный размер точки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

Если ``true``, то вместо глобального цвета используется определенный :ref:`debug_path_custom_color<class_NavigationAgent3D_property_debug_path_custom_color>` для этого агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Высота агента избегания. Агенты будут игнорировать других агентов или препятствия, которые находятся выше или ниже их текущего положения + высота в 2D-избегании. Ничего не делает в 3D-избегании, которое использует только радиусные сферы.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_keep_y_velocity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_y_velocity** = ``true`` :ref:`🔗<class_NavigationAgent3D_property_keep_y_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_keep_y_velocity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_y_velocity**\ (\ )

Если ``true``, и агент использует 2D-избегание, он запомнит заданную скорость оси Y и повторно применит ее после шага избегания. В то время как 2D-избегание не имеет оси Y и моделирует на плоской плоскости, эта настройка может помочь смягчить наиболее очевидное отсечение на неровной 3D-геометрии.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent3D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

Максимальное количество соседей, которых может учитывать агент.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``10.0`` :ref:`🔗<class_NavigationAgent3D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

Максимальная скорость, с которой может двигаться агент.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Битовое поле, определяющее, какие навигационные слои навигационных регионов этот агент будет использовать для расчета пути. Изменение его во время выполнения очистит текущий навигационный путь и сгенерирует новый, в соответствии с новыми навигационными слоями.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``50.0`` :ref:`🔗<class_NavigationAgent3D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

Расстояние для поиска других агентов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

Порог расстояния, по которому точка пути считается достигнутой. Это позволяет агентам не попадать точно в точку пути на пути, а только достигать ее общей области. Если это значение установлено слишком высоким, NavigationAgent будет пропускать точки на пути, что может привести к выходу из навигационной сетки. Если это значение установлено слишком низким, NavigationAgent застрянет в цикле повторного пути, поскольку он будет постоянно превышать расстояние до следующей точки при каждом обновлении физического кадра.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_height_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_height_offset** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_height_offset>`

.. rst-class:: classref-property-setget

- |void| **set_path_height_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_height_offset**\ (\ )

Смещение высоты вычитается из значения оси Y любой позиции векторного пути для этого NavigationAgent. Смещение высоты NavigationAgent не изменяет и не влияет на навигационную сетку или результат запроса поиска пути. Для поддержки агентов разного размера требуются дополнительные навигационные карты, использующие регионы с навигационными сетками, которые разработчик запекал с соответствующими значениями радиуса или высоты агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``5.0`` :ref:`🔗<class_NavigationAgent3D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

Максимальное расстояние, на которое агент может отойти от идеального пути до конечной позиции. Это может произойти из-за попыток избежать столкновений. При превышении максимального расстояния он пересчитывает идеальный путь.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent3D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

Дополнительная информация для возврата по пути навигации.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Постобработка пути, примененная к необработанному коридору пути, найденному :ref:`pathfinding_algorithm<class_NavigationAgent3D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

Максимально допустимая длина возвращаемого пути в мировых единицах. При превышении этой длины путь будет обрезан.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

Максимально допустимый радиус возвращаемого пути от начала пути в мировых единицах. При превышении этого радиуса путь будет обрезан. По сравнению с :ref:`path_return_max_length<class_NavigationAgent3D_property_path_return_max_length>`, это позволяет агенту пройти значительно больше, если ему потребуется обойти угол.

\ **Примечание:** При этом будет выполнено обрезание сферы с учётом только фактических точек пути навигационной сетки, при этом первая точка пути будет находиться в центре сферы.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

Максимальное расстояние, на которое может отдалиться искомый полигон от начального полигона, прежде чем поиск пути отменит поиск пути к целевому полигону (возможно, недостижимому или очень удалённому). В этом случае поиск пути сбрасывается и строит путь от начального полигона до полигона, который был найден ближайшим к целевой позиции. Значение ``0`` или ниже считается неограниченным. В случае неограниченного значения поиск пути будет искать все полигоны, соединённые с начальным полигоном, пока не будет найден целевой полигон или пока не будут исчерпаны все доступные варианты поиска полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

Максимальное количество полигонов, которые будут просмотрены до того, как поиск пути отменит поиск пути к целевому полигону (возможно, недостижимому или очень удалённому). В этом случае поиск пути сбрасывается и строит путь от начального полигона до полигона, который был найден ближайшим к целевой позиции. Значение ``0`` или меньше считается неограниченным. В случае неограниченного поиска пути поиск пути будет искать все полигоны, соединённые с начальным полигоном, пока не будет найден целевой полигон или пока не будут исчерпаны все доступные варианты поиска полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

Алгоритм поиска пути, используемый в запросе пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_NavigationAgent3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радиус агента избегания. Это «тело» агента избегания, а не начальный радиус маневра избегания (который контролируется :ref:`neighbor_distance<class_NavigationAgent3D_property_neighbor_distance>`).

Не влияет на обычный поиск пути. Чтобы изменить радиус поиска пути актера, запеките ресурсы :ref:`NavigationMesh<class_NavigationMesh>` с другим свойством :ref:`NavigationMesh.agent_radius<class_NavigationMesh_property_agent_radius>` и используйте разные навигационные карты для каждого размера актера.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in world units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Если ``true``, будет возвращена упрощенная версия пути с удаленными менее критическими точками пути. Степень упрощения контролируется :ref:`simplify_epsilon<class_NavigationAgent3D_property_simplify_epsilon>`. Упрощение использует вариант алгоритма Ramer-Douglas-Peucker для прореживания точек кривой.

Упрощение пути может быть полезно для смягчения различных проблем следования по пути, которые могут возникнуть с определенными типами агентов и поведением сценария. Например, «рулевое управление» или избегание в «открытых полях».

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

Порог расстояния до цели считается достигнутым. При достижении цели выдается :ref:`target_reached<class_NavigationAgent3D_signal_target_reached>` и навигация завершается (см. :ref:`is_navigation_finished()<class_NavigationAgent3D_method_is_navigation_finished>` и :ref:`navigation_finished<class_NavigationAgent3D_signal_navigation_finished>`).

Вы можете сделать навигацию завершенной раньше, установив это свойство на значение большее, чем :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (навигация завершится до достижения последней точки маршрута).

Вы также можете сделать навигацию завершенной ближе к цели, чем каждая индивидуальная позиция пути, установив это свойство на значение меньшее, чем :ref:`path_desired_distance<class_NavigationAgent3D_property_path_desired_distance>` (навигация не завершится немедленно при достижении последней точки маршрута). Однако, если заданное значение слишком низкое, агент застрянет в цикле повторного пути, поскольку он будет постоянно превышать расстояние до цели при каждом обновлении физического кадра.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Если установлено, то у NavigationServer запрашивается новый путь навигации от текущей позиции агента до :ref:`target_position<class_NavigationAgent3D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to other agents. The larger the number, the sooner the agent will respond to other agents, but less freedom in choosing its velocities. A too high value will slow down agent movement considerably. Must be positive.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent3D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to static avoidance obstacles. The larger the number, the sooner the agent will respond to static avoidance obstacles, but less freedom in choosing its velocities. A too high value will slow down agent movement considerably. Must be positive.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_use_3d_avoidance:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_3d_avoidance** = ``false`` :ref:`🔗<class_NavigationAgent3D_property_use_3d_avoidance>`

.. rst-class:: classref-property-setget

- |void| **set_use_3d_avoidance**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_3d_avoidance**\ (\ )

Если ``true``, агент вычисляет скорости избегания в 3D всенаправленно, например, для игр, которые происходят в воздухе, под водой или в космосе. Агенты, использующие 3D-избегание, избегают только других агентов, использующих 3D-избегание, и реагируют на препятствия избегания на основе радиуса. Они игнорируют любые препятствия на основе вершин.

Если ``false``, агент вычисляет скорости избегания в 2D вдоль осей x и z, игнорируя ось y. Агенты, использующие 2D-избегание, избегают только других агентов, использующих 2D-избегание, и реагируют на препятствия избегания на основе радиуса или препятствия избегания на основе вершин. Другие агенты, использующие 2D-избегание, которые находятся ниже или выше их текущего положения, включая :ref:`height<class_NavigationAgent3D_property_height>`, игнорируются.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationAgent3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Устанавливает новую желаемую скорость для агента. Симуляция избегания попытается достичь этой скорости, если это возможно, но изменит ее, чтобы избежать столкновения с другими агентами и препятствиями. Когда агент телепортируется в новое положение, используйте также :ref:`set_velocity_forced()<class_NavigationAgent3D_method_set_velocity_forced>` для сброса внутренней скорости симуляции.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationAgent3D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_distance_to_target>`

Возвращает расстояние до целевой позиции, используя глобальную позицию агента. Пользователь должен установить :ref:`target_position<class_NavigationAgent3D_property_target_position>`, чтобы это было точным.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`Avoidance_layers<class_NavigationAgent3D_property_Avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_avoidance_mask_value>`

Возвращает, включена ли указанная маска битовой маски :ref:`Avoidance_mask<class_NavigationAgent3D_property_Avoidance_mask>`, если задан ``mask_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path>`

Returns this agent's current path from start to finish in global coordinates. The path only updates when the target position is changed or the agent requires a repath. The path array is not intended to be used in direct path movement as the agent has its own internal path logic that would get corrupted by changing the path array manually. Use the intended :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>` once every physics frame to receive the next path point for the agent's movement as this function also updates the internal path logic.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_path_index>`

Возвращает индекс, по которому в данный момент находится агент в массиве :ref:`PackedVector3Array<class_PackedVector3Array>` пути навигации.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult3D<class_NavigationPathQueryResult3D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_current_navigation_result>`

Возвращает результат запроса пути, по которому в данный момент следует агент.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_final_position>`

Возвращает достижимую конечную позицию текущего навигационного пути в глобальных координатах. Эта позиция может измениться, если агенту необходимо обновить навигационный путь, что заставляет агента испускать сигнал :ref:`path_changed<class_NavigationAgent3D_signal_path_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_layer_value>`

Возвращает, включен ли указанный слой битовой маски :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_navigation_map>`

Возвращает :ref:`RID<class_RID>` навигационной карты для этого узла NavigationAgent. Эта функция всегда возвращает набор карт на узле NavigationAgent, а не карту абстрактного агента на NavigationServer. Если карта агента изменяется напрямую с помощью API NavigationServer, узел NavigationAgent не будет знать об изменении карты. Используйте :ref:`set_navigation_map()<class_NavigationAgent3D_method_set_navigation_map>` для изменения навигационной карты для NavigationAgent, а также для обновления агента на NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_get_next_path_position>`

Возвращает следующую позицию в глобальных координатах, в которую можно переместиться, убедившись, что на пути нет статических объектов. Если у агента нет пути навигации, он вернет позицию родителя агента. Использование этой функции один раз в каждом кадре физики требуется для обновления внутренней логики пути NavigationAgent.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_path_length>`

Возвращает длину текущего вычисленного пути. Возвращаемое значение — ``0.0``, если путь всё ещё вычисляется или вычисление ещё не было запрошено.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого агента на :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_navigation_finished>`

Возвращает ``true``, если навигация агента завершена. Если цель достижима, навигация завершается, когда цель достигнута. Если цель недостижима, навигация завершается, когда достигнута последняя точка маршрута пути.

\ **Примечание:** В то время как ``true`` будет прекращать вызывать функции обновления, такие как :ref:`get_next_path_position()<class_NavigationAgent3D_method_get_next_path_position>`. Это позволяет избежать дрожания стоящего агента из-за вызова повторяющихся обновлений пути.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent3D_method_is_target_reachable>`

Возвращает ``true`` , если :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>` находится в пределах :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` от :ref:`target_position<class_NavigationAgent3D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent3D_method_is_target_reached>`

Возвращает ``true``, если агент достиг цели, т. е. агент переместился в пределах :ref:`target_desired_distance<class_NavigationAgent3D_property_target_desired_distance>` от :ref:`target_position<class_NavigationAgent3D_property_target_position>`. Не всегда возможно достичь цели, но всегда должно быть возможно достичь конечной позиции. См. :ref:`get_final_position()<class_NavigationAgent3D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`avoidance_layers<class_NavigationAgent3D_property_avoidance_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_avoidance_mask_value>`

На основе ``value`` включает или отключает указанную маску в битовой маске :ref:`avoidance_mask<class_NavigationAgent3D_property_avoidance_mask>`, учитывая ``mask_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_layer_value>`

На основе ``value`` включает или отключает указанный слой в битовой маске :ref:`navigation_layers<class_NavigationAgent3D_property_navigation_layers>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_navigation_map>`

Устанавливает :ref:`RID<class_RID>` навигационной карты, которую должен использовать этот узел NavigationAgent, а также обновляет ``agent`` на NavigationServer.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent3D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_NavigationAgent3D_method_set_velocity_forced>`

Заменяет внутреннюю скорость в моделировании избегания столкновений на ``velocity``. Когда агент телепортируется в новое положение, эта функция должна использоваться в том же кадре. При частом вызове эта функция может привести к застреванию агентов.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
