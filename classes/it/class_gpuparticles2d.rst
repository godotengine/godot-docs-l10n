:github_url: hide

.. _class_GPUParticles2D:

GPUParticles2D
==============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un emettitore di particelle 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Nodo di particelle 2D utilizzato per creare una varietà di sistemi di particelle ed effetti. **GPUParticles2D** è dotato di un emettitore che genera un certo numero di particelle a una determinata frequenza.

Usa :ref:`process_material<class_GPUParticles2D_property_process_material>` per aggiungere un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` per configurare l'aspetto e il comportamento delle particelle. In alternativa, è possibile aggiungere uno :ref:`ShaderMaterial<class_ShaderMaterial>` che sarà applicato a tutte le particelle.

Le particelle 2D possono opzionalmente collidere con :ref:`LightOccluder2D<class_LightOccluder2D>`, ma non con i nodi :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Sistema di particelle (2D) <../tutorials/2d/particle_systems_2d>`

- `Demo di particelle in 2D <https://godotengine.org/asset-library/asset/2724>`__

- `Demo 2D Dodge The Creeps (utilizza GPUParticles2D per la scia dietro il giocatore) <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`amount<class_GPUParticles2D_property_amount>`                                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`                             | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`collision_base_size<class_GPUParticles2D_property_collision_base_size>`               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` | :ref:`draw_order<class_GPUParticles2D_property_draw_order>`                                 | ``1``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`emitting<class_GPUParticles2D_property_emitting>`                                     | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`explosiveness<class_GPUParticles2D_property_explosiveness>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>`                                   | ``30``                          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`fract_delta<class_GPUParticles2D_property_fract_delta>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`interp_to_end<class_GPUParticles2D_property_interp_to_end>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`interpolate<class_GPUParticles2D_property_interpolate>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`lifetime<class_GPUParticles2D_property_lifetime>`                                     | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`local_coords<class_GPUParticles2D_property_local_coords>`                             | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`one_shot<class_GPUParticles2D_property_one_shot>`                                     | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`preprocess<class_GPUParticles2D_property_preprocess>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`process_material<class_GPUParticles2D_property_process_material>`                     |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`randomness<class_GPUParticles2D_property_randomness>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`seed<class_GPUParticles2D_property_seed>`                                             | ``0``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>`                               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>`                               | ``NodePath("")``                |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Texture2D<class_Texture2D>`               | :ref:`texture<class_GPUParticles2D_property_texture>`                                       |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`                           | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`trail_lifetime<class_GPUParticles2D_property_trail_lifetime>`                         | ``0.3``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>` | ``4``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>`                         | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                       | :ref:`visibility_rect<class_GPUParticles2D_property_visibility_rect>`                       | ``Rect2(-100, -100, 200, 200)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`capture_rect<class_GPUParticles2D_method_capture_rect>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_GPUParticles2D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`emit_particle<class_GPUParticles2D_method_emit_particle>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_GPUParticles2D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ )                                                                       |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_GPUParticles2D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_GPUParticles2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles2D_signal_finished>`

Emesso quando tutte le particelle attive hanno terminato l'elaborazione. Per riavviare immediatamente il ciclo di emissione, chiama :ref:`restart()<class_GPUParticles2D_method_restart>`.

Questo segnale non è mai emesso quando :ref:`one_shot<class_GPUParticles2D_property_one_shot>` è disabilitato, poiché le particelle verranno emesse ed elaborate continuamente.

\ **Nota:** Per gli emettitori con :ref:`one_shot<class_GPUParticles2D_property_one_shot>` abilitato, poiché le particelle vengono elaborate sulla GPU, potrebbe esserci un breve periodo dopo la ricezione del segnale durante il quale l'impostazione di :ref:`emitting<class_GPUParticles2D_property_emitting>` su ``true`` non riavvierà il ciclo di emissione. Questo ritardo è evitato chiamando invece :ref:`restart()<class_GPUParticles2D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GPUParticles2D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles2D_DrawOrder>`

.. _class_GPUParticles2D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Le particelle sono disegnate nell'ordine in cui sono emesse.

.. _class_GPUParticles2D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Le particelle sono disegnate nell'ordine di tempo di vita residuo. In altre parole, la particella con il tempo di vita più alto è disegnata davanti.

.. _class_GPUParticles2D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Le particelle sono disegnate in ordine inverso rispetto alla durata residua. In altre parole, la particella con la durata più bassa è disegnata di fronte.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles2D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles2D_EmitFlags>`

