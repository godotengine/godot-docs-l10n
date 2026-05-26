:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un emettitore di particelle 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Nodo di particelle 3D utilizzato per creare una varietà di sistemi di particelle ed effetti. **GPUParticles3D** è dotato di un emettitore che genera un certo numero di particelle a una determinata frequenza.

Usa :ref:`process_material<class_GPUParticles3D_property_process_material>` per aggiungere un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` per configurare l'aspetto e il comportamento delle particelle. In alternativa, è possibile aggiungere uno :ref:`ShaderMaterial<class_ShaderMaterial>` che sarà applicato a tutte le particelle.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Sistemi di particelle (3D) <../tutorials/3d/particles/index>`

- :doc:`Controllo di migliaia di pesci con le particelle <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`amount<class_GPUParticles3D_property_amount>`                                                 | ``8``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`                                     | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`collision_base_size<class_GPUParticles3D_property_collision_base_size>`                       | ``0.01``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`                                                | :ref:`draw_order<class_GPUParticles3D_property_draw_order>`                                         | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_1<class_GPUParticles3D_property_draw_pass_1>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_2<class_GPUParticles3D_property_draw_pass_2>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_3<class_GPUParticles3D_property_draw_pass_3>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_4<class_GPUParticles3D_property_draw_pass_4>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`draw_passes<class_GPUParticles3D_property_draw_passes>`                                       | ``1``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Skin<class_Skin>`                                                                        | :ref:`draw_skin<class_GPUParticles3D_property_draw_skin>`                                           |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`emitting<class_GPUParticles3D_property_emitting>`                                             | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`explosiveness<class_GPUParticles3D_property_explosiveness>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>`                                           | ``30``                        |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`fract_delta<class_GPUParticles3D_property_fract_delta>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`interp_to_end<class_GPUParticles3D_property_interp_to_end>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`interpolate<class_GPUParticles3D_property_interpolate>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`lifetime<class_GPUParticles3D_property_lifetime>`                                             | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`local_coords<class_GPUParticles3D_property_local_coords>`                                     | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`one_shot<class_GPUParticles3D_property_one_shot>`                                             | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`preprocess<class_GPUParticles3D_property_preprocess>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Material<class_Material>`                                                                | :ref:`process_material<class_GPUParticles3D_property_process_material>`                             |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`randomness<class_GPUParticles3D_property_randomness>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`seed<class_GPUParticles3D_property_seed>`                                                     | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>`                                       | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                                | :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`                                       | ``NodePath("")``              |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>`                                   | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`trail_lifetime<class_GPUParticles3D_property_trail_lifetime>`                                 | ``0.3``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`                                      | :ref:`transform_align<class_GPUParticles3D_property_transform_align>`                               | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`           | :ref:`transform_align_axis<class_GPUParticles3D_property_transform_align_axis>`                     |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` | :ref:`transform_align_channel_filter<class_GPUParticles3D_property_transform_align_channel_filter>` |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>`                                 | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>`                                                                        | :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>`                               | ``AABB(-4, -4, -4, 8, 8, 8)`` |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`capture_aabb<class_GPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`convert_from_particles<class_GPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`emit_particle<class_GPUParticles3D_method_emit_particle>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>` | :ref:`get_draw_pass_mesh<class_GPUParticles3D_method_get_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`request_particles_process<class_GPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ )                                                                     |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`restart<class_GPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_draw_pass_mesh<class_GPUParticles3D_method_set_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

Emesso quando tutte le particelle attive hanno terminato l'elaborazione. Per riavviare immediatamente il ciclo di emissione, chiama :ref:`restart()<class_GPUParticles3D_method_restart>`.

Questo segnale non è mai emesso quando :ref:`one_shot<class_GPUParticles3D_property_one_shot>` è disabilitato, poiché le particelle verranno emesse ed elaborate continuamente.

