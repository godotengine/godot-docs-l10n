:github_url: hide

.. _class_AnimationMixer:

AnimationMixer
==============

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimationPlayer<class_AnimationPlayer>`, :ref:`AnimationTree<class_AnimationTree>`

Clase base para :ref:`AnimationPlayer<class_AnimationPlayer>` y :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para :ref:`AnimationPlayer<class_AnimationPlayer>` y :ref:`AnimationTree<class_AnimationTree>` para gestionar listas de animación. También tiene propiedades y métodos generales para la reproducción y la mezcla.

Después de instanciar los datos de información de reproducción dentro de la clase extendida, la mezcla es procesada por el **AnimationMixer**.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Migración de Animaciones de Godot 4.0 a 4.3 <https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`active<class_AnimationMixer_property_active>`                                 | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                   | :ref:`audio_max_polyphony<class_AnimationMixer_property_audio_max_polyphony>`       | ``32``             |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`     | :ref:`callback_mode_method<class_AnimationMixer_property_callback_mode_method>`     | ``0``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`   | :ref:`callback_mode_process<class_AnimationMixer_property_callback_mode_process>`   | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`deterministic<class_AnimationMixer_property_deterministic>`                   | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`reset_on_save<class_AnimationMixer_property_reset_on_save>`                   | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>`           | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>`           | ``NodePath("")``   |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_node<class_AnimationMixer_property_root_node>`                           | ``NodePath("..")`` |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_post_process_key_value<class_AnimationMixer_private_method__post_process_key_value>`\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation_library<class_AnimationMixer_method_add_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ )                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_AnimationMixer_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`capture<class_AnimationMixer_method_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ )                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_caches<class_AnimationMixer_method_clear_caches>`\ (\ )                                                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation<class_AnimationMixer_method_find_animation>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation_library<class_AnimationMixer_method_find_animation_library>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationMixer_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationLibrary<class_AnimationLibrary>`                  | :ref:`get_animation_library<class_AnimationMixer_method_get_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_library_list<class_AnimationMixer_method_get_animation_library_list>`\ (\ ) |const|                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_animation_list<class_AnimationMixer_method_get_animation_list>`\ (\ ) |const|                                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position<class_AnimationMixer_method_get_root_motion_position>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position_accumulator<class_AnimationMixer_method_get_root_motion_position_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation<class_AnimationMixer_method_get_root_motion_rotation>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation_accumulator<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale<class_AnimationMixer_method_get_root_motion_scale>`\ (\ ) |const|                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale_accumulator<class_AnimationMixer_method_get_root_motion_scale_accumulator>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationMixer_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation_library<class_AnimationMixer_method_has_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation_library<class_AnimationMixer_method_remove_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation_library<class_AnimationMixer_method_rename_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AnimationMixer_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_finished>`

Notifica cuando una animación ha terminado de reproducirse.

\ **Nota:** Esta señal no se emite si una animación está en bucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_libraries_updated:

.. rst-class:: classref-signal

**animation_libraries_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_libraries_updated>`

Notifica cuando las bibliotecas de animación han cambiado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_list_changed:

.. rst-class:: classref-signal

**animation_list_changed**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_list_changed>`

Notifica cuando una lista de animación cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_started:

.. rst-class:: classref-signal

**animation_started**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_started>`

Notifica cuando una animación comienza a reproducirse.

\ **Nota:** Esta señal no se emite si una animación está en bucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_caches_cleared:

.. rst-class:: classref-signal

**caches_cleared**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_caches_cleared>`

Notifica cuando las cachés se han limpiado, ya sea automáticamente o manualmente a través del :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_applied:

.. rst-class:: classref-signal

**mixer_applied**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_applied>`

Notifica cuando el resultado de la mezcla se ha aplicado a los objetos de destino.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_updated:

.. rst-class:: classref-signal