.. _class_GPUParticles2D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

La particella inizia alla posizione specificata.

.. _class_GPUParticles2D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

La particella inizia con la rotazione e la scala specificate.

.. _class_GPUParticles2D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

La particella inizia con il vettore di velocità specificato, che definisce la direzione e la velocità di emissione.

.. _class_GPUParticles2D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

La particella inizia con il colore specificato.

.. _class_GPUParticles2D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

La particella inizia con i dati ``CUSTOM`` specificati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticles2D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles2D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Numero di particelle da emettere in un ciclo di emissione. La frequenza di emissione effettiva è ``(quantità* rapporto_di_quantità) / tempo_di_vita`` particelle al secondo. Valori più alti aumenteranno i requisiti sulla GPU, anche se non tutte le particelle sono visibili in un determinato momento o se :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` viene diminuito.

\ **Nota:** La modifica di questo valore causerà il riavvio del sistema di particelle. Per evitarlo, modifica invece :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Il rapporto di particelle che dovrebbero essere effettivamente emesse. Se impostato su un valore inferiore a ``1.0``, questo imposterà la quantità di particelle emesse durante la durata a ``quantità * rapporto_di_quantità``. A differenza di modificare :ref:`amount<class_GPUParticles2D_property_amount>`, modificare :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` durante l'emissione non influisce sulle particelle già emesse e non causa il riavvio del sistema di particelle. :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` può essere utilizzato per creare effetti che fanno variare il numero di particelle emesse nel tempo.

\ **Nota:** Ridurre :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` non ha alcun vantaggio in termini di prestazioni, poiché le risorse devono essere allocate ed elaborate per il totale di :ref:`amount<class_GPUParticles2D_property_amount>` di particelle indipendentemente da :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`. Se non intendi modificare il numero di particelle emesse durante l'emissione, assicurati che :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` sia impostato su ``1`` e modifica invece :ref:`amount<class_GPUParticles2D_property_amount>` a tuo piacimento.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Moltiplicatore per il raggio di collisione delle particelle. ``1.0`` corrisponde alla dimensione dello sprite. Se le particelle sembrano affondare nel terreno quando si scontrano, aumenta questo valore. Se le particelle sembrano galleggiare quando si scontrano, diminuisci questo valore. Efficace solo se :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` è :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Nota:** Le particelle hanno sempre una forma di collisione sferica.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **draw_order** = ``1`` :ref:`🔗<class_GPUParticles2D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **get_draw_order**\ (\ )

Ordine di disegno delle particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles2D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Se ``true``, le particelle vengono emesse. :ref:`emitting<class_GPUParticles2D_property_emitting>` può essere utilizzato per avviare e interrompere l'emissione di particelle. Tuttavia, se :ref:`one_shot<class_GPUParticles2D_property_one_shot>` è ``true``, impostare :ref:`emitting<class_GPUParticles2D_property_emitting>` su ``true`` non riavvierà il ciclo di emissione a meno che tutte le particelle attive non abbiano terminato l'elaborazione. Utilizza il segnale :ref:`finished<class_GPUParticles2D_signal_finished>` per essere avvisato una volta che tutte le particelle attive hanno terminato l'elaborazione.

\ **Nota:** Per gli emettitori con :ref:`one_shot<class_GPUParticles2D_property_one_shot>` abilitato, poiché le particelle vengono elaborate sulla GPU, potrebbe esserci un breve periodo dopo la ricezione del segnale :ref:`finished<class_GPUParticles2D_signal_finished>` durante il quale impostare su ``true`` non riavvierà il ciclo di emissione.