\ **Nota:** Per gli emettitori con :ref:`one_shot<class_GPUParticles3D_property_one_shot>` abilitato, poiché le particelle vengono elaborate sulla GPU, potrebbe esserci un breve periodo dopo la ricezione del segnale durante il quale l'impostazione di :ref:`emitting<class_GPUParticles3D_property_emitting>` su ``true`` non riavvierà il ciclo di emissione. Questo ritardo è evitato chiamando invece :ref:`restart()<class_GPUParticles3D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Le particelle sono disegnate nell'ordine in cui sono emesse.

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Le particelle sono disegnate nell'ordine di tempo di vita residuo. In altre parole, la particella con il tempo di vita più alto è disegnata davanti.

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Le particelle sono disegnate in ordine inverso rispetto alla durata residua. In altre parole, la particella con la durata più bassa è disegnata di fronte.

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

Le particelle sono disegnate in ordine di profondità.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

La particella inizia alla posizione specificata.

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

La particella inizia con la rotazione e la scala specificate.

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

La particella inizia con il vettore di velocità specificato, che definisce la direzione e la velocità di emissione.

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

La particella inizia con il colore specificato.

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

La particella inizia con i dati ``CUSTOM`` specificati.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_TransformAlign:

.. rst-class:: classref-enumeration

enum **TransformAlign**: :ref:`🔗<enum_GPUParticles3D_TransformAlign>`

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_DISABLED** = ``0``

Do not align particle transforms relative to the camera or velocity.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD** = ``1``

Align each particle's Z axis to face the camera.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Y_TO_VELOCITY** = ``2``

Align each particle's Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY** = ``3``

Align each particle's Z axis to face the camera and Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_LOCAL_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_LOCAL_BILLBOARD** = ``4``

Align each particle's Z axis to face the camera, while preserving a given axis (X or Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

Numero massimo di passaggi di disegno supportati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Numero di particelle da emettere in un ciclo di emissione. La frequenza di emissione effettiva è ``(quantità* rapporto_di_quantità) / tempo_di_vita`` particelle al secondo. Valori più alti aumenteranno i requisiti sulla GPU, anche se non tutte le particelle sono visibili in un determinato momento o se :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` viene diminuito.

\ **Nota:** La modifica di questo valore causerà il riavvio del sistema di particelle. Per evitarlo, modifica invece :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Il rapporto di particelle che dovrebbero essere effettivamente emesse. Se impostato su un valore inferiore a ``1.0``, questo imposterà la quantità di particelle emesse durante la durata a ``quantità * rapporto_di_quantità``. A differenza di modificare :ref:`amount<class_GPUParticles3D_property_amount>`, modificare :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` durante l'emissione non influisce sulle particelle già emesse e non causa il riavvio del sistema di particelle. :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` può essere utilizzato per creare effetti che fanno variare il numero di particelle emesse nel tempo.

\ **Nota:** Ridurre :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` non ha alcun vantaggio in termini di prestazioni, poiché le risorse devono essere allocate ed elaborate per il totale di :ref:`amount<class_GPUParticles3D_property_amount>` di particelle indipendentemente da :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`. Se non intendi modificare il numero di particelle emesse durante l'emissione, assicurati che :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` sia impostato su ``1`` e modifica invece :ref:`amount<class_GPUParticles3D_property_amount>` a tuo piacimento.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Diametro di base per la collisione delle particelle in metri. Se le particelle sembrano affondare nel terreno durante la collisione, aumenta questo valore. Se le particelle sembrano galleggiare durante la collisione, diminuisci questo valore. Efficace solo se :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` è :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Nota:** Le particelle hanno sempre una forma di collisione sferica.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Ordine di disegno delle particelle.

\ **Nota:** :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` è l'unica opzione che supporta i vettori di movimento per effetti come TAA. Si consiglia di utilizzare questo ordine di disegno se le particelle sono opache per correggere gli artefatti di "ghosting".

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

La :ref:`Mesh<class_Mesh>` disegnata per il primo passaggio di disegno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

La :ref:`Mesh<class_Mesh>` disegnata per il secondo passaggio di disegno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

La :ref:`Mesh<class_Mesh>` disegnata per il terzo passaggio di disegno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

La :ref:`Mesh<class_Mesh>` disegnata per il quarto passaggio di disegno.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

Il numero di passaggi di disegno durante il rendering delle particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **draw_skin** :ref:`🔗<class_GPUParticles3D_property_draw_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Se ``true``, le particelle vengono emesse. :ref:`emitting<class_GPUParticles3D_property_emitting>` può essere utilizzato per avviare e interrompere l'emissione di particelle. Tuttavia, se :ref:`one_shot<class_GPUParticles3D_property_one_shot>` è ``true``, impostare :ref:`emitting<class_GPUParticles3D_property_emitting>` su ``true`` non riavvierà il ciclo di emissione a meno che tutte le particelle attive non abbiano terminato l'elaborazione. Utilizza il segnale :ref:`finished<class_GPUParticles3D_signal_finished>` per essere avvisato una volta che tutte le particelle attive hanno terminato l'elaborazione.

