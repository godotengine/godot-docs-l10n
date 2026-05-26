:github_url: hide

.. _class_Engine:

Engine
======

**继承：** :ref:`Object<class_Object>`

提供对引擎属性的访问。

.. rst-class:: classref-introduction-group

描述
----

**Engine** 单例使你可以查询和修改项目的运行时参数，例如每秒帧数，时间缩放等。它还存储有关 Godot 当前构建的信息，例如当前版本。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

属性说明
--------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

每秒可渲染的最大帧数（FPS）。值为 ``0`` 表示帧速率不受限制。

限制 FPS 会对降低主机功耗很有帮助，可以减少热量、噪音排放并延长电池寿命。

如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 为 **Enabled** 或 **Adaptive** ，则该设置将被优先考虑，并且最大 FPS 数不能超过显示器的刷新率。另见 :ref:`DisplayServer.screen_get_refresh_rate()<class_DisplayServer_method_screen_get_refresh_rate>`\ 。

如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 为 **Enabled**\ ，在启用了可变刷新率（G-Sync/FreeSync）的显示器上，使用比显示器刷新率低几帧的 FPS 限制，将\ `减少输入延迟，同时可以避免撕裂 <https://blurbusters.com/howto-low-lag-vsync-on/>`__\ 。在较高的刷新率下，应增大帧率限制与显示器刷新率之间的差值，以确保有足够的帧数来弥补计时误差。在这种情况下，帧率限制值的最佳公式为 ``r - (r * r) / 3600.0``\ ，其中 ``r`` 是显示器的刷新率。

\ **注意：**\ 如果CPU或GPU跟不上项目的逻辑和渲染，则每秒的实际帧数可能仍低于该值。

\ **注意：**\ 如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 为 **Disabled**\ ，则与无上限的帧率相比，将 FPS 限制为可以在系统上持续达到的较高值，可以减少输入滞后。由于这是通过确保 GPU 负载低于 100% 来实现的，因此这种延迟减少仅在 GPU 瓶颈场景中有效，在 CPU 瓶颈场景中无效。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

每个渲染帧所能模拟的最大物理迭代数。

\ **注意：**\ 调整默认值是为了防止昂贵的物理模拟无限期地触发更昂贵的模拟。然而，如果渲染 FPS 小于 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` 的 ``1 / max_physics_steps_per_frame``\ ，游戏看上去会是降速的。即便在物理计算中始终使用 ``delta`` 也一样会发生。要避免这种情况，如果已经增大了 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，而且远大于其默认值，那么建议将 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 也调大。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

有多少物理滴答与实际时间同步。如果为 ``0`` 或更少，则滴答完全同步。较高的值会导致游戏中的时钟与真实时钟的偏差更大，但它们可以平滑帧率抖动。

\ **注意：**\ 默认值 ``0.5`` 对于大多数情况来说应该足够了；高于 ``2`` 的值可能会导致游戏对掉帧做出反应并出现明显的延迟，因此不推荐使用。

\ **注意：**\ 当使用自定义物理插值解决方案或在网络游戏中时，建议通过将该属性设置为 ``0`` 来禁用物理抖动修复。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

每秒执行的固定迭代次数。用于控制物理仿真和 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 的执行频率。

CPU 使用率大致与物理周期频率成正比。然而，在周期频率非常低（通常低于 30）的情况下，物理行为可能会出现异常。在低周期频率下，输入响应也会变得迟钝，因为输入被注册到系统和系统在下一个物理周期做出响应之间会存在延迟。较高的周期频率可以提供更精确的物理模拟，尤其对于快速移动的物体而言。例如，赛车游戏可以通过将周期频率提高到高于默认的 60 来获得更好的效果。

另见 :ref:`max_fps<class_Engine_property_max_fps>` 和 :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`\ 。

\ **注意：**\ 每个渲染帧最多只能模拟 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 个物理周期。如果为了追赶渲染，需要在每个渲染帧中模拟更多物理周期，游戏看上去会是降速的（即便在物理计算中始终使用 ``delta``\ ）。因此，如果增大了 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，而且远大于默认值，那么建议将 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 也调大。

