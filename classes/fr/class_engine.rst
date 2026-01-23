:github_url: hide

.. _class_Engine:

Engine
======

**Hérite de :** :ref:`Object<class_Object>`

Fournit un accès aux propriétés du moteur.

.. rst-class:: classref-introduction-group

Description
-----------

Le singleton **Engine** vous permet d'interroger et de modifier les paramètres d'exécution du projet, comme les trames par seconde, l'échelle de temps et d'autres. Il stocke également des informations sur la compilation actuelle de Godot, comme la version actuelle.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

Le nombre maximal d'images qui peuvent être rendues chaque seconde (FPS). Une valeur de ``0`` signifie que le framerate n'est pas limité.

Limiter les FPS peut être utile pour réduire la consommation d'énergie de la machine hôte, ce qui réduit la chaleur, les émissions sonores et améliore la durée de vie de la batterie.

Si :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` vaut **Enabled** ou **Adaptive**, le paramètre a priorité et le nombre max de FPS ne peut dépasser le taux de rafraîchissement du moniteur. Voir aussi :ref:`DisplayServer.screen_get_refresh_rate()<class_DisplayServer_method_screen_get_refresh_rate>`.

Si :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` vaut **Enabled**, sur les moniteurs à taux de rafraîchissement variable (G-Sync/FreeSync), en utilisant une limite de FPS inférieure de quelques images à la vitesse de rafraîchissement du moniteur `réduit l'imput lag tout en évitant les déchirures <https://blurbusters.com/howto-low-lag-vsync-on/>`__. Sur des taux de rafraîchissement plus élevés, il faudrait accroître la différence entre la limite de FPS et le taux de rafraîchissement du moniteur afin de tenir compte des inexactitudes temporelles. La formule optimale pour la valeur limite des FPS dans ce scénario est ``r - (r * r) / 3600.0``, où ``r`` est le taux de rafraîchissement du moniteur.

\ **Note :** Le nombre réel d'images par seconde peut encore être inférieur à cette valeur si le CPU ou le GPU ne peut pas respecter la logique et le rendu du projet.

\ **Note :** Si :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` vaut **Disabled**, limiter les FPS à une valeur élevée qui peut être constamment atteinte sur le système peut réduire l'imput lag par rapport à un framerate non plafonné. Comme cela fonctionne en veillant à ce que la charge GPU soit inférieure à 100%, cette réduction de latence n'est efficace que dans les scénarios limités par le GPU, et non dans les scénarios limités par le CPU.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

The maximum number of physics steps that can be simulated each rendered frame.

\ **Note:** The default value is tuned to prevent expensive physics simulations from triggering even more expensive simulations indefinitely. However, the game will appear to slow down if the rendering FPS is less than ``1 / max_physics_steps_per_frame`` of :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. This occurs even if ``delta`` is consistently used in physics calculations. To avoid this, increase :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` if you have increased :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` significantly above its default value.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

How much physics ticks are synchronized with real time. If ``0`` or less, the ticks are fully synchronized. Higher values cause the in-game clock to deviate more from the real clock, but they smooth out framerate jitters.

\ **Note:** The default value of ``0.5`` should be good enough for most cases; values above ``2`` could cause the game to react to dropped frames with a noticeable delay and are not recommended.

\ **Note:** When using a custom physics interpolation solution, or within a network game, it's recommended to disable the physics jitter fix by setting this property to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

Le nombre d'itérations fixes par seconde. Cela contrôle combien de fois la simulation physique et la méthode :ref:`Node._physics_process()<class_Node_private_method__physics_process>` sont exécutées. 

L'utilisation du processeur augmente linéairement avec le taux de tic physique. Cependant, à des taux de tic très faibles (généralement inférieurs à 30), le comportement physique peut se décomposer. L'entrée peut également devenir moins sensible à des taux de tic faibles car il peut y avoir un écart entre l'entrée étant enregistrée, et la réponse sur la prochaine tic de physique. Des taux de tic élevés donnent une simulation physique plus précise, en particulier pour les objets en mouvement rapide. Par exemple, les jeux de course peuvent bénéficier d'augmenter le taux de tics au-dessus du taux par défaut de 60.

Voir aussi :ref:`max_fps<class_Engine_property_max_fps>` et :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`.