\ **Nota:** Per gli emettitori con :ref:`one_shot<class_GPUParticles3D_property_one_shot>` abilitato, poiché le particelle vengono elaborate sulla GPU, potrebbe esserci un breve periodo dopo la ricezione del segnale :ref:`finished<class_GPUParticles3D_signal_finished>` durante il quale impostare su ``true`` non riavvierà il ciclo di emissione.

\ **Suggerimento:** Se l'emettitore con :ref:`one_shot<class_GPUParticles3D_property_one_shot>` abilitato deve riavviare immediatamente l'emissione di particelle una volta ricevuto il segnale :ref:`finished<class_GPUParticles3D_signal_finished>`, considera di chiamare :ref:`restart()<class_GPUParticles3D_method_restart>` anziché impostare :ref:`emitting<class_GPUParticles3D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Rapporto di tempo tra ogni emissione. Se ``0``, le particelle sono emesse continuamente. Se ``1``, tutte le particelle sono emesse allo stesso tempo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

La frequenza dei fotogrammi del sistema di particelle è fissato a un valore. Ad esempio, cambiando il valore a 2, le particelle saranno renderizzate a 2 fotogrammi al secondo. Nota che questo non rallenta la simulazione del sistema di particelle stesso.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Se ``true``, utilizza un calcolo di delta frazionario che consente una visualizzazione più fluida delle particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Provoca l'interpolazione di tutte le particelle in questo nodo verso la fine del loro ciclo di vita.

\ **Nota:** Funziona solo se utilizzato con un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Deve essere implementato manualmente per gli shader di processo personalizzati.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

"Abilita l'interpolazione delle particelle, che rende il movimento delle particelle più fluido quando il loro :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` è inferiore alla frequenza di aggiornamento dello schermo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

