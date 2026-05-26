:github_url: hide

.. _class_AnimationNodeStateMachinePlayback:

AnimationNodeStateMachinePlayback
=================================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona control de reproducción para un :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Permite controlar máquinas de estado de :ref:`AnimationTree<class_AnimationTree>` creadas con :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`. Recupera con ``$AnimationTree.get("parameters/playback")``.


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback").As<AnimationNodeStateMachinePlayback>();
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_length<class_AnimationNodeStateMachinePlayback_method_get_current_length>`\ (\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_current_node<class_AnimationNodeStateMachinePlayback_method_get_current_node>`\ (\ ) |const|                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_play_position<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`\ (\ ) |const|                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_length<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`\ (\ ) |const|                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_fading_from_node<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`\ (\ ) |const|                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_play_position<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_length<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_position<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`\ (\ ) |const|                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_travel_path<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`\ (\ ) |const|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_playing<class_AnimationNodeStateMachinePlayback_method_is_playing>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`next<class_AnimationNodeStateMachinePlayback_method_next>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`start<class_AnimationNodeStateMachinePlayback_method_start>`\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ )                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`stop<class_AnimationNodeStateMachinePlayback_method_stop>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`travel<class_AnimationNodeStateMachinePlayback_method_travel>`\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AnimationNodeStateMachinePlayback_signal_state_finished:

.. rst-class:: classref-signal

**state_finished**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_finished>`

Emitida cuando el ``state`` finaliza la reproducción. Si ``state`` es una máquina de estados configurada en modo agrupado, sus señales se transmiten con su nombre como prefijo.

Si hay un fundido cruzado, se disparará cuando la influencia de la animación de :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>` ya no esté presente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_signal_state_started:

.. rst-class:: classref-signal

**state_started**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_started>`

Emitida cuando el ``state`` inicia la reproducción. Si ``state`` es una máquina de estados configurada en modo agrupado, sus señales se transmiten con su nombre como prefijo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationNodeStateMachinePlayback_method_get_current_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_length>`

Devuelve la duración del estado actual.

\ **Nota:** Es posible que cualquier :ref:`AnimationRootNode<class_AnimationRootNode>` pueda ser tanto un nodo como una animación. Esto significa que puede haber múltiples animaciones dentro de un único estado. La duración de la animación que tiene prioridad depende de los nodos conectados en su interior. Además, si una transición no se reinicia, se devolverá la duración restante en ese punto.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_current_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_node>`

Devuelve el estado de animación que se está reproduciendo actualmente.

\ **Nota:** Al usar un fundido cruzado, el estado actual cambia al siguiente estado inmediatamente después de que comience el fundido cruzado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`

Devuelve la posición de reproducción dentro del estado de animación actual.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`

Devuelve la duración del estado de reproducción del nodo desde :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`. Devuelve ``0`` si no se produce ningún desvanecimiento de animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_fading_from_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`

Devuelve el estado inicial de la animación que se está desvaneciendo actualmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`

Devuelve la posición de reproducción del nodo desde :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`. Devuelve ``0`` si no se produce ningún desvanecimiento de animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`

Devuelve la duración de la animación de fade (desvanecimiento) actual. Devuelve ``0`` si no se está produciendo ningún fade (desvanecimiento) de animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`

Devuelve la posición de reproducción de la animación de fade (desvanecimiento) actual. Devuelve ``0`` si no se está produciendo ningún fade (desvanecimiento) de animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_travel_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_travel_path**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`

Devuelve la ruta de viaje actual calculada internamente por el algorithmo A\*.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_is_playing>`

Devuelve ``true`` si una animación esta reproduciendose.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_next:

.. rst-class:: classref-method

|void| **next**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_next>`

Si hay una siguiente ruta por recorrido (travel) o avance automático, transiciona inmediatamente del estado actual al siguiente estado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_start>`

Comienza a reproducir la animación dada.

Si ``reset`` es ``true``, la animación se reproduce desde el principio.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_stop>`

Para la animación en ejecucion.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_travel:

.. rst-class:: classref-method

|void| **travel**\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_travel>`

Transiciona del estado actual a otro, siguiendo la ruta más corta.

Si la ruta no conecta desde el estado actual, la animación se reproducirá después de que el estado se teletransporte.

Si ``reset_on_teleport`` es ``true``, la animación se reproduce desde el principio cuando el recorrido causa una teletransportación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