\ **Note :** Seul les tics physiques :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` peuvent être simulées par trame visuelle rendue au maximum. Si des tics physiques suplémentaires doivent être simulées pour maintenir le rendu, le projet semblera ralentir (même si ``delta`` est utilisé systématiquement dans les calculs de physique). Par conséquent, il est recommandé d'augmenter :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` si vous augmentez :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` significativement au-dessus de sa valeur par défaut.

\ **Note:** Envisager d'activer l':doc:`interpolation de la physique <../tutorials/physics/interpolation/index>` si vous changez :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` à une valeur qui n'est pas multiple de ``60``. L'utilisation de l'interpolation de la physique évitera les déchirements lorsque le taux de rafraîchissement du moniteur et le taux de mise à jour de la physique ne correspondent pas exactement.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

If ``false``, stops printing error and warning messages to the console and editor Output log. This can be used to hide error and warning messages during unit test suite runs. This property is equivalent to the :ref:`ProjectSettings.application/run/disable_stderr<class_ProjectSettings_property_application/run/disable_stderr>` project setting.

\ **Note:** This property does not impact the editor's Errors tab when running a project from the editor.

\ **Warning:** If set to ``false`` anywhere in the project, important error messages may be hidden even if they are emitted from other scripts. In a ``@tool`` script, this will also impact the editor itself. Do *not* report bugs before ensuring error messages are enabled (as they are by default).

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

If ``false``, stops printing messages (for example using :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`) to the console, log files, and editor Output log. This property is equivalent to the :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>` project setting.

\ **Note:** This does not stop printing errors or warnings produced by scripts to the console or log files, for more details see :ref:`print_error_messages<class_Engine_property_print_error_messages>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

The speed multiplier at which the in-game clock updates, compared to real time. For example, if set to ``2.0`` the game runs twice as fast, and if set to ``0.5`` the game runs half as fast.

This value affects :ref:`Timer<class_Timer>`, :ref:`SceneTreeTimer<class_SceneTreeTimer>`, and all other simulations that make use of ``delta`` time (such as :ref:`Node._process()<class_Node_private_method__process>` and :ref:`Node._physics_process()<class_Node_private_method__physics_process>`).

\ **Note:** It's recommended to keep this property above ``0.0``, as the game may behave unexpectedly otherwise.

\ **Note:** This does not affect audio playback speed. Use :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` to adjust audio playback speed independently of :ref:`time_scale<class_Engine_property_time_scale>`.

\ **Note:** This does not automatically adjust :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. With values above ``1.0`` physics simulation may become less precise, as each physics tick will stretch over a larger period of engine time. If you're modifying :ref:`time_scale<class_Engine_property_time_scale>` to speed up simulation by a large factor, consider also increasing :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` to make the simulation more reliable.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

Captures and returns backtraces from all registered script languages.

By default, the returned :ref:`ScriptBacktrace<class_ScriptBacktrace>` will only contain stack frames in editor builds and debug builds. To enable them for release builds as well, you need to enable :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

If ``include_variables`` is ``true``, the backtrace will also include the names and values of any global variables (e.g. autoload singletons) at the point of the capture, as well as local variables and class member variables at each stack frame. This will however will only be respected when running the game with a debugger attached, like when running the game from the editor. To enable it for export builds as well, you need to enable :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`.

\ **Warning:** When ``include_variables`` is ``true``, any captured variables can potentially (e.g. with GDScript backtraces) be their actual values, including any object references. This means that storing such a :ref:`ScriptBacktrace<class_ScriptBacktrace>` will prevent those objects from being deallocated, so it's generally recommended not to do so.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

Returns the name of the CPU architecture the Godot binary was built for. Possible return values include ``"x86_64"``, ``"x86_32"``, ``"arm64"``, ``"arm32"``, ``"rv64"``, ``"ppc64"``, ``"loongarch64"``, ``"wasm64"``, and ``"wasm32"``.

To detect whether the current build is 64-bit, or the type of architecture, don't use the architecture name. Instead, use :ref:`OS.has_feature()<class_OS_method_has_feature>` to check for the ``"64"`` feature tag, or tags such as ``"x86"`` or ``"arm"``. See the :doc:`Feature Tags <../tutorials/export/feature_tags>` documentation for more details.

\ **Note:** This method does *not* return the name of the system's CPU architecture (like :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`). For example, when running an ``x86_32`` Godot binary on an ``x86_64`` system, the returned value will still be ``"x86_32"``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

Returns the engine author information as a :ref:`Dictionary<class_Dictionary>`, where each entry is an :ref:`Array<class_Array>` of strings with the names of notable contributors to the Godot Engine: ``lead_developers``, ``founders``, ``project_managers``, and ``developers``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

Returns an :ref:`Array<class_Array>` of dictionaries with copyright information for every component of Godot's source code.

