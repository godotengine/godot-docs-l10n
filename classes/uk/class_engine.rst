:github_url: hide

.. _class_Engine:

Engine
======

**Успадковує:** :ref:`Object<class_Object>`

Забезпечує доступ до властивостей двигуна.

.. rst-class:: classref-introduction-group

Опис
--------

Універсальний однотон дозволяє переробити та змінювати параметри проекту, такі як кадри на другий, часовий масштаб та інші. Він також зберігає інформацію про поточну структуру Godot, такі як поточна версія.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_fps<class_Engine_property_max_fps>`                                         | ``0``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` | ``8``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`physics_jitter_fix<class_Engine_property_physics_jitter_fix>`                   | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`       | ``60``   |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_error_messages<class_Engine_property_print_error_messages>`               | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_to_stdout<class_Engine_property_print_to_stdout>`                         | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`time_scale<class_Engine_property_time_scale>`                                   | ``1.0``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] | :ref:`capture_script_backtraces<class_Engine_method_capture_script_backtraces>`\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const|          |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_architecture_name<class_Engine_method_get_architecture_name>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_author_info<class_Engine_method_get_author_info>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]           | :ref:`get_copyright_info<class_Engine_method_get_copyright_info>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_donor_info<class_Engine_method_get_donor_info>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_frames_drawn<class_Engine_method_get_frames_drawn>`\ (\ )                                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_frames_per_second<class_Engine_method_get_frames_per_second>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_license_info<class_Engine_method_get_license_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_license_text<class_Engine_method_get_license_text>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MainLoop<class_MainLoop>`                                            | :ref:`get_main_loop<class_Engine_method_get_main_loop>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_physics_frames<class_Engine_method_get_physics_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_physics_interpolation_fraction<class_Engine_method_get_physics_interpolation_fraction>`\ (\ ) |const|                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_process_frames<class_Engine_method_get_process_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptLanguage<class_ScriptLanguage>`                                | :ref:`get_script_language<class_Engine_method_get_script_language>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_script_language_count<class_Engine_method_get_script_language_count>`\ (\ )                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                                | :ref:`get_singleton<class_Engine_method_get_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                          | :ref:`get_singleton_list<class_Engine_method_get_singleton_list>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_version_info<class_Engine_method_get_version_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_write_movie_path<class_Engine_method_get_write_movie_path>`\ (\ ) |const|                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`has_singleton<class_Engine_method_has_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_editor_hint<class_Engine_method_is_editor_hint>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_embedded_in_editor<class_Engine_method_is_embedded_in_editor>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_in_physics_frame<class_Engine_method_is_in_physics_frame>`\ (\ ) |const|                                                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`register_script_language<class_Engine_method_register_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`register_singleton<class_Engine_method_register_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`unregister_script_language<class_Engine_method_unregister_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`unregister_singleton<class_Engine_method_unregister_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

Максимальна кількість кадрів, які можна відобразити щосекунди (FPS). Значення ``0`` означає, що частота кадрів не обмежена.

Обмеження FPS може бути корисним для зменшення споживання енергії хост-машиною, що зменшує нагрівання, шумові викиди та подовжує термін служби батареї.

Якщо :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` має значення **Увімкнено** або **Адаптивно**, цей параметр має пріоритет, і максимальне число FPS не може перевищувати частоту оновлення монітора. Див. також :ref:`DisplayServer.screen_get_refresh_rate()<class_DisplayServer_method_screen_get_refresh_rate>`.

Якщо :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` має значення **Увімкнено**, на моніторах із увімкненою змінною частотою оновлення (G-Sync/FreeSync), використання обмеження FPS на кілька кадрів нижче частоти оновлення монітора `зменшить затримку введення, уникаючи розривів <https://blurbusters.com/howto-low-lag-vsync-on/>`__. За вищих частот оновлення різницю між обмеженням FPS та частотою оновлення монітора слід збільшити, щоб забезпечити кадри з урахуванням неточностей синхронізації. Оптимальна формула для визначення обмеження FPS у цьому сценарії: ``r - (r * r) / 3600.0``, де ``r`` – це частота оновлення монітора.