**mixer_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_updated>`

Notifica cuando se han actualizado los procesos relacionados con la propiedad.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AnimationMixer_AnimationCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeProcess**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeProcess>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Procesa la animación durante los frames de física (véase :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`). Esto es especialmente útil cuando se animan cuerpos físicos.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Procesa la animación durante los frames de proceso (véase :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

No procesar la animación. Utiliza :ref:`advance()<class_AnimationMixer_method_advance>` para procesar la animación manualmente.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeMethod:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeMethod**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeMethod>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_DEFERRED** = ``0``

Metodos de procesos por lotes llamados durante el proceso de animación, y despues que los eventos son procesados hacer los llamados. Esto evita los errores que implican borrar nodos o modificar el AnimationPlayer mientras se está reproduciendo.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE** = ``1``

Hace llamadas a método inmediatamente cuando se alcanza en la animación.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeDiscrete:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeDiscrete**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeDiscrete>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT** = ``0``

Un valor de pista :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` tiene prioridad al mezclar valores de pista :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` y valores de pista :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE** = ``1``

Un valor de pista :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` tiene prioridad al mezclar los valores de pista :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` o :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` y los valores de pista :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`. Este es el comportamiento predeterminado para :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS** = ``2``

Trata siempre el valor de la pista :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` como :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` con :ref:`Animation.INTERPOLATION_NEAREST<class_Animation_constant_INTERPOLATION_NEAREST>`. Este es el comportamiento predeterminado para :ref:`AnimationTree<class_AnimationTree>`.

Si una pista de valores tiene valores clave de tipo no interpolables, se convierte internamente para utilizar :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE>` con :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

Lista de tipos no interpolables:

- :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 

- :ref:`@GlobalScope.TYPE_NODE_PATH<class_@GlobalScope_constant_TYPE_NODE_PATH>`\ 

- :ref:`@GlobalScope.TYPE_RID<class_@GlobalScope_constant_TYPE_RID>`\ 

- :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ 

- :ref:`@GlobalScope.TYPE_CALLABLE<class_@GlobalScope_constant_TYPE_CALLABLE>`\ 

- :ref:`@GlobalScope.TYPE_SIGNAL<class_@GlobalScope_constant_TYPE_SIGNAL>`\ 

- :ref:`@GlobalScope.TYPE_DICTIONARY<class_@GlobalScope_constant_TYPE_DICTIONARY>`\ 

- :ref:`@GlobalScope.TYPE_PACKED_BYTE_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_BYTE_ARRAY>`\ 

\ :ref:`@GlobalScope.TYPE_BOOL<class_@GlobalScope_constant_TYPE_BOOL>` y :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>` se tratan como :ref:`@GlobalScope.TYPE_FLOAT<class_@GlobalScope_constant_TYPE_FLOAT>` durante la combinación y se redondean cuando se recupera el resultado.

Lo mismo ocurre con las matrices y vectores que las contienen, como :ref:`@GlobalScope.TYPE_PACKED_INT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_INT32_ARRAY>` o :ref:`@GlobalScope.TYPE_VECTOR2I<class_@GlobalScope_constant_TYPE_VECTOR2I>`, se tratan como :ref:`@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_FLOAT32_ARRAY>` o :ref:`@GlobalScope.TYPE_VECTOR2<class_@GlobalScope_constant_TYPE_VECTOR2>`. Ten en cuenta también que, en el caso de las matrices, el tamaño también se interpola.

\ :ref:`@GlobalScope.TYPE_STRING<class_@GlobalScope_constant_TYPE_STRING>` y :ref:`@GlobalScope.TYPE_STRING_NAME<class_@GlobalScope_constant_TYPE_STRING_NAME>` se interpolan entre códigos de caracteres y longitudes, pero ten en cuenta que hay una diferencia en el algoritmo entre la interpolación entre claves y la interpolación por mezcla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationMixer_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_AnimationMixer_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si es ``true``, el **AnimationMixer** estará procesando.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_audio_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_max_polyphony** = ``32`` :ref:`🔗<class_AnimationMixer_property_audio_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_audio_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_max_polyphony**\ (\ )

El número de sonidos simultáneos posibles para cada uno de los AudioStreamPlayers asignados.

Por ejemplo, si este valor es ``32`` y la animación tiene dos pistas de audio, los dos :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` asignados pueden reproducir simultáneamente hasta ``32`` voces cada uno.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_discrete:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **callback_mode_discrete** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_discrete>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_discrete**\ (\ value\: :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ )
- :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **get_callback_mode_discrete**\ (\ )

Normalmente, las pistas se pueden configurar en :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` para actualizarse con poca frecuencia, normalmente cuando se utiliza la interpolación más cercana.

Sin embargo, al mezclar con :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` se tienen en cuenta varios resultados. El :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` lo especifica explícitamente. Consulte también :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`.

Para que los resultados mezclados se vean bien, se recomienda establecerlo en :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS>` para actualizar cada fotograma durante la mezcla. Existen otros valores por motivos de compatibilidad y están bien si no hay mezcla, pero si no es así, pueden producir artefactos.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_method:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **callback_mode_method** = ``0`` :ref:`🔗<class_AnimationMixer_property_callback_mode_method>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_method**\ (\ value\: :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`\ )
- :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **get_callback_mode_method**\ (\ )

El modo de llamada a utilizar para las pistas "Call Method".

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_process:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **callback_mode_process** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_process**\ (\ value\: :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`\ )
- :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **get_callback_mode_process**\ (\ )

La notificación de proceso en la que se actualizan las animaciones.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_AnimationMixer_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Si es ``true``, la mezcla utiliza el algoritmo determinista. El peso total no se normaliza y el resultado se acumula con un valor inicial (``0`` o una animación ``"RESET"`` si está presente).

Esto significa que si la cantidad total de mezcla es ``0.0``, el resultado es igual a la animación ``"RESET"``.

Si el número de pistas entre las animaciones mezcladas es diferente, la animación con la pista que falta se trata como si tuviera el valor inicial.

Si es ``false``, la mezcla no utiliza el algoritmo determinista. El peso total se normaliza y siempre es ``1.0``. Si el número de pistas entre las animaciones mezcladas es diferente, no se hace nada con la animación a la que le falta una pista.

\ **Nota:** En :ref:`AnimationTree<class_AnimationTree>`, la mezcla con :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>` o el peso mayor que ``1.0`` puede producir resultados inesperados.

Por ejemplo, si :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` mezcla dos nodos con la cantidad ``1.0``, entonces el peso total es ``2.0``, pero se normalizará para que la cantidad total sea ``1.0`` y el resultado será igual a :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>` con la cantidad ``0.5``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_reset_on_save:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_on_save** = ``true`` :ref:`🔗<class_AnimationMixer_property_reset_on_save>`

.. rst-class:: classref-property-setget

- |void| **set_reset_on_save_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset_on_save_enabled**\ (\ )

Esto lo utiliza el editor. Si se establece en ``true``, la escena se guardará con los efectos de la animación de reinicio (la animación con la clave ``"RESET"``) aplicada como si se hubiera buscado hasta el tiempo 0, y el editor conservará los valores que la escena tenía antes de guardar.

Esto hace que sea más conveniente previsualizar y editar animaciones en el editor, ya que los cambios en la escena no se guardarán mientras estén establecidos en la animación de reinicio.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **root_motion_local** = ``false`` :ref:`🔗<class_AnimationMixer_property_root_motion_local>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_root_motion_local**\ (\ )

Si es ``true``, el valor de :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>` se extrae como un valor de traslación local antes de la mezcla. En otras palabras, se trata como si la traslación se hiciera después de la rotación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_track:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_motion_track** = ``NodePath("")`` :ref:`🔗<class_AnimationMixer_property_root_motion_track>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_track**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_motion_track**\ (\ )

La ruta de la pista de Animación utilizada para el movimiento raíz. Las rutas deben ser rutas validas, escena-árbol hacia un nodo, y deben especificarse empezando por el nodo padre del nodo que reproducirá la animación. :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` utiliza el mismo formato que :ref:`Animation.track_set_path()<class_Animation_method_track_set_path>`, pero ten en cuenta que un hueso debe ser especificado.

Si la pista tiene tipo :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, o :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>` la transformación se cancelará visualmente, y la animación aparentará estar estática. Consulte :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`, :ref:`get_root_motion_rotation()<class_AnimationMixer_method_get_root_motion_rotation>`, :ref:`get_root_motion_scale()<class_AnimationMixer_method_get_root_motion_scale>`, y :ref:`RootMotionView<class_RootMotionView>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_node** = ``NodePath("..")`` :ref:`🔗<class_AnimationMixer_property_root_node>`

.. rst-class:: classref-property-setget

- |void| **set_root_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_node**\ (\ )

El nodo desde el cual viajarán las referencias de la ruta del nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationMixer_private_method__post_process_key_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_post_process_key_value**\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AnimationMixer_private_method__post_process_key_value>`

Una función virtual para procesar después de obtener una clave durante la reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_add_animation_library:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ ) :ref:`🔗<class_AnimationMixer_method_add_animation_library>`

Añade ``library`` al reproductor de animación, bajo la clave ``name``.

AnimationMixer tiene una biblioteca global por defecto con una string vacía como clave. Para añadir una animación a la biblioteca global:


.. tabs::

 .. code-tab:: gdscript

    var global_library = mixer.get_animation_library("")
    global_library.add_animation("animation_name", animation_resource)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationMixer_method_advance>`

Avanza manualmente las animaciones en el tiempo especificado (en segundos).

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_capture:

.. rst-class:: classref-method

|void| **capture**\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ ) :ref:`🔗<class_AnimationMixer_method_capture>`

