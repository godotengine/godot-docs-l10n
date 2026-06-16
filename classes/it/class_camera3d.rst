:github_url: hide

.. _class_Camera3D:

Camera3D
========

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`XRCamera3D<class_XRCamera3D>`

Nodo telecamera, è visualizzato da un punto di vista.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Camera3D** è un nodo speciale che mostra ciò che è visibile dalla sua posizione attuale. Le telecamere si registrano nel nodo :ref:`Viewport<class_Viewport>` più vicino (quando si risale l'albero). Solo una telecamera può essere attiva per viewport. Se non è disponibile alcuna viewport risalendo l'albero, la telecamera sarà registrata nella viewport globale. In altre parole, una telecamera fornisce funzionalità di visualizzazione 3D a una :ref:`Viewport<class_Viewport>` e, senza di essa, una scena registrata in tale :ref:`Viewport<class_Viewport>` (o in viewport superiori) non può essere visualizzata.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`       | :ref:`attributes<class_Camera3D_property_attributes>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Compositor<class_Compositor>`                   | :ref:`compositor<class_Camera3D_property_compositor>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                 | :ref:`cull_mask<class_Camera3D_property_cull_mask>`               | ``1048575``       |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                               | :ref:`current<class_Camera3D_property_current>`                   | ``false``         |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` | :ref:`doppler_tracking<class_Camera3D_property_doppler_tracking>` | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Environment<class_Environment>`                 | :ref:`environment<class_Camera3D_property_environment>`           |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`far<class_Camera3D_property_far>`                           | ``4000.0``        |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`fov<class_Camera3D_property_fov>`                           | ``75.0``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                         | :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`     | ``Vector2(0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`h_offset<class_Camera3D_property_h_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`KeepAspect<enum_Camera3D_KeepAspect>`           | :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`           | ``1``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`near<class_Camera3D_property_near>`                         | ``0.05``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`ProjectionType<enum_Camera3D_ProjectionType>`   | :ref:`projection<class_Camera3D_property_projection>`             | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`size<class_Camera3D_property_size>`                         | ``1.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`v_offset<class_Camera3D_property_v_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`clear_current<class_Camera3D_method_clear_current>`\ (\ enable_next\: :ref:`bool<class_bool>` = true\ )                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                    | :ref:`get_camera_projection<class_Camera3D_method_get_camera_projection>`\ (\ ) |const|                                                                                                                      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_camera_rid<class_Camera3D_method_get_camera_rid>`\ (\ ) |const|                                                                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                  | :ref:`get_camera_transform<class_Camera3D_method_get_camera_transform>`\ (\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`get_cull_mask_value<class_Camera3D_method_get_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`get_frustum<class_Camera3D_method_get_frustum>`\ (\ ) |const|                                                                                                                                          |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_pyramid_shape_rid<class_Camera3D_method_get_pyramid_shape_rid>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_behind<class_Camera3D_method_is_position_behind>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_in_frustum<class_Camera3D_method_is_position_in_frustum>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                       |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`make_current<class_Camera3D_method_make_current>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_local_ray_normal<class_Camera3D_method_project_local_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_position<class_Camera3D_method_project_position>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const|                                             |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_normal<class_Camera3D_method_project_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_origin<class_Camera3D_method_project_ray_origin>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_cull_mask_value<class_Camera3D_method_set_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_frustum<class_Camera3D_method_set_frustum>`\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_orthogonal<class_Camera3D_method_set_orthogonal>`\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_perspective<class_Camera3D_method_set_perspective>`\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`unproject_position<class_Camera3D_method_unproject_position>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Camera3D_ProjectionType:

.. rst-class:: classref-enumeration

enum **ProjectionType**: :ref:`🔗<enum_Camera3D_ProjectionType>`

.. _class_Camera3D_constant_PROJECTION_PERSPECTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_PERSPECTIVE** = ``0``

Proiezione prospettica. Gli oggetti sullo schermo diventano più piccoli quando sono lontani.

.. _class_Camera3D_constant_PROJECTION_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_ORTHOGONAL** = ``1``

Proiezione ortogonale, detta anche proiezione ortografica. Gli oggetti rimangono delle stesse dimensioni sullo schermo, a prescindere dalla loro distanza.

.. _class_Camera3D_constant_PROJECTION_FRUSTUM:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_FRUSTUM** = ``2``

Proiezione troncoconica. Questa modalità consente di regolare :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` per creare effetti di "tronco inclinato".

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_KeepAspect:

.. rst-class:: classref-enumeration

enum **KeepAspect**: :ref:`🔗<enum_Camera3D_KeepAspect>`

.. _class_Camera3D_constant_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_WIDTH** = ``0``

Mantiene le proporzioni orizzontali; noto anche come ridimensionamento verticale. Questa è solitamente l'opzione migliore per i progetti eseguiti in modalità ritratto, poiché rapporti di aspetto più alti godranno di un FOV verticale più ampio.

.. _class_Camera3D_constant_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_HEIGHT** = ``1``

Mantiene le proporzioni verticali; noto anche come ridimensionamento orizzontale. Questa è solitamente l'opzione migliore per i progetti eseguiti in modalità orizzontale, poiché rapporti di aspetto più larghi godranno di un FOV orizzontale più ampio.

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_Camera3D_DopplerTracking>`

.. _class_Camera3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Disabilita la simulazione dell'`effetto Doppler <https://it.wikipedia.org/wiki/Effetto_Doppler>`__ (impostazione predefinita).

.. _class_Camera3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Simula l'`effetto Doppler <https://it.wikipedia.org/wiki/Effetto_Doppler>`__ monitorando le posizioni degli oggetti che cambiano in ``_process``. I cambiamenti nella velocità relativa di questa telecamera rispetto a tali oggetti influiscono sul modo in cui l'audio viene percepito, modificando la scala del tono (:ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`) dell'audio.

.. _class_Camera3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Simula l'`effetto Doppler <https://it.wikipedia.org/wiki/Effetto_Doppler>`__ monitorando le posizioni degli oggetti che cambiano in ``_physics_process``. I cambiamenti nella velocità relativa di questa telecamera rispetto a tali oggetti influiscono sul modo in cui l'audio viene percepito, modificando la scala del tono (:ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`) dell'audio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Camera3D_property_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **attributes** :ref:`🔗<class_Camera3D_property_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_attributes**\ (\ )

La risorsa degli attributi da utilizzare per questa telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_Camera3D_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

Il :ref:`Compositor<class_Compositor>` da utilizzare per questa telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Camera3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

La maschera di culling che descrive quali strati (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) sono renderizzati da questa telecamera. Come valore predefinito, sono renderizzati tutti i 20 strati visibili all'utente.

\ **Nota:** Poiché :ref:`cull_mask<class_Camera3D_property_cull_mask>` consente di memorizzare 32 strati in totale, ci sono altri 12 strati che sono utilizzati solo internamente dal motore e non sono esposti nell'editor. Impostare :ref:`cull_mask<class_Camera3D_property_cull_mask>` tramite uno script consente di attivare o disattivare i livelli riservati, il che può essere utile per le estensioni dell'editor.

Per regolare :ref:`cull_mask<class_Camera3D_property_cull_mask>` più facilmente tramite uno script, usa :ref:`get_cull_mask_value()<class_Camera3D_method_get_cull_mask_value>` e :ref:`set_cull_mask_value()<class_Camera3D_method_set_cull_mask_value>`.

\ **Nota:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI e :ref:`LightmapGI<class_LightmapGI>` considereranno sempre tutti gli strati per determinare cosa contribuisce all'illuminazione globale. Se questo è un problema, imposta :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` su :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` per le mesh, e :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` su :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` per le luci affinché siano escluse dall'illuminazione globale.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_Camera3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

Se ``true``, la :ref:`Viewport<class_Viewport>` antenato sta attualmente usando questa telecamera.

Se nella scena sono presenti più telecamere, una diventerà sempre attuale. Ad esempio, se nella scena sono presenti due nodi **Camera3D** e solo uno è attuale, impostando il :ref:`current<class_Camera3D_property_current>` di una telecamera su ``false`` costringerà l'altra telecamera a diventare attuale.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_Camera3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Se non è :ref:`DOPPLER_TRACKING_DISABLED<class_Camera3D_constant_DOPPLER_TRACKING_DISABLED>`, questa telecamera simulerà l'`effetto Doppler <https://it.wikipedia.org/wiki/Effetto_Doppler>`__ per gli oggetti modificati in particolari metodi ``_process``.

\ **Nota:** L'effetto Doppler sarà udibile solo sugli :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` se :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` non è impostato su :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_Camera3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

La risorsa :ref:`Environment<class_Environment>` da utilizzare per questa telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **far** = ``4000.0`` :ref:`🔗<class_Camera3D_property_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

La distanza dal limite di culling più lontano per questa fotocamera rispetto al suo asse Z locale. I valori più alti consentono alla telecamera di vedere più lontano, e ridurre :ref:`far<class_Camera3D_property_far>` può migliorare le prestazioni se risulterebbe che oggetti diventino parzialmente o completamente scartati.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``75.0`` :ref:`🔗<class_Camera3D_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

L'angolo del campo visivo della telecamera (in gradi). Applicabile solo in modalità prospettiva. Poiché :ref:`keep_aspect<class_Camera3D_property_keep_aspect>` blocca un asse, :ref:`fov<class_Camera3D_property_fov>` imposta l'angolo del campo visivo dell'altro asse.

Per riferimento, il valore del campo visivo verticale predefinito (``75.0``) è equivalente a un FOV orizzontale di:

- ~91,31 gradi in una vista a 4:3

- ~101,67 gradi in una vista a 16:10

- ~107,51 gradi in una vista a 16:9

- ~121,63 gradi in una vista a 21:9

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_frustum_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **frustum_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera3D_property_frustum_offset>`

.. rst-class:: classref-property-setget

- |void| **set_frustum_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_frustum_offset**\ (\ )

Offset del tronco della telecamera. Questo può essere modificato rispetto all'impostazione predefinita per creare effetti di "tronco inclinato" come `Y-shearing <https://zdoom.org/wiki/Y-shearing>`__.

\ **Nota:** Efficace solo se :ref:`projection<class_Camera3D_property_projection>` è :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

L'offset orizzontale (X) della vista della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_keep_aspect:

.. rst-class:: classref-property

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **keep_aspect** = ``1`` :ref:`🔗<class_Camera3D_property_keep_aspect>`

.. rst-class:: classref-property-setget

- |void| **set_keep_aspect_mode**\ (\ value\: :ref:`KeepAspect<enum_Camera3D_KeepAspect>`\ )
- :ref:`KeepAspect<enum_Camera3D_KeepAspect>` **get_keep_aspect_mode**\ (\ )

L'asse da bloccare quando si regola :ref:`fov<class_Camera3D_property_fov>` o :ref:`size<class_Camera3D_property_size>`. Può essere :ref:`KEEP_WIDTH<class_Camera3D_constant_KEEP_WIDTH>` o :ref:`KEEP_HEIGHT<class_Camera3D_constant_KEEP_HEIGHT>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **near** = ``0.05`` :ref:`🔗<class_Camera3D_property_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

La distanza dal limite più vicino di culling per questa fotocamera rispetto al suo asse Z locale. Valori più bassi consentono alla telecamera di vedere gli oggetti più vicini alla sua origine, al costo di una precisione minore su l'*intero* intervallo. Valori inferiori a quelli predefiniti possono portare a un aumento dello Z-fighting.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_projection:

.. rst-class:: classref-property

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **projection** = ``0`` :ref:`🔗<class_Camera3D_property_projection>`

.. rst-class:: classref-property-setget

- |void| **set_projection**\ (\ value\: :ref:`ProjectionType<enum_Camera3D_ProjectionType>`\ )
- :ref:`ProjectionType<enum_Camera3D_ProjectionType>` **get_projection**\ (\ )

La modalità di proiezione della telecamera. Nella modalità :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`, la distanza Z degli oggetti dallo spazio locale della telecamera ridimensiona la loro dimensione percepita.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_Camera3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

Le dimensioni della telecamera in metri misurate come il diametro della larghezza o altezza, a seconda di :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`. Applicabile solo nelle modalità ortogonale e troncoconica.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

L'offset verticale (Y) della vista della telecamera.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Camera3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ enable_next\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Camera3D_method_clear_current>`

Se questa è la telecamera attuale, la rimuove dall'attuale. Se ``enable_next`` è ``true``, richiede di rendere attuale la telecamera successiva, se presente.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_camera_projection**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_projection>`

Restituisce la matrice di proiezione utilizzata da questa telecamera per eseguire il rendering nella viewport associata. La telecamera deve essere all'interno dell'albero di scene per funzionare.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_rid**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_rid>`

Restituisce il RID della telecamera dal :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_camera_transform**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_transform>`

Restituisce la trasformazione della telecamera più gli spostamenti verticale (:ref:`v_offset<class_Camera3D_property_v_offset>`) e orizzontale (:ref:`h_offset<class_Camera3D_property_h_offset>`); e qualsiasi altra regolazione apportata alla posizione e all'orientamento della telecamera da telecamere di sottoclassi come :ref:`XRCamera3D<class_XRCamera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_cull_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Camera3D_method_get_cull_mask_value>`

Restituisce se lo strato specificato di :ref:`cull_mask<class_Camera3D_property_cull_mask>` è abilitato o meno, dato un ``layer_number`` compreso tra 1 e 20.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_frustum:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **get_frustum**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_frustum>`

Restituisce i piani troncoconici della telecamera in unità di spazio mondiale come un array di :ref:`Plane<class_Plane>` nell'ordine seguente: vicino, lontano, sinistro, alto, destro, basso. Da non confondere con :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_pyramid_shape_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_pyramid_shape_rid**\ (\ ) :ref:`🔗<class_Camera3D_method_get_pyramid_shape_rid>`

Restituisce il RID di una forma piramidale che racchiude il tronco di vista della telecamera, ignorando il piano vicino della telecamera. La punta della piramide rappresenta la posizione della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_behind:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_behind**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_behind>`

Restituisce ``true`` se la posizione indicata è dietro la telecamera (la parte blu del diagramma collegato). `Vedi questo diagramma <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__ per una panoramica dei metodi di richiesta della posizione.

\ **Nota:** Una posizione che restituisce ``false`` potrebbe essere ancora fuori dal campo visivo della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_in_frustum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_in_frustum**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_in_frustum>`

Restituisce ``true`` se la posizione data è all'interno del tronco della telecamera (la parte verde del diagramma collegato). `Vedi questo diagramma <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__ per una panoramica dei metodi di richiesta della posizione.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera3D_method_make_current>`

Rende questa telecamera la telecamera attuale per la :ref:`Viewport<class_Viewport>` (vedi la descrizione della classe). Se il nodo telecamera non è all'interno dell'albero di scene, tenterà di diventare attuale una volta aggiunto.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_local_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_local_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_local_ray_normal>`

Restituisce un vettore normale dalla posizione del punto sullo schermo diretto lungo la telecamera. Le telecamere ortogonali sono normalizzate. Le telecamere prospettiche tengono conto della prospettiva, della larghezza e altezza dello schermo, ecc.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_position**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_position>`

Restituisce il punto 3D nello spazio mondiale che corrisponde alla coordinata 2D indicata nel rettangolo di :ref:`Viewport<class_Viewport>` su un piano che è lontano ``z_depth`` unità dalla telecamera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_normal>`

Restituisce un vettore normale nello spazio mondiale, ottenuto proiettando un punto sul rettangolo della :ref:`Viewport<class_Viewport>` mediante la proiezione inversa della telecamera. Ciò è utile per proiettare raggi sotto forma di (origine, normale) per l'intersezione o la selezione di oggetti.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_origin:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_origin**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_origin>`

Restituisce una posizione 3D nello spazio mondiale, ottenuto proiettando un punto sul rettangolo della :ref:`Viewport<class_Viewport>` mediante la proiezione inversa della telecamera. Ciò è utile per proiettare raggi sotto forma di (origine, normale) per l'intersezione o la selezione di oggetti.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_cull_mask_value:

.. rst-class:: classref-method

|void| **set_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Camera3D_method_set_cull_mask_value>`

In base a ``value``, abilita o disabilita il livello specificato in :ref:`cull_mask<class_Camera3D_property_cull_mask>`, dato un ``layer_number`` compreso tra 1 e 20.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_frustum:

.. rst-class:: classref-method

|void| **set_frustum**\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_frustum>`

Sets the camera projection to frustum mode (see :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`), by specifying a ``size``, an ``offset``, and the ``z_near`` and ``z_far`` clip planes in world space units. The ``size`` parameter represents the size of the near plane, either its width or height depending on the value of :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`. See also :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_orthogonal:

.. rst-class:: classref-method

|void| **set_orthogonal**\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_orthogonal>`

Imposta la proiezione della telecamera in modalità ortogonale (vedi :ref:`PROJECTION_ORTHOGONAL<class_Camera3D_constant_PROJECTION_ORTHOGONAL>`), specificando una dimensione ``size`` e i piani di ritaglio ``z_near`` e ``z_far`` in unità di spazio mondiale.

Come suggerimento, i giochi 3D che sembrano 2D utilizzano spesso questa proiezione, con ``size`` specificato in pixel.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_perspective:

.. rst-class:: classref-method

|void| **set_perspective**\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_perspective>`

Imposta la proiezione della telecamera sulla modalità prospettiva (vedi :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`), specificando un angolo ``fov`` (campo visivo) in gradi e i piani di ritaglio ``z_near`` e ``z_far`` in unità di spazio mondiale.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_unproject_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **unproject_position**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_unproject_position>`

Restituisce le coordinate 2D nel rettangolo della :ref:`Viewport<class_Viewport>` che mappa al punto 3D specificato in spazio mondiale.

\ **Nota:** Quando si usa per posizionare gli elementi della GUI su una viewport 3D, usa :ref:`is_position_behind()<class_Camera3D_method_is_position_behind>` per evitare che appaiano se il punto 3D è dietro la telecamera:

::

    # Questo blocco di codice fa parte di uno script che eredita da Node3D.
    # `control` è un riferimento a un nodo che eredita da Control.
    control.visible = not get_viewport().get_camera_3d().is_position_behind(global_transform.origin)
    control.position = get_viewport().get_camera_3d().unproject_position(global_transform.origin)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
