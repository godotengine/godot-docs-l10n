:github_url: hide

.. _class_CharacterBody3D:

CharacterBody3D
===============

**Eredita:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corpo di fisica 3D specializzato per personaggi mossi da script.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CharacterBody3D** è una classe specializzata per i corpi di fisica che sono pensati per essere controllati dall'utente. Non sono influenzati dalla fisica, ma influenzano altri corpi di fisica sul loro percorso. Sono usati principalmente per fornire API di alto livello per spostare oggetti con rilevamento di pareti e pendenze (tramite :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`) oltre al rilevamento generale delle collisioni fornito da :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`. Ciò lo rende utile per corpi di fisica altamente configurabili che devono muoversi in modi specifici e scontrarsi con il mondo, come spesso accade con i personaggi controllati dall'utente.

Per gli oggetti di gioco che non richiedono un movimento complesso o un rilevamento delle collisioni, come le piattaforme mobili, :ref:`AnimatableBody3D<class_AnimatableBody3D>` è più semplice da configurare.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- :doc:`Risolvere i problemi di fisica <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`Personaggio cinematico (2D) <../tutorials/physics/kinematic_character_2d>`

- `Demo di personaggio cinematico 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Enumerazioni
------------------------

.. _enum_CharacterBody3D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody3D_MotionMode>`

.. _class_CharacterBody3D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

Da applicare quando sono rilevanti le nozioni di muri, soffitto e pavimento. In questa modalità il movimento del corpo reagirà alle pendenze (accelerazione/rallentamento). Questa modalità è adatta per giochi come i piattaforme.

.. _class_CharacterBody3D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

Da applicare quando non c'è nozione di pavimento o soffitto. Tutte le collisioni saranno segnalate come ``on_wall``. In questa modalità, quando scivoli, la velocità sarà sempre costante. Questa modalità è adatta per giochi senza terreno come i giochi spaziali.

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody3D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody3D_PlatformOnLeave>`

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

Aggiunge la velocità dell'ultima piattaforma alla :ref:`velocity<class_CharacterBody3D_property_velocity>` quando si abbandona una piattaforma in movimento.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

Aggiunge l'ultima velocità della piattaforma alla :ref:`velocity<class_CharacterBody3D_property_velocity>` quando si lascia una piattaforma in movimento, ma qualsiasi movimento verso il basso viene ignorato. È utile per mantenere l'altezza dei salti intatta anche quando la piattaforma si muove verso il basso.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

Non fare nulla quando si abbandona una piattaforma.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CharacterBody3D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

Se ``true``, il corpo potrà muoversi solo sul pavimento. Questa opzione evita di poter camminare sui muri, ma permetterà di scivolare lungo di essi.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody3D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

Se ``false`` (predefinito), il corpo si muoverà più velocemente su pendenze in discesa e più lentamente su pendenze in salita.

Se ``true``, il corpo si muoverà sempre alla stessa velocità sul terreno, a prescindere dalla pendenza. Nota che bisogna usare :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>` per rimanere lungo una pendenza in discesa a velocità costante.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody3D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

Angolo massimo (in radianti) in cui una pendenza è ancora considerata un pavimento (o un soffitto), anziché un muro, quando si chiama :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Il valore predefinito corrisponde a 45 gradi.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``0.1`` :ref:`🔗<class_CharacterBody3D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

Imposta una distanza di aggancio. Se impostato su un valore diverso da ``0.0``, il corpo è mantenuto attaccato alle pendenze quando si chiama :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Il vettore di aggancio è determinato dalla distanza fornita lungo la direzione opposta di :ref:`up_direction<class_CharacterBody3D_property_up_direction>`.

Fin quando il vettore di aggancio è a contatto con il terreno e il corpo si muove contro :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, il corpo rimarrà attaccato alla superficie. L'aggancio non viene applicato se il corpo si muove lungo :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, il che significa che contiene una velocità verticale in aumento, quindi sarà in grado di staccarsi dal terreno quando salta o quando il corpo viene spinto verso l'alto da qualcosa. Se vuoi applicare un'aggancio senza tenere conto della velocità, usa :ref:`apply_floor_snap()<class_CharacterBody3D_method_apply_floor_snap>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

