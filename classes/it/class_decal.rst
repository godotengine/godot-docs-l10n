:github_url: hide

.. meta::
	:keywords: stain

.. _class_Decal:

Decal
=====

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo che proietta una texture su un :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I **Decal** servono per proiettare una texture su una :ref:`Mesh<class_Mesh>` nella scena. Utilizza le decalcomanie per aggiungere dettagli a una scena senza influenzare la :ref:`Mesh<class_Mesh>` sottostante. Sono spesso utilizzati per aggiungere intemperie a un edificio, sporcizia o fango al terreno o varietà agli oggetti di scena. Le decalcomanie possono essere spostate in qualsiasi momento, rendendole adatte per cose come ombre a chiazze o punti laser.

Sono costituiti da un :ref:`AABB<class_AABB>` e un gruppo di :ref:`Texture2D<class_Texture2D>` che specificano :ref:`Color<class_Color>`, normale, ORM (occlusione ambientale, ruvidità, metallico) ed emissione. Le decalcomanie sono proiettate all'interno del loro :ref:`AABB<class_AABB>`, quindi la modifica dell'orientamento della decalcomania influenza la direzione in cui sono proiettate. Per impostazione predefinita, le decalcomanie sono proiettate verso il basso (ovvero da Y positivo a Y negativo).

Le :ref:`Texture2D<class_Texture2D>` associate alle decalcomanie sono automaticamente memorizzate in un atlante di texture che serve per disegnare le decalcomanie in modo che tutte le decalcomanie siano disegnate allo stesso tempo. Godot utilizza decalcomanie raggruppate, ovvero sono memorizzate in dati raggruppati e disegnate quando viene disegnata la mesh, non vengono disegnate come effetto in post-elaborazione dopo.

\ **Nota:** Le decalcomanie non possono influenzare la trasparenza di un materiale sottostante, indipendentemente dalla sua modalità di trasparenza (alpha blend, alpha scissor, alpha hash, pre-passaggio opaco). Ciò significa che le aree traslucide o trasparenti di un materiale rimarranno traslucide o trasparenti anche se viene applicata una decalcomania opaca su di esse.

\ **Nota:** Le decalcomanie sono supportate solo nei metodi di rendering Forward+ e Mobile, non Compatibility. Quando si utilizza il metodo di rendering Mobile, è possibile visualizzare solo 8 decalcomanie su ogni risorsa mesh. Tentare di visualizzare più di 8 decalcomanie su una singola risorsa mesh causerà uno sfarfallio sulle decalcomanie mentre la telecamera si muove.

\ **Nota:** Quando si utilizza il metodo di rendering Mobile, le decalcomanie influenzeranno correttamente solo le mesh la cui visibilità AABB interseca con l'AABB della decalcomania. Se si usa uno shader per deformare la mesh in modo che esca dal suo AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` deve essere aumentato sulla mesh. Altrimenti, la decalcomania potrebbe non essere visibile sulla mesh.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`albedo_mix<class_Decal_property_albedo_mix>`                       | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`cull_mask<class_Decal_property_cull_mask>`                         | ``1048575``           |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`     | ``40.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`distance_fade_enabled<class_Decal_property_distance_fade_enabled>` | ``false``             |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`   | ``10.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`emission_energy<class_Decal_property_emission_energy>`             | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`lower_fade<class_Decal_property_lower_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`modulate<class_Decal_property_modulate>`                           | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`normal_fade<class_Decal_property_normal_fade>`                     | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_Decal_property_size>`                                   | ``Vector3(2, 2, 2)``  |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_albedo<class_Decal_property_texture_albedo>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_emission<class_Decal_property_texture_emission>`           |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_normal<class_Decal_property_texture_normal>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_orm<class_Decal_property_texture_orm>`                     |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`upper_fade<class_Decal_property_upper_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_texture<class_Decal_method_get_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_texture<class_Decal_method_set_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

:ref:`Texture2D<class_Texture2D>` corrispondente a :ref:`texture_albedo<class_Decal_property_texture_albedo>`.

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

:ref:`Texture2D<class_Texture2D>` corrispondente a :ref:`texture_normal<class_Decal_property_texture_normal>`.

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

:ref:`Texture2D<class_Texture2D>` corrispondente a :ref:`texture_orm<class_Decal_property_texture_orm>`.

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

:ref:`Texture2D<class_Texture2D>` corrispondente a :ref:`texture_emission<class_Decal_property_texture_emission>`.

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

Dimensione massima dell'enumerazione :ref:`DecalTexture<enum_Decal_DecalTexture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