\ **注意：**\ 如果你将 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` 的值更改为不是 ``60`` 的倍数的值，请考虑启用\ :doc:`物理插值 <../tutorials/physics/interpolation/index>`\ 。使用物理插值可以避免显示器刷新率和物理更新速率不完全匹配时出现的画面抖动。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

如果为 ``false``\ ，则停止向控制台和编辑器输出日志打印错误和警告消息。这可用于在单元测试套件运行期间隐藏错误和警告消息。该属性等效于 :ref:`ProjectSettings.application/run/disable_stderr<class_ProjectSettings_property_application/run/disable_stderr>` 项目设置。

\ **注意：**\ 从编辑器运行项目时，该属性不会影响编辑器的“错误”选项卡。

\ **警告：**\ 如果在项目的任何地方将该项设置为 ``false``\ ，则重要的错误消息可能会被隐藏，即使它们是从其他脚本发出的。在 ``@tool`` 脚本中，这也会影响编辑器本身。在确保错误消息被启用（默认情况下）之前，\ *不*\ 要报告错误。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

如果 ``false``\ ，则会阻止将消息（例如使用 :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`\ ）输出到控制台、日志文件和编辑器的“输出”日志中。该属性相当于项目设置 :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>`\ 。

\ **注意：**\ 该属性并不会阻止将脚本产生的错误和警告输出到控制台或日志文件，详见 :ref:`print_error_messages<class_Engine_property_print_error_messages>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

游戏内部时钟更新的速度乘数，相对于真实时间。例如设置为 ``2.0`` 就会让游戏以二倍速运行，设置为 ``0.5`` 就会让游戏以一半的速度运行。

这个值会影响 :ref:`Timer<class_Timer>`\ 、\ :ref:`SceneTreeTimer<class_SceneTreeTimer>` 以及其他使用 ``delta`` 时间进行的仿真（例如 :ref:`Node._process()<class_Node_private_method__process>` 和 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

\ **注意：**\ 建议让这个属性保持大于 ``0.0``\ ，否则可能导致游戏产生意外的行为。

\ **注意：**\ 这个属性不会影响音频的播放。请使用 :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` 来调整音频播放的速度，配合 :ref:`time_scale<class_Engine_property_time_scale>`\ 。

\ **注意：**\ 这个属性不会自动调整 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。大于 ``1.0`` 时可能导致物理仿真精度的下降，因为每个物理周期都会被拉伸到覆盖引擎中的一大段时间。修改 :ref:`time_scale<class_Engine_property_time_scale>` 大幅加速仿真速度时，请考虑同时增大 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，让仿真更可靠。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

捕获并返回所有注册脚本语言的追踪信息。

默认情况下，返回的 :ref:`ScriptBacktrace<class_ScriptBacktrace>` 仅在编辑器构建和调试构建中包含栈帧。要在发布构建中也启用，就需要启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

如果 ``include_variables`` 为 ``true``\ ，则追踪信息中还包括捕获时的所有全局变量（例如自动加载的单例）的名称和值，以及各个栈帧中的局部变量和类成员变量。不过这个参数只有在运行游戏时附加了调试器的情况下才会生效，例如从编辑器运行游戏。要在导出构建中也启用此功能，就需要启用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`\ 。

\ **警告：**\ 当 ``include_variables`` 为 ``true`` 时，捕获的变量可能是变量中的实际值（例如 GDScript 的追踪信息），包含对象引用。这意味着存储这样的 :ref:`ScriptBacktrace<class_ScriptBacktrace>` 会阻止这些对象的释放，因此通常不建议这么做。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

返回构建 Godot 二进制文件所针对的 CPU 架构的名称。可能的返回值有 ``"x86_64"``\ 、\ ``"x86_32"``\ 、\ ``"arm64"``\ 、\ ``"arm32"``\ 、\ ``"rv64"``\ 、\ ``"ppc64"``\ 、\ ``"loongarch64"``\ 、\ ``"wasm64"`` 和 ``"wasm32"``\ 。

检测当前构建是否为 64 位或检测架构类型时请勿使用架构名称进行判断。请使用 :ref:`OS.has_feature()<class_OS_method_has_feature>`\ ，检测 ``"64"`` 特性标签，或者 ``"x86"``\ 、\ ``"arm"`` 等标签。详见\ :doc:`《特性标签》 <../tutorials/export/feature_tags>`\ 文档。

\ **注意：**\ 该方法\ *不返回*\ 系统 CPU 架构的名称（如 :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`\ ）。例如在 ``x86_64`` 系统上运行 ``x86_32`` Godot 二进制文件时，返回值仍为 ``"x86_32"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

以 :ref:`Dictionary<class_Dictionary>` 形式返回引擎作者信息，其中每个条目都是一个字符串 :ref:`Array<class_Array>`\ ，其中包含 Godot 引擎著名贡献者的姓名：\ ``lead_developers``\ 、\ ``founders``\ 、\ ``project_managers`` 和 ``developers``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

返回包含 Godot 源码组件版权信息的字典的 :ref:`Array<class_Array>`\ 。

每个 :ref:`Dictionary<class_Dictionary>` 中都包含了名称标识符 ``name`` 以及另一个字典数组 ``parts``\ 。后者详细描述了对应的组件，包含的字段如下：

- ``files`` - 受到该组件影响的源码文件路径 :ref:`Array<class_Array>`\ ；

- ``copyright`` - 该组件的所有者 :ref:`Array<class_Array>`\ ；

- ``license`` - 该组件适用的协议（例如 "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" 或 "`CC-BY-4.0 <https://creativecommons.org/licenses/by/4.0/>`__"）。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

