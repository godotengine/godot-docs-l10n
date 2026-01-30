:github_url: hide

.. _class_Engine:

Engine
======

**Наследует:** :ref:`Object<class_Object>`

Предоставляет доступ к свойствам движка.

.. rst-class:: classref-introduction-group

Описание
----------------

Синглтон **Engine** позволяет вам запрашивать и изменять параметры времени выполнения проекта, такие как количество кадров в секунду, масштаб времени и другие. Он также хранит информацию о текущей сборке Godot, например, текущую версию.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

Максимальное количество кадров, которые могут быть отрисованы в секунду (FPS). Значение ``0`` означает, что частота кадров не ограничена.

Ограничение FPS может быть полезно для снижения энергопотребления хост-машины, что уменьшает нагрев, уровень шума и продлевает срок службы батареи.

Если :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` имеет значение **Enabled** или **Adaptive**, то этот параметр имеет приоритет, и максимальное количество FPS не может превышать частоту обновления монитора. См. также :ref:`DisplayServer.screen_get_refresh_rate()<class_DisplayServer_method_screen_get_refresh_rate>`.

Если параметр :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` включен, то на мониторах с включенной переменной частотой обновления (G-Sync/FreeSync) использование ограничения FPS на несколько кадров ниже частоты обновления монитора `уменьшит задержку ввода, избегая при этом разрывов изображения <https://blurbusters.com/howto-low-lag-vsync-on/>`__. При более высоких частотах обновления разницу между ограничением FPS и частотой обновления монитора следует увеличить, чтобы обеспечить учет кадров при неточностях синхронизации. Оптимальная формула для значения ограничения FPS в этом сценарии: ``r - (r * r) / 3600.0``, где ``r`` — частота обновления монитора.

\ **Примечание:** Фактическое количество кадров в секунду может быть ниже этого значения, если ЦП или ГП не справляются с логикой и рендерингом проекта.

\ **Примечание:** Фактическое количество кадров в секунду может быть ниже этого значения, если ЦП или ГП не успевают за логикой и рендерингом проекта.

\ **Примечание:** Если параметр :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` отключен, ограничение частоты кадров до высокого значения, которое может стабильно достигаться системой, может уменьшить задержку ввода по сравнению с неограниченной частотой кадров. Поскольку это работает за счет обеспечения загрузки графического процессора ниже 100%, это снижение задержки эффективно только в сценариях, где узким местом является графический процессор, а не центральный процессор.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

Максимальное количество шагов физики, которые могут быть смоделированы в каждом отрендеренном кадре.

\ **Примечание:** Значение по умолчанию настроено так, чтобы не допустить, чтобы дорогостоящие физические симуляции бесконечно запускали еще более дорогостоящие симуляции. Однако игра будет выглядеть замедленной, если FPS рендеринга меньше, чем ``1 / max_physics_steps_per_frame`` от :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Это происходит, даже если ``delta`` постоянно используется в физических расчетах. Чтобы избежать этого, увеличьте :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>`, если вы увеличили :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` значительно выше его значения по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

Насколько физические тики синхронизированы с реальным временем. Если ``0`` или меньше, тики полностью синхронизированы. Более высокие значения заставляют игровые часы больше отклоняться от реальных часов, но они сглаживают колебания частоты кадров.

\ **Примечание:** Значение по умолчанию ``0.5`` должно быть достаточно хорошим для большинства случаев; значения выше ``2`` могут привести к тому, что игра будет реагировать на пропущенные кадры с заметной задержкой и не рекомендуются.

\ **Примечание:** При использовании пользовательского решения для интерполяции физики или в сетевой игре рекомендуется отключить исправление физического дрожания, установив это свойство в ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

Количество фиксированных итераций в секунду. Этот параметр определяет, как часто запускаются моделирование физики и метод :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

Использование ЦП приблизительно зависит от частоты обновления физики. Однако при очень низкой частоте обновления (обычно ниже 30) поведение физики может нарушаться. При низкой частоте обновления ввод также может стать менее отзывчивым, поскольку может возникнуть разрыв между регистрацией ввода и ответом на следующий такт обновления физики. Высокая частота обновления обеспечивает более точное моделирование физики, особенно для быстро движущихся объектов. Например, в гоночных играх может быть полезно увеличить частоту обновления выше значения по умолчанию (60).

См. также :ref:`max_fps<class_Engine_property_max_fps>` и :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`.