\ **Примітка:** Фактична кількість кадрів за секунду може бути нижчою за це значення, якщо процесор або графічний процесор не можуть встигати за логікою та рендерингом проекту.

\ **Примітка:** Якщо :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` має значення **Вимкнено**, обмеження FPS високим значенням, яке можна послідовно досягти в системі, може зменшити затримку введення порівняно з необмеженою частотою кадрів. Оскільки це працює, забезпечуючи навантаження графічного процесора нижче 100%, це зменшення затримки ефективне лише у сценаріях з обмеженим графічним процесором, а не у сценаріях з обмеженим графічним процесором.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

Максимальна кількість фізичних кроків, які можна імітувати кожну рендеровану раму.

\ **Примітка:** Значення за замовчуванням полягає в тому, щоб запобігти дорогим фізичним моделюванням від запуску ще більш дорогим симуляторам. Тим не менш, гра з'явиться, щоб уповільнити, якщо рендеринг FPS менше ``1 / max_physics_steps_per_frame`` :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Це відбувається навіть якщо ``delta`` послідовно використовується в фізичних обчисленнях. Щоб уникнути цього, збільшення :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>`, якщо ви збільшили :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` значно вище значення за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

Скільки фізичних кліщів синхронізуються з реальним часом. Якщо ``0`` або менше, кліщі повністю синхронізуються. Найвищі значення викликають в грі годинник, щоб відхилити більше від реального годинника, але вони розгладжують ррейтні струменя.

\ **Примітка:** Значення за замовчуванням ``0.5`` має бути достатньо для більшості випадків; значення над ``2`` може викликати гру, щоб реагувати на скидання кадрів з помітною затримкою і не рекомендується.

\ **Примітка:** При використанні користувальницького фізичного розв'язку, або в рамках мережевої гри, рекомендується вимкнути фізичну фіксацію Джіттера, встановлюючи цю властивість ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

Кількість фіксованих ітерацій за секунду. Це визначає частоту запуску фізичного моделювання та методу :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

Використання процесора масштабується приблизно пропорційно до частоти тактів фізики. Однак, при дуже низькій частоті тактів (зазвичай нижче 30), фізична поведінка може порушуватися. Вхідні дані також можуть стати менш чутливими при низькій частоті тактів, оскільки може виникнути розрив між реєстрацією вхідних даних та відповіддю на наступному фізичному такті. Висока частота тактів забезпечує точнішу фізичну симуляцію, особливо для швидко рухомих об'єктів. Наприклад, гоночні ігри можуть отримати користь від збільшення частоти тактів вище стандартної 60.

Див. також :ref:`max_fps<class_Engine_property_max_fps>` та :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`.

\ **Примітка:** Тільки :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` фізичних тактів можна моделювати на один кадр рендерингу. Якщо для рендерингу потрібно моделювати більше фізичних тактів на один кадр рендерингу, щоб встигати за рендерингом, проект виглядатиме сповільненим (навіть якщо ``delta`` використовується послідовно у фізичних розрахунках). Тому рекомендується також збільшити :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>`, якщо :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` значно збільшується вище значення за замовчуванням.

\ **Примітка:** Розгляньте можливість увімкнення :doc:`фізичної інтерполяції <../tutorials/physics/interpolation/index>`, якщо ви змінюєте :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` на значення, не кратне ``60``. Використання фізичної інтерполяції дозволить уникнути тремтіння, коли частота оновлення монітора та частота оновлення фізики не зовсім збігаються.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

Якщо ``false``, припиняє похибку друку і попереджує повідомлення до консолі і журналу виведення редактора. Це може бути використана для приховувати помилки та попередження повідомлень під час проведення тестового пакету. Ця властивість еквівалентна параметру ``пам'яний проектНалаштування.application/run/disable_stderr``.