\ **Suggerimento:** Se l'emettitore con :ref:`one_shot<class_GPUParticles2D_property_one_shot>` abilitato deve riavviare immediatamente l'emissione di particelle una volta ricevuto il segnale :ref:`finished<class_GPUParticles2D_signal_finished>`, considera di chiamare :ref:`restart()<class_GPUParticles2D_method_restart>` anziché impostare :ref:`emitting<class_GPUParticles2D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Quanto rapidamente sono emesse le particelle in un ciclo di emissione. Se maggiore di ``0``, ci sarà un distacco nelle emissioni prima che inizi il ciclo successivo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles2D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

La frequenza dei fotogrammi del sistema di particelle è fissato a un valore. Ad esempio, cambiando il valore a 2, le particelle saranno renderizzate a 2 fotogrammi al secondo. Nota che questo non rallenta la simulazione del sistema di particelle stesso.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles2D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Se ``true``, utilizza un calcolo di delta frazionario che consente una visualizzazione più fluida delle particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Provoca l'interpolazione di tutte le particelle in questo nodo verso la fine del loro ciclo di vita.

\ **Nota:** Funziona solo se utilizzato con un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Deve essere implementato manualmente per gli shader di processo personalizzati.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles2D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

"Abilita l'interpolazione delle particelle, che rende il movimento delle particelle più fluido quando il loro :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` è inferiore alla frequenza di aggiornamento dello schermo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

La quantità di tempo per cui ogni particella esisterà (in secondi). La frequenza di emissione effettiva è ``(quantità * rapporto_di_quantità) / tempo_di_vita`` particelle al secondo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles2D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Se ``true``, le particelle usano lo spazio di coordinate del nodo genitore (noto come coordinate locali). Ciò farà sì che le particelle si muovano e ruotino lungo il nodo **GPUParticles2D** (e i suoi genitori) quando viene spostato o ruotato. Se ``false``, le particelle usano coordinate globali; non si muoveranno o ruoteranno lungo il nodo **GPUParticles2D** (e i suoi genitori) quando viene spostato o ruotato.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles2D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Se ``true``, un solo ciclo di emissione sarà prodotto. Se impostato su ``true`` durante un ciclo, l'emissione si interromperà alla fine del ciclo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Il sistema di particelle si avvia come se avesse già cominciato questo numero di secondi fa.

\ **Nota:** Questo può essere molto costoso se impostato su un numero elevato, poiché richiede l'esecuzione dello shader di particelle un numero di volte pari a :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` (o 30, se :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` è 0) per ogni secondo. In casi estremi può persino causare un arresto anomalo della GPU a causa del volume di lavoro svolto in un singolo frame.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles2D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

Il :ref:`Material<class_Material>` per l'elaborazione delle particelle. Può essere un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` o uno :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Rapporto di casualità del tempo di vita dell'emissione.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles2D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Imposta il seed casuale utilizzato dal sistema di particelle. Efficace solo se :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Rapporto della velocità di esecuzione del sistema di particelle. Un valore di ``0`` può essere utilizzato per mettere in pausa le particelle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles2D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Percorso verso un altro nodo **GPUParticles2D** che sarà utilizzato come sottoemettitore (vedi :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). I sottoemettitori possono essere utilizzati per ottenere effetti quali fuochi d'artificio, scintille in caso di collisione, bolle che scoppiano in gocce d'acqua e altro ancora.

\ **Nota:** Quando :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>` è impostato, il nodo di destinazione **GPUParticles2D** non emetterà più particelle da solo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_GPUParticles2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Texture delle particelle. Se ``null``, le particelle saranno quadrati con una dimensione di 1×1 pixel.

\ **Nota:** Per usare una texture tipo libro sfogliabile, assegna un nuovo :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` alla proprietà :ref:`CanvasItem.material<class_CanvasItem_property_material>` del **GPUParticles2D**, quindi abilita :ref:`CanvasItemMaterial.particles_animation<class_CanvasItemMaterial_property_particles_animation>` e imposta :ref:`CanvasItemMaterial.particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>`, :ref:`CanvasItemMaterial.particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` e :ref:`CanvasItemMaterial.particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>` in modo che corrispondano alla texture tipo libro sfogliabile.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles2D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Se ``true``, abilita le scie di particelle usando un sistema di skinning mesh.