Si la pista de animación especificada por ``name`` tiene una opción :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>`, almacena los valores actuales de los objetos indicados por la ruta de la pista como una caché. Si ya existe una caché capturada, la caché anterior se descarta.

Después de esto, se interpolará con el resultado actual de la mezcla de animación durante el proceso de reproducción durante el tiempo especificado por ``duration``, funcionando como un fundido cruzado.

Puedes especificar ``trans_type`` como la curva para la interpolación. Para obtener mejores resultados, puede ser apropiado especificar :ref:`Tween.TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>` para los casos en que la primera clave de la pista comience con un valor distinto de cero o donde el valor de la clave no cambie, y :ref:`Tween.TRANS_QUAD<class_Tween_constant_TRANS_QUAD>` para los casos en que el valor de la clave cambie linealmente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_clear_caches:

.. rst-class:: classref-method

|void| **clear_caches**\ (\ ) :ref:`🔗<class_AnimationMixer_method_clear_caches>`

**AnimationMixer** guarda en caché los nodos animados. Es posible que no note si un nodo desaparece; :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` fuerza a actualizar la caché de nuevo.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation>`

Devuelve la clave de ``animation`` o un :ref:`StringName<class_StringName>` vacío si no se encuentra.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation_library:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation_library**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation_library>`

