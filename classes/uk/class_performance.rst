:github_url: hide

.. _class_Performance:

Performance
===========

**Успадковує:** :ref:`Object<class_Object>`

Виставки даних, пов'язані з виконанням.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас надає доступ до кількості різних моніторів, пов'язаних з виконанням, таких як використання пам'яті, дзвінки та FPS. Це те ж саме, що значення відображаються в панелі **Monitor** **Налагоджувач**. Використовуючи :ref:`get_monitor()<class_Performance_method_get_monitor>` цього класу, ви можете отримати дані з вашого коду.

Ви можете додати користувацькі монітори за допомогою методу :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>`. Призначені для користувача монітори **Monitor** вкладка редактора **Debugger** разом з вбудованими моніторами.

\ **Примітка:** Деякі з вбудованих моніторів доступні тільки в режимі налагодження і завжди повернеться ``0`` при використанні в проекті, що експортується в режимі релізу.

\ **Примітка:** Деякі з вбудованих моніторів не оновлюються в режимі реального часу з причин виконання, тому може бути затримка до 1 другого між змінами.

\ **Примітка:** Призначені для користувача монітори не підтримують негативні значення. Негативні значення затискаються до 0.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_custom_monitor<class_Performance_method_add_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_custom_monitor<class_Performance_method_get_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_custom_monitor_names<class_Performance_method_get_custom_monitor_names>`\ (\ )                                                                                                                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_custom_monitor_types<class_Performance_method_get_custom_monitor_types>`\ (\ )                                                                                                                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_monitor<class_Performance_method_get_monitor>`\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const|                                                                                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_monitor_modification_time<class_Performance_method_get_monitor_modification_time>`\ (\ )                                                                                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_custom_monitor<class_Performance_method_has_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_custom_monitor<class_Performance_method_remove_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

Кількість кадрів, що надходять в останній другий. Цей метричний тільки оновлюється один раз на секунду, навіть якщо передається частіше. *Висока якість *

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

Часом було завершення однієї рами. *Lower краще *

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

Часом було завершення однієї фізики кадру, за секундами. *Lower краще *

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

Час, коли він взяв, щоб завершити один навігаційний крок, за секундами. Це включає оновлення навігаційної карти, а також обчислення агента. *Lower краще *

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

Статична пам'ять в даний час використовується, в байтах. Не доступний в збірних конструкціях. *Lower краще *

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

Доступна статична пам'ять. Не доступний в збірних конструкціях. *Lower краще *

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

Найбільша кількість пам'яті черги повідомлення використовується буфер, в байтах. Перевірка повідомлень використовується для відстрочених функцій дзвінків та повідомлень. *Lower краще *

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

Кількість об'єктів в даний час миттєво (включаючи вузли). *Lower краще *

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

Кількість ресурсів в даний час використовується. *Lower краще *

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

Кількість вузлів, які в даний час миттєво опрацьовуються на ялинці. Це також включає в себе кореневу вершину. *Lower краще *

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

Кількість вузлів-сиріт, тобто вузлів, які не є батьківськими для вузла дерева сцени. *Чим менше, тим краще.*\ 

\ **Примітка:** Це доступно лише в режимі налагодження та завжди повертатиме ``0`` при використанні в проекті, експортованому в режимі випуску.

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

Загальна кількість об'єктів в останньому рендері. Ця метрика не включає в себе культові об'єкти (наприклад, за допомогою прихожих вузлів, фрусу, кульлінгу або оклюзії). *Lower краще *

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

Загальна кількість вершин або індексів, що надаються в останньому рендері. Ця метрика не включає в себе примітиви з кульових об'єктів (або за допомогою прихожих вузлів, фрусту або оклюзійного культування). У зв'язку з перепадом глибини і тіні, кількість примітивів завжди вище фактичної кількості вершин на сцені (типово подвійний або потрійний оригінальний показник вершини). *Lower краще *

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

Загальна кількість дзвінків, що виконуються в останньому рендері. Ця метрика не включає в себе культові об'єкти (всередині за допомогою прихожих вузлів, фрусту, кульлінгу або оклюзії), так як вони не призводять до ударних дзвінків. *Lower краще *

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

Кількість використовуваних відео пам'яті (текстур і запам'ятовування вершини, в байтах). З цього метричного також включає в себе неоднозначні виділення, це значення завжди більше, ніж сума :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` і :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>`. *Lower краще *

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

Кількість фактурної пам'яті (в байтах). *Lower краще *

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

Кількість рендерної пам'яті (в байтах). *Lower краще *

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

Кількість активних :ref:`RigidBody2D<class_RigidBody2D>` вузлів в грі. *Lower краще *

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

Кількість пар зіткнення в фізичному двигуні 2D. *Lower краще *

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

Кількість островів в фізиці 2D. *Lower краще *

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

Кількість активних :ref:`RigidBody3D<class_RigidBody3D>` і :ref:`VehicleBody3D<class_VehicleBody3D>` вершини в грі. *Lower краще *

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

Кількість пар зіткнення в фізиці 3D. *Lower краще *

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

Кількість островів в фізиці 3D. *Lower краще *

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

Затримка виводу :ref:`AudioServer<class_AudioServer>`. Еквівалентно виклику методу ``AudioServer.get_output_latency``, не рекомендується викликати його кожного кадру.

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

Кількість активних навігаційних карт у :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`. Це також включає порожні навігаційні карти за замовчуванням, створені екземплярами :ref:`World2D<class_World2D>` та :ref:`World3D<class_World3D>`.

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