\ **Примечание:** За один отрендеренный кадр может быть смоделировано максимум :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` тактов физики. Если для обеспечения корректной работы рендеринга требуется больше физических тиков на каждый отрендеренный кадр, проект будет казаться замедленным (даже если ``delta`` постоянно используется в физических расчетах). Поэтому рекомендуется также увеличить :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>`, если :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` значительно превышает значение по умолчанию.

\ **Примечание:** Рекомендуется включить :doc:`интерполяцию физики <../tutorials/physics/interpolation/index>`, если вы изменяете :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` на значение, не кратное ``60``. Использование интерполяции физики позволит избежать дрожания изображения, когда частота обновления монитора и частота обновления физики не совпадают точно.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

Если ``false``, прекращается вывод сообщений об ошибках и предупреждений на консоль и в журнал вывода редактора. Это можно использовать для скрытия сообщений об ошибках и предупреждений во время выполнения набора модульных тестов. Это свойство эквивалентно настройке проекта :ref:`ProjectSettings.application/run/disable_stderr<class_ProjectSettings_property_application/run/disable_stderr>`.

\ **Примечание:** Это свойство не влияет на вкладку «Ошибки» редактора при запуске проекта из редактора.

\ **Предупреждение:** Если установлено значение ``false`` в любом месте проекта, важные сообщения об ошибках могут быть скрыты, даже если они выдаются другими скриптами. В скрипте ``@tool`` это также повлияет на сам редактор. *Не* сообщайте об ошибках, не убедившись, что сообщения об ошибках включены (как по умолчанию).

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

