:github_url: hide

.. _class_MainLoop:

MainLoop
========

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`SceneTree<class_SceneTree>`

Clase base abstracta para el bucle principal del juego.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_MainLoop_signal_on_request_permissions_result:

.. rst-class:: classref-signal

**on_request_permissions_result**\ (\ permission\: :ref:`String<class_String>`, granted\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MainLoop_signal_on_request_permissions_result>`

Emitida cuando un usuario responde a una solicitud de permiso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notificación recibida del sistema operativo cuando la aplicación supera su memoria asignada.

Específico de la plataforma iOS.

.. _class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Notificación recibida cuando las traducciones pueden haber cambiado. Puede ser activada por el usuario al cambiar el locale. Puede utilizarse para responder a los cambios de idioma, por ejemplo, para cambiar las strings de la interfaz de usuario sobre la marcha. Útil cuando se trabaja con el soporte de traducción incorporado, como :ref:`Object.tr()<class_Object_method_tr>`.

.. _class_MainLoop_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_WM_ABOUT>`

Notificación recibida del sistema operativo cuando se envía una solicitud de información "Acerca de".

Específico de la plataforma MacOS.

.. _class_MainLoop_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_CRASH>`

Notificación recibida del controlador de fallos de Godot cuando el motor está a punto de fallar.

Implementado en las plataformas de escritorio si el manejador de fallos está habilitado.

.. _class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notificación recibida del sistema operativo cuando se reanuda la aplicación.

Específica de las plataformas Android e iOS.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notificación recibida del sistema operativo cuando la aplicación se pausa.

Específica de las plataformas Android e iOS.

\ **Nota:** En iOS, solo tienes aproximadamente 5 segundos para finalizar una tarea iniciada por esta señal. Si superas esta asignación, iOS cerrará la aplicación en lugar de pausarla.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notificación recibida del sistema operativo cuando la aplicación está enfocada, es decir, cuando se cambia el foco del escritorio del sistema operativo o de una aplicación de terceros a cualquier ventana abierta de la instancia de Godot.

Implementado en plataformas de escritorio y móviles.

.. _class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notificación recibida del sistema operativo cuando la aplicación pierde el foco, es decir, cuando se cambia el foco de cualquier ventana abierta de la instancia de Godot al escritorio del sistema operativo o a una aplicación de terceros.

Implementado en plataformas de escritorio y móviles.

.. _class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_MainLoop_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notificación recibida cuando se cambia el servidor de texto.

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

Descripciones de Métodos
------------------------------------------------

.. _class_MainLoop_private_method__finalize:

.. rst-class:: classref-method

|void| **_finalize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__finalize>`

Llamada previa a la salida del programa.

.. rst-class:: classref-item-separator

----

.. _class_MainLoop_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_MainLoop_private_method__initialize>`

Llamado una vez durante la inicialización.

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

Se llama en cada fotograma inactivo, antes de la renderización, y después de que se hayan procesado los ciclos de física. ``delta`` es el tiempo entre fotogramas en segundos. Equivalente a :ref:`Node._process()<class_Node_private_method__process>`.

Si se implementa, el método debe devolver un valor booleano. ``true`` termina el bucle principal, mientras que ``false`` permite que continúe al siguiente fotograma.

\ **Nota:** Cuando el motor está sufriendo y la velocidad de fotogramas se reduce, ``delta`` aumentará. Cuando ``delta`` aumenta, se limita a un máximo de :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Como resultado, el ``delta`` acumulado puede no representar el tiempo del mundo real.

\ **Nota:** Cuando ``--fixed-fps`` está habilitado o el motor se está ejecutando en modo Movie Maker (ver :ref:`MovieWriter<class_MovieWriter>`), el proceso ``delta`` siempre será el mismo para cada fotograma, independientemente de la cantidad de tiempo que tarde el fotograma en renderizarse.

\ **Nota:** El delta de fotograma puede ser post-procesado por :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` si esto está habilitado para el proyecto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