Devuelve la clave de la :ref:`AnimationLibrary<class_AnimationLibrary>` que contiene ``animation`` o un :ref:`StringName<class_StringName>` vacío si no se encuentra.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation>`

Devuelve la :ref:`Animation<class_Animation>` con la clave ``name``. Si la animación no existe, se devuelve ``null`` y se registra un error.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library:

.. rst-class:: classref-method

:ref:`AnimationLibrary<class_AnimationLibrary>` **get_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library>`

Devuelve la primera :ref:`AnimationLibrary<class_AnimationLibrary>` con la clave ``name`` o ``null`` si no se encuentra.

Para obtener la biblioteca de animación global de **AnimationMixer**, utiliza ``get_animation_library("")``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_library_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library_list>`

Devuelve la lista de claves de biblioteca almacenadas.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_list>`

Devuelve la lista de claves de animación almacenadas.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position>`

Recupera el delta de movimiento de la posición con la :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Vector3<class_Vector3>` que puede ser usado en otro lugar.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` no es una ruta a una pista de tipo :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, devuelve ``Vector3(0, 0, 0)``.

Véase también :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` y :ref:`RootMotionView<class_RootMotionView>`.

El ejemplo más básico es aplicar la posición a un :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_rotation

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_rotation = get_quaternion()
            state_machine.travel("Animate")
        var velocity = current_rotation * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Al usar esto en combinación con :ref:`get_root_motion_rotation_accumulator()<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`, puedes aplicar la posición del movimiento de raíz de forma más correcta para tener en cuenta la rotación del nodo.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Si :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>` es ``true``, devuelve el valor de traslación pre-multiplicado con la rotación invertida.

En este caso, el código puede escribirse de la siguiente manera:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = get_quaternion() * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position_accumulator>`

Recupera el valor combinado de las pistas de posición con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Vector3<class_Vector3>` que se puede utilizar en otros lugares.

Esto resulta útil en los casos en los que se desea respetar los valores clave iniciales de la animación.

Por ejemplo, si se reproduce una animación con una sola clave ``Vector3(0, 0, 0)`` en el fotograma anterior y luego se reproduce una animación con una sola clave ``Vector3(1, 0, 1)`` en el fotograma siguiente, la diferencia se puede calcular de la siguiente manera:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_position_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_position_accumulator = animation_tree.get_root_motion_position_accumulator()
        var difference = current_root_motion_position_accumulator - prev_root_motion_position_accumulator
        prev_root_motion_position_accumulator = current_root_motion_position_accumulator
        transform.origin += difference



Sin embargo, si la animación se repite, puede producirse un cambio discreto no deseado, por lo que solo resulta útil para algunos casos de uso sencillos.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation>`