Если ``false``, прекращает вывод сообщений (например, с помощью :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`) на консоль, в файлы журнала и в журнал вывода редактора. Это свойство эквивалентно настройке проекта :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>`.

\ **Примечание:** Это не прекращает вывод ошибок или предупреждений, создаваемых скриптами, на консоль или в файлы журнала, для получения более подробной информации см. :ref:`print_error_messages<class_Engine_property_print_error_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

Множитель скорости, с которым обновляются игровые часы, по сравнению с реальным временем. Например, если установлено значение ``2.0``, игра будет работать в два раза быстрее, а если установлено значение ``0.5``, игра будет работать в два раза быстрее.

Это значение влияет на :ref:`Timer<class_Timer>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>` и все другие симуляции, которые используют ``delta`` время (например, :ref:`Node._process()<class_Node_private_method__process>` и :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

\ **Примечание:** Рекомендуется сохранять это свойство выше ``0.0``, так как в противном случае игра может вести себя непредсказуемо.

\ **Примечание:** Это не влияет на скорость воспроизведения звука. Используйте :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` для регулировки скорости воспроизведения звука независимо от :ref:`time_scale<class_Engine_property_time_scale>`.

\ **Примечание:** Это не изменяет автоматически :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. При значениях выше ``1.0`` физическая симуляция может стать менее точной, так как каждый физический тик будет растягиваться на больший период времени двигателя. Если вы изменяете :ref:`time_scale<class_Engine_property_time_scale>` для ускорения симуляции в большой степени, рассмотрите также увеличение :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`, чтобы сделать симуляцию более надежной.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

Захватывает и возвращает обратные трассировки из всех зарегистрированных языков скриптов.

По умолчанию возвращаемый :ref:`ScriptBacktrace<class_ScriptBacktrace>` будет содержать только кадры стека в сборках редактора и отладочных сборках. Чтобы включить их также для сборок выпуска, вам необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

Если ``include_variables`` имеет значение ``true``, обратная трассировка также будет включать имена и значения любых глобальных переменных (например, автозагрузочных синглтонов) в точке захвата, а также локальных переменных и переменных-членов класса в каждом кадре стека. Однако это будет учитываться только при запуске игры с подключенным отладчиком, например, при запуске игры из редактора. Чтобы включить его также для экспортных сборок, вам необходимо включить :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`.

\ **Предупреждение:** Когда ``include_variables`` равен ``true``, любые захваченные переменные могут потенциально (например, с обратными трассировками GDScript) быть их фактическими значениями, включая любые ссылки на объекты. Это означает, что сохранение такого :ref:`ScriptBacktrace<class_ScriptBacktrace>` предотвратит освобождение этих объектов, поэтому обычно рекомендуется этого не делать.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

Возвращает имя архитектуры ЦП, для которой был собран двоичный файл Godot. Возможные возвращаемые значения включают ``"x86_64"``, ``"x86_32"``, ``"arm64"``, ``"arm32"``, ``"rv64"``, ``"ppc64"``, ``"loongarch64"``, ``"wasm64"`` и ``"wasm32"``.

Чтобы определить, является ли текущая сборка 64-разрядной, или тип архитектуры, не используйте имя архитектуры. Вместо этого используйте :ref:`OS.has_feature()<class_OS_method_has_feature>` для проверки тега функции ``"64"`` или тегов, таких как ``"x86"`` или ``"arm"``. Более подробную информацию см. в документации :doc:`Теги функций <../tutorials/export/feature_tags>`.

\ **Примечание:** Этот метод *не* возвращает имя архитектуры ЦП системы (как :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`). Например, при запуске двоичного файла Godot ``x86_32`` в системе ``x86_64`` возвращаемое значение по-прежнему будет ``"x86_32"``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

Возвращает информацию об авторе движка в виде :ref:`Dictionary<class_Dictionary>`, где каждая запись представляет собой :ref:`Array<class_Array>` строк с именами известных участников движка Godot: ``lead_developers``, ``founders``, ``project_managers`` и ``developers``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

Возвращает :ref:`Array<class_Array>` словарей с информацией об авторских правах для каждого компонента исходного кода Godot.

Каждый :ref:`Dictionary<class_Dictionary>` содержит идентификатор ``name`` и массив ``parts`` словарей. Он подробно описывает компонент с помощью следующих записей:

- ``files`` - :ref:`Array<class_Array>` путей к файлам из исходного кода, затронутого этим компонентом;

- ``copyright`` - :ref:`Array<class_Array>` владельцев этого компонента;

- ``license`` - Лицензия, применяемая к этому компоненту (например, "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" или "`CC-BY-4.0 <https://creativecommons.org/licenses/by/4.0/>`__").

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

Возвращает ``Словарь`` категоризированных имен доноров. Каждая запись — это :ref:`Array<class_Array>` строк:

{``platinum_sponsors``, ``gold_sponsors``, ``silver_sponsors``, ``bronze_sponsors``, ``mini_sponsors``, ``gold_donors``, ``silver_donors``, ``bronze_donors``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

Возвращает общее количество кадров, отрисованных с момента запуска движка.

\ **Примечание:** На платформах headless или если рендеринг отключен с помощью ``--disable-render-loop`` через командную строку, этот метод всегда возвращает ``0``. См. также :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

Возвращает среднее количество кадров, отображаемых каждую секунду (FPS), также известное как частота кадров.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

Возвращает :ref:`Dictionary<class_Dictionary>` лицензий, используемых Godot, и включенных сторонних компонентов. Каждая запись представляет собой имя лицензии (например, "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__") и связанный с ней текст.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

Возвращает полный текст лицензии Godot.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

Возвращает экземпляр :ref:`MainLoop<class_MainLoop>`. Обычно это основной :ref:`SceneTree<class_SceneTree>` и он такой же, как :ref:`Node.get_tree()<class_Node_method_get_tree>`.

\ **Примечание:** Тип, созданный как основной цикл, может быть изменен с помощью :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

Возвращает общее количество кадров, пройденных с момента запуска движка. Это число увеличивается каждый **физический кадр**. См. также :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

Этот метод можно использовать для более редкого запуска дорогостоящей логики без использования :ref:`Timer<class_Timer>`:


.. tabs::

 .. code-tab:: gdscript

    func _physics_process(_delta):
        if Engine.get_physics_frames() % 2 == 0:
            pass # Здесь дорогостоящая логика выполняется только один раз каждые 2 физических кадра.

 .. code-tab:: csharp

    public override void _PhysicsProcess(double delta)
    {
        base._PhysicsProcess(delta);

        if (Engine.GetPhysicsFrames() % 2 == 0)
        {
            // Здесь дорогостоящая логика выполняется только один раз каждые 2 физических кадра.
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

Возвращает дробь через текущий физический тик, в котором мы находимся во время рендеринга кадра. Это можно использовать для реализации интерполяции с фиксированным временным шагом.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

Возвращает общее количество кадров, пройденных с момента запуска движка. Это число увеличивается каждый **кадр процесса**, независимо от того, включен ли цикл рендеринга. См. также :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` и :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`.

Этот метод можно использовать для менее частого запуска дорогостоящей логики без использования :ref:`Timer<class_Timer>`:


.. tabs::

 .. code-tab:: gdscript

    func _process(_delta):
        if Engine.get_process_frames() % 5 == 0:
            pass # Здесь дорогостоящая логика выполняется только один раз за каждые 5 кадров обработки (рендеринга).

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        base._Process(delta);

        if (Engine.GetProcessFrames() % 5 == 0)
        {
            // Здесь дорогостоящая логика выполняется только один раз за каждые 5 кадров обработки (рендеринга).
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

Возвращает экземпляр :ref:`ScriptLanguage<class_ScriptLanguage>` с заданным ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

Возвращает количество доступных языков для скриптов. Используйте с :ref:`get_script_language()<class_Engine_method_get_script_language>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

Возвращает глобальный синглтон с заданным ``name`` или ``null``, если он не существует. Часто используется для плагинов. См. также :ref:`has_singleton()<class_Engine_method_has_singleton>` и :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`.

\ **Примечание:** Глобальные синглтоны — это не то же самое, что автоматически загружаемые узлы, которые настраиваются в настройках проекта.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

Возвращает список имен всех доступных глобальных синглтонов. См. также :ref:`get_singleton()<class_Engine_method_get_singleton>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

Возвращает информацию о текущей версии движка в виде :ref:`Dictionary<class_Dictionary>`, содержащего следующие записи:

- ``major`` - номер основной версии в виде целого числа;

- ``minor`` - номер дополнительной версии в виде целого числа;

- ``patch`` - номер версии исправления в виде целого числа;

- ``hex`` - полная версия, закодированная в виде шестнадцатеричного целого числа с одним байтом (2 шестнадцатеричные цифры) на число (см. пример ниже);

- ``status`` - статус (например, "beta", "rc1", "rc2", "stable" и т. д.) в виде строки;

- ``build`` - имя сборки (например, "custom_build") в виде строки;

- ``hash`` - полный хэш коммита Git в виде строки;

- ``timestamp`` - Содержит дату коммита Git UNIX timestamp в секундах как int или ``0``, если недоступно;

- ``string`` - ``major``, ``minor``, ``patch``, ``status`` и ``build`` в одной строке.

Значение ``hex`` кодируется следующим образом, слева направо: один байт для основной версии, один байт для второстепенной, один байт для версии патча. Например, "3.1.12" будет ``0x03010C``.

\ **Примечание:** Значение ``hex`` по-прежнему является :ref:`int<class_int>` внутренне, и его вывод даст вам его десятичное представление, которое не имеет особого смысла. Используйте шестнадцатеричные литералы для быстрого сравнения версий из кода:


.. tabs::

 .. code-tab:: gdscript

    if Engine.get_version_info().hex >= 0x040100:
        pass # Выполните действия, характерные для версии 4.1 или более поздней.
    else:
        pass # Выполните действия, характерные для версий до 4.1.

 .. code-tab:: csharp

    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
    {
        // Выполните действия, характерные для версии 4.1 или более поздней.
    }
    else
    {
        // Выполните действия, характерные для версий до 4.1.
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

Возвращает путь к выходному файлу :ref:`MovieWriter<class_MovieWriter>` или пустую строку, если движок не был запущен в режиме Movie Maker. Путь по умолчанию можно изменить в :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

Возвращает ``true``, если синглтон с указанным ``name`` существует в глобальной области видимости. См. также :ref:`get_singleton()<class_Engine_method_get_singleton>`.


.. tabs::

 .. code-tab:: gdscript

    print(Engine.has_singleton("OS"))          # Prints true
    print(Engine.has_singleton("Engine"))      # Prints true
    print(Engine.has_singleton("AudioServer")) # Prints true
    print(Engine.has_singleton("Unknown"))     # Prints false

 .. code-tab:: csharp

    GD.Print(Engine.HasSingleton("OS"));          // Prints True
    GD.Print(Engine.HasSingleton("Engine"));      // Prints True
    GD.Print(Engine.HasSingleton("AudioServer")); // Prints True
    GD.Print(Engine.HasSingleton("Unknown"));     // Prints False



\ **Примечание:** Глобальные синглтоны — это не то же самое, что автоматически загружаемые узлы, которые настраиваются в настройках проекта.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

Возвращает ``true``, если скрипт в данный момент выполняется внутри редактора, в противном случае возвращает ``false``. Это полезно для скриптов ``@tool`` для условной отрисовки помощников редактора или предотвращения случайного запуска «игрового» кода, который может повлиять на состояние сцены в редакторе:


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



См. :doc:`Запуск кода в редакторе <../tutorials/plugins/running_code_in_the_editor>` в документации для получения дополнительной информации.

\ **Примечание:** Чтобы определить, запущен ли скрипт в редакторе *build* (например, при нажатии :kbd:`F5`), вместо этого используйте :ref:`OS.has_feature()<class_OS_method_has_feature>` с аргументом ``"editor"``. ``OS.has_feature("editor")`` оценивается как ``true`` как при запуске скрипта в редакторе, так и при запуске проекта из редактора, но возвращает ``false`` при запуске из экспортированного проекта.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

Возвращает ``true``, если движок запущен встроенным в редактор. Это полезно для предотвращения попыток обновления режима окна или флагов окна, которые не поддерживаются при запуске проекта, встроенного в редактор.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

Возвращает ``true``, если движок находится внутри фиксированного шага физического процесса основного цикла.

::

    func _enter_tree():
        # В зависимости от того, когда узел добавляется в дерево,
        # печатает либо "true" или "false".
        print(Engine.is_in_physics_frame())

    func _process(delta):
        print(Engine.is_in_physics_frame()) # Prints false

    func _physics_process(delta):
        print(Engine.is_in_physics_frame()) # Prints true

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **register_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_register_script_language>`

Регистрирует экземпляр :ref:`ScriptLanguage<class_ScriptLanguage>`, который будет доступен с ``ScriptServer``.

Возвращает:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` об успехе;

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` если ``ScriptServer`` достиг лимита и не может зарегистрировать ни одного нового языка;

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` если ``ScriptServer`` уже содержит язык с похожим расширением/названием/типом.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

Регистрирует заданный :ref:`Object<class_Object>` ``instance`` как синглтон, доступный глобально под ``name``. Полезно для плагинов.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

Отменяет регистрацию экземпляра :ref:`ScriptLanguage<class_ScriptLanguage>` из ``ScriptServer``.

Возвращает:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` при успешном выполнении;

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>`, если язык не зарегистрирован в ``ScriptServer``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

Удаляет синглтон, зарегистрированный под ``name``. Объект синглтон *не* освобожден. Работает только с определенными пользователем синглтонами, зарегистрированными с помощью :ref:`register_singleton()<class_Engine_method_register_singleton>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