Кількість активних областей навігації в :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

Кількість активних навігаційних агентів, що обробляють уникнення в :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

Кількість активних навігаційних посилань у :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

Кількість полігонів навігаційної сітки в :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

Кількість ребер полігону навігаційної сітки в :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

Кількість ребер полігону навігаційної сітки, які було об'єднано через перекриття ключів ребер у :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

Кількість ребер полігону, які вважаються з'єднаними за близькістю ребер :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

Кількість ребер полігону навігаційної сітки, які не вдалося об'єднати в :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`. Ребра все ще можуть бути з'єднані близькістю ребер або за допомогою зв'язків.

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

Кількість активних навігаційних перешкод у :ref:`NavigationServer2D<class_NavigationServer2D>` та :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

Кількість конвеєрних компіляцій, ініційованих засобом візуалізації 2D-полотна.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

Кількість конвеєрних компіляцій, ініційованих завантаженням сіток. Ці компіляції відображатимуться як довший час завантаження під час першого запуску гри користувачем і потрібен конвеєр.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SURFACE** = ``36``

Кількість компіляцій конвеєра, які були запущені шляхом створення кешу поверхні перед рендерингом сцени. Ці компіляції відображатимуться як заїкання під час завантаження сцени, коли користувач вперше запускає гру, і конвеєр потрібен.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_DRAW:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_DRAW** = ``37``

Кількість конвеєрних компіляцій, які були запущені під час малювання сцени. Ці компіляції відображатимуться як заїкання під час гри, коли користувач запускає гру вперше, і потрібен конвеєр.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SPECIALIZATION:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SPECIALIZATION** = ``38``

Кількість конвеєрних компіляцій, запущених для оптимізації поточної сцени. Ці компіляції виконуються у фоновому режимі та не повинні спричиняти жодних зависань.

.. _class_Performance_constant_NAVIGATION_2D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_ACTIVE_MAPS** = ``39``

Кількість активних навігаційних карт у :ref:`NavigationServer2D<class_NavigationServer2D>`. Це також включає порожні навігаційні карти за замовчуванням, створені екземплярами :ref:`World2D<class_World2D>`.

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

Кількість активних областей навігації в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

Кількість активних навігаційних агентів, що обробляють уникнення в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

Кількість активних навігаційних посилань у :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

Кількість полігонів навігаційної сітки в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

Кількість ребер полігону навігаційної сітки в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

Кількість ребер полігону навігаційної сітки, які були об'єднані через перекриття ключів ребер у :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

Кількість ребер полігону, які вважаються з'єднаними за близькістю ребер :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

Кількість ребер полігону навігаційної сітки, які не вдалося об'єднати в :ref:`NavigationServer2D<class_NavigationServer2D>`. Ребра все ще можуть бути з'єднані близькістю ребер або посиланнями.

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

Кількість активних навігаційних перешкод у :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

Кількість активних навігаційних карт у :ref:`NavigationServer3D<class_NavigationServer3D>`. Це також включає порожні навігаційні карти за замовчуванням, створені екземплярами :ref:`World3D<class_World3D>`.

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

Кількість активних навігаторів в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

Кількість Активних навігаційних агентів, що переробляються, в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

Кількість активних навігаторів в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

Кількість навігаторів сітки в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

Кількість навігаційних сітчастих полігонів в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

Кількість навігаційних сітчастих полігонних країв, які були об'єднані через крайовий ключ перекриття в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

Кількість полігонних країв, які розглядаються за межі :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

Кількість навігаційних сітчастих полігонних країв, які не можуть бути об'єднані в :ref:`NavigationServer3D<class_NavigationServer3D>`. Краї все-таки можуть бути підключені до краю поруч або з посиланнями.

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

Кількість активних навігаційних перешкод у :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``59``

