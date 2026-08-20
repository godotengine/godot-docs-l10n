:github_url: hide

.. _class_TextureProgressBar:

TextureProgressBar
==================

**Eredita:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Barra di avanzamento basata su texture. Utile per le schermate di caricamento e le barre di vita o stamina.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

TextureProgressBar funziona come :ref:`ProgressBar<class_ProgressBar>`, ma usa fino a 3 texture invece della risorsa :ref:`Theme<class_Theme>` di Godot. Può essere usata per creare barre di avanzamento orizzontali, verticali e radiali.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`                             | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`           | mouse_filter                                                                              | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>`           | ``false``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`       | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`         | ``360.0``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`       | ``0.0``                                                                      |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                                                       | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | step                                                                                      | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>`     | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_left<class_TextureProgressBar_property_stretch_margin_left>`         | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_right<class_TextureProgressBar_property_stretch_margin_right>`       | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_top<class_TextureProgressBar_property_stretch_margin_top>`           | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_over<class_TextureProgressBar_property_texture_over>`                       |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`               |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`texture_progress_offset<class_TextureProgressBar_property_texture_progress_offset>` | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_under<class_TextureProgressBar_property_texture_under>`                     |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_over<class_TextureProgressBar_property_tint_over>`                             | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_progress<class_TextureProgressBar_property_tint_progress>`                     | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_under<class_TextureProgressBar_property_tint_under>`                           | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_stretch_margin<class_TextureProgressBar_method_get_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_stretch_margin<class_TextureProgressBar_method_set_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TextureProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_TextureProgressBar_FillMode>`

.. _class_TextureProgressBar_constant_FILL_LEFT_TO_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_LEFT_TO_RIGHT** = ``0``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie da sinistra a destra.

.. _class_TextureProgressBar_constant_FILL_RIGHT_TO_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_RIGHT_TO_LEFT** = ``1``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie da destra a sinistra.

.. _class_TextureProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie dall'alto verso il basso.

.. _class_TextureProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie dal basso verso l'alto.

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE** = ``4``

Converte il nodo in una barra radiale. La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie in senso orario. Vedi :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`, :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` e :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>` per controllare il modo in cui la barra si riempie.

.. _class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_COUNTER_CLOCKWISE** = ``5``

Converte il nodo in una barra radiale. La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie in senso antiorario. Vedi :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`, :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` e :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>` per controllare il modo in cui la barra si riempie.

.. _class_TextureProgressBar_constant_FILL_BILINEAR_LEFT_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_LEFT_AND_RIGHT** = ``6``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie dal centro, espandendosi sia verso sinistra sia verso destra.

.. _class_TextureProgressBar_constant_FILL_BILINEAR_TOP_AND_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_TOP_AND_BOTTOM** = ``7``

La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie dal centro, espandendosi sia verso l'alto sia verso il basso.

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE** = ``8``

Converte il nodo in una barra radiale. La :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` si riempie radialmente dal centro, espandendosi sia in senso orario sia antiorario. Vedi :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`, :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` e :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>` per controllare il modo in cui la barra si riempie.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextureProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_TextureProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

La direzione di riempimento. Vedi :ref:`FillMode<enum_TextureProgressBar_FillMode>` per i valori possibili.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_nine_patch_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nine_patch_stretch** = ``false`` :ref:`🔗<class_TextureProgressBar_property_nine_patch_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_nine_patch_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_nine_patch_stretch**\ (\ )

Se ``true``, Godot tratta le texture della barra come in :ref:`NinePatchRect<class_NinePatchRect>`. Usa le proprietà ``stretch_margin_*`` come :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` per impostare la griglia 3×3 del nove-sezioni. Quando si usa un :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` radiale, questa impostazione abiliterà lo stiramento solo per :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, mentre :ref:`texture_under<class_TextureProgressBar_property_texture_under>` e :ref:`texture_over<class_TextureProgressBar_property_texture_over>` saranno trattati come in :ref:`NinePatchRect<class_NinePatchRect>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_center_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **radial_center_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_radial_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_radial_center_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_radial_center_offset**\ (\ )

Scosta :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` se :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` è :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` o :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`.

\ **Nota:** Il centro radiale effettivo rimane sempre entro i limiti di :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`. Se è necessario spostarlo fuori dai limiti della texture, modifica :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` per contenere ulteriore spazio vuoto dove necessario.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_fill_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_fill_degrees** = ``360.0`` :ref:`🔗<class_TextureProgressBar_property_radial_fill_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_fill_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fill_degrees**\ (\ )