\ **Nota:** A differenza di :ref:`GPUParticles3D<class_GPUParticles3D>`, il numero di sezioni e suddivisioni della scia è impostato con le proprietà :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>` e :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles2D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

La quantità di tempo che la scia di particelle dovrebbe rappresentare (in secondi). Efficace solo se :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_section_subdivisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_section_subdivisions** = ``4`` :ref:`🔗<class_GPUParticles2D_property_trail_section_subdivisions>`

.. rst-class:: classref-property-setget

- |void| **set_trail_section_subdivisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_section_subdivisions**\ (\ )

Il numero di suddivisioni da utilizzare per il rendering della scia di particelle. Valori più alti possono risultare in curve di scie più fluide, a scapito delle prestazioni a causa della mesh più complessa. Vedi anche :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`. Efficace solo se :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_sections** = ``8`` :ref:`🔗<class_GPUParticles2D_property_trail_sections>`

.. rst-class:: classref-property-setget

- |void| **set_trail_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_sections**\ (\ )

Il numero di sezioni da utilizzare per il rendering della scia di particelle. Valori più alti possono risultare in curve di scie più fluide, a scapito delle prestazioni a causa della mesh più complessa. Vedi anche :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`. Efficace solo se :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles2D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Se ``true``, le particelle utilizzeranno lo stesso seed per ogni simulazione, utilizzando il seed definito in :ref:`seed<class_GPUParticles2D_property_seed>`. Ciò è utile per le situazioni in cui il risultato visivo deve essere coerente tra i replay, ad esempio quando si utilizza la modalità Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_visibility_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **visibility_rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_GPUParticles2D_property_visibility_rect>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_visibility_rect**\ (\ )

Il :ref:`Rect2<class_Rect2>` che determina la regione del nodo che deve essere visibile sullo schermo affinché il sistema di particelle sia attivo.

Aumenta il rettangolo se le particelle appaiono o scompaiono all'improvviso quando il nodo entra o esce dallo schermo. Il :ref:`Rect2<class_Rect2>` può essere aumentato tramite codice o con lo strumento dell'editor **Particelle → Genera rettangolo di visibilità**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_GPUParticles2D_method_capture_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **capture_rect**\ (\ ) |const| :ref:`🔗<class_GPUParticles2D_method_capture_rect>`

Restituisce un rettangolo contenente le posizioni di tutte le particelle esistenti.

\ **Nota:** Quando si usa il rendering su un altro thread, questo metodo sincronizza il thread di rendering. Chiamarlo spesso può avere un impatto negativo sulle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles2D_method_convert_from_particles>`

Imposta le proprietà di questo nodo in modo che corrispondano a un dato nodo :ref:`CPUParticles2D<class_CPUParticles2D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles2D_method_emit_particle>`

Emette una singola particella. L'applicazione della trasformazione (``xform``), la velocità (``velocity``), il colore (``color``) e ``custom`` dipende dal valore di ``flags``. Vedi :ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>`.

Il ParticleProcessMaterial predefinito sovrascriverà ``color`` e utilizzerà il contenuto di ``custom`` come ``(rotazione, tempo iniziale, animazione, tempo di vita)``.

\ **Nota:** :ref:`emit_particle()<class_GPUParticles2D_method_emit_particle>` è supportato solo sui metodi di rendering Forward+ e Mobile, non su Compatibilità.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ ) :ref:`🔗<class_GPUParticles2D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles2D_method_restart>`

Riavvia il ciclo di emissione delle particelle, eliminando le particelle esistenti. Per evitare che le particelle scompaiano dalla viewport, attendi il segnale :ref:`finished<class_GPUParticles2D_signal_finished>` prima di chiamare questo metodo.

\ **Nota:** Il segnale :ref:`finished<class_GPUParticles2D_signal_finished>` viene emesso solo dagli emettitori con :ref:`one_shot<class_GPUParticles2D_property_one_shot>` abilitato.

Se ``keep_seed`` è ``true``, il seed casuale attuale verrà conservato. Utile per la ricerca e la riproduzione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