Представляємо розмір :ref:`Monitor<enum_Performance_Monitor>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_Performance_MonitorType:

.. rst-class:: classref-enumeration

enum **MonitorType**: :ref:`🔗<enum_Performance_MonitorType>`

.. _class_Performance_constant_MONITOR_TYPE_QUANTITY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_QUANTITY** = ``0``

Вивід монітора форматується як ціле число.

.. _class_Performance_constant_MONITOR_TYPE_MEMORY:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_MEMORY** = ``1``

Вивід монітора форматується як пам'ять комп'ютера. Надіслані значення повинні представляти певну кількість байтів.

.. _class_Performance_constant_MONITOR_TYPE_TIME:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_TIME** = ``2``

Вивід монітора відформатовано як час у мілісекундах. Надіслані значення повинні представляти час у секундах (а не мілісекундах).

.. _class_Performance_constant_MONITOR_TYPE_PERCENTAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MonitorType<enum_Performance_MonitorType>` **MONITOR_TYPE_PERCENTAGE** = ``3``

Вивід монітора відформатовано у відсотках. Надіслані значення повинні представляти дробове число, а не безпосередньо відсоток, наприклад, ``0,5`` для ``50,00%``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Performance_method_add_custom_monitor:

.. rst-class:: classref-method

|void| **add_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = [], type\: :ref:`MonitorType<enum_Performance_MonitorType>` = 0\ ) :ref:`🔗<class_Performance_method_add_custom_monitor>`

Додає спеціальний монітор із назвою ``id``. Ви можете вказати категорію монітора за допомогою скісної риски в ``id`` (наприклад: ``"Game/NumberOfNPCs"``). Якщо існує більше одного роздільника похилої риски, використовується категорія за замовчуванням. Типовою категорією є ``"Custom"``. Виводить повідомлення про помилку, якщо даний ``id`` уже присутній.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var monitor_value = Callable(self, "get_monitor_value")

        # Додає монітор з назвою "MyName" до категорії "MyCategory".
        Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

        # Додає монітор з назвою "MyName" до категорії "Custom".
        # Примітка: "MyCategory/MyMonitor" і "MyMonitor" мають однакові назви, але різні ідентифікатори, тому код дійсний.
        Performance.add_custom_monitor("MyMonitor", monitor_value)

        # Додає монітор з назвою "MyName" до категорії "Custom".
        # Примітка: "MyMonitor" і "Custom/MyMonitor" мають однакову назву та однакову категорію, але різні ідентифікатори, тому код дійсний.
        Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

        # Додає монітор із назвою "MyCategoryOne/MyCategoryTwo/MyMonitor" до категорії "Custom".
        Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

    func get_monitor_value():
        return randi() % 25

 .. code-tab:: csharp

    public override void _Ready()
    {
        var monitorValue = new Callable(this, MethodName.GetMonitorValue);

        // Додає монітор із назвою "MyName" до категорії "MyCategory".
        Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
        // Додає монітор із назвою "MyName" до категорії "Custom".
        // Примітка: «MyCategory/MyMonitor» і «MyMonitor» мають однакові назви, але різні ідентифікатори, тому код дійсний.
        Performance.AddCustomMonitor("MyMonitor", monitorValue);

        // Додає монітор із назвою "MyName" до категорії "Custom".
        // Примітка: "MyMonitor" і "Custom/MyMonitor" мають однакову назву та однакову категорію, але різні ідентифікатори, тому код дійсний.
        Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

        // Додає монітор із назвою "MyCategoryOne/MyCategoryTwo/MyMonitor" до категорії "Custom".
        Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
    }

    public int GetMonitorValue()
    {
        return GD.Randi() % 25;
    }



Налагоджувач викликає виклик, щоб отримати значення спеціального монітора. Викликається має повертати нульове або додатне ціле число або число з плаваючою комою.

Об’єкти, що викликаються, викликаються з аргументами, наданими в масиві аргументів.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_get_custom_monitor>`

Повертає значення користувацького монітора з урахуванням ``id``. Підключається, щоб отримати значення користувацького монітора. Дивись також :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`. Друкує помилку, якщо надана ``id`` немає.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

Повертає імена активних користувальницьких моніторів у :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_types:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_custom_monitor_types**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_types>`

Повертає значення :ref:`MonitorType<enum_Performance_MonitorType>` активних користувацьких моніторів у масиві :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

Повертає значення одного з доступних вбудованих моніторів. Ви повинні надати одну з констант :ref:`Monitor<enum_Performance_Monitor>` як аргумент, наприклад: 


.. tabs:: 

 .. code-tab:: gdscript
 
    print(Performance.get_monitor(Performance.TIME_FPS)) # Виводить FPS на консоль.  

 .. code-tab:: csharp
 
    GD.Print(Performance.GetMonitor(Performance.Monitor.TimeFps)); // Виводить FPS на консоль.  

 

Перегляньте :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>`, щоб запитати значення спеціальних моніторів продуктивності.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

Повертає останню клітку, в якій додано спеціальний монітор (в мікросекундах з моменту запуску двигуна). Це встановлюється до :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`, коли монітор оновлено.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

Повертає ``true``, якщо користувацький монітор з даної ``id`` присутній, ``false`` інакше.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

Видаліть користувальницький монітор з наданою ``id``. Друкує помилку, якщо надана ``id`` вже відсутня.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