Fonde il :ref:`Color<class_Color>` albedo della decalcomania con il :ref:`Color<class_Color>` albedo della mesh sottostante. Può essere impostato su ``0.0`` per creare una decalcomania che influenza solo la normale o l'ORM. In tal caso, è comunque richiesta una texture albedo poiché il suo canale alfa determinerà dove la normale e l'ORM saranno sovrascritte. Vedi anche :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Specifica su quali :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` sarà proiettata questa decalcomania. Per impostazione predefinita, le decalcomanie influenzano tutti gli strati. Questo è utilizzato per specificare quali tipi di oggetti ricevono la decalcomania e quali no. Ciò è particolarmente utile per garantire che gli oggetti dinamici non ricevano accidentalmente una decalcomania destinata al terreno sottostante.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

Distanza dalla telecamera alla quale la decalcomania inizia a svanire (in unità 3D).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Se ``true``, le decalcomanie svaniranno gradualmente quando sono lontane dalla :ref:`Camera3D<class_Camera3D>` attiva a partire da :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`. La decalcomania svanirà su :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`, dopodiché verrà scartata e non verrà inviata allo shader. Usa questo per ridurre il numero di decalcomanie attive in una scena e quindi migliorare le prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

La distanza su cui la decalcomania svanisce (in unità 3D). La decalcomania diventa gradualmente più trasparente su questa distanza, fino a diventare completamente invisibile. Valori più elevati rendono la dissolvenza più graduale, più adatta quando la telecamera si muove velocemente.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

Moltiplicatore di energia per la texture di emissione. Ciò farà in modo che la decalcomania emetta luce a un'intensità maggiore o minore, a prescindere dal colore dell'albedo. Vedi anche :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

Imposta la curva lungo la quale la decalcomania svanirà man mano che la superficie si allontana dal centro del suo :ref:`AABB<class_AABB>`. Sono validi solo i valori positivi (i valori negativi saranno limitati a ``0.0``). Vedi anche :ref:`upper_fade<class_Decal_property_upper_fade>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Cambia il :ref:`Color<class_Color>` della decalcomania moltiplicando i colori dell'albedo e dell'emissione con questo valore. Il componente alfa viene esaminato solo quando si moltiplica il colore dell'albedo, non quello dell'emissione. Vedi anche :ref:`emission_energy<class_Decal_property_emission_energy>` e :ref:`albedo_mix<class_Decal_property_albedo_mix>` per cambiare l'intensità di emissione e di albedo indipendentemente l'una dall'altra.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

Dissolve la decalcomania se l'angolo tra :ref:`AABB<class_AABB>` della decalcomania e la superficie di destinazione diventa troppo grande. Un valore di ``0`` proietta la decalcomania a prescindere dall'angolo, un valore di ``1`` limita la decalcomania alle superfici che sono quasi perpendicolari.

\ **Nota:** Impostare :ref:`normal_fade<class_Decal_property_normal_fade>` su un valore maggiore di ``0.0`` ha un piccolo costo in termini di prestazioni dovuto ai calcoli aggiunti dell'angolo normale.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Imposta la dimensione dell':ref:`AABB<class_AABB>` utilizzato dalla decalcomania. Tutte le dimensioni devono essere impostate su un valore maggiore di zero (saranno limitate a ``0.001`` se non sono così). L'AABB va da ``-size/2`` a ``size/2``.

\ **Nota:** Per migliorare l'efficienza di culling delle decalcomanie su "superfici rigide", imposta i loro :ref:`upper_fade<class_Decal_property_upper_fade>` e :ref:`lower_fade<class_Decal_property_lower_fade>` su ``0.0`` e imposta il componente Y di :ref:`size<class_Decal_property_size>` il più basso possibile. Ciò ridurrà la dimensione dell'AABB delle decalcomanie senza influenzarne l'aspetto.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` con il :ref:`Color<class_Color>` di base della decalcomania. Questa texture oppure :ref:`texture_emission<class_Decal_property_texture_emission>` devono essere impostati affinché la decalcomania sia visibile. Utilizza il canale alfa come una maschera per fondere in modo uniforme i bordi della decalcomania con l'oggetto sottostante.