Se ``true``, il corpo non scivolerà sulle pendenze quando si chiama :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` e quando il corpo è fermo.

Se ``false``, il corpo scivolerà sulle pendenze sul pavimento quando :ref:`velocity<class_CharacterBody3D_property_velocity>` applica una forza verso il basso.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``6`` :ref:`🔗<class_CharacterBody3D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Numero massimo di volte in cui il corpo può cambiare direzione prima di fermarsi quando :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` viene chiamato. Deve essere maggiore di zero.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody3D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **get_motion_mode**\ (\ )

Imposta la modalità di movimento che definisce il comportamento di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody3D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

Gli strati di collisione che saranno inclusi per rilevare i corpi di pavimento che fungeranno da piattaforme mobili da seguire dal **CharacterBody3D**. Per impostazione predefinita, tutti i corpi di pavimento sono rilevati e propagano la loro velocità.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Imposta il comportamento da applicare quando si lascia una piattaforma in movimento. Come predefinito, per essere fisicamente corretti, quando si lascia una piattaforma viene applicata una velocità.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

Gli strati di collisione che saranno inclusi per rilevare i corpi di muro che fungeranno da piattaforme mobili da seguire dal **CharacterBody3D**. Per impostazione predefinita, tutti i corpi di muro sono rilevati e propagano la loro velocità.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.001`` :ref:`🔗<class_CharacterBody3D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

Margine aggiuntivo utilizzato per il recupero delle collisioni quando :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` viene chiamato.

Se il corpo è almeno così vicino a un altro corpo, li considererà in collisione e verrà spinto via prima di effettuare il movimento.

Un valore più alto significa che è più flessibile per rilevare le collisioni, il che aiuta a rilevare muri e pavimenti in modo consistente.

Un valore più basso forza l'algoritmo di collisione a utilizzare un rilevamento più esatto, quindi può essere utilizzato in casi che richiedono specificamente precisione, ad esempio a scale molto basse per evitare notevole scuotimento o per stabilità con una pila di corpi di personaggi.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody3D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

Se ``true``, durante un salto contro il soffitto, il corpo scivolerà, se ``false`` si fermerà e cadrà verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **up_direction** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_CharacterBody3D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_up_direction**\ (\ )

Vettore che punta verso l'alto, utilizzato per determinare cosa è un muro e cosa è un pavimento (o un soffitto) quando si chiama :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Il valore predefinito è :ref:`Vector3.UP<class_Vector3_constant_UP>`. Poiché il vettore sarà normalizzato, non può essere uguale a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, se desideri che tutte le collisioni siano segnalate come muri, considera di utilizzare :ref:`MOTION_MODE_FLOATING<class_CharacterBody3D_constant_MOTION_MODE_FLOATING>` come :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_CharacterBody3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Vettore di velocità attuale (tipicamente in metri al secondo), utilizzato e modificato durante le chiamate a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

\ **Nota:** Un errore comune è impostare questa proprietà sulla velocità desiderata moltiplicata per ``delta``, il che produce un vettore di movimento (tipicamente in metri).

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody3D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Angolo minimo (in radianti) a cui il corpo è permesso di scivolare quando incontra una pendenza. Il valore predefinito corrisponde a 15 gradi. Quando :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>` è :ref:`MOTION_MODE_GROUNDED<class_CharacterBody3D_constant_MOTION_MODE_GROUNDED>`, questa proprietà influisce sul movimento solo se :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>` è ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CharacterBody3D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_apply_floor_snap>`

Consente di applicare manualmente uno scatto al pavimento a prescindere dalla velocità del corpo. Questa funzione non fa nulla quando :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` restituisce ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_angle>`

Restituisce l'angolo di collisione del pavimento nell'ultimo punto di collisione in base a ``up_direction``, che è :ref:`Vector3.UP<class_Vector3_constant_UP>` per impostazione predefinita. Questo valore è sempre positivo ed è valido solo dopo aver chiamato :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` e quando :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` restituisce ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_normal>`

Restituisce la normale della collisione del pavimento all'ultimo punto di collisione. È valido solo dopo aver chiamato :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` e quando :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` restituisce ``true``.

\ **Attenzione:** La normale della collisione non è sempre la stessa della normale della superficie.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_last_motion>`