Il limite superiore per il riempimento di :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` se :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` è :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` o :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. Quando il ``value`` del nodo è uguale al suo ``max_value``, la texture si riempie fino a questo angolo.

Vedi :ref:`Range.value<class_Range_property_value>`, :ref:`Range.max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_initial_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_initial_angle** = ``0.0`` :ref:`🔗<class_TextureProgressBar_property_radial_initial_angle>`

.. rst-class:: classref-property-setget

- |void| **set_radial_initial_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radial_initial_angle**\ (\ )

Angolo di partenza per il riempimento di :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` se :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` è :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` o :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. Quando il ``value`` del nodo è uguale al suo ``min_value``, la texture non è visualizzata affatto. Quando il ``value`` aumenta, la texture si riempie e tende verso :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`.

\ **Nota:** :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` è compreso tra ``0`` e ``360`` gradi (inclusi).

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_bottom** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

L'altezza della riga inferiore del 9-sezioni. Un margine di 16 significa che gli angoli inferiori e il lato del 9-sezioni avranno un'altezza di 16 pixel. Puoi impostare tutti e 4 i valori di margine individualmente per creare pannelli con bordi non uniformi. Efficace solo se :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_left** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La larghezza della colonna sinistra del 9-sezioni. Efficace solo se :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_right** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La larghezza della colonna destra del 9-sezioni. Efficace solo se :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_top** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

L'altezza della riga superiore del 9-sezioni. Efficace solo se :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_over:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_over** :ref:`🔗<class_TextureProgressBar_property_texture_over>`

.. rst-class:: classref-property-setget

- |void| **set_over_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_over_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` che è disegnata sopra la barra di avanzamento. Usalo per aggiungere evidenziazioni o una cornice superiore che nasconde parte di :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_progress** :ref:`🔗<class_TextureProgressBar_property_texture_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_progress_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` che è ritagliata in base al ``value`` e al :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` del nodo. Man mano che ``value`` aumenta, la texture si riempie. È visualizzata completamente quando ``value`` raggiunge ``max_value``. Non viene visualizzata affatto se ``value`` è uguale a ``min_value``.

La proprietà ``value`` deriva da :ref:`Range<class_Range>`. Vedi :ref:`Range.value<class_Range_property_value>`, :ref:`Range.min_value<class_Range_property_min_value>`, :ref:`Range.max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_progress_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_texture_progress_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_progress_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_progress_offset**\ (\ )

L'offset di :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`. Utile per :ref:`texture_over<class_TextureProgressBar_property_texture_over>` e :ref:`texture_under<class_TextureProgressBar_property_texture_under>` con bordi sofisticati, per evitare margini trasparenti nella texture di avanzamento.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_under:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_under** :ref:`🔗<class_TextureProgressBar_property_texture_under>`

.. rst-class:: classref-property-setget

- |void| **set_under_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_under_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` che è disegnata sotto la barra di avanzamento. Lo sfondo della barra.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_over:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_over** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_over>`

.. rst-class:: classref-property-setget

- |void| **set_tint_over**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_over**\ (\ )

Moltiplica il colore della texture :ref:`texture_over<class_TextureProgressBar_property_texture_over>` della barra. L'effetto è simile a :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`, eccetto che influenza solo questa texture specifica invece che l'intero nodo.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_progress:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_progress** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_progress>`

.. rst-class:: classref-property-setget

- |void| **set_tint_progress**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_progress**\ (\ )

Moltiplica il colore della texture :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` della barra.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_under:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_under** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_under>`

.. rst-class:: classref-property-setget

- |void| **set_tint_under**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_under**\ (\ )

Moltiplica il colore della texture :ref:`texture_under<class_TextureProgressBar_property_texture_under>` della barra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TextureProgressBar_method_get_stretch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_TextureProgressBar_method_get_stretch_margin>`

Restituisce il margine di allungamento con l'indice specificato. Vedi :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` e le proprietà correlate.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_method_set_stretch_margin:

.. rst-class:: classref-method

|void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TextureProgressBar_method_set_stretch_margin>`

Imposta il margine di allungamento con l'indice specificato. Vedi :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` e le proprietà correlate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