\ **Примітка:** Ця властивість не впливає на вкладку редактора при запуску проекту з редактора.

\ **Попередження:** Якщо встановити на ``false`` в будь-якій точці проекту, важливі повідомлення про помилки можуть бути приховані, навіть якщо вони випромінюються з інших скриптів. ``@tool`` скрипт, це також буде впливати на сам редактор. До * не* ввімкнено помилки до забезпечення повідомлень про помилки (як вони за замовчуванням).

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

Якщо ``false``, припиняє друк повідомлень (наприклад, за допомогою :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`) на консоль, файли журналу та журнал виведення редактора. Ця властивість еквівалентна налаштуванню проекту :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>`.

\ **Примітка:** це не зупиняє друк помилок або попереджень, створених сценаріями, на консоль або файли журналу, для отримання додаткової інформації див. :ref:`print_error_messages<class_Engine_property_print_error_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

Мультиплікатор швидкості, при якому оновлення годинника в режимі реального часу. Наприклад, якщо встановити до ``2.0`` гра працює двічі як швидко, і якщо встановити до ``0.5`` гра працює вдвічі швидше.

Це значення впливає на :ref:`Timer<class_Timer>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, і всі інші імітації, які використовують ``delta`` час (наприклад, :ref:`Node._process()<class_Node_private_method__process>` і :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

\ **Примітка:** Рекомендується зберігати цю властивість вище ``0.0``, так як гра може бути несподівано інакше.

\ **Примітка:** Це не впливає на швидкість відтворення аудіо. Використовуйте :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` для налаштування швидкості відтворення аудіо незалежно від :ref:`time_scale<class_Engine_property_time_scale>`.

\ **Примітка:** Це не автоматично регулюється :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. З значеннями вище ``1.0`` фізичний моделювання може стати менш точним, оскільки кожен фізичний кліщ буде розтягувати більший період часу двигуна. Якщо ви модифікуєте :ref:`time_s ale<class_Engine_property_time_s ale>` для прискорення моделювання великим фактором, розглянемо також збільшення :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`, щоб зробити моделювання більш надійним.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

Захоплює та повертає зворотні трасування з усіх зареєстрованих мов сценаріїв.

За замовчуванням повернений :ref:`ScriptBacktrace<class_ScriptBacktrace>` міститиме лише фрейми стеку в збірках редактора та налагоджувальних збірках. Щоб увімкнути їх також для релізних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

Якщо ``include_variables`` має значення ``true``, зворотне трасування також включатиме назви та значення будь-яких глобальних змінних (наприклад, автозавантажуваних одиночних змінних) у точці захоплення, а також локальні змінні та змінні-члени класу в кожному фреймі стеку. Однак це буде враховано лише під час запуску гри з підключеним налагоджувачем, наприклад, під час запуску гри з редактора. Щоб увімкнути його також для експортних збірок, потрібно ввімкнути :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`.

\ **Попередження:** Коли ``include_variables`` має значення ``true``, будь-які захоплені змінні потенційно можуть (наприклад, за допомогою зворотних трас GDScript) бути їхніми фактичними значеннями, включаючи будь-які посилання на об'єкти. Це означає, що зберігання такого :ref:`ScriptBacktrace<class_ScriptBacktrace>` запобіжить звільненню цих об'єктів, тому зазвичай рекомендується цього не робити.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

Повертає назву архітектури процесора, для якої було зібрано бінарний файл Godot. Можливі значення повернення включають ``"x86_64"``, ``"x86_32"``, ``"arm64"``, ``"arm32"``, ``"rv64"``, ``"ppc64"``, ``"loongarch64"``, ``"wasm64"`` та ``"wasm32"``.

Щоб визначити, чи є поточна збірка 64-розрядною, або тип архітектури, не використовуйте назву архітектури. Натомість використовуйте :ref:`OS.has_feature()<class_OS_method_has_feature>` для перевірки тегу функції ``"64"`` або таких тегів, як ``"x86"`` або ``"arm"``. Див. документацію :doc:`Теги функцій <../tutorials/export/feature_tags>` для отримання додаткової інформації.

\ **Примітка:** Цей метод *не* повертає назву архітектури процесора системи (як :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`). Наприклад, під час запуску бінарного файлу Godot ``x86_32`` на системі ``x86_64`` повернене значення все одно буде ``"x86_32"``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

Повертає авторську інформацію двигуна як :ref:`Dictionary<class_Dictionary>`, де кожен запис є :ref:`Array<class_Array>` рядків з іменами ненадійних представників двигуна Godot: ``lead_developers``, `` Засновники``, ``project_managers``, і ``developers``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

Повертаємо вашу інформацію про авторські права на кожен компонент коду джерела Godot.

Кожен :ref:`Dictionary<class_Dictionary>` містить ``name`` ідентифікатор і ``parts`` array of dictionaries. Він описує компонент в деталях з наступними записами:

- ``files`` - :ref:`Array<class_Array>` файлових шляхів з коду джерела, що впливає на цей компонент;

- ``copyright`` - :ref:`Array<class_Array>` власників даного компонента;

- ``license`` - Ліцензія, що застосовується до цього компонента (наприклад, "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" або "`CC-BY-4.0 <https://creative body.org/licenses/by/4.0/>`__).

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

Повертає :ref:`Dictionary<class_Dictionary>` категоризованих імен донорів. Кожен запис є :ref:`Array<class_Array>` рядків:

{``платинові_спонсори``, ``золоті_спонсори``, ``срібні_спонсори``, ``бронзові_спонсори``, ``міні_спонсори``, ``золоті_донори``, ``донори_срібла``, ``донори_бронзи``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

Повертаємо загальну кількість кадрів, що тягнеться з початку двигуна.

\ **Примітка:** На безголовних платформах, або якщо рендеринг вимкнено з ``---розвантажувально-рендер-loop`` через командний ряд, цей метод завжди повертає ``0``. Дивись також :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

Повертаємо середні кадри, що наводяться кожні другий (FPS), також відомий як каркас.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

Повернутися до :ref:`Dictionary<class_Dictionary>` ліцензій, які використовуються Godot і включені до сторонніх компонентів. Кожен запис - це назва ліцензії (наприклад, url=https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants]Expat/url) та його асоційований текст.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

Повернутися до повноліцензійного тексту Godot.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

Повертає екземпляр :ref:`MainLoop<class_MainLoop>`. Це, як правило, основний :ref:`SceneTree<class_SceneTree>` і є таким же, як :ref:`Node.get_tree()<class_Node_method_get_tree>`.

\ **Примітка:** Тип, миттєвий як основну петлю можна змінити за допомогою :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

Повертає загальну кількість кадрів, пройдених з моменту запуску двигуна. Це число збільшується з кожним **фізичним кадром**. Дивіться також :ref:`get_process_frames()<class_Engine_method_get_process_frames>`. 

Цей метод можна використовувати для рідшого запуску дорогої логіки, не покладаючись на :ref:`Timer<class_Timer>`: 


.. tabs:: 

 .. code-tab:: gdscript
 
    func _physics_process(_delta): 
        if Engine.get_physics_frames() % 2 == 0: 
            pass # Виконуйте тут дорогу логіку лише один раз на кожні 2 кадри фізики.  

 .. code-tab:: csharp
 
    public override void _PhysicsProcess(подвійна дельта) 
    {
        base._PhysicsProcess(дельта); 

        if (Engine.GetPhysicsFrames() % 2 == 0) 
        { 
            // Виконуйте тут дорогу логіку лише один раз на кожні 2 кадри фізики. 
        } 
    } 



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

Повертаємо дроб через точну фізичну клітку, ми в момент рендерингу рами. Це може бути використана для реалізації фіксованого переполування часу.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

Повертає загальну кількість кадрів, пройдених з моменту запуску двигуна. Це число збільшується з кожним **кадром процесу**, незалежно від того, чи ввімкнено цикл візуалізації. Дивіться також :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` і :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`. 

Цей метод можна використовувати для рідшого запуску дорогої логіки, не покладаючись на :ref:`Timer<class_Timer>`: 


.. tabs:: 

 .. code-tab:: gdscript
 
    func _process(_delta): 
        if Engine.get_process_frames() % 5 == 0: 
            pass # Запускати дорогу логіку лише один раз на кожні 5 кадрів процесу (рендерингу).  

 .. code-tab:: csharp
 
    public override void _Process(double delta)
    {
        base._Process(delta); 

        if (Engine.GetProcessFrames() % 5 == 0) 
        { 
            // Виконуйте дорогу логіку лише один раз на кожні 5 кадрів процесу (рендерингу). 
        } 
    } 



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

Повертає екземпляр :ref:`ScriptLanguage<class_ScriptLanguage>` з заданим ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

Повертаємо кількість наявних скриптів мов. Використання :ref:`get_script_language()<class_Engine_method_get_script_language>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

Повертає глобальний синглтон із заданим ``name`` або ``null``, якщо його не існує. Часто використовується для плагінів. Див. також :ref:`has_singleton()<class_Engine_method_has_singleton>` та :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`.

\ **Примітка:** Глобальні синглтони не є тим самим, що й автоматично завантажені вузли, які можна налаштувати в налаштуваннях проекту.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

Повертає список імен усіх доступних глобальних єдинотонів. Дивитися також :ref:`get_singleton()<class_Engine_method_get_singleton>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

Повертає інформацію про поточну версію двигуна як :ref:`Dictionary<class_Dictionary>`, що містить такі записи: 

- ``major`` - номер основної версії як int; 

- ``мінор`` - номер другорядної версії як int; 

- ``патч`` - номер версії латки як int; 

- ``hex`` - повна версія, закодована як шістнадцяткове ціле число з одним байтом (2 шістнадцяткові цифри) на число (див. приклад нижче); 

- ``статус`` - статус (такий як "бета", "rc1", "rc2", "стабільний" тощо) у вигляді рядка; 

- ``build`` - назва збірки (наприклад, "custom_build") у вигляді рядка; 

- ``хеш`` - повний хеш фіксації Git як рядок; 

- ``timestamp`` – зберігає мітку часу UNIX дати коміту Git у секундах як int або ``0``, якщо недоступний; 

- ``рядок`` - ``основний``, ``мінорний``, ``патч``, ``статус`` і ``збірка`` в одному рядку. 

Значення ``hex`` кодується наступним чином, зліва направо: один байт для основного, один байт для другорядного, один байт для версії виправлення. Наприклад, "3.1.12" буде ``0x03010C``. 

\ **Примітка:** Значення ``hex`` все ще внутрішньо є :ref:`int<class_int>`, і його друк дасть вам його десяткове представлення, що не має особливого значення. Використовуйте шістнадцяткові літерали для швидкого порівняння версій коду: 


.. tabs:: 

 .. code-tab:: gdscript
 
    if Engine.get_version_info().hex >= 0x040100: 
        pass # Робіть дії, характерні для версії 4.1 або новішої. 
    else: 
        pass # Робити речі, характерні для версій до 4.1.  

 .. code-tab:: csharp
 
    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100) 
    {
        // Робіть речі, характерні для версії 4.1 або новішої. 
    }
    else 
    {
        // Робимо речі, характерні для версій до 4.1. 
    } 



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

Повертає шлях до вихідного файлу :ref:`MovieWriter<class_MovieWriter>` або порожній рядок, якщо механізм не було запущено в режимі Movie Maker. Шлях за замовчуванням можна змінити в :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

Повертає ``true``, якщо синглтон із заданим ``name`` існує в глобальній області. Дивіться також :ref:`get_singleton()<class_Engine_method_get_singleton>`.


.. tabs::

 .. code-tab:: gdscript

    print(Engine.has_singleton("OS")) # Виводить true
    print(Engine.has_singleton("Engine")) # Виводить true
    print(Engine.has_singleton("AudioServer")) # Виводить true
    print(Engine.has_singleton("Unknown")) # Виводить false

 .. code-tab:: csharp

    GD.Print(Engine.HasSingleton("ОС")); // Виводить True
    GD.Print(Engine.HasSingleton("Engine")); // Виводить True
    GD.Print(Engine.HasSingleton("AudioServer")); // Виводить True
    GD.Print(Engine.HasSingleton("Невідомо")); // Виводить False



\ **Примітка: ** Глобальні синглетони — це не те саме, що автоматично завантажені вузли, які можна налаштувати в налаштуваннях проекту.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

Повертає ``true``, якщо скрипт зараз запущено в редакторі, інакше повертає ``false``. Це корисно для сценаріїв ``@tool`` для умовного малювання помічників редактора або запобігання випадковому запуску «ігрового» коду, який може вплинути на стан сцени під час роботи в редакторі: 


.. tabs:: 

 .. code-tab:: gdscript
 
    if Engine.is_editor_hint(): 
        draw_gizmos() 
    else: 
        simulate_physics()  

 .. code-tab:: csharp
 
    if (Engine.IsEditorHint()) 
        DrawGizmos(); 
    else 
        SimulatePhysics();  

 

Додаткову інформацію див. у документації :doc:`Запуск коду в редакторі <../tutorials/plugins/running_code_in_the_editor>`. 

\ **Примітка:** Щоб визначити, чи виконується скрипт у *збірці* редактора (наприклад, під час натискання :kbd:`F5`), замість цього використовуйте :ref:`OS.has_feature()<class_OS_method_has_feature>` з аргументом ``"editor"``. ``OS.has_feature("editor")`` має значення ``true`` як під час виконання скрипту в редакторі, так і під час запуску проекту з редактора, але повертає ``false`` під час запуску з експортованого проекту.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

Повертає ``true``, якщо двигун працює вбудований у редактор. Це корисно, щоб запобігти спробам оновити режим вікна або прапорці вікна, які не підтримуються під час виконання проекту, вбудованого в редактор.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

Повертає ``true``, якщо двигун знаходиться всередині кроку фіксованого фізичного процесу основного циклу. 

::
 
    func _enter_tree(): 
        # Залежно від того, коли вузол додано до дерева, 
        # виводить «true» або «false». 
        print(Engine.is_in_physics_frame()) 

    func _process(delta): 
        print(Engine.is_in_physics_frame()) # Виводить false 

    func _physics_process(delta): 
        print(Engine.is_in_physics_frame()) # Виводить true 

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **register_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_register_script_language>`

``ScriptServer``.

Повернення:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх;

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` якщо ``ScriptServer`` досягла ліміту і не може реєструвати будь-яку нову мову;

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` якщо ``ScriptServer`` вже містить мову з схожим розширенням / ім'ям/типом.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

Зареєстровані дані :ref:`Object<class_Object>` ``екземпляр`` як єдинийтон, доступний глобально під назвою ``name``. Корисно для плагінів.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

``ScriptServer``.

Повернення:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` на успіх;

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>` якщо мова не зареєстрована в ``ScriptServer``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

Видаляє синглтон, зареєстрований за допомогою ``name``. Об'єкт синглтон *не* звільнено. Працює лише з визначеними користувачем синглтонами, зареєстрованими за допомогою методу :ref:`register_singleton()<class_Engine_method_register_singleton>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