\ **Nota:** A differenza di :ref:`BaseMaterial3D<class_BaseMaterial3D>` la cui modalità filtro può essere regolata in base al materiale, la modalità filtro per le texture di un **Decal** è impostata globalmente con :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` con il :ref:`Color<class_Color>` di emissione della decalcomania. Questa texture oppure :ref:`texture_albedo<class_Decal_property_texture_albedo>` devono essere impostati affinché la decalcomania sia visibile. Utilizza il canale alfa come una maschera per fondere in modo uniforme i bordi della decalcomania con l'oggetto sottostante.

\ **Nota:** A differenza di :ref:`BaseMaterial3D<class_BaseMaterial3D>` la cui modalità filtro può essere regolata in base al materiale, la modalità filtro per le texture di un **Decal** è impostata globalmente con :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` con la mappa normale per pixel per la decalcomania. Usala per aggiungere dettagli aggiuntivi alle decalcomanie.

\ **Nota:** A differenza di :ref:`BaseMaterial3D<class_BaseMaterial3D>` la cui modalità filtro può essere regolata in base al materiale, la modalità filtro per le texture di un **Decal** è impostata globalmente con :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Nota:** Impostando solo questa texture non si otterrà una decalcomania visibile, poiché deve essere impostato anche :ref:`texture_albedo<class_Decal_property_texture_albedo>`. Per creare una decalcomania contenente solo la texture normale, carica una texture albedo in :ref:`texture_albedo<class_Decal_property_texture_albedo>` e imposta :ref:`albedo_mix<class_Decal_property_albedo_mix>` su ``0.0``. Il canale alfa della texture albedo sarà utilizzato per determinare dove la mappa normale della superficie sottostante deve essere sovrascritta (e la sua intensità).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_orm:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_orm** :ref:`🔗<class_Decal_property_texture_orm>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` che memorizza l'occlusione ambientale, la rugosità e il metallico per la decalcomania. Usalo per aggiungere dettagli aggiuntivi alle decalcomanie.

\ **Nota:** A differenza di :ref:`BaseMaterial3D<class_BaseMaterial3D>` la cui modalità di filtro si può regolare per ogni singolo materiale, la modalità di filtro per le texture di un **Decal** è impostata globalmente con :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Nota:** Impostando soltanto questa texture non si otterrà una decalcomania visibile, poiché bisogna impostare anche :ref:`texture_albedo<class_Decal_property_texture_albedo>`. Per creare una decalcomania contenente solo l'ORM, carica una texture albedo in :ref:`texture_albedo<class_Decal_property_texture_albedo>` e imposta :ref:`albedo_mix<class_Decal_property_albedo_mix>` su ``0.0``. Il canale alfa della texture albedo servirà per determinare dove sovrascrivere la mappa ORM della superficie sottostante (e la sua intensità).

\ **Nota:** A causa di limitazioni tecniche, modificare la rugosità della superficie sottostante tramite :ref:`texture_orm<class_Decal_property_texture_orm>` *non* influisce sui riflessi nello spazio dello schermo (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`), sui riflessi da :ref:`VoxelGI<class_VoxelGI>` e sui riflessi dall'SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`). Sono influenzati solo i riflessi dai :ref:`ReflectionProbe<class_ReflectionProbe>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_upper_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_fade** = ``0.3`` :ref:`🔗<class_Decal_property_upper_fade>`

.. rst-class:: classref-property-setget

- |void| **set_upper_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_fade**\ (\ )

Imposta la curva lungo la quale la decalcomania svanirà man mano che la superficie si allontana dal centro dell':ref:`AABB<class_AABB>`. Sono validi solo i valori positivi (i valori negativi saranno limitati a ``0.0``). Vedi anche :ref:`lower_fade<class_Decal_property_lower_fade>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

Restituisce la :ref:`Texture2D<class_Texture2D>` associata alla :ref:`DecalTexture<enum_Decal_DecalTexture>` specificata. Questo metodo esiste per convenienza, nella maggior parte dei casi dovresti accedere direttamente alla texture.

Ad esempio, invece di ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``, usa ``albedo_tex = $Decal.texture_albedo``.

Un caso in cui questo è meglio dell'accesso diretto alla texture è quando si desidera copiare le texture di una decalcomania in un'altra. Ad esempio:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. rst-class:: classref-item-separator

----

.. _class_Decal_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Decal_method_set_texture>`

Imposta la :ref:`Texture2D<class_Texture2D>` associata alla :ref:`DecalTexture<enum_Decal_DecalTexture>` specificata. Questo metodo esiste per convenienza, nella maggior parte dei casi dovresti accedere direttamente alla texture.

Ad esempio, invece di ``$Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``, usa ``$Decal.texture_albedo = albedo_tex``.

Un caso in cui questo è meglio dell'accesso diretto alla texture è quando si desidera copiare le texture di una decalcomania in un'altra. Ad esempio:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
