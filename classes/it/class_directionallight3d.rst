:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight3D:

DirectionalLight3D
==================

**Eredita:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Luce direzionale proveniente da lontano, come quella del sole.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una luce direzionale è un tipo di nodo :ref:`Light3D<class_Light3D>` che modella un numero infinito di raggi paralleli che coprono l'intera scena. È utilizzato per luci con forte intensità che si trovano lontano dalla scena (ad esempio: per modellare la luce solare o la luce lunare). 

La luce è emessa nella direzione -Z della base globale del nodo. Per una luce non ruotata, ciò significa che la luce è emessa in avanti, illuminando il lato frontale di un modello 3D (vedi :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` e :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`). La posizione del nodo è ignorata. Solo la base è utilizzata per determinare la direzione della luce.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Luci e ombre 3D <../tutorials/3d/lights_and_shadows.html#directional-light>`__

- :doc:`Fingere l'illuminazione globale <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`directional_shadow_blend_splits<class_DirectionalLight3D_property_directional_shadow_blend_splits>` | ``false`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`     | ``0.8``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` | ``100.0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` | :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>`                 | ``2``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` | ``20.0``  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`           | ``0.1``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`           | ``0.2``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`           | ``0.5``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`       | :ref:`sky_mode<class_DirectionalLight3D_property_sky_mode>`                                               | ``0``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_DirectionalLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_DirectionalLight3D_ShadowMode>`

.. _class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_ORTHOGONAL** = ``0``

Renderizza l'intera mappa delle ombre della scena da un punto di vista ortogonale. Questa è la modalità di ombre direzionali più veloce. Potrebbe causare ombre più sfocate sugli oggetti vicini.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_2_SPLITS** = ``1``

Divide il tronco della vista in 2 aree, ciascuna con la propria mappa delle ombre. Questa modalità di ombre è un compromesso tra :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` e :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` in termini di prestazioni.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_4_SPLITS** = ``2``

Divide il tronco di vista in 4 aree, ciascuna con la propria mappa delle ombre. Questa è la modalità di ombre direzionali più lenta.

.. rst-class:: classref-item-separator

----

.. _enum_DirectionalLight3D_SkyMode:

.. rst-class:: classref-enumeration

enum **SkyMode**: :ref:`🔗<enum_DirectionalLight3D_SkyMode>`

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_AND_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_AND_SKY** = ``0``

Rende la luce visibile sia nell'illuminazione della scena sia nel rendering del cielo.

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_ONLY** = ``1``

Rende la luce visibile solo nell'illuminazione della scena (inclusa l'illuminazione diretta e l'illuminazione globale). Quando si usa questa modalità, la luce non sarà visibile dagli shader del cielo.

.. _class_DirectionalLight3D_constant_SKY_MODE_SKY_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_SKY_ONLY** = ``2``

Rende la luce visibile solo agli shader del cielo. Quando si usa questa modalità, la luce non proietterà luce nella scena (né tramite illuminazione diretta né tramite illuminazione globale), ma è possibile accedervi tramite gli shader del cielo. Questo può essere utile, ad esempio, quando si desidera controllare gli effetti del cielo senza illuminare la scena (ad esempio durante un ciclo notturno).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_DirectionalLight3D_property_directional_shadow_blend_splits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional_shadow_blend_splits** = ``false`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_blend_splits>`

.. rst-class:: classref-property-setget

- |void| **set_blend_splits**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blend_splits_enabled**\ (\ )

Se ``true``, il dettaglio dell'ombra è sacrificato in cambio di transizioni più fluide tra le divisioni. Abilitare la divisione della fusione delle ombre ha anche un costo di prestazioni moderato. Questo è ignorato quando :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` è :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_fade_start:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_fade_start** = ``0.8`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_fade_start>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Proporzione di :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` in cui l'ombra inizia a dissolversi. A :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`, l'ombra scomparirà. Il valore predefinito è un equilibrio tra dissolvenza uniforme e visibilità dell'ombra distante. Se la telecamera si muove velocemente e :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` è bassa, considera abbassare :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` sotto ``0.8`` per rendere meno evidenti le transizioni dell'ombra. Al contrario, se hai regolato :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` per coprire l'intera scena, puoi impostare :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` su ``1.0`` per evitare che l'ombra si dissolva in lontananza (verrà invece troncata bruscamente).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_max_distance** = ``100.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distanza massima per le divisioni delle ombre. Aumentando questo valore, le ombre direzionali saranno visibili da più lontano, a costo di un dettaglio complessivo delle ombre inferiore e di prestazioni inferiori (poiché è necessario includere più oggetti nel rendering delle ombre direzionali).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **directional_shadow_mode** = ``2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

L'algoritmo di rendering delle ombre della luce.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_pancake_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_pancake_size** = ``20.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_pancake_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Imposta la dimensione del pancake direzionale dell'ombra. Il pancake devia l'inizio del tronco della telecamera dell'ombra per fornire una risoluzione di profondità effettiva più elevata per l'ombra. Tuttavia, una dimensione elevata del pancake può causare artefatti nelle ombre di oggetti di grandi dimensioni che sono vicini al bordo del tronco. Ridurre la dimensione del pancake può aiutare. Impostando la dimensione su ``0`` si disattiva l'effetto pancake.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_1:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_1** = ``0.1`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_1>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distanza della telecamera alla divisione 1 dell'ombra. Relativa a :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Utilizzata solo quando :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` è :ref:`SHADOW_PARALLEL_2_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS>` o :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_2:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_2** = ``0.2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_2>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distanza della divisione 1 all'ombra alla divisione 2. Relativa a :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Utilizzata solo quando :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` è :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_3:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_3** = ``0.5`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_3>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La distanza della divisione 2 dell'ombra alla divisione 3. Relativa a :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Utilizzata solo quando :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` è :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_sky_mode:

.. rst-class:: classref-property

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **sky_mode** = ``0`` :ref:`🔗<class_DirectionalLight3D_property_sky_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sky_mode**\ (\ value\: :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`\ )
- :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **get_sky_mode**\ (\ )

Se questa **DirectionalLight3D** è visibile nel cielo, nella scena, o in entrambi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
