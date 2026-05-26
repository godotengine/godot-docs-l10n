:github_url: hide

.. _class_CharacterBody3D:

CharacterBody3D
===============

**Hereda:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Cuerpo de physics 3D especializado para personajes movidos por script.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CharacterBody3D** es una clase especializada para cuerpos físicos destinados a ser controlados por el usuario. No se ven afectados por la física en absoluto, pero afectan a otros cuerpos físicos en su trayectoria. Se utilizan principalmente para proporcionar una API de alto nivel para mover objetos con detección de paredes y pendientes (método :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`), además de la detección de colisiones general proporcionada por :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`. Esto los hace útiles para cuerpos físicos altamente configurables que deben moverse de formas específicas y colisionar con el mundo, como suele ser el caso de los personajes controlados por el usuario.

Para objetos de juego que no requieren un movimiento complejo o detección de colisiones, como plataformas móviles, :ref:`AnimatableBody3D<class_AnimatableBody3D>` es más sencillo de configurar.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Solución de problemas de física <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`Personaje cinemático (2D) <../tutorials/physics/kinematic_character_2d>`

- `Demo de Personaje Cinemático en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_constant_speed<class_CharacterBody3D_property_floor_constant_speed>`   | ``false``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>`             | ``0.7853982``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>`         | ``0.1``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_stop_on_slope<class_CharacterBody3D_property_floor_stop_on_slope>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`max_slides<class_CharacterBody3D_property_max_slides>`                       | ``6``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`           | :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`                     | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_floor_layers<class_CharacterBody3D_property_platform_floor_layers>` | ``4294967295``       |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` | :ref:`platform_on_leave<class_CharacterBody3D_property_platform_on_leave>`         | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_wall_layers<class_CharacterBody3D_property_platform_wall_layers>`   | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`safe_margin<class_CharacterBody3D_property_safe_margin>`                     | ``0.001``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`slide_on_ceiling<class_CharacterBody3D_property_slide_on_ceiling>`           | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`up_direction<class_CharacterBody3D_property_up_direction>`                   | ``Vector3(0, 1, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`velocity<class_CharacterBody3D_property_velocity>`                           | ``Vector3(0, 0, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`wall_min_slide_angle<class_CharacterBody3D_property_wall_min_slide_angle>`   | ``0.2617994``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`apply_floor_snap<class_CharacterBody3D_method_apply_floor_snap>`\ (\ )                                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_floor_angle<class_CharacterBody3D_method_get_floor_angle>`\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_floor_normal<class_CharacterBody3D_method_get_floor_normal>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_last_motion<class_CharacterBody3D_method_get_last_motion>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_last_slide_collision<class_CharacterBody3D_method_get_last_slide_collision>`\ (\ )                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_angular_velocity<class_CharacterBody3D_method_get_platform_angular_velocity>`\ (\ ) |const|                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_velocity<class_CharacterBody3D_method_get_platform_velocity>`\ (\ ) |const|                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_position_delta<class_CharacterBody3D_method_get_position_delta>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_real_velocity<class_CharacterBody3D_method_get_real_velocity>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_slide_collision<class_CharacterBody3D_method_get_slide_collision>`\ (\ slide_idx\: :ref:`int<class_int>`\ )                               |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_slide_collision_count<class_CharacterBody3D_method_get_slide_collision_count>`\ (\ ) |const|                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_wall_normal<class_CharacterBody3D_method_get_wall_normal>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling<class_CharacterBody3D_method_is_on_ceiling>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling_only<class_CharacterBody3D_method_is_on_ceiling_only>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor<class_CharacterBody3D_method_is_on_floor>`\ (\ ) |const|                                                                          |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor_only<class_CharacterBody3D_method_is_on_floor_only>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall<class_CharacterBody3D_method_is_on_wall>`\ (\ ) |const|                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall_only<class_CharacterBody3D_method_is_on_wall_only>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`move_and_slide<class_CharacterBody3D_method_move_and_slide>`\ (\ )                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CharacterBody3D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody3D_MotionMode>`

.. _class_CharacterBody3D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

Se aplica cuando las nociones de paredes, techo y suelo son relevantes. En este modo, el movimiento del cuerpo reaccionará a las pendientes (aceleración/desaceleración). Este modo es adecuado para juegos basados en el suelo, como los de plataformas.

.. _class_CharacterBody3D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

Se aplica cuando no existen las nociones de suelo o techo. Todas las colisiones se reportarán como ``on_wall``. En este modo, al deslizarse, la velocidad será siempre constante. Este modo es adecuado para juegos sin suelo, como los juegos espaciales.

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody3D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody3D_PlatformOnLeave>`

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

Añade la velocidad de la última plataforma a :ref:`velocity<class_CharacterBody3D_property_velocity>` al abandonar una plataforma móvil.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

Añade la velocidad de la última plataforma a :ref:`velocity<class_CharacterBody3D_property_velocity>` al abandonar una plataforma móvil, pero se ignora cualquier motion hacia abajo. Es útil para mantener la altura total del salto incluso cuando la plataforma se mueve hacia abajo.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

No hacer nada al salir de una plataforma.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CharacterBody3D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

Si es ``true``, el cuerpo solo podrá moverse por el suelo. Esta opción impide caminar por las paredes, aunque permite deslizarse hacia abajo por ellas.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody3D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

Si es ``false`` (por defecto), el cuerpo se moverá más rápido en pendientes descendentes y más lento en pendientes ascendentes.

Si es ``true``, el cuerpo siempre se moverá a la misma velocidad en el suelo, independientemente de la pendiente. Ten en cuenta que debes usar :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>` para seguir a lo largo de una pendiente descendente a una velocidad constante.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody3D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

Ángulo máximo (en radianes) en el que una pendiente se sigue considerando un suelo (o un techo), en lugar de una pared, al llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. El valor predeterminado equivale a 45 grados.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``0.1`` :ref:`🔗<class_CharacterBody3D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

Establece una distancia de snap. Cuando se establece en un value distinto de ``0.0``, el cuerpo se mantiene attached a las pendientes al llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. El vector de snap se determina por la distancia dada en la dirección opuesta a :ref:`up_direction<class_CharacterBody3D_property_up_direction>`.

Mientras el vector de snap esté en contacto con el suelo y el cuerpo se mueva contra :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, el cuerpo permanecerá attached a la superficie. El snap no se aplica si el cuerpo se mueve a lo largo de :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, lo que significa que contiene velocidad de ascenso vertical, por lo que podrá despegarse del suelo al saltar o cuando el cuerpo sea empujado hacia arriba por algo. Si deseas aplicar un snap sin tener en cuenta la velocidad, usa :ref:`apply_floor_snap()<class_CharacterBody3D_method_apply_floor_snap>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

Si es ``true``, el cuerpo no se deslizará por las pendientes al llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` cuando esté quieto.

Si es ``false``, el cuerpo se deslizará por las pendientes del suelo cuando :ref:`velocity<class_CharacterBody3D_property_velocity>` aplique una fuerza hacia abajo.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``6`` :ref:`🔗<class_CharacterBody3D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Maximum number of times the body can change direction before it stops when calling :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Must be greater than zero.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody3D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **get_motion_mode**\ (\ )

Sets the motion mode which defines the behavior of :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody3D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

Capas de colisión que se incluirán para detectar cuerpos en el suelo que actuarán como plataformas móviles seguidas por el **CharacterBody3D**. Por defecto, se detectan todos los cuerpos en el suelo y propagan su velocidad.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Establece el comportamiento a aplicar al abandonar una plataforma móvil. Por defecto, para ser físicamente preciso, cuando abandonas la última plataforma se aplica su velocidad.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

Capas de colisión que se incluirán para detectar cuerpos en las paredes que actuarán como plataformas móviles seguidas por el **CharacterBody3D**. Por defecto, se ignoran todos los cuerpos en las paredes.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.001`` :ref:`🔗<class_CharacterBody3D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

Margen adicional utilizado para la recuperación de colisiones al llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

Si el cuerpo está al menos a esta distancia de otro cuerpo, se considerará que están colisionando y será empujado antes de realizar el motion real.

Un value más alto significa que es más flexible para detectar colisiones, lo que ayuda a detectar paredes y suelos de forma consistente.

Un value más bajo obliga al algoritmo de colisión a utilizar una detección más exacta, por lo que puede usarse en casos que requieran precisión específicamente, por ejemplo, a una escala muy baja para evitar vibraciones visibles, o para lograr estabilidad con una pila de cuerpos de personaje.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody3D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

If ``true``, during a jump against the ceiling, the body will slide, if ``false`` it will be stopped and will fall vertically.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **up_direction** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_CharacterBody3D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_up_direction**\ (\ )

Vector que apunta hacia arriba, utilizado para determinar qué es una pared y qué es un suelo (o un techo) al llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Por defecto es :ref:`Vector3.UP<class_Vector3_constant_UP>`. Dado que el vector se normalizará, no puede ser igual a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`; si deseas que todas las colisiones se reporten como paredes, considera usar :ref:`MOTION_MODE_FLOATING<class_CharacterBody3D_constant_MOTION_MODE_FLOATING>` como :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_CharacterBody3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Vector de velocidad actual (normalmente en metros por segundo), utilizado y modificado durante las llamadas a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

\ **Nota:** Un error común es establecer esta propiedad con la velocidad deseada multiplicada por ``delta``, lo que produce un vector de movimiento (normalmente en metros).

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody3D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Ángulo mínimo (en radianes) en el que el cuerpo tiene permitido deslizarse cuando encuentra una pared. El valor por defecto es igual a 15 grados. Cuando :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>` es :ref:`MOTION_MODE_GROUNDED<class_CharacterBody3D_constant_MOTION_MODE_GROUNDED>`, solo afecta al movimiento si :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>` es ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CharacterBody3D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_apply_floor_snap>`

Permite aplicar manualmente un ajuste al suelo sin importar la velocidad del cuerpo. Esta función no hace nada cuando :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_angle>`

Returns the floor's collision angle at the last collision point according to ``up_direction``, which is :ref:`Vector3.UP<class_Vector3_constant_UP>` by default. This value is always positive and only valid after calling :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` and when :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` returns ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_normal>`

Devuelve la normal de colisión del suelo en el último punto de colisión. Solo es válido después de llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` y cuando :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` devuelve ``true``.

\ **Advertencia:** La normal de colisión no siempre es la misma que la normal de la superficie.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_last_motion>`

Devuelve el último movimiento aplicado al **CharacterBody3D** durante la última llamada a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. El movimiento puede dividirse en múltiples desplazamientos cuando ocurre un deslizamiento, y este método devuelve el último de ellos, lo cual es útil para obtener la dirección actual del movimiento.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_get_last_slide_collision>`

Devuelve un :ref:`KinematicCollision3D<class_KinematicCollision3D>` si ocurrió una colisión. El valor devuelto contiene información sobre la colisión más reciente que ocurrió durante la última llamada a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Devuelve ``null`` si no ocurrió ninguna colisión. Consulte también :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_angular_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_angular_velocity>`

Devuelve la velocidad angular de la plataforma en el último punto de colisión. Solo es válido tras llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_velocity>`

Devuelve la velocidad lineal de la plataforma en el último punto de colisión. Solo es válido después de llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_position_delta>`

Devuelve el recorrido (posición delta) que se produjo durante la última llamada a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_real_velocity>`

Devuelve la velocidad real actual desde la última llamada a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Por ejemplo, al subir una pendiente, te moverás en diagonal aunque la velocidad sea horizontal. Este método devuelve el movimiento diagonal, a diferencia de :ref:`velocity<class_CharacterBody3D_property_velocity>` que devuelve la velocidad solicitada.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_slide_collision**\ (\ slide_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CharacterBody3D_method_get_slide_collision>`

Returns a :ref:`KinematicCollision3D<class_KinematicCollision3D>`, which contains information about a collision that occurred during the last call to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Since the body can collide several times in a single call to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`, you must specify the index of the collision in the range 0 to (:ref:`get_slide_collision_count()<class_CharacterBody3D_method_get_slide_collision_count>` - 1). See also :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_slide_collision_count**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_slide_collision_count>`

Devuelve el número de veces que el cuerpo chocó y cambió de dirección durante la última llamada a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_wall_normal>`

Devuelve la normal de la colisión de la pared en el último punto de colisión. Solo es válido después de llamar a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` y cuando :ref:`is_on_wall()<class_CharacterBody3D_method_is_on_wall>` devuelve ``true``.

\ **Advertencia:** La normal de colisión no siempre es la misma que la normal de la superficie.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling>`

Devuelve ``true`` si el cuerpo colisionó con el techo en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «techo» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling_only>`

Devuelve ``true`` si el cuerpo colisionó solo con el techo en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «techo» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor>`

Devuelve ``true`` si el cuerpo colisionó con el suelo en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «suelo» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor_only>`

Devuelve ``true`` si el cuerpo colisionó solo con el suelo en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «suelo» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall>`

Devuelve ``true`` si el cuerpo colisionó con una pared en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «pared» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall_only>`

Devuelve ``true`` si el cuerpo colisionó solo con una pared en la última llamada de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. De lo contrario, devuelve ``false``. Se utilizan :ref:`up_direction<class_CharacterBody3D_property_up_direction>` y :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` para determinar si una superficie es «pared» o no.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_move_and_slide>`

Mueve el cuerpo basándose en :ref:`velocity<class_CharacterBody3D_property_velocity>`. Si el cuerpo colisiona con otro, se deslizará a lo largo del otro cuerpo en lugar de detenerse inmediatamente. Si el otro cuerpo es un **CharacterBody3D** o un :ref:`RigidBody3D<class_RigidBody3D>`, también se verá afectado por el movimiento del otro cuerpo. Puedes usar esto para crear plataformas móviles y rotatorias, o para hacer que los nodos empujen a otros nodos.

Este método debe utilizarse en :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (o en un método llamado por :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), ya que utiliza automáticamente el valor ``delta`` del paso de física en los cálculos. De lo contrario, la simulación se ejecutará a una velocidad incorrecta.

Modifica :ref:`velocity<class_CharacterBody3D_property_velocity>` si ocurrió una colisión con deslizamiento. Para obtener la colisión más reciente, llama a :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`. Para obtener información más detallada sobre las colisiones ocurridas, utiliza :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

Cuando el cuerpo toca una plataforma móvil, la velocidad de la plataforma se añade automáticamente al movimiento del cuerpo. Si ocurre una colisión debido al movimiento de la plataforma, esta será siempre la primera en las colisiones por deslizamiento.

Devuelve ``true`` si el cuerpo colisionó; de lo contrario, devuelve ``false``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
