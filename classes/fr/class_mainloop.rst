:github_url: hide

.. _class_MainLoop:

MainLoop
========

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`SceneTree<class_SceneTree>`

La classe abstraite de base pour la boucle principale du jeu.

.. rst-class:: classref-introduction-group

Description
-----------

**MainLoop** is the abstract base class for a Godot project's game loop. It is inherited by :ref:`SceneTree<class_SceneTree>`, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own **MainLoop** subclass instead of the scene tree.

Upon the application start, a **MainLoop** implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a :ref:`SceneTree<class_SceneTree>` is created) unless a **MainLoop** :ref:`Script<class_Script>` is provided from the command line (with e.g. ``godot -s my_loop.gd``) or the :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` project setting is overwritten.

Here is an example script implementing a simple **MainLoop**:


.. tabs::

 .. code-tab:: gdscript

    class_name CustomMainLoop
    extends MainLoop

    var time_elapsed = 0

    func _initialize():
        print("Initialized:")
        print("  Starting time: %s" % str(time_elapsed))

    func _process(delta):
        time_elapsed += delta
        # Return true to end the main loop.
        return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

    func _finalize():
        print("Finalized:")
        print("  End time: %s" % str(time_elapsed))

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class CustomMainLoop : MainLoop
    {
        private double _timeElapsed = 0;

        public override void _Initialize()
        {
            GD.Print("Initialized:");
            GD.Print($"  Starting Time: {_timeElapsed}");
        }

        public override bool _Process(double delta)
        {
            _timeElapsed += delta;
            // Return true to end the main loop.
            return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
        }

        private void _Finalize()
        {
            GD.Print("Finalized:");
            GD.Print($"  End Time: {_timeElapsed}");
        }
    }



.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_finalize<class_MainLoop_private_method__finalize>`\ (\ ) |virtual|                                                  |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_initialize<class_MainLoop_private_method__initialize>`\ (\ ) |virtual|                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_physics_process<class_MainLoop_private_method__physics_process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process<class_MainLoop_private_method__process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                 |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

Émis quand l'utilisateur répond à une demande de permission.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notification reçue de l'OS lorsque l'application dépasse sa mémoire attribuée.

Spécifique à la plate-forme iOS.

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

La notification reçue quand les traductions peuvent avoir changé. Peut être déclenchée quand l'utilisateur modifie les paramètres régionaux. Permet de réagir aux changements de langue, par exemple en modifiant le texte des interfaces utilisateur à la volée. Pratique lorsque vous utilisez la prise en charge intégrée des traductions, comme par le biais de :ref:`Object.tr()<class_Object_method_tr>`.

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

Notification reçue de l'OS lorsqu'une requête d'information "À propos"/"About" est envoyée.

Spécifique à la plateforme macOS.

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

Notification reçue depuis le gestionnaire de plantage de Godot quand le moteur est sur le point de planter.

Implémenté sur les environnements de bureau si le gestionnaire de plantage est activé.

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notification reçue du système d'exploitation une fois de retour sur l'application.

Spécifique aux plateformes Android et iOS.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notification reçue du système d'exploitation lorsque l'application est mise en pause.

Spécifique aux plateformes Android et iOS.

\ **Note :** Sur iOS, vous n'avez qu'environ 5 secondes pour terminer une tâche commencée par ce signal. Si vous dépassez ce temps attribué, iOS va tuer l'application au lieu de la mettre en pause.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notification reçue du système d'exploitation lorsque l'application prend le focus, c.à.d. lors du changement de focus du bureau de l'OS ou d'une application tierce vers n'importe quelle fenêtre de l'instance Godot.

Implémentée sur les plateformes mobiles et de bureau.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notification reçue du système d'exploitation lorsque l'application perd le focus, c.à.d. lors du changement de focus de n'importe quelle fenêtre de l'instance Godot vers le bureau de l'OS ou une application tierce.

Implémentée sur les plateformes mobiles et de bureau.

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notification received when text server is changed.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

Notification received when the application enters picture-in-picture mode.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

Notification received when the application exits picture-in-picture mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

Appelé avant que le programme se termine.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

Appelé une fois lors de l’initialisation.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__physics_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__physics_process>`

Called each physics tick. ``delta`` is the logical time between physics ticks in seconds and is equal to :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Equivalent to :ref:`Node._physics_process()<class_Node_private_method__physics_process>`.

If implemented, the method must return a boolean value. ``true`` ends the main loop, while ``false`` lets it proceed to the next step.

\ **Note:** :ref:`_physics_process()<class_MainLoop_private_method__physics_process>` may be called up to :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` times per (idle) frame. This step limit may be reached when the engine is suffering performance issues.

\ **Note:** Accumulated ``delta`` may diverge from real world seconds.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__process>`

Called on each idle frame, prior to rendering, and after physics ticks have been processed. ``delta`` is the time between frames in seconds. Equivalent to :ref:`Node._process()<class_Node_private_method__process>`.

If implemented, the method must return a boolean value. ``true`` ends the main loop, while ``false`` lets it proceed to the next frame.

\ **Note:** When the engine is struggling and the frame rate is lowered, ``delta`` will increase. When ``delta`` is increased, it's capped at a maximum of :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. As a result, accumulated ``delta`` may not represent real world time.

\ **Note:** When ``--fixed-fps`` is enabled or the engine is running in Movie Maker mode (see :ref:`MovieWriter<class_MovieWriter>`), process ``delta`` will always be the same for every frame, regardless of how much time the frame took to render.

\ **Note:** Frame delta may be post-processed by :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` if this is enabled for the project.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
