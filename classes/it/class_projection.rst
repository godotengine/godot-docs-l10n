:github_url: hide

.. _class_Projection:

Projection
==========

Una matrice 4×4 per trasformazioni proiettive in 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una matrice 4×4 utilizzata per trasformazioni proiettive in 3D. Può rappresentare trasformazioni quali traslazione, rotazione, scala, inclinazione e divisione prospettica. È composta da quattro colonne :ref:`Vector4<class_Vector4>`.

Per trasformazioni puramente lineari (traslazione, rotazione e scala), si consiglia di utilizzare :ref:`Transform3D<class_Transform3D>`, poiché è più performante e richiede meno memoria.

Utilizzata internamente come matrice di proiezione di :ref:`Camera3D<class_Camera3D>`.

\ **Nota:** In un contesto booleano, una proiezione sarà valutata come ``false`` se è uguale a :ref:`IDENTITY<class_Projection_constant_IDENTITY>`. Altrimenti, una proiezione sarà valutata sempre come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`w<class_Projection_property_w>` | ``Vector4(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`x<class_Projection_property_x>` | ``Vector4(1, 0, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`y<class_Projection_property_y>` | ``Vector4(0, 1, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`z<class_Projection_property_z>` | ``Vector4(0, 0, 1, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ )                                                                                                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_depth_correction<class_Projection_method_create_depth_correction>`\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_fit_aabb<class_Projection_method_create_fit_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_for_hmd<class_Projection_method_create_for_hmd>`\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum<class_Projection_method_create_frustum>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum_aspect<class_Projection_method_create_frustum_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_light_atlas_rect<class_Projection_method_create_light_atlas_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal<class_Projection_method_create_orthogonal>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal_aspect<class_Projection_method_create_orthogonal_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective<class_Projection_method_create_perspective>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective_hmd<class_Projection_method_create_perspective_hmd>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Projection_method_determinant>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`flipped_y<class_Projection_method_flipped_y>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_aspect<class_Projection_method_get_aspect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_far_plane_half_extents<class_Projection_method_get_far_plane_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fov<class_Projection_method_get_fov>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fovy<class_Projection_method_get_fovy>`\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static|                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_lod_multiplier<class_Projection_method_get_lod_multiplier>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_pixels_per_meter<class_Projection_method_get_pixels_per_meter>`\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`           | :ref:`get_projection_plane<class_Projection_method_get_projection_plane>`\ (\ plane\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_viewport_half_extents<class_Projection_method_get_viewport_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_far<class_Projection_method_get_z_far>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_near<class_Projection_method_get_z_near>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`inverse<class_Projection_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthogonal<class_Projection_method_is_orthogonal>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`jitter_offseted<class_Projection_method_jitter_offseted>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`perspective_znear_adjusted<class_Projection_method_perspective_znear_adjusted>`\ (\ new_znear\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Projection_operator_neq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`operator *<class_Projection_operator_mul_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_Projection_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Projection_operator_eq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator []<class_Projection_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Projection_Planes:

.. rst-class:: classref-enumeration

enum **Planes**: :ref:`🔗<enum_Projection_Planes>`

.. _class_Projection_constant_PLANE_NEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_NEAR** = ``0``

Il valore dell'indice del piano di ritaglio vicino della proiezione.

.. _class_Projection_constant_PLANE_FAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_FAR** = ``1``

Il valore dell'indice del piano di ritaglio lontano della proiezione.

.. _class_Projection_constant_PLANE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_LEFT** = ``2``

Il valore dell'indice del piano di ritaglio sinistro della proiezione.

.. _class_Projection_constant_PLANE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_TOP** = ``3``

Il valore dell'indice del piano di ritaglio in alto della proiezione.

.. _class_Projection_constant_PLANE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_RIGHT** = ``4``

Il valore dell'indice del piano di ritaglio destro della proiezione.

.. _class_Projection_constant_PLANE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_BOTTOM** = ``5``

Il valore dell'indice del piano di ritaglio in basso della proiezione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Projection_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)`` :ref:`🔗<class_Projection_constant_IDENTITY>`

Una **Projection** senza trasformazione definita. Quando applicata ad altre strutture dati, nessuna trasformazione viene eseguita.

.. _class_Projection_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Projection_constant_ZERO>`

Una **Projection** con tutti i valori inizializzati a 0. Quando applicati ad altre strutture dati, verranno azzerati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Projection_property_w:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **w** = ``Vector4(0, 0, 0, 1)`` :ref:`🔗<class_Projection_property_w>`

Il vettore W della matrice di proiezione (la colonna 3). Equivalente all'indice di array ``3``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_x:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **x** = ``Vector4(1, 0, 0, 0)`` :ref:`🔗<class_Projection_property_x>`

Il vettore X della matrice di proiezione (la colonna 0). Equivalente all'indice di array ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_y:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **y** = ``Vector4(0, 1, 0, 0)`` :ref:`🔗<class_Projection_property_y>`

Il vettore Y della matrice di proiezione (la colonna 1). Equivalente all'indice di array ``1``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_z:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **z** = ``Vector4(0, 0, 1, 0)`` :ref:`🔗<class_Projection_property_z>`

Il vettore Z della matrice di proiezione (la colonna 2). Equivalente all'indice di array ``2``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Projection_constructor_Projection:

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ ) :ref:`🔗<class_Projection_constructor_Projection>`

Costruisce un **Projection** predefinito identico a :ref:`IDENTITY<class_Projection_constant_IDENTITY>`.

\ **Nota:** In C#, costruisce un **Projection** identico a :ref:`ZERO<class_Projection_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Costruisce un **Projection** come copia del **Projection** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Costruisce una proiezione come copia del :ref:`Transform3D<class_Transform3D>` specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ )

Costruisce una proiezione da quattro valori :ref:`Vector4<class_Vector4>` (colonne della matrice).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Projection_method_create_depth_correction:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_depth_correction**\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Projection_method_create_depth_correction>`

Crea una nuova **Projection** che proietta posizioni da un intervallo di profondità da ``-1`` a ``1`` a uno che varia da ``0`` a ``1``, e capovolge le posizioni proiettate verticalmente, in base al ``flip_y``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_fit_aabb:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_fit_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static| :ref:`🔗<class_Projection_method_create_fit_aabb>`

Crea una nuova **Projection** che ridimensiona una determinata proiezione per adattarla a un determinato :ref:`AABB<class_AABB>` nello spazio di proiezione.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_for_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_for_hmd**\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_for_hmd>`

Crea una nuova **Projection** per proiettare le posizioni su un display montato sulla testa con il rapporto di aspetto X:Y, la distanza tra gli occhi, la larghezza del display, la distanza dalla lente, il fattore di sovracampionamento e i piani di ritaglio della profondità specificati.

\ ``eye`` crea la proiezione per l'occhio sinistro quando impostato su 1, o per l'occhio destro quando impostato su 2.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_frustum>`

Crea una nuova **Projection** che proietta le posizioni in un tronco con i piani di ritaglio specificati.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_frustum_aspect>`

Crea una nuova **Projection** che proietta le posizioni in un tronco con le dimensioni, il rapporto di aspetto X:Y, lo scostamento e i piani di ritaglio specificati.

\ ``flip_fov`` determina se il campo visivo della proiezione è capovolto sulla sua diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_light_atlas_rect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_light_atlas_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static| :ref:`🔗<class_Projection_method_create_light_atlas_rect>`

Crea una nuova **Projection** che proietta le posizioni nel :ref:`Rect2<class_Rect2>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal>`

Crea una nuova **Projection** che proietta le posizioni utilizzando una proiezione ortogonale con i piani di ritaglio specificati.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal_aspect>`

Crea una nuova **Projection** che proietta le posizioni attraverso una proiezione ortogonale con le dimensioni, il rapporto di aspetto X:Y e i piani di ritaglio specificati.

\ ``flip_fov`` determina se il campo visivo della proiezione è capovolto sulla sua diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_perspective>`

Crea una nuova **Projection** che proietta le posizioni attraverso una proiezione prospettica con il campo visivo sull'asse Y (in gradi), il rapporto di aspetto X:Y e i piani di ritaglio specificati.

\ ``flip_fov`` determina se il campo visivo della proiezione è capovolto sulla sua diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective_hmd**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_perspective_hmd>`

Crea una nuova **Projection** che proietta le posizioni attraverso una proiezione prospettica con il campo visivo sull'asse Y (in gradi), il rapporto di aspetto X:Y e le distanze di ritaglio specificati. La proiezione è regolata per un display montato sulla testa con la distanza specificata tra gli occhi e la distanza a un punto su cui è possibile mettere a fuoco.

\ ``eye`` crea la proiezione per l'occhio sinistro quando impostato su 1, o per l'occhio destro quando impostato su 2.

\ ``flip_fov`` determina se il campo visivo della proiezione è capovolto sulla sua diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Projection_method_determinant>`

Restituisce un valore scalare che è il fattore con segno in base al quale le aree sono ridimensionate da questa matrice. Se il segno è negativo, la matrice inverte l'orientamento dell'area.

Il determinante può essere utilizzato per calcolare l'invertibilità di una matrice o risolvere sistemi lineari di equazioni che coinvolgono la matrice, oltre ad altre applicazioni.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_flipped_y:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **flipped_y**\ (\ ) |const| :ref:`🔗<class_Projection_method_flipped_y>`

Restituisce una copia di questa **Projection** con i segni dei valori della colonna Y invertiti.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_aspect**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_aspect>`

Restituisce il rapporto di aspetto X:Y della viewport di questa **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_far_plane_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_far_plane_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_far_plane_half_extents>`

Restituisce le dimensioni del piano di ritaglio lontano della proiezione, divise per due.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_fov>`

Restituisce il campo di vista orizzontale della proiezione (in gradi).

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fovy:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fovy**\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_get_fovy>`

Restituisce il campo visivo verticale della proiezione (in gradi) associato al campo visivo orizzontale (in gradi) e al rapporto d'aspetto specificati.

\ **Nota:** A differenza della maggior parte dei metodi di **Projection**, ci si aspetta che ``aspect`` sia 1 diviso per il rapporto di aspetto X:Y.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_lod_multiplier:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_lod_multiplier**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_lod_multiplier>`

Restituisce il fattore in base al quale il livello di dettaglio visibile è ridimensionato da questa **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_pixels_per_meter:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pixels_per_meter**\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_pixels_per_meter>`

Restituisce ``for_pixel_width`` diviso per la larghezza della viewport misurata in metri sul piano vicino, dopo che questa **Projection** viene applicata.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_projection_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_projection_plane**\ (\ plane\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_projection_plane>`

Restituisce il piano di ritaglio di questa **Projection** il cui indice è dato da ``plane``.

\ ``plane`` dovrebbe essere uguale a uno tra :ref:`PLANE_NEAR<class_Projection_constant_PLANE_NEAR>`, :ref:`PLANE_FAR<class_Projection_constant_PLANE_FAR>`, :ref:`PLANE_LEFT<class_Projection_constant_PLANE_LEFT>`, :ref:`PLANE_TOP<class_Projection_constant_PLANE_TOP>`, :ref:`PLANE_RIGHT<class_Projection_constant_PLANE_RIGHT>` o :ref:`PLANE_BOTTOM<class_Projection_constant_PLANE_BOTTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_viewport_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_viewport_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_viewport_half_extents>`

Restituisce le dimensioni del piano della viewport su cui questa **Projection** proietta le posizioni, divise per due.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_far:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_far**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_far>`

Restituisce la distanza per questa **Projection** oltre la quale le posizioni sono ritagliate.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_near:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_near**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_near>`

Restituisce la distanza per questa **Projection** prima della quale le posizioni sono ritagliate.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_inverse:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **inverse**\ (\ ) |const| :ref:`🔗<class_Projection_method_inverse>`

Restituisce una **Projection** che esegue l'inverso della trasformazione proiettiva di questa **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_is_orthogonal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthogonal**\ (\ ) |const| :ref:`🔗<class_Projection_method_is_orthogonal>`

Restituisce ``true`` se questa proiezione esegue una proiezione ortogonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_jitter_offseted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **jitter_offseted**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Projection_method_jitter_offseted>`

Restituisce una **Projection** con i valori X e Y del :ref:`Vector2<class_Vector2>` specificato aggiunti rispettivamente al primo e al secondo valore della colonna finale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_perspective_znear_adjusted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **perspective_znear_adjusted**\ (\ new_znear\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Projection_method_perspective_znear_adjusted>`

Restituisce una **Projection** con la distanza di ritaglio vicina regolata su ``new_znear``.

\ **Nota:** La **Projection** originale deve essere una proiezione prospettica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Projection_operator_neq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_neq_Projection>`

Restituisce ``true`` se le proiezioni non sono uguali.

\ **Nota:** A causa di errori di precisione in virgola mobile, questo potrebbe restituire ``true``, anche se le proiezioni sono virtualmente uguali. Un metodo ``is_equal_approx`` potrebbe essere aggiunto in una futura versione di Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Projection:

.. rst-class:: classref-operator

:ref:`Projection<class_Projection>` **operator ***\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_mul_Projection>`

Restituisce una **Projection** che applica le trasformazioni combinate di questa **Projection** e ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_Projection_operator_mul_Vector4>`

Proietta (moltiplica) il :ref:`Vector4<class_Vector4>` fornito per questa matrice **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_eq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_eq_Projection>`

Restituisce ``true`` se le proiezioni sono uguali.

\ **Nota:** A causa di errori di precisione in virgola mobile, questo potrebbe restituire ``false``, anche se le proiezioni sono virtualmente uguali. Un metodo ``is_equal_approx`` potrebbe essere aggiunto in una futura versione di Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Projection_operator_idx_int>`

Restituisce la colonna della **Projection** con l'indice specificato.

Gli indici sono nel seguente ordine: x, y, z, w.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