La quantità di tempo per cui ogni particella esisterà (in secondi). La frequenza di emissione effettiva è ``(quantità * rapporto_di_quantità) / tempo_di_vita`` particelle al secondo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Se ``true``, le particelle usano lo spazio di coordinate del nodo genitore (noto come coordinate locali). Ciò farà sì che le particelle si muovano e ruotino lungo il nodo **GPUParticles3D** (e i suoi genitori) quando viene spostato o ruotato. Se ``false``, le particelle usano coordinate globali; non si muoveranno o ruoteranno lungo il nodo **GPUParticles3D** (e i suoi genitori) quando viene spostato o ruotato.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Se ``true``, verrà emesso solamente il numero di particelle uguali a :ref:`amount<class_GPUParticles3D_property_amount>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Quantità di tempo per pre-elaborare le particelle prima che cominci l'animazione. Ti consente di avviare l'animazione un po' di tempo dopo che le particelle hanno cominciato l'emissione.

\ **Nota:** Questo può essere molto costoso se impostato su un numero elevato, poiché richiede l'esecuzione dello shader di particelle un numero di volte pari a :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` (o 30, se :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` è 0) per ogni secondo. In casi estremi può persino causare un arresto anomalo della GPU a causa del volume di lavoro svolto in un singolo frame.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

Il :ref:`Material<class_Material>` per l'elaborazione delle particelle. Può essere un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` o uno :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Rapporto di casualità dell'emissione.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Imposta il seed casuale utilizzato dal sistema di particelle. Efficace solo se :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Rapporto di scala della velocità. Un valore di ``0`` può essere utilizzato per mettere in pausa le particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Percorso verso un altro nodo **GPUParticles3D** che sarà utilizzato come sottoemettitore (vedi :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). I sottoemettitori possono essere utilizzati per ottenere effetti quali fuochi d'artificio, scintille in caso di collisione, bolle che scoppiano in gocce d'acqua e altro ancora.

\ **Nota:** Quando :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>` è impostato, il nodo di destinazione **GPUParticles3D** non emetterà più particelle da solo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Se ``true``, abilita le scie di particelle usando un sistema di skinning mesh. Progettato per funzionare con :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` e :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

\ **Nota:** :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>` deve essere abilitato anche sul materiale della mesh di particelle. Altrimenti, impostare :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` su ``true`` non avrà alcun effetto.

\ **Nota:** A differenza di :ref:`GPUParticles2D<class_GPUParticles2D>`, il numero di sezioni e suddivisioni della scia è impostato nelle proprietà del :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` o del :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

La quantità di tempo che la scia di particelle dovrebbe rappresentare (in secondi). Efficace solo se :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align:

.. rst-class:: classref-property

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **transform_align** = ``0`` :ref:`🔗<class_GPUParticles3D_property_transform_align>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align**\ (\ value\: :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`\ )
- :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **get_transform_align**\ (\ )

The alignment of particles. Use this for billboarding and aligning to velocity.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_axis:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **transform_align_axis** :ref:`🔗<class_GPUParticles3D_property_transform_align_axis>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_axis**\ (\ value\: :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`\ )
- :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **get_transform_align_axis**\ (\ )

When using transform align local billboard, which axis to use for the billboarding. Supports only X or Y.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_channel_filter:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **transform_align_channel_filter** :ref:`🔗<class_GPUParticles3D_property_transform_align_channel_filter>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_channel_filter**\ (\ value\: :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>`\ )
- :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **get_transform_align_channel_filter**\ (\ )

In the case of billboarded particles, which custom channel to read from to calculate their angle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Se ``true``, le particelle utilizzeranno lo stesso seed per ogni simulazione, utilizzando il seed definito in :ref:`seed<class_GPUParticles3D_property_seed>`. Ciò è utile per le situazioni in cui il risultato visivo deve essere coerente tra i replay, ad esempio quando si utilizza la modalità Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

L':ref:`AABB<class_AABB>` che determina la regione del nodo che deve essere visibile sullo schermo affinché il sistema di particelle sia attivo. :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` è aggiunto su ciascuno degli assi di AABB. Le collisioni e l'attrazione delle particelle si verificheranno solo all'interno di quest'area.

Ingrandisci la box se le particelle appaiono o scompaiono improvvisamente quando il nodo entra o esce dallo schermo. L':ref:`AABB<class_AABB>` può essere ingrandito tramite codice o con lo strumento dell'editor **Particelle → Genera AABB**.

\ **Nota:** :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>` è sovrascritto da :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>` se tale proprietà è impostata su un valore non predefinito.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

Restituisce la bounding box allineato all'asse che contiene tutte le particelle attive nel frame attuale.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

Imposta le proprietà di questo nodo in modo che corrispondano a un dato nodo :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

Emette una singola particella. L'applicazione della trasformazione (``xform``), la velocità (``velocity``), il colore (``color``) e ``custom`` dipende dal valore di ``flags``. Vedi :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`.

Il ParticleProcessMaterial predefinito sovrascriverà ``color`` e utilizzerà il contenuto di ``custom`` come ``(rotazione, tempo iniziale, animazione, tempo di vita)``.

\ **Nota:** :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` è supportato solo sui metodi di rendering Forward+ e Mobile, non su Compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

Restituisce la :ref:`Mesh<class_Mesh>` disegnata all'indice ``pass``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_GPUParticles3D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles3D_method_restart>`

Riavvia il ciclo di emissione delle particelle, eliminando le particelle esistenti. Per evitare che le particelle scompaiano dalla viewport, attendi il segnale :ref:`finished<class_GPUParticles3D_signal_finished>` prima di chiamare questo metodo.

\ **Nota:** Il segnale :ref:`finished<class_GPUParticles3D_signal_finished>` viene emesso solo dagli emettitori con :ref:`one_shot<class_GPUParticles3D_property_one_shot>` abilitato.

Se ``keep_seed`` è ``true``, il seed casuale attuale verrà conservato. Utile per la ricerca e la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

Imposta la :ref:`Mesh<class_Mesh>` disegnata all'indice ``pass``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
