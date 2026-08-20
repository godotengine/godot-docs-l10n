:github_url: hide

.. meta::
	:keywords: environment, envmap

.. _class_ReflectionProbe:

ReflectionProbe
===============

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Cattura l'ambiente circostante per creare riflessi rapidi e precisi da un punto fornito.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Cattura l'ambiente circostante come una cubemap e ne memorizza versioni con livelli crescenti di sfocatura per simulare diverse rugosità dei materiali.

\ **ReflectionProbe** serve per creare riflessi di alta qualità a basso costo sulle prestazioni (quando :ref:`update_mode<class_ReflectionProbe_property_update_mode>` è impostato su :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`). È possibile fondere fluidamente i **ReflectionProbe** tra loro e con il resto della scena. È possibile anche combinare i **ReflectionProbe** con :ref:`VoxelGI<class_VoxelGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) e riflessi nello spazio dello schermo (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`) per ottenere riflessi più accurati in aree specifiche. I **ReflectionProbe** renderizzano tutti gli oggetti all'interno della loro :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, quindi aggiornarli può essere piuttosto costoso. È consigliabile aggiornarli una sola volta con gli oggetti statici importanti e poi lasciarli così come sono.

\ **Nota:** A differenza di :ref:`VoxelGI<class_VoxelGI>` e SDFGI, i **ReflectionProbe** ricavano il loro ambiente solo da un nodo :ref:`WorldEnvironment<class_WorldEnvironment>`. Se si specifica una risorsa :ref:`Environment<class_Environment>` in un nodo :ref:`Camera3D<class_Camera3D>`, questa verrà ignorata dal **ReflectionProbe**. Ciò può causare un'illuminazione errata all'interno del **ReflectionProbe**.

\ **Nota:** Quando si utilizza il metodo di rendering Mobile, è possibile visualizzare solo ``8`` sonde di riflessione su ciascuna risorsa mesh, mentre il metodo di rendering Compatibilità supporta solo fino a ``2`` sonde di riflessione su ciascuna mesh. Tentare di visualizzare più di ``8`` sonde su una singola risorsa mesh utilizzando il renderer Mobile farà sfarfallare le sonde mentre la telecamera si muove, mentre il renderer Compatibilità non renderizzerà alcuna sonda in più se sono utilizzate più di ``2`` sonde.

\ **Nota:** Quando si utilizza il metodo di rendering Mobile, le sonde di riflessione influenzeranno correttamente solo le mesh il cui AABB di visibilità interseca l'AABB della sonda di riflessione. Se si usa uno shader per deformare la mesh in modo che esca dal suo AABB, è necessario aumentare il valore di :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` sulla mesh. Altrimenti, la sonda di riflessione potrebbe non essere visibile sulla mesh.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Sonde di riflessi <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`                            | :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>`               | ``Color(0, 0, 0, 1)``   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>` | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` | :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>`                 | ``1``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`blend_distance<class_ReflectionProbe_property_blend_distance>`             | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`box_projection<class_ReflectionProbe_property_box_projection>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`                       | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`enable_shadows<class_ReflectionProbe_property_enable_shadows>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`intensity<class_ReflectionProbe_property_intensity>`                       | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`interior<class_ReflectionProbe_property_interior>`                         | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`max_distance<class_ReflectionProbe_property_max_distance>`                 | ``0.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`     | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`origin_offset<class_ReflectionProbe_property_origin_offset>`               | ``Vector3(0, 0, 0)``    |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`reflection_mask<class_ReflectionProbe_property_reflection_mask>`           | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`size<class_ReflectionProbe_property_size>`                                 | ``Vector3(20, 20, 20)`` |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`   | :ref:`update_mode<class_ReflectionProbe_property_update_mode>`                   | ``0``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

Aggiorna la sonda una sola volta sul frame successivo (consigliato per la maggior parte degli oggetti). La mappa di radianza corrispondente sarà generata nei sei frame successivi. L'aggiornamento richiede perciò più tempo rispetto a :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`, ma ha un costo di prestazioni inferiore e può risultare in riflessi di qualità superiore. ReflectionProbe è aggiornato quando cambia la sua trasformazione, ma non quando cambia la geometria vicina. Puoi forzare un aggiornamento del **ReflectionProbe** spostandolo leggermente in qualsiasi direzione.

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

Aggiorna la sonda a ogni frame. Ciò fornisce risultati migliori per oggetti dinamici in rapido movimento (come le auto). Tuttavia, ha un costo notevole in termini di prestazioni. A causa del costo, si consiglia di usare solo un ReflectionProbe con :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` al massimo per scena. Per tutti gli altri casi d'uso, utilizza :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`.

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

Non applicare alcuna illuminazione ambientale all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

Applica l'illuminazione ambientale con sorgente automatica all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

Applica un'illuminazione ambientale personalizzata all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`. Vedi :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` e :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

Il colore ambientale personalizzato da usare all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`. Efficace solo se :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` è :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

L'energia del colore ambientale personalizzata da usare all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`. Efficace solo se :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` è :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

Il colore ambientale da usare all'interno del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`. Il colore ambientale si fonderà in modo uniforme con gli altri **ReflectionProbe** e con il resto della scena (al di fuori del riquadro del **ReflectionProbe** definito da :ref:`size<class_ReflectionProbe_property_size>`).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

Definisce la distanza in metri entro la quale una sonda si fonde con la scena.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

Se ``true``, abilita la proiezione di casella. Ciò rende i riflessi più corretti nelle stanze rettangolari, spostando il centro del riflesso in base alla posizione della telecamera.

\ **Nota:** Per adattare meglio le stanze rettangolari non allineate alla griglia, puoi ruotare il nodo **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Imposta la maschera di cull che determina quali oggetti sono disegnati da questa sonda. Ogni :ref:`VisualInstance3D<class_VisualInstance3D>` con uno strato incluso in questa maschera di selezione sarà renderizzato dalla sonda. È meglio includere solo oggetti enormi che potrebbero occupare molto spazio nella riflessione per risparmiare sui costi di rendering.

Questo può anche essere utilizzato per impedire a un oggetto di riflettersi su se stesso (ad esempio, una **ReflectionProbe** centrata su un veicolo).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

Se ``true``, calcola le ombre nella sonda di riflessione. Ciò rallenta il rendering della sonda di riflessione; potresti volerlo disabilitare se usi :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

Definisce l'intensità della riflessione. L'intensità modifica il magnitudo dell'effetto di riflessione.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

Se ``true``, i riflessi ignoreranno il contributo del cielo.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

La distanza massima dal **ReflectionProbe** a cui può trovarsi un oggetto prima di essere scartato. Riduci questo valore per migliorare le prestazioni, specialmente quando si usa :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Nota:** La distanza massima di riflessione è sempre almeno uguale alle estensioni della sonda. Ciò significa che ridurre :ref:`max_distance<class_ReflectionProbe_property_max_distance>` non scarterà sempre gli oggetti dalle riflessioni, specialmente se la casella della sonda di riflessione definita dalla sua :ref:`size<class_ReflectionProbe_property_size>` è già grande.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

Il bias di LOD automatico da usare per le mesh renderizzate all'interno del **ReflectionProbe** (analogo a :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`). Valori più alti useranno versioni meno dettagliate delle mesh che hanno variazioni di LOD generate. Se impostato su ``0.0``, il LOD automatico è disabilitato. Aumentare :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` per migliorare le prestazioni a scapito dei dettagli della geometria, specialmente quando si usa :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Nota:** :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` non influisce sui campi di visibilità di :ref:`GeometryInstance3D<class_GeometryInstance3D>` (noti anche come LOD "manuale" o LOD gerarchico).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Imposta lo scostamento dell'origine da usare quando questo **ReflectionProbe** è in modalità :ref:`box_projection<class_ReflectionProbe_property_box_projection>`. Può essere impostato su un valore diverso da zero per garantire che una riflessione si adatti a una stanza rettangolare, riducendo allo stesso tempo il numero di oggetti che "intralciano" la riflessione.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

Imposta la maschera di riflessione che determina quali oggetti hanno riflessi applicati da questa sonda. Ogni :ref:`VisualInstance3D<class_VisualInstance3D>` con uno strato incluso in questa maschera di riflessione avrà riflessi applicati da questa sonda. Vedi anche :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, che può essere usato per impedire agli oggetti di apparire nella riflessione, pur rendendoli influenzati dal **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Le dimensioni della sonda di riflessione. Maggiori sono le dimensioni, maggiore è lo spazio coperto dalla sonda, il che abbasserà la risoluzione percepita. È meglio mantenere le dimensioni solo quanto serve.

\ **Nota:** Per adattare meglio le aree che non sono allineate alla griglia, puoi ruotare il nodo **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

Imposta la frequenza con cui il **ReflectionProbe** viene aggiornato. Può essere :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` o :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