Every :ref:`Dictionary<class_Dictionary>` contains a ``name`` identifier, and a ``parts`` array of dictionaries. It describes the component in detail with the following entries:

- ``files`` - :ref:`Array<class_Array>` of file paths from the source code affected by this component;

- ``copyright`` - :ref:`Array<class_Array>` of owners of this component;

- ``license`` - The license applied to this component (such as "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" or "`CC-BY-4.0 <https://creativecommons.org/licenses/by/4.0/>`__").

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

Renvoie un :ref:`Dictionary<class_Dictionary>` des noms catégorisés de donneurs. Chaque entrée est un :ref:`Array<class_Array>` de chaînes :

{``platinum_sponsors``, ``gold_sponsors``, ``silver_sponsors``, ``bronze_sponsors``, ``mini_sponsors``, ``gold_donors``, ``silver_donors``, ``bronze_donors``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

Returns the total number of frames drawn since the engine started.

\ **Note:** On headless platforms, or if rendering is disabled with ``--disable-render-loop`` via command line, this method always returns ``0``. See also :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

Renvoie le nombre moyen de trames rendues chaque seconde (FPS), également connu comme le framerate.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

Returns a :ref:`Dictionary<class_Dictionary>` of licenses used by Godot and included third party components. Each entry is a license name (such as "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__") and its associated text.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

Renvoie le texte complet de la licence Godot.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

Returns the instance of the :ref:`MainLoop<class_MainLoop>`. This is usually the main :ref:`SceneTree<class_SceneTree>` and is the same as :ref:`Node.get_tree()<class_Node_method_get_tree>`.

\ **Note:** The type instantiated as the main loop can changed with :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

Renvoie le nombre de trames écoulées depuis le démarrage du moteur. Ce nombre est incrémenté à chaque nouvelle **trame physique**. Voir aussi :ref:`get_process_frames()<class_Engine_method_get_process_frames>`.

Cette méthode peut être utilisée pour lancer des logiques coûteuses moins souvent sans utiliser un :ref:`Timer<class_Timer>`\  :


.. tabs::

 .. code-tab:: gdscript

    func _physics_process(_delta):
        if Engine.get_physics_frames() % 2 == 0:
            pass # Exécutez la logique coûteuse qu'une trame physique sur 2 ici.

 .. code-tab:: csharp

    public override void _PhysicsProcess(double delta)
    {
        base._PhysicsProcess(delta);

        if (Engine.GetPhysicsFrames() % 2 == 0)
        {
            // Exécutez la logique coûteuse qu'une trame physique sur 2 ici.
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

Renvoie la fraction du tic de physique actuel auquel nous sommes au moment de rendre la trame. Cela peut être utilisé pour implémenter une interpolation à différentiel de temps fixe.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

Renvoie le nombre total de trames passées depuis le démarrage du moteur. Ce nombre est augmenté à chaque **trame de traitement**, peu importe si la boucle de rendu est activée. Voir aussi :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` et :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`.

Cette méthode peut être utilisée pour exécuter une logique coûteuse moins souvent sans compter sur un :ref:`Timer<class_Timer>`\  :


.. tabs::

 .. code-tab:: gdscript

    func _process(_delta):
        if Engine.get_process_frames() % 5 == 0:
            pass # Exécutez une logique coûteuse seulement une fois tous les 5 cadres de traitement (rendu) ici.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        base._Process(delta);

        if (Engine.GetProcessFrames() % 5 == 0)
        {
            // Exécutez une logique coûteuse seulement une fois tous les 5 cadres de traitement (rendu) ici.
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

Renvoie une instance d'un :ref:`ScriptLanguage<class_ScriptLanguage>` avec l'index ``index`` donné.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

Renvoie le nombre de langages de script disponibles. À utiliser avec :ref:`get_script_language()<class_Engine_method_get_script_language>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

Returns the global singleton with the given ``name``, or ``null`` if it does not exist. Often used for plugins. See also :ref:`has_singleton()<class_Engine_method_has_singleton>` and :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`.

\ **Note:** Global singletons are not the same as autoloaded nodes, which are configurable in the project settings.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

Renvoie une liste des noms de tous les singletons globaux disponibles. Voir aussi :ref:`get_singleton()<class_Engine_method_get_singleton>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

Renvoie les informations sur la version actuelle du moteur dans un :ref:`Dictionary<class_Dictionary>` contenant les entrées suivantes :

- ``major`` - Le numéro de version majeur en tant qu'entier :ref:`int<class_int>`\ 

- ``minor`` - Le numéro de version mineur en tant qu'entier :ref:`int<class_int>`\ 

- ``patch`` - Le numéro de version de correctif en tant qu'entier :ref:`int<class_int>`\ 

- ``hex`` - Le numéro complet de version sous forme d'entier au format hexadécimal avec un octet (2 caractères) par numéro (voir l'exemple en-dessous)

- ``status`` - Le status (ex. : "beta", "rc1", "rc2", "stable", etc...) en chaîne de caractères :ref:`String<class_String>`\ 

- ``build`` - Le nom de la version (ex. : "custom_build") en chaîne de caractères :ref:`String<class_String>`\ 

- ``hash`` - Le hachage du commit Git en tant que chaîne de caractère :ref:`String<class_String>`\ 

- ``timestamp`` - Contient le timestamp UNIX de la date du commit Git en secondes en tant qu'entier :ref:`int<class_int>`, ou ``0`` si indisponible

- ``string`` - ``major``, ``minor``, ``patch``, ``status`` et ``build`` dans un seule chaîne :ref:`String<class_String>`.

La valeur ``hex`` est codée comme suit, de gauche à droite : un octet pour le numéro majeur, un octet pour le numéro mineur, un octet pour le numéro de correctif. Par exemple, la "3.1.12" sera la valeur ``0x03010C``.

\ **Note :** La valeur ``hex`` est toujours un :ref:`int<class_int>` en interne, et l'afficher donnera sa représentation décimale qui ne sera pas particulièrement utile. Utilisez une représentation hexadécimale permet de facilement comparer les versions dans le code :


.. tabs::

 .. code-tab:: gdscript

    if Engine.get_version_info().hex >= 0x040100:
        pass # Faire des choses spécifiques à la version 4.1 et plus.
    else:
        pass # Faire des choses spécifiques aux versions avant la 4.1.

 .. code-tab:: csharp

    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
    {
        // Faire des choses spécifiques à la version 4.1 et plus.
    }
    else
    {
        // Faire des choses spécifiques aux versions avant la 4.1.
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

Renvoie le chemin vers le fichier de sortie :ref:`MovieWriter<class_MovieWriter>`, ou une chaîne vide si le moteur n'a pas été lancé en mode Création de film. Le chemin par défaut peut être modifié dans :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

Returns ``true`` if a singleton with the given ``name`` exists in the global scope. See also :ref:`get_singleton()<class_Engine_method_get_singleton>`.


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



\ **Note:** Global singletons are not the same as autoloaded nodes, which are configurable in the project settings.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

Returns ``true`` if the script is currently running inside the editor, otherwise returns ``false``. This is useful for ``@tool`` scripts to conditionally draw editor helpers, or prevent accidentally running "game" code that would affect the scene state while in the editor:


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



See :doc:`Running code in the editor <../tutorials/plugins/running_code_in_the_editor>` in the documentation for more information.

\ **Note:** To detect whether the script is running on an editor *build* (such as when pressing :kbd:`F5`), use :ref:`OS.has_feature()<class_OS_method_has_feature>` with the ``"editor"`` argument instead. ``OS.has_feature("editor")`` evaluate to ``true`` both when the script is running in the editor and when running the project from the editor, but returns ``false`` when run from an exported project.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

Returns ``true`` if the engine is running embedded in the editor. This is useful to prevent attempting to update window mode or window flags that are not supported when running the project embedded in the editor.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

Returns ``true`` if the engine is inside the fixed physics process step of the main loop.

::

    func _enter_tree():
        # Depending on when the node is added to the tree,
        # prints either "true" or "false".
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

Registers a :ref:`ScriptLanguage<class_ScriptLanguage>` instance to be available with ``ScriptServer``.

Returns:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success;

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` if ``ScriptServer`` has reached the limit and cannot register any new language;

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` if ``ScriptServer`` already contains a language with similar extension/name/type.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

Enregistre l'``instance`` d':ref:`Object<class_Object>` donnée comme un singleton, disponible globalement sous le nom ``name``. Utile pour les plugins.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

Unregisters the :ref:`ScriptLanguage<class_ScriptLanguage>` instance from ``ScriptServer``.

Returns:

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success;

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>` if the language is not registered in ``ScriptServer``.

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

Retire le singleton enregistré sous le nom ``name``. L'objet singleton n'est *pas* libéré. Fonctionne seulement avec des singletons définis par l'utilisateur et enregistrés avec :ref:`register_singleton()<class_Engine_method_register_singleton>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