Restituisce l'ultimo movimento applicato al **CharacterBody3D** durante l'ultima chiamata a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Il movimento può essere suddiviso in più movimenti quando si verifica lo scorrimento e questo metodo restituisce l'ultimo, il che è utile per recuperare la direzione attuale del movimento.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_get_last_slide_collision>`

Restituisce un :ref:`KinematicCollision3D<class_KinematicCollision3D>` se è avvenuta una collisione. Il valore restituito contiene informazioni sull'ultima collisione avvenuta durante l'ultima chiamata a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Restituisce ``null`` se nessuna collisione è avvenuta. Vedi anche :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_angular_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_angular_velocity>`

Restituisce la velocità angolare della piattaforma nell'ultimo punto di collisione. È valido solo dopo aver chiamato :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_velocity>`

Restituisce la velocità lineare della piattaforma all'ultimo punto di collisione. È valido solo dopo aver chiamato :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_position_delta>`

Restituisce lo spostamento (delta di posizione) che si è verificato durante l'ultima chiamata a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_real_velocity>`

Restituisce la velocità reale attuale dall'ultima chiamata a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Ad esempio, quando si sale una pendenza, ci si muove in diagonale anche se la velocità è orizzontale. Questo metodo restituisce il movimento diagonale, a differenza di :ref:`velocity<class_CharacterBody3D_property_velocity>` che restituisce la velocità richiesta.

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

Restituisce il numero di volte in cui il corpo è entrato in collisione e ha cambiato direzione durante l'ultima chiamata a :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_wall_normal>`

Restituisce la normale della collisione del muro all'ultimo punto di collisione. È valido solo dopo aver chiamato :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` e quando :ref:`is_on_wall()<class_CharacterBody3D_method_is_on_wall>` restituisce ``true``.

\ **Attenzione:** La normale della collisione non è sempre la stessa della normale di superficie.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling>`

Restituisce ``true`` se il corpo è entrato in collisione con il soffitto durante l'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "soffitto" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling_only>`

Restituisce ``true`` se il corpo è entrato in collisione soltanto con il soffitto nell'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "soffitto" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor>`

Restituisce ``true`` se il corpo è entrato in collisione con il pavimento durante l'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "pavimento" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor_only>`

Restituisce ``true`` se il corpo è entrato in collisione soltanto con il pavimento durante l'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "pavimento" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall>`

Restituisce ``true`` se il corpo è entrato in collisione con un muro durante l'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "muro" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall_only>`

Restituisce ``true`` se il corpo è entrato in collisione soltanto con un muro durante l'ultima chiamata di :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Altrimenti, restituisce ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` e :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sono utilizzati per determinare se una superficie è un "muro" o meno.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_move_and_slide>`

Sposta il corpo in base a :ref:`velocity<class_CharacterBody3D_property_velocity>`. Se il corpo entra in collisione con un altro, scivolerà lungo l'altro corpo (per impostazione predefinita solo sul pavimento) invece di fermarsi immediatamente. Se l'altro corpo è un **CharacterBody3D** o :ref:`RigidBody3D<class_RigidBody3D>`, sarà anche influenzato dal movimento dell'altro corpo. È possibile usarlo per creare piattaforme mobili e rotanti o per far in modo che i nodi spingano altri nodi.

Questo metodo si dovrebbe utilizzare in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (o in un metodo chiamato da :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), poiché utilizza automaticamente il valore ``delta`` del passaggio di fisica nei calcoli. Altrimenti, la simulazione sarà eseguita a una velocità errata.

Modifica :ref:`velocity<class_CharacterBody3D_property_velocity>` se si è verificata una collisione con scorrimento. Per ottenere l'ultima chiamata di collisione :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`, per informazioni dettagliate sulle collisioni che si sono verificate, usa :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

Quando il corpo tocca una piattaforma in movimento, la velocità della piattaforma viene automaticamente aggiunta al movimento del corpo. Se si verifica una collisione a causa del movimento della piattaforma, sarà sempre la prima nelle collisioni con scorrimento.

Restituisce ``true`` se il corpo è entrato in collisione, altrimenti restituisce ``false``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
