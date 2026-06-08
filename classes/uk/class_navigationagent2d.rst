:github_url: hide

.. _class_NavigationAgent2D:

NavigationAgent2D
=================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A 2D агент, який використовується для шляхуфінованої до положення, уникаючи перешкод.

.. rst-class:: classref-introduction-group

Опис
--------

2D-агент, який використовується для пошуку шляху до позиції, уникаючи статичних та динамічних перешкод. Розрахунок може бути використаний батьківським вузлом для динамічного переміщення його вздовж шляху. Для коректної роботи потрібні навігаційні дані.

Динамічні перешкоди уникаються за допомогою уникнення зіткнень RVO. Уникнення обчислюється перед фізикою, тому інформацію про пошук шляху можна безпечно використовувати на кроці фізики.

\ **Примітка:** Після встановлення властивості :ref:`target_position<class_NavigationAgent2D_property_target_position>` метод :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>` необхідно використовувати один раз у кожному кадрі фізики для оновлення внутрішньої логіки шляху навігаційного агента. Позиція вектора, яку він повертає, повинна використовуватися як наступна позиція руху для батьківського вузла агента.

\ **Примітка:** Кілька методів цього класу, такі як :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`, можуть ініціювати новий розрахунок шляху. Виклик цих методів у зворотному виклику сигналу агента, наприклад, :ref:`waypoint_reached<class_NavigationAgent2D_signal_waypoint_reached>`, може спричинити нескінченну рекурсію. Рекомендується викликати ці методи на кроці фізики або, як варіант, відкласти їхній виклик до кінця кадру (див. :ref:`Object.call_deferred()<class_Object_method_call_deferred>` або :ref:`Object.CONNECT_DEFERRED<class_Object_constant_CONNECT_DEFERRED>`).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання навігації <../tutorials/navigation/navigation_using_navigationagents>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`avoidance_enabled<class_NavigationAgent2D_property_avoidance_enabled>`                       | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>`                         | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>`                             | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`avoidance_priority<class_NavigationAgent2D_property_avoidance_priority>`                     | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_enabled<class_NavigationAgent2D_property_debug_enabled>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                      | :ref:`debug_path_custom_color<class_NavigationAgent2D_property_debug_path_custom_color>`           | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_line_width<class_NavigationAgent2D_property_debug_path_custom_line_width>` | ``-1.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`debug_path_custom_point_size<class_NavigationAgent2D_property_debug_path_custom_point_size>` | ``4.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>`                         | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`max_neighbors<class_NavigationAgent2D_property_max_neighbors>`                               | ``10``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`max_speed<class_NavigationAgent2D_property_max_speed>`                                       | ``100.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>`                       | ``1``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`neighbor_distance<class_NavigationAgent2D_property_neighbor_distance>`                       | ``500.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>`               | ``20.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_max_distance<class_NavigationAgent2D_property_path_max_distance>`                       | ``100.0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] | :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`                   | ``7``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationAgent2D_property_path_postprocessing>`                   | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationAgent2D_property_path_return_max_length>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationAgent2D_property_path_return_max_radius>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationAgent2D_property_path_search_max_distance>`         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationAgent2D_property_path_search_max_polygons>`         | ``4096``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationAgent2D_property_pathfinding_algorithm>`               | ``0``                 |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`radius<class_NavigationAgent2D_property_radius>`                                             | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationAgent2D_property_simplify_epsilon>`                         | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationAgent2D_property_simplify_path>`                               | ``false``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>`           | ``10.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`target_position<class_NavigationAgent2D_property_target_position>`                           | ``Vector2(0, 0)``     |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_agents<class_NavigationAgent2D_property_time_horizon_agents>`                   | ``1.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`time_horizon_obstacles<class_NavigationAgent2D_property_time_horizon_obstacles>`             | ``0.0``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`velocity<class_NavigationAgent2D_property_velocity>`                                         | ``Vector2(0, 0)``     |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`distance_to_target<class_NavigationAgent2D_method_distance_to_target>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_layer_value<class_NavigationAgent2D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_avoidance_mask_value<class_NavigationAgent2D_method_get_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`\ ) |const|                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                   | :ref:`get_current_navigation_path<class_NavigationAgent2D_method_get_current_navigation_path>`\ (\ ) |const|                                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_current_navigation_path_index<class_NavigationAgent2D_method_get_current_navigation_path_index>`\ (\ ) |const|                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>` | :ref:`get_current_navigation_result<class_NavigationAgent2D_method_get_current_navigation_result>`\ (\ ) |const|                                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`get_final_position<class_NavigationAgent2D_method_get_final_position>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_navigation_layer_value<class_NavigationAgent2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_navigation_map<class_NavigationAgent2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`get_next_path_position<class_NavigationAgent2D_method_get_next_path_position>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_path_length<class_NavigationAgent2D_method_get_path_length>`\ (\ ) |const|                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_rid<class_NavigationAgent2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_navigation_finished<class_NavigationAgent2D_method_is_navigation_finished>`\ (\ )                                                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reachable<class_NavigationAgent2D_method_is_target_reachable>`\ (\ )                                                                                      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_target_reached<class_NavigationAgent2D_method_is_target_reached>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_layer_value<class_NavigationAgent2D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_avoidance_mask_value<class_NavigationAgent2D_method_set_avoidance_mask_value>`\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_layer_value<class_NavigationAgent2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_navigation_map<class_NavigationAgent2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_velocity_forced<class_NavigationAgent2D_method_set_velocity_forced>`\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ )                                            |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_NavigationAgent2D_signal_link_reached:

.. rst-class:: classref-signal

**link_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_link_reached>`

