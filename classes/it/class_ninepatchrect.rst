:github_url: hide

.. _class_NinePatchRect:

NinePatchRect
=============

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo che visualizza una texture mantenendone intatti gli angoli, ma piastrellandone i bordi e il centro.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Noto anche come pannello a 9 sezioni, **NinePatchRect** produce pannelli puliti di qualsiasi dimensioni basati su una piccola texture. Per farlo, divide la texture in una griglia 3×3. Quando si ridimensiona il nodo, piastrella i bordi della texture orizzontalmente o verticalmente, piastrella il centro su entrambi gli assi e lascia gli angoli invariati.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_NinePatchRect_property_axis_stretch_horizontal>` | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_NinePatchRect_property_axis_stretch_vertical>`     | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_center<class_NinePatchRect_property_draw_center>`                         | ``true``                                                              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`               | mouse_filter                                                                         | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_bottom<class_NinePatchRect_property_patch_margin_bottom>`         | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_left<class_NinePatchRect_property_patch_margin_left>`             | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_right<class_NinePatchRect_property_patch_margin_right>`           | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_top<class_NinePatchRect_property_patch_margin_top>`               | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                  | :ref:`region_rect<class_NinePatchRect_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)``                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                          | :ref:`texture<class_NinePatchRect_property_texture>`                                 |                                                                       |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_patch_margin<class_NinePatchRect_method_get_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_patch_margin<class_NinePatchRect_method_set_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_NinePatchRect_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_NinePatchRect_signal_texture_changed>`

Emesso quando la texture del nodo cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_NinePatchRect_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_NinePatchRect_AxisStretchMode>`

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Estende la texture centrale lungo il NinePatchRect. Potrebbe far apparire la texture distorta.

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Ripete la texture centrale lungo il NinePatchRect. Ciò non causerà distorsioni evidenti. La texture deve essere continua affinché funzioni senza visualizzare artefatti tra i bordi.

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Ripete la texture centrale lungo il NinePatchRect, ma estende anche la texture per assicurarsi che ogni ripetizione sia visibile per intero. Potrebbe far apparire la texture distorta, ma meno di :ref:`AXIS_STRETCH_MODE_STRETCH<class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH>`. La texture deve essere continua affinché funzioni senza visualizzare artefatti tra i bordi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NinePatchRect_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

La modalità di stiramento da usare per stirare/ripetere la texture orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

La modalità di stiramento da usare per stirare/ripetere la texture verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_NinePatchRect_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Se ``true``, disegna il centro del pannello. Altrimenti, disegna solo i bordi delle 9 sezioni.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_bottom** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

L'altezza della riga inferiore del pannello a 9-sezioni. Un margine di 16 significa che il lato e gli angoli inferiori del pannello avranno un'altezza di 16 pixel. Puoi impostare tutti e 4 i valori di margine individualmente per creare pannelli con bordi non uniformi.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_left** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La larghezza della colonna sinistra del pannello a 9-sezioni. Un margine di 16 significa che il lato e gli angoli sinistri del pannello avranno una larghezza di 16 pixel. Puoi impostare tutti e 4 i valori di margine individualmente per creare pannelli con bordi non uniformi.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_right** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La larghezza della colonna destra del pannello a 9-sezioni. Un margine di 16 significa che il lato e gli angoli destri del pannello avranno una larghezza di 16 pixel. Puoi impostare tutti e 4 i valori di margine individualmente per creare pannelli con bordi non uniformi.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_top** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

L'altezza della riga superiore del pannello a 9-sezioni. Un margine di 16 significa che il lato e gli angoli superiori del pannello avranno un'altezza di 16 pixel. Puoi impostare tutti e 4 i valori di margine individualmente per creare pannelli con bordi non uniformi.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NinePatchRect_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

Regione rettangolare della texture da mostrare. Se stai lavorando con un atlante, usa questa proprietà per definire l'area che il pannello a 9 sezioni dovrebbe usare. Tutte le altre proprietà sono relative a questa. Se il rettangolo è vuoto, NinePatchRect userà l'intera texture.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_NinePatchRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La risorsa texture del nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_NinePatchRect_method_get_patch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_NinePatchRect_method_get_patch_margin>`

Restituisce la dimensione del margine sul lato specificato come :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_method_set_patch_margin:

.. rst-class:: classref-method

|void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NinePatchRect_method_set_patch_margin>`

Imposta la dimensione del margine sul lato specificato come :ref:`Side<enum_@GlobalScope_Side>` a ``value`` in pixel.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