返回分类捐赠者姓名的 :ref:`Dictionary<class_Dictionary>`\ 。每个条目都是一个字符串 :ref:`Array<class_Array>`\ ：

{``platinum_sponsors``, ``gold_sponsors``, ``silver_sponsors``, ``bronze_sponsors``, ``mini_sponsors``, ``gold_donors``, ``silver_donors``, ``bronze_donors``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

返回自引擎启动以来绘制的帧的总数。

\ **注意：**\ 在无头平台上，或者如果通过命令行使用 ``--disable-render-loop`` 禁用渲染，则该方法始终返回 ``0``\ 。请参阅 :ref:`get_process_frames()<class_Engine_method_get_process_frames>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

返回每秒渲染的平均帧数（FPS），也被称为帧速率。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

返回 Godot 和包含的第三方组件使用的许可证的 :ref:`Dictionary<class_Dictionary>`\ 。每个条目都是一个许可证名称（例如 "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__"）及其关联的文本。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

返回完整的 Godot 许可证文本。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

返回该 :ref:`MainLoop<class_MainLoop>` 的实例。这通常是主 :ref:`SceneTree<class_SceneTree>` 并且与 :ref:`Node.get_tree()<class_Node_method_get_tree>` 相同。

\ **注意：**\ 作为主循环的实例化类型可以通过 :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` 更改。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

返回自引擎启动以来经过的总帧数。这个数字每个\ **物理帧**\ 都会增加。另见 :ref:`get_process_frames()<class_Engine_method_get_process_frames>`\ 。

该方法可用于在不依赖 :ref:`Timer<class_Timer>` 的情况下，减少运行昂贵的逻辑的次数：


.. tabs::

 .. code-tab:: gdscript

    func _physics_process(_delta):
        if Engine.get_physics_frames() % 2 == 0:
            pass # 此处每 2 个物理帧仅运行一次昂贵的逻辑。

 .. code-tab:: csharp

    public override void _PhysicsProcess(double delta)
    {
        base._PhysicsProcess(delta);

        if (Engine.GetPhysicsFrames() % 2 == 0)
        {
            // 此处每 2 个物理帧仅运行一次昂贵的逻辑。
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

返回渲染帧时当前物理周期中的分数。可用于实现固定的时间步插值。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

返回自引擎启动以来经过的总帧数，无论渲染循环是否启用，每个\ **处理帧**\ 都会增加该数字。另见 :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` 和 :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`\ 。

\ :ref:`get_process_frames()<class_Engine_method_get_process_frames>` 可用于在不依赖 :ref:`Timer<class_Timer>` 的情况下，减少运行昂贵的逻辑的次数：


.. tabs::

 .. code-tab:: gdscript

    func _process(_delta):
        if Engine.get_process_frames() % 2 == 0:
            pass # 此处每 2 个处理（渲染）帧仅运行一次昂贵的逻辑。

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        base._Process(delta);

        if (Engine.GetProcessFrames() % 2 == 0)
        {
            // 此处每 2 个处理（渲染）帧仅运行一次昂贵的逻辑。
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

返回给定索引 ``index`` 处的 :ref:`ScriptLanguage<class_ScriptLanguage>` 实例。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

返回可用脚本语言的数量。请配合 :ref:`get_script_language()<class_Engine_method_get_script_language>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

返回具有给定 ``name`` 的全局单例，如果不存在则返回 ``null``\ 。常用于插件。另见 :ref:`has_singleton()<class_Engine_method_has_singleton>` and :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`\ 。

\ **注意：**\ 全局单例与自动加载的节点不同，后者可以在项目设置中进行配置。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

返回所有可用全局单例的名称列表。另见 :ref:`get_singleton()<class_Engine_method_get_singleton>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

以包含以下条目的 :ref:`Dictionary<class_Dictionary>` 形式返回当前引擎版本信息：

- ``major`` - 主要版本号为一个 int；

- ``minor`` - 次要版本号为一个 int；

- ``patch`` - 补丁版本号为一个 int；

- ``hex`` - 完整版本被编码为一个十六进制 int，每个数字一个字节（2 个十六进制数字）（参见下面的示例）；

- ``status`` - 状态（例如“beta”、“rc1”、“rc2”、“stable” 等）为一串字符串；

- ``build`` - 构建名称（例如 “custom_build”）为一串字符串；

- ``hash`` - 完整的 Git 提交哈希为一串字符串；

- ``timestamp`` - 以秒为单位，以 int 形式保存 Git 提交日期 UNIX 时间戳，如果不可用，则保存为 ``0``\ ；

- ``string`` - 将 ``major`` + ``minor`` + ``patch`` + ``status`` + ``build`` 保存在单个字符串中。

\ ``hex`` 值的编码方式如下，从左到右：主版本对应一字节，次版本对应一字节，补丁版本对应一字节。例如，“3.1.12”将是 ``0x03010C``\ 。

\ **注意：**\ ``hex`` 值内部还是一个 :ref:`int<class_int>`\ ，打印出来就是它的十进制表示，没有特别的意义。使用十六进制文字从代码中快速比较版本：


.. tabs::

 .. code-tab:: gdscript

    if Engine.get_version_info().hex >= 0x040100:
        pass # 执行特定于版本 4.1 或更高版本的操作。
    else:
        pass # 执行特定于 4.1 之前版本的操作。

 .. code-tab:: csharp

    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
    {
        // 执行特定于版本 4.1 或更高版本的操作。
    }
    else
    {
        // 执行特定于 4.1 之前版本的操作。
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

返回 :ref:`MovieWriter<class_MovieWriter>` 的输出文件的路径，如果引擎未在 Movie Maker 模式下启动，则返回一个空字符串。该默认路径可以在 :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>` 中更改。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

如果全局范围内存在具有给定 ``name`` 的单例，则返回 ``true``\ 。另见 :ref:`get_singleton()<class_Engine_method_get_singleton>`\ 。


.. tabs::

 .. code-tab:: gdscript

    print(Engine.has_singleton("OS"))          # 输出 true
    print(Engine.has_singleton("Engine"))      # 输出 true
    print(Engine.has_singleton("AudioServer")) # 输出 true
    print(Engine.has_singleton("Unknown"))     # 输出 false

 .. code-tab:: csharp

    GD.Print(Engine.HasSingleton("OS"));          // 输出 True
    GD.Print(Engine.HasSingleton("Engine"));      // 输出 True
    GD.Print(Engine.HasSingleton("AudioServer")); // 输出 True
    GD.Print(Engine.HasSingleton("Unknown"));     // 输出 False



\ **注意：**\ 全局单例与自动加载的节点不同，后者可以在项目设置中进行配置。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

如果脚本当前正在编辑器中运行，则返回 ``true``\ ，否则返回 ``false``\ 。这对于 ``@tool`` 脚本很有用，可以有条件地绘制编辑器助手，或者防止在编辑器中意外运行会影响场景状态的“游戏”代码：


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



有关详细信息，请参阅文档中的\ :doc:`《在编辑器中运行代码》 <../tutorials/plugins/running_code_in_the_editor>`\ 。

\ **注意：**\ 要检测脚本是否在编辑器\ *构建*\ 上运行（例如，当按 :kbd:`F5` 时），请改用 :ref:`OS.has_feature()<class_OS_method_has_feature>` 和 ``"editor"`` 参数。\ ``OS.has_feature("editor")`` 将在编辑器中运行脚本和从编辑器运行项目时，被评估为 ``true``\ ；但当从导出的项目运行时，它将被评估为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

如果引擎在编辑器中嵌入运行则返回 ``true``\ 。可以用来防止在项目嵌入编辑器中运行时尝试更新不支持的窗口模式或窗口标志。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

如果引擎位于主循环的固定物理处理步骤内，则返回 ``true``\ 。

::

    func _enter_tree():
        # 根据节点添加到树中的时间，
        # 输出 “true” 或 “false”。
        print(Engine.is_in_physics_frame())

    func _process(delta):
        print(Engine.is_in_physics_frame()) # 输出 false

    func _physics_process(delta):
        print(Engine.is_in_physics_frame()) # 输出 true

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **register_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_register_script_language>`

注册一个 :ref:`ScriptLanguage<class_ScriptLanguage>` 实例，供 ``ScriptServer`` 使用。

返回：

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 表示成功；

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` 表示 ``ScriptServer`` 已达到限制，无法注册任何新语言；

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` 表示 ``ScriptServer`` 已经包含一个具有相似扩展名/名称/类型的语言。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

将给定的 :ref:`Object<class_Object>` ``instance`` 注册为单例，在名称 ``name`` 下全局可用。对于插件很有用。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

从 ``ScriptServer`` 注销该 :ref:`ScriptLanguage<class_ScriptLanguage>` 实例。

返回：

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 表示成功；

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>` 表示该语言尚未在 ``ScriptServer`` 中注册。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

移除在 ``name`` 下注册的单例。该单例对象\ *不会*\ 被释放。仅适用于使用 :ref:`register_singleton()<class_Engine_method_register_singleton>` 注册的用户定义的单例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
