:github_url: hide

.. _class_SpriteBase3D:

SpriteBase3D
============

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`, :ref:`Sprite3D<class_Sprite3D>`

Nodo di sprite 2D nell'ambiente 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo che visualizza informazioni di una texture 2D in un ambiente 3D. Vedi anche :ref:`Sprite3D<class_Sprite3D>` dove sono definite molte altre proprietà.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_antialiasing_edge<class_SpriteBase3D_property_alpha_antialiasing_edge>` | ``0.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` | :ref:`alpha_antialiasing_mode<class_SpriteBase3D_property_alpha_antialiasing_mode>` | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`             | :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_hash_scale<class_SpriteBase3D_property_alpha_hash_scale>`               | ``1.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_scissor_threshold<class_SpriteBase3D_property_alpha_scissor_threshold>` | ``0.5``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                  | :ref:`axis<class_SpriteBase3D_property_axis>`                                       | ``2``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`         | :ref:`billboard<class_SpriteBase3D_property_billboard>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`centered<class_SpriteBase3D_property_centered>`                               | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`double_sided<class_SpriteBase3D_property_double_sided>`                       | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`fixed_size<class_SpriteBase3D_property_fixed_size>`                           | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_h<class_SpriteBase3D_property_flip_h>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_v<class_SpriteBase3D_property_flip_v>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`modulate<class_SpriteBase3D_property_modulate>`                               | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`no_depth_test<class_SpriteBase3D_property_no_depth_test>`                     | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                   | :ref:`offset<class_SpriteBase3D_property_offset>`                                   | ``Vector2(0, 0)``     |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`                           | ``0.01``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                           | :ref:`render_priority<class_SpriteBase3D_property_render_priority>`                 | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`shaded<class_SpriteBase3D_property_shaded>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`         | :ref:`texture_filter<class_SpriteBase3D_property_texture_filter>`                   | ``3``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`transparent<class_SpriteBase3D_property_transparent>`                         | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_SpriteBase3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                                |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_SpriteBase3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`               | :ref:`get_item_rect<class_SpriteBase3D_method_get_item_rect>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_SpriteBase3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SpriteBase3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_SpriteBase3D_DrawFlags>`

.. _class_SpriteBase3D_constant_FLAG_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_TRANSPARENT** = ``0``

Se è impostata, la trasparenza e l'opacità della texture sono utilizzate per rendere invisibili quelle parti dello sprite.

.. _class_SpriteBase3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_SHADED** = ``1``

Se impostato, le luci nell'ambiente influiscono sullo sprite.

.. _class_SpriteBase3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``2``

Se impostato, la texture può essere vista anche dal retro. Altrimenti, la texture è invisibile se guardata da dietro.

.. _class_SpriteBase3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``3``

Disattiva il test di profondità, quindi questo oggetto viene disegnato sopra tutti gli altri. Tuttavia, gli oggetti disegnati dopo di esso nell'ordine di disegno potrebbero coprirlo.

.. _class_SpriteBase3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``4``

L'etichetta è ridimensionata in base alla profondità in modo che appaia sempre delle stesse dimensioni sullo schermo.

.. _class_SpriteBase3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_MAX** = ``5``

Rappresenta la dimensione dell'enumerazione :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_SpriteBase3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_SpriteBase3D_AlphaCutMode>`

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Questa modalità effettua una fusione alfa standard. Può visualizzare aree traslucide, ma si potrebbero notare problemi di ordinamento della trasparenza quando più materiali trasparenti si sovrappongono.

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

Questa modalità consente solo pixel completamente trasparenti o completamente opachi. Saranno visibili bordi netti a meno che non sia abilitata una qualche forma di antialiasing nello spazio dello schermo (vedi :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). Questa modalità è anche nota come *alpha testing* o *trasparenza a 1 bit*.

.. _class_SpriteBase3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Questa modalità disegna pixel completamente opachi nel pre-passaggio di profondità. È più lenta di :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` o :ref:`ALPHA_CUT_DISCARD<class_SpriteBase3D_constant_ALPHA_CUT_DISCARD>`, ma consente di visualizzare aree traslucide e bordi lisci usando un ordinamento corretto.

.. _class_SpriteBase3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

Questa modalità taglia tutti i valori al di sotto di una soglia spazialmente deterministica, il resto rimarrà opaco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpriteBase3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Soglia alla quale sarà applicato l'antialiasing sul canale alfa.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

Il tipo di antialiasing dell'alfa da applicare.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

La modalità di ritaglio alfa da utilizzare per lo sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

La scala di hashing per l'Alpha Hash. Valori consigliati tra ``0`` e ``2``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_SpriteBase3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Soglia oltre la quale l'alpha scissor scarterà i valori.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **axis** = ``2`` :ref:`🔗<class_SpriteBase3D_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_axis**\ (\ )