Заяви, що агент досягнув навігації. Увімкнено, коли агент рухається в межах :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` наступного положення шляху, коли ця позиція є навігаційним посиланням.

Словник деталей може містити такі ключі в залежності від значення :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`:

\ ``позиція``: Почати позицію посилання, яка була досягнута.

- ``тип``: Завжди :ref:`NavigationPathQueryResult2D.PATH_SEGMENT_TYPE_LINK<class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_LINK>`.

- ``rid``: :ref:`RID<class_RID>` посилання.

\ ``власник``: :ref:`NavigationLink2D<class_NavigationLink2D>`.

- ``link_entry_position``: Якщо ``власник`` доступний і власник є :ref:`NavigationLink2D<class_NavigationLink2D>`, він буде містити глобальну позицію точки посилання, який входить до агента.

- ``link_exit_position``: Якщо ``власник`` доступний і власник :ref:`NavigationLink2D<class_NavigationLink2D>`, він міститиме глобальну позицію точки посилання, яку агент виходить з виходу.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_navigation_finished:

.. rst-class:: classref-signal

**navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_navigation_finished>`

Навігація агента завершено. Якщо мета досягається, навігація закінчується при досягненні цілей. Якщо мета ненадійна, навігація закінчується, коли досягається остання точка шляху. Цей сигнал видається тільки один раз на завантажені шлях.

Цей сигнал буде видано тільки після того, як :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>`, коли ціль досягається.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_path_changed:

.. rst-class:: classref-signal

**path_changed**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_path_changed>`

Увімкнути, коли агент повинен оновити завантажений шлях:

- бо шлях був раніше порожнім.

- через зміну навігаційної карти.

- оскільки агент відштовхував далі від поточного сегмента шляху, ніж :ref:`path_max_distance<class_NavigationAgent2D_property_path_max_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_target_reached:

.. rst-class:: classref-signal

**target_reached**\ (\ ) :ref:`🔗<class_NavigationAgent2D_signal_target_reached>`

Сигналізує про те, що агент досяг цілі, тобто агент перемістився в межах :ref:`target_distance<class_NavigationAgent2D_property_target_distance>` від :ref:`target_position<class_NavigationAgent2D_property_target_position>`. Цей сигнал випромінюється лише один раз на кожен завантажений шлях.

Цей сигнал буде випромінено безпосередньо перед :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>`, коли ціль буде досяжна.

Не завжди можливо досягти цілі, але завжди має бути можливість досягти кінцевої позиції. Див. :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_velocity_computed:

.. rst-class:: classref-signal

**velocity_computed**\ (\ safe_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_velocity_computed>`

При обчисленні швидкості зіткнення. Увімкнено будь-яке оновлення, доки :ref:`avoidance_enabled<class_NavigationAgent2D_property_avoidance_enabled>` ``true`` і агент має навігаційну карту.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_signal_waypoint_reached:

.. rst-class:: classref-signal

