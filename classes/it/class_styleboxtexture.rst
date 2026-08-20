:github_url: hide

.. _class_StyleBoxTexture:

StyleBoxTexture
===============

**Eredita:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uno :ref:`StyleBox<class_StyleBox>` divisa in nove sezioni basata su una texture.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Uno :ref:`StyleBox<class_StyleBox>` a nove sezioni basato su texture, in un modo simile a :ref:`NinePatchRect<class_NinePatchRect>`. Questo stylebox esegue un ridimensionamento 3×3 di una texture, dove solo la cella centrale è completamente stirata. Ciò rende possibile progettare stili con bordi a prescindere dalle dimensioni dello stylebox.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_StyleBoxTexture_property_axis_stretch_horizontal>` | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_StyleBoxTexture_property_axis_stretch_vertical>`     | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`draw_center<class_StyleBoxTexture_property_draw_center>`                         | ``true``              |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_bottom<class_StyleBoxTexture_property_expand_margin_bottom>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_left<class_StyleBoxTexture_property_expand_margin_left>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_right<class_StyleBoxTexture_property_expand_margin_right>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_top<class_StyleBoxTexture_property_expand_margin_top>`             | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`modulate_color<class_StyleBoxTexture_property_modulate_color>`                   | ``Color(1, 1, 1, 1)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`region_rect<class_StyleBoxTexture_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_StyleBoxTexture_property_texture>`                                 |                       |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_bottom<class_StyleBoxTexture_property_texture_margin_bottom>`     | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_left<class_StyleBoxTexture_property_texture_margin_left>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_right<class_StyleBoxTexture_property_texture_margin_right>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_top<class_StyleBoxTexture_property_texture_margin_top>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxTexture_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_texture_margin<class_StyleBoxTexture_method_get_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                           |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxTexture_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxTexture_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin<class_StyleBoxTexture_method_set_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin_all<class_StyleBoxTexture_method_set_texture_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                       |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_StyleBoxTexture_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_StyleBoxTexture_AxisStretchMode>`

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Allunga la texture dello stylebox. Ciò provoca una distorsione visiva a meno che la dimensione della texture non corrisponda perfettamente a quella dello stylebox.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Ripete la texture dello stylebox per adattarla alle dimensioni dello stylebox secondo il sistema a nove sezioni.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Ripete la texture dello stylebox per adattarla alle dimensioni dello stylebox secondo il sistema a nove sezioni. A differenza di :ref:`AXIS_STRETCH_MODE_TILE<class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE>`, la texture può essere leggermente allungata per ripetere la texture a nove sezioni, senza cuciture.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StyleBoxTexture_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

Controlla come la texture dello stylebox sarà allungata o ripetuta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

Controlla come la texture dello stylebox sarà allungata o ripetuta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxTexture_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Se ``true``, sarà disegnata la sezione centrale della texture a nove sezioni.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande il margine inferiore di questo style box quando viene disegnato, in modo che sia più grande di quanto richiesto.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande il margine sinistro di questo style box quando viene disegnato, in modo che sia più grande di quanto richiesto.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande il margine destro di questo style box quando viene disegnato, in modo che sia più grande di quanto richiesto.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande il margine superiore di questo style box quando viene disegnato, in modo che sia più grande di quanto richiesto.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_modulate_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_StyleBoxTexture_property_modulate_color>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Modula il colore della texture quando viene disegnato questo style box.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_StyleBoxTexture_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

La regione da usare dalla :ref:`texture<class_StyleBoxTexture_property_texture>`.

Ciò equivale a racchiudere prima la :ref:`texture<class_StyleBoxTexture_property_texture>` in un :ref:`AtlasTexture<class_AtlasTexture>` con la stessa regione.

Se vuoto (``Rect2(0, 0, 0, 0)``), sarà usata l'intera :ref:`texture<class_StyleBoxTexture_property_texture>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_StyleBoxTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La texture da utilizzare quando si disegna questo style box.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Aumenta il margine inferiore del riquadro 3×3 della texture .

Un valore più alto significa che una parte maggiore della texture sorgente è considerata parte del bordo inferiore del riquadro 3×3.

Questo è anche il valore utilizzato come riserva per :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>` se è negativo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Aumenta il margine sinistro del riquadro 3×3 della texture .

Un valore più alto significa che una parte maggiore della texture sorgente è considerata parte del bordo sinistro del riquadro 3×3.

Questo è anche il valore utilizzato come riserva per :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>` se è negativo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Aumenta il margine destro del riquadro 3×3 della texture .

Un valore più alto significa che una parte maggiore della texture sorgente è considerata parte del bordo destro del riquadro 3×3.

Questo è anche il valore utilizzato come riserva per :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>` se è negativo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Aumenta il margine superiore del riquadro 3×3 della texture .

Un valore più alto significa che una parte maggiore della texture sorgente è considerata parte del bordo superiore del riquadro 3×3.

Questo è anche il valore utilizzato come riserva per :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>` se è negativo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StyleBoxTexture_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_expand_margin>`

Restituisce la dimensione del margine di espansione del lato specificato come :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_get_texture_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_texture_margin>`

Restituisce la dimensione del margine del lato specificato come :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin>`

Imposta il margine di espansione a ``size`` pixel per il lato specificato con :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin_all>`

Imposta il margine di espansione a ``size`` pixel per tutti i lati.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin:

.. rst-class:: classref-method

|void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin>`

Imposta il margine a ``size`` pixel per il lato specificato come :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin_all:

.. rst-class:: classref-method

|void| **set_texture_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin_all>`

Imposta il margine su ``size`` pixel per tutti i lati.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
