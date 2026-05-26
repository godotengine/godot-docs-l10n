:github_url: hide

.. _class_Timer:

Timer
=====

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un temporizador de cuenta atrás.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **Timer** node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its :ref:`wait_time<class_Timer_property_wait_time>`, it will emit the :ref:`timeout<class_Timer_signal_timeout>` signal.

After a timer enters the scene tree, it can be manually started with :ref:`start()<class_Timer_method_start>`. A timer node is also started automatically if :ref:`autostart<class_Timer_property_autostart>` is ``true``.

Without requiring much code, a timer node can be added and configured in the editor. The :ref:`timeout<class_Timer_signal_timeout>` signal it emits can also be connected through the Signals dock in the editor:

::

    func _on_timer_timeout():
        print("Time to attack!")

\ **Note:** To create a one-shot timer without instantiating a node, use :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Note:** Timers are affected by :ref:`Engine.time_scale<class_Engine_property_time_scale>` unless :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` is ``true``. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Emitida cuando el temporizador llega al final.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Actualiza el temporizador en cada frame del proceso de física (véase :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Actualiza el temporizador en cada frame del proceso (renderizado) (ver :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

Si es ``true``, el temporizador comenzará inmediatamente cuando entre en el árbol de escenas.

\ **Nota:** Después de que el temporizador entra en el árbol, esta propiedad se establece automáticamente en ``false``.

\ **Nota:** Esta propiedad no hace nada cuando el temporizador se está ejecutando en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

Si es ``true``, el temporizador ignorará :ref:`Engine.time_scale<class_Engine_property_time_scale>` y se actualizará con el tiempo real transcurrido.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

Si es ``true``, el temporizador se detendrá después de alcanzar el final. De lo contrario, como por defecto, el temporizador se reiniciará automáticamente.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Si es ``true``, el temporizador se pausa. Un temporizador en pausa no se procesa hasta que esta propiedad se vuelve a establecer en ``false``, incluso cuando se llama a :ref:`start()<class_Timer_method_start>`. Véase también :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Especifica cuándo se actualiza el temporizador durante el bucle principal.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

El tiempo restante del temporizador en segundos. Siempre es ``0`` si el temporizador está detenido.

\ **Nota:** Esta propiedad es de solo lectura y no se puede modificar. Se basa en :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

El tiempo requerido para que el temporizador termine, en segundos. Esta propiedad también se puede establecer cada vez que se llama a :ref:`start()<class_Timer_method_start>`.

\ **Nota:** Los temporizadores solo pueden procesarse una vez por frame de física o de proceso (dependiendo del :ref:`process_callback<class_Timer_property_process_callback>`). Una velocidad de fotogramas inestable puede causar que el temporizador termine de manera inconsistente, lo cual es especialmente notable si el tiempo de espera es menor a aproximadamente ``0.05`` segundos. Para temporizadores muy cortos, se recomienda escribir tu propio código en lugar de usar un nodo **Timer**. Los temporizadores también se ven afectados por :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Devuelve ``true`` si el temporizador está detenido o no ha comenzado.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Inicia el temporizador, o reinicia el temporizador si ya se ha iniciado. Falla si el temporizador no está dentro del árbol de escenas. Si ``time_sec`` es mayor que ``0``, este valor se utiliza para :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Nota:** Este método no reanuda un temporizador en pausa. Véase :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Detiene el temporizador. Véase también :ref:`paused<class_Timer_property_paused>`. A diferencia de :ref:`start()<class_Timer_method_start>`, esto se puede llamar de forma segura si el temporizador no está dentro del árbol de escenas.

\ **Nota:** Llamar a :ref:`stop()<class_Timer_method_stop>` no emite la señal :ref:`timeout<class_Timer_signal_timeout>`, ya que no se considera que el temporizador se haya agotado. Si se desea, utiliza ``$Timer.timeout.emit()`` después de llamar a :ref:`stop()<class_Timer_method_stop>` para emitir manualmente la señal.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