**waypoint_reached**\ (\ details\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_NavigationAgent2D_signal_waypoint_reached>`

Заяви, що агент досягнув точки шляху. Випробувано, коли агент рухається в межах :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` наступного положення шляху.

Словник деталей може містити такі ключі в залежності від значення :ref:`path_metadata_flags<class_NavigationAgent2D_property_path_metadata_flags>`:

- ``позиція``: Посада точки, яка досягла.

- ``тип``: Тип навігаційної примітивності (регіон або посилання), що містить цю точку шляху.

- ``rid``: :ref:`RID<class_RID>` містить навігаційний примітив (регіон або посилання).

- ``власник``: Об'єкт, який керує навігацією (регіон або посилання).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationAgent2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

Якщо ``true`` агент зареєстрований для зворотного виклику RVO на :ref:`NavigationServer2D<class_NavigationServer2D>`. При використанні параметра ``safe_velocity`` Vector2 надходить з підключенням сигналу до :ref:`speed_computed<class_NavigationAgent2D_signal_speed_computed>`. Унеможливлення обробки з багатьма зареєстрованими агентами має суттєву вартість виконання і повинна бути включена тільки до агентів, які наразі вимагають.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

Бітове поле, що визначає шари уникнення для цього NavigationAgent. Інші агенти з відповідним бітом у :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>` уникатимуть цього агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_mask** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_mask>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_mask**\ (\ )

Бітове поле, яке визначає, яких інших агентів уникнення та перешкод цей NavigationAgent уникатиме, коли біт збігається принаймні з одним з їхніх :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_avoidance_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **avoidance_priority** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_avoidance_priority>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_avoidance_priority**\ (\ )

Засіб не налаштовує швидкість для інших агентів, які будуть відповідати :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>`, але мають нижчу :ref:`avoidance_priority<class_NavigationAgent2D_property_avoidance_priority>`. Це в свою чергу робить інші агенти з більш низьким пріоритетом коригувати свої нерівності ще більше, щоб уникнути зіткнення з цим агентом.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_enabled** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_debug_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_enabled**\ (\ )

Якщо ``true`` показує візуальні ефекти для цього агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_path_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_path_custom_color**\ (\ )

``true`` використовує цей колір для цього агента замість глобального кольору.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_line_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_line_width** = ``-1.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_line_width>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_line_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_line_width**\ (\ )

Якщо :ref:`debug_use_custom<class_NavigationAgent2D_property_debug_use_custom>` є ``true`` використовує цю ширину лінії для рендерингу шляхів для даного агента замість глобальної ширини лінії.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_path_custom_point_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **debug_path_custom_point_size** = ``4.0`` :ref:`🔗<class_NavigationAgent2D_property_debug_path_custom_point_size>`

.. rst-class:: classref-property-setget

- |void| **set_debug_path_custom_point_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_debug_path_custom_point_size**\ (\ )

``true`` використовує цей растровий розмір точки для рендерингових точок для цього агента замість глобального розміру точки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_debug_use_custom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_use_custom** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_debug_use_custom>`

.. rst-class:: classref-property-setget

- |void| **set_debug_use_custom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_debug_use_custom**\ (\ )

Якщо ``true`` використовує визначені :ref:`debug_path_custom_color<class_NavigationAgent2D_property_debug_path_custom_color>` для цього агента замість глобального кольору.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_neighbors:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_neighbors** = ``10`` :ref:`🔗<class_NavigationAgent2D_property_max_neighbors>`

.. rst-class:: classref-property-setget

- |void| **set_max_neighbors**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_neighbors**\ (\ )

Максимальна кількість сусідів для агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_max_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_speed** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_max_speed>`

.. rst-class:: classref-property-setget

- |void| **set_max_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_speed**\ (\ )

Максимальна швидкість, яка може переміщатися.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationAgent2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

У бітфілді визначено навігаційні шари навігаційних регіонів цей агент буде використовуватися для розрахунку шляху. Змінюючи його під час робочого часу, очищаємо поточну навігацію і генеруємо новий, відповідно до нових навігаційних шарів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_neighbor_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **neighbor_distance** = ``500.0`` :ref:`🔗<class_NavigationAgent2D_property_neighbor_distance>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_neighbor_distance**\ (\ )

Відстань до пошуку інших агентів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_desired_distance** = ``20.0`` :ref:`🔗<class_NavigationAgent2D_property_path_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_desired_distance**\ (\ )

Поріг відстані до точки шляху вважається досягнутим. Це дозволяє агентам не вразити точку шляху на шляху точно, але тільки досягти його загальної площі. Якщо це значення встановлюється занадто високою, навігаціяАгент пропускає точки на шляху, які можуть призвести до її виходу на навігацію сітки. Якщо ця величина встановлена занадто низька, навігаціяАгент буде застрягти в репатентній петлю, тому що вона буде постійно перевикористовувати відстань в наступну точку на кожен фізичний каркас оновлення.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_max_distance** = ``100.0`` :ref:`🔗<class_NavigationAgent2D_property_path_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_max_distance**\ (\ )

Максимальна відстань агента допускається від ідеального шляху до кінцевого положення. Це може статися через спроби уникнути зіткнення. Коли максимальна відстань перевищена, вона перерахує ідеальний шлях.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **path_metadata_flags** = ``7`` :ref:`🔗<class_NavigationAgent2D_property_path_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_path_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **get_path_metadata_flags**\ (\ )

Додаткова інформація для повернення навігаційної доріжки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Постообробка шляху, застосована до необробленого коридору шляху, знайденого за допомогою :ref:`pathfinding_algorithm<class_NavigationAgent2D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

Максимально допустима довжина повернутого шляху в одиницях одиниць. Шлях буде обрізано при перевищенні цієї довжини.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

Максимально допустимий радіус у світових одиницях, яким може бути повернутий шлях від початку шляху. Шлях буде обрізано при перевищенні цього радіуса. Порівняно з :ref:`path_return_max_length<class_NavigationAgent2D_property_path_return_max_length>`, це дозволяє агенту пройти набагато далі, якщо йому потрібно обійти кут.

\ **Примітка:** Це виконає обрізання сфери, враховуючи лише фактичні точки шляху навігаційної сітки, причому перша позиція шляху буде центром сфери.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

Максимальна відстань, на якій може знаходитися пошуковий полігон від початкового полігону, перш ніж пошук шляху скасовує пошук шляху до (можливо, недосяжного або дуже далекого) полігону цільової позиції. У цьому випадку пошук шляху скидається та будує шлях від початкового полігону до полігону, який був знайдений найближчим до цільової позиції на даний момент. Значення ``0`` або нижче вважається необмеженим. У разі необмеженого значення пошук шляху шукатиме всі полігони, пов'язані з початковим полігоном, доки не буде знайдено полігон цільової позиції або не будуть вичерпані всі доступні опції пошуку полігонів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationAgent2D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

Максимальна кількість полігонів, що обшукуються перед пошуком шляху, скасовує пошук шляху до (можливо, недосяжного або дуже далекого) полігону цільової позиції. У цьому випадку пошук шляху скидається та будує шлях від початкового полігону до полігону, який був знайдений найближчим до цільової позиції на даний момент. Значення ``0`` або нижче вважається необмеженим. У разі необмеженого значення пошук шляху шукатиме всі полігони, пов'язані з початковим полігоном, доки не буде знайдено полігон цільової позиції або не будуть вичерпані всі доступні опції пошуку полігонів.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationAgent2D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

Алгоритм стипендії, що використовується в доріжці.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус агента уникнення. Це «тіло» агента уникнення, а не радіус початку маневру уникнення (який контролюється параметром :ref:`neighbor_distance<class_NavigationAgent2D_property_neighbor_distance>`).

Не впливає на звичайний пошук шляху. Щоб змінити радіус пошуку шляху актора, запечіть ресурси :ref:`NavigationPolygon<class_NavigationPolygon>` з іншою властивістю :ref:`NavigationPolygon.agent_radius<class_NavigationPolygon_property_agent_radius>` та використовуйте різні карти навігації для кожного розміру актора.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

Сума спрощення шляху у світових підрозділах.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationAgent2D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Якщо ``true`` буде повернуто спрощену версію шляху з менш критичними точками шляху. Сума спрощування здійснюється за допомогою :ref:`simplify_epsilon<class_NavigationAgent2D_property_simplify_epsilon>`. Спрощування використовує варіант алгоритму Ramer-Douglas-Peucker для децимації кривих точок.

Удосконалення шляху може бути корисним, щоб пом'якшити різні шляхи, такі проблеми, які можуть виникати з певними типами агента та поведінками скриптів. Наприклад, агенти або уникнення в «відкритих полях».

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_desired_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_desired_distance** = ``10.0`` :ref:`🔗<class_NavigationAgent2D_property_target_desired_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_desired_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_desired_distance**\ (\ )

Порога дистанції перед поставленою метою вважається досягнута. Досягнення цілі, :ref:`target_reached<class_NavigationAgent2D_signal_target_reached>` вдається і навігація закінчується (див. :ref:`is_navigation_finished()<class_NavigationAgent2D_method_is_navigation_finished>` і :ref:`navigation_finished<class_NavigationAgent2D_signal_navigation_finished>`).

Ви можете зробити навігацію в кінці початку, встановивши цю властивість значення більше :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>`\ 

Ви також можете зробити навігацію до цілі, ніж кожна окрема позиція шляху, встановивши цю властивість до значення нижче :ref:`path_desired_distance<class_NavigationAgent2D_property_path_desired_distance>` (навігація не відразу закінчується при досягненні останнього шляху). Однак, якщо значення встановлена занадто низька, агент буде застрягти в репатентну петлю, оскільки він буде постійно перевикористовувати відстань до цілі на кожному фізичному каркасі оновлення.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Якщо встановлено, у NavigationServer запитується новий шлях навігації від поточної позиції агента до :ref:`target_position<class_NavigationAgent2D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_agents:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_agents** = ``1.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_agents>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_agents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_agents**\ (\ )

Мінімальна кількість часу, для яких це пов’язано з алгоритмом зіткнень, безпечні для інших агентів. Чим більший номер, тим швидше агент відповідав іншим агентам, але меншу свободу при виборі його оксамитовості. Дуже висока вартість значно сповільнить рух агентів. Потрібні бути позитивними.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_time_horizon_obstacles:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_horizon_obstacles** = ``0.0`` :ref:`🔗<class_NavigationAgent2D_property_time_horizon_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_time_horizon_obstacles**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_horizon_obstacles**\ (\ )

Мінімальна кількість часу, для яких це пов’язано з алгоритмом зіткнень, безпечні щодо статичних перешкод уникає. Чим більший номер, тим швидше агент відповідав на статичні перешкоди уникнення, але меншу свободу при виборі своїх опонентів. Дуже висока вартість значно сповільнить рух агентів. Потрібні бути позитивними.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationAgent2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Налаштовує нову бажану швидкість для агента. Симулятор уникнення перешкод допоможе виконати цю швидкість, якщо це можливо, але змінить його, щоб уникнути зіткнення з іншими агентами та перешкодами. Коли агент зв'язується з новим положенням, скористайтеся :ref:`set_velocity_forced()<class_NavigationAgent2D_method_set_velocity_forced>`, а також для скидання внутрішньої швидкості моделювання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationAgent2D_method_distance_to_target:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to_target**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_distance_to_target>`

Повертає відстань до цільової позиції, використовуючи глобальну позицію агента. Користувач повинен встановити :ref:`target_position<class_NavigationAgent2D_property_target_position>`, щоб це було точним.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_layer_value>`

Повертає, чи ввімкнено вказаний шар бітової маски :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>`, залежно від значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_avoidance_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_avoidance_mask_value>`

Повертає, чи ввімкнено вказану маску бітової маски :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>`, якщо задано ``mask_number`` значення від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_current_navigation_path**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path>`

Повертає поточний шлях агента від початку до завершення глобальних координат. При зміні цільової позиції, або агент вимагає репатії. Масштаб шляху не призначений для використання в прямій дорозі, оскільки агент має свою внутрішню логіку шляху, яка буде пошкоджена шляхом зміни масиву шляху вручну. Використовуйте призначені :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>` один раз кожен кадр фізики, щоб отримати наступний шлях для руху агентів, оскільки ця функція також оновлюється логіку внутрішнього шляху.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_path_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_navigation_path_index**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_path_index>`

Повертає, що індекс агента в даний час навігаційний шлях :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_current_navigation_result:

.. rst-class:: classref-method

:ref:`NavigationPathQueryResult2D<class_NavigationPathQueryResult2D>` **get_current_navigation_result**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_current_navigation_result>`

Повертає результат запиту на шлях агента в даний час.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_final_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_final_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_final_position>`

Повернутися до кінцевої позиції поточного шляху навігації у глобальних координатах. Ця позиція може змінюватися, якщо агент повинен оновити навігаційний шлях, який робить агент випромінив сигнал :ref:`path_changed<class_NavigationAgent2D_signal_path_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_layer_value>`

Повертає, чи увімкнено вказаний шар бітової маски :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>`, залежно від значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_navigation_map>`

Повернення :ref:`RID<class_RID>` навігаційної карти для цього вузла навігації. Ця функція повертається завжди на карті, встановлену навігаційному вузлі, а не на карті абстрактного агента на навігаційний сервер. Якщо карта агента змінюється безпосередньо з API навігації навігацієюАгентний вузол не буде в курсі зміни карти. Використовуйте :ref:`set_navigation_map()<class_NavigationAgent2D_method_set_navigation_map>` для зміни навігаційної карти для навігаціїAgent, а також оновлення агента на Навігаційний сервер.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_next_path_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_next_path_position**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_get_next_path_position>`

Повертаємо наступну позицію у глобальних координатах, які можуть бути переміщені, переконавшись, що не існує статичних об’єктів. Якщо агент не має навігаційної доріжки, він поверне позицію батька агента. Використання цієї функції після кожного фізичного кадру необхідно оновити логіку внутрішнього шляху навігації.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_path_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_path_length**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_path_length>`

Повертає довжину поточного обчисленого шляху. Повернене значення — ``0.0``, якщо шлях все ще обчислюється або запит на обчислення ще не було надіслано.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_get_rid>`

Повернутися до :ref:`RID<class_RID>` цього агента на :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_navigation_finished:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_navigation_finished**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_navigation_finished>`

Повертаємо ``true``, якщо навігація агента завершено. Якщо мета досягається, навігація закінчується при досягненні цілей. Якщо мета ненадійна, навігація закінчується, коли досягається остання точка шляху.

\ **Примітка:** В той час як ``true`` воліє зупинити виклик функції оновлення, такі як :ref:`get_next_path_position()<class_NavigationAgent2D_method_get_next_path_position>`. Це дозволяє занурювати стоячий агент через виклик повторних оновлень шляху.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reachable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reachable**\ (\ ) :ref:`🔗<class_NavigationAgent2D_method_is_target_reachable>`

Повертає ``true``, якщо :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>` знаходиться в межах :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` від :ref:`target_position<class_NavigationAgent2D_property_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_is_target_reached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_reached**\ (\ ) |const| :ref:`🔗<class_NavigationAgent2D_method_is_target_reached>`

Повертає ``true``, якщо агент досягнув поставленої мети, тобто агент перейшов в межах :ref:`target_desired_distance<class_NavigationAgent2D_property_target_desired_distance>` :ref:`target_position<class_NavigationAgent2D_property_target_position>`. Не завжди можна досягти поставленої мети, але це завжди повинно бути можливим для досягнення кінцевої позиції. Див. :ref:`get_final_position()<class_NavigationAgent2D_method_get_final_position>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_layer_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у бітовій масці :ref:`avoidance_layers<class_NavigationAgent2D_property_avoidance_layers>`, маючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_avoidance_mask_value:

.. rst-class:: classref-method

|void| **set_avoidance_mask_value**\ (\ mask_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_avoidance_mask_value>`

На основі значення параметра ``value`` вмикає або вимикає вказану маску в бітовій масці :ref:`avoidance_mask<class_NavigationAgent2D_property_avoidance_mask>`, маючи значення ``mask_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_layer_value>`

На основі значення параметра ``value`` вмикає або вимикає вказаний шар у бітовій масці :ref:`navigation_layers<class_NavigationAgent2D_property_navigation_layers>`, маючи значення ``layer_number`` від 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_navigation_map>`

Навігація :ref:`RID<class_RID>` навігаційної карти цього вузла навігації має використовуватися, а також оновлення `` agent`` на Навігаційний сервер.

.. rst-class:: classref-item-separator

----

.. _class_NavigationAgent2D_method_set_velocity_forced:

.. rst-class:: classref-method

|void| **set_velocity_forced**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationAgent2D_method_set_velocity_forced>`

Заміняє внутрішню швидкість при зіткненні симулятора з ``velocity``. При підключенні агента до нової позиції ця функція повинна бути використана в одному кадрі. Якщо часто ця функція може отримати агенти, які застрягають.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