La direzione in cui è rivolta la faccia frontale della texture.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_SpriteBase3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

La modalità billboard da usare per lo sprite.

\ **Nota:** Quando il billboarding è abilitato e il materiale proietta anche ombre, i billboard saranno rivolti verso **la** telecamera nella scena durante il rendering delle ombre. Nelle scene con più telecamere, non è possibile determinare l'ombra desiderata e ciò comporterà un comportamento indefinito. Vedi `Richiesta di pull su GitHub #72638 <https://github.com/godotengine/godot/pull/72638>`__ per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_SpriteBase3D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Se ``true``, la texture sarà centrata.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_SpriteBase3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Se ``true``, la texture è visibile anche dal retro, se ``false``, è invisibile se guardata da dietro.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_SpriteBase3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Se ``true``, la texture viene renderizzata con le stesse dimensioni a prescindere dalla distanza. Le dimensioni della texture sullo schermo sono le stesse che avrebbe se la telecamera fosse a ``1.0`` unità di distanza dall'origine della texture, a prescindere dalla distanza effettiva dalla telecamera. Il campo visivo della :ref:`Camera3D<class_Camera3D>` (o :ref:`Camera3D.size<class_Camera3D_property_size>` in modalità ortogonale/tronco) influenza comunque le dimensioni della texture disegnata.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Se ``true``, la texture è capovolta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Se ``true``, la texture è capovolta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SpriteBase3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Un valore di colore usato per *moltiplicare* i colori della texture. Può essere usato per la colorazione dell'atmosfera o per simulare il colore della luce ambientale.

\ **Nota:** A differenza di :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` per il 2D, i colori con valori superiori a ``1.0`` (sovra-luminosi) non sono supportati.

\ **Nota:** Se un :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` è definito sul **SpriteBase3D**, la sostituzione del materiale deve essere configurata per tenere conto dei colori dei vertici per l'albedo. Altrimenti, il colore definito in :ref:`modulate<class_SpriteBase3D_property_modulate>` sarà ignorato. Per un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` deve essere ``true``. Per uno :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` deve essere inserito nella funzione ``fragment()`` dello shader.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_SpriteBase3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Se ``true``, il test di profondità è disabilitato e l'oggetto sarà disegnato in ordine di rendering.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_SpriteBase3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

L'offset di disegno della texture.

\ **Nota:** Quando si aumenta :ref:`offset<class_SpriteBase3D_property_offset>`.y in Sprite3D, lo sprite si sposta verso l'alto nello spazio mondiale (ovvero +Y punta verso l'alto).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_SpriteBase3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

La dimensione della larghezza di un pixel sullo sprite per ridimensionarlo in 3D.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_SpriteBase3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Imposta la priorità di rendering per lo sprite. Gli oggetti con priorità più alta saranno ordinati davanti agli oggetti con priorità più bassa.

\ **Nota:** Questo si applica solo se :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>` è impostato su :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` (valore predefinito).

\ **Nota:** Questo si applica solo all'ordinamento degli oggetti trasparenti. Ciò non avrà alcun impatto sul modo in cui gli oggetti trasparenti sono ordinati rispetto agli oggetti opachi. Questo perché gli oggetti opachi non sono ordinati, mentre gli oggetti trasparenti sono ordinati da dietro in avanti (in base alla priorità).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_SpriteBase3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Se ``true``, la :ref:`Light3D<class_Light3D>` nell':ref:`Environment<class_Environment>` influisce sullo sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_SpriteBase3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Flag di filtro per la texture.

\ **Nota:** Il filtraggio lineare può causare artefatti attorno ai bordi, che sono particolarmente evidenti sulle texture opache. Per evitare ciò, usa texture con colori trasparenti o identici attorno ai bordi.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_transparent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transparent** = ``true`` :ref:`🔗<class_SpriteBase3D_property_transparent>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Se ``true``, la trasparenza e l'opacità della texture sono utilizzate per rendere invisibili quelle parti dello sprite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SpriteBase3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_generate_triangle_mesh>`

Restituisce un :ref:`TriangleMesh<class_TriangleMesh>` con i vertici dello sprite che seguono la sua configurazione attuale (ad esempio, :ref:`axis<class_SpriteBase3D_property_axis>` e :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_draw_flag>`

Restituisce il valore del flag specificato.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_item_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_item_rect**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_item_rect>`

Restituisce il rettangolo che rappresenta questo sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteBase3D_method_set_draw_flag>`

Se ``true``, il flag specificato sarà abilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