Recupera el delta de movimiento de rotación con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Quaternion<class_Quaternion>` que puede ser usado en otro lugar.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` no es una ruta a una pista de tipo :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, devuelve ``Quaternion(0, 0, 0, 1)``.

Véase también :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` y :ref:`RootMotionView<class_RootMotionView>`.

El ejemplo más básico es aplicar la rotación a :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation_accumulator:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`

Recupera el valor combinado de las pistas de rotación con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Quaternion<class_Quaternion>` que se puede utilizar en otros lugares.

Esto es necesario para aplicar correctamente la posición del movimiento raíz, teniendo en cuenta la rotación. Véase también :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`.

Además, esto es útil en los casos en los que se desea respetar los valores clave iniciales de la animación.

Por ejemplo, si se reproduce una animación con una sola clave ``Quaternion(0, 0, 0, 1)`` en el fotograma anterior y luego se reproduce una animación con una sola clave ``Quaternion(0, 0.707, 0, 0.707)`` en el fotograma siguiente, la diferencia se puede calcular de la siguiente manera:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_rotation_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_rotation_accumulator = animation_tree.get_root_motion_rotation_accumulator()
        var difference = prev_root_motion_rotation_accumulator.inverse() * current_root_motion_rotation_accumulator
        prev_root_motion_rotation_accumulator = current_root_motion_rotation_accumulator
        transform.basis *=  Basis(difference)



Sin embargo, si la animación se repite, puede producirse un cambio discreto no deseado, por lo que solo es útil para algunos casos de uso sencillos.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale>`

Recupera el delta de movimiento de la escala con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Vector3<class_Vector3>` que puede ser usado en otro lugar.

Si :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` no es una ruta a una pista de tipo :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>`, devuelve ``Vector3(0, 0, 0)``.

Véase también :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` y :ref:`RootMotionView<class_RootMotionView>`.

El ejemplo más básico es aplicar la escala a :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_scale = Vector3(1, 1, 1)
    var scale_accum = Vector3(1, 1, 1)

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_scale = get_scale()
            scale_accum = Vector3(1, 1, 1)
            state_machine.travel("Animate")
        scale_accum += animation_tree.get_root_motion_scale()
        set_scale(current_scale * scale_accum)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale_accumulator>`

Recupera el valor combinado de las pistas de escala con :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` como un :ref:`Vector3<class_Vector3>` que se puede utilizar en otros lugares.

Por ejemplo, si se reproduce una animación con una sola clave ``Vector3(1, 1, 1)`` en el fotograma anterior y, a continuación, se reproduce una animación con una sola clave ``Vector3(2, 2, 2)`` en el siguiente fotograma, la diferencia se puede calcular de la siguiente manera:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_scale_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_scale_accumulator = animation_tree.get_root_motion_scale_accumulator()
        var difference = current_root_motion_scale_accumulator - prev_root_motion_scale_accumulator
        prev_root_motion_scale_accumulator = current_root_motion_scale_accumulator
        transform.basis = transform.basis.scaled(difference)



Sin embargo, si la animación se repite, puede producirse un cambio discreto no deseado, por lo que solo resulta útil para algunos casos de uso sencillos.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation>`

Devuelve ``true`` si el **AnimationMixer** almacena una :ref:`Animation<class_Animation>` con la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation_library:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation_library>`

Devuelve ``true`` si el **AnimationMixer** almacena una :ref:`AnimationLibrary<class_AnimationLibrary>` con la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_remove_animation_library:

.. rst-class:: classref-method

|void| **remove_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_remove_animation_library>`

Elimina la :ref:`AnimationLibrary<class_AnimationLibrary>` asociada con la clave ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_rename_animation_library:

.. rst-class:: classref-method

|void| **rename_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_rename_animation_library>`

Mueve la :ref:`AnimationLibrary<class_AnimationLibrary>` asociada con la clave ``name`` a la clave ``newname``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
