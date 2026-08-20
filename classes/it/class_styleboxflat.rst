:github_url: hide

.. _class_StyleBoxFlat:

StyleBoxFlat
============

**Eredita:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uno :ref:`StyleBox<class_StyleBox>` personalizzabile che non utilizza una texture.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Configurando varie proprietà di questo style box, puoi ottenere molti aspetti comuni senza la necessità di una texture. Ciò include bordi arrotondati facoltativi, antialiasing, ombre e inclinazione.

È consentito impostare il raggio degli angoli su valori elevati. Non appena gli angoli si sovrappongono, lo style box passerà a un sistema relativo.

.. code:: text

    height = 30
    corner_radius_top_left = 50
    corner_radius_bottom_left = 100

Il sistema relativo ora prenderebbe il rapporto 1:2 dei due angoli sinistri per calcolare la larghezza effettiva degli angoli. Entrambi gli angoli aggiunti non saranno **mai** maggiori dell'altezza. Risultato:

.. code:: text

    corner_radius_top_left: 10
    corner_radius_bottom_left: 20

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>`                           | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`anti_aliasing_size<class_StyleBoxFlat_property_anti_aliasing_size>`                 | ``1.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`bg_color<class_StyleBoxFlat_property_bg_color>`                                     | ``Color(0.6, 0.6, 0.6, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`border_blend<class_StyleBoxFlat_property_border_blend>`                             | ``false``                   |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`border_color<class_StyleBoxFlat_property_border_color>`                             | ``Color(0.8, 0.8, 0.8, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>`               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>`                   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>`                 | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>`                     | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>`                           | ``8``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_left<class_StyleBoxFlat_property_corner_radius_bottom_left>`   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_right<class_StyleBoxFlat_property_corner_radius_bottom_right>` | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_left<class_StyleBoxFlat_property_corner_radius_top_left>`         | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_right<class_StyleBoxFlat_property_corner_radius_top_right>`       | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`draw_center<class_StyleBoxFlat_property_draw_center>`                               | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`             | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>`                 | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>`               | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>`                   | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_StyleBoxFlat_property_shadow_color>`                             | ``Color(0, 0, 0, 0.6)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_StyleBoxFlat_property_shadow_offset>`                           | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>`                               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`skew<class_StyleBoxFlat_property_skew>`                                             | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width<class_StyleBoxFlat_method_get_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                               |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width_min<class_StyleBoxFlat_method_get_border_width_min>`\ (\ ) |const|                                                                     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_corner_radius<class_StyleBoxFlat_method_get_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxFlat_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width<class_StyleBoxFlat_method_set_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width_all<class_StyleBoxFlat_method_set_border_width_all>`\ (\ width\: :ref:`int<class_int>`\ )                                              |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius<class_StyleBoxFlat_method_set_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius_all<class_StyleBoxFlat_method_set_corner_radius_all>`\ (\ radius\: :ref:`int<class_int>`\ )                                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxFlat_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxFlat_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_StyleBoxFlat_property_anti_aliasing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **anti_aliasing** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing>`

.. rst-class:: classref-property-setget

- |void| **set_anti_aliased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_anti_aliased**\ (\ )

L'antialiasing disegna un piccolo anello attorno ai bordi, che sfuma in trasparenza. Di conseguenza, i bordi appaiono molto più lisci. Ciò è evidente solo quando si usano angoli arrotondati o :ref:`skew<class_StyleBoxFlat_property_skew>`.

\ **Nota:** Quando si usano angoli smussati con angoli di 45 gradi (:ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>` = 1), si consiglia di impostare :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>` su ``false`` per garantire immagini nitide ed evitare possibili problemi visivi.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_anti_aliasing_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **anti_aliasing_size** = ``1.0`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing_size>`

.. rst-class:: classref-property-setget

- |void| **set_aa_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aa_size**\ (\ )

Questo modifica la dimensione dell'effetto antialiasing. ``1.0`` è consigliato per un risultato ottimale al 100% di scala, identico a come sono renderizzati i rettangoli arrotondati nei browser Web e nella maggior parte dei software di disegno vettoriale.

\ **Nota:** Valori più alti possono produrre un effetto sfocato ma possono anche creare artefatti indesiderati su piccoli style box con angoli di ampio raggio.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_bg_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **bg_color** = ``Color(0.6, 0.6, 0.6, 1)`` :ref:`🔗<class_StyleBoxFlat_property_bg_color>`

.. rst-class:: classref-property-setget

- |void| **set_bg_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_bg_color**\ (\ )

Il colore di sfondo dello stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **border_blend** = ``false`` :ref:`🔗<class_StyleBoxFlat_property_border_blend>`

.. rst-class:: classref-property-setget

- |void| **set_border_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_border_blend**\ (\ )

Se ``true``, il bordo sfumerà nel colore dello sfondo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(0.8, 0.8, 0.8, 1)`` :ref:`🔗<class_StyleBoxFlat_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Imposta il colore del bordo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_bottom** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Spessore del bordo inferiore.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_left>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Spessore del bordo sinistro.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_right>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Spessore del bordo destro.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_top** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_top>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Spessore del bordo superiore.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_detail:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_detail** = ``8`` :ref:`🔗<class_StyleBoxFlat_property_corner_detail>`

.. rst-class:: classref-property-setget

- |void| **set_corner_detail**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_detail**\ (\ )

Imposta il numero di vertici usati per ogni angolo. Valori più alti risultano in angoli più arrotondati, a scapito delle prestazioni. Quando si sceglie un valore, si dovrebbe tenere in considerazione il raggio dell'angolo (:ref:`set_corner_radius_all()<class_StyleBoxFlat_method_set_corner_radius_all>`).

Per raggi d'angolo inferiori a 10, ``4`` o ``5`` dovrebbero essere sufficienti. Per raggi d'angolo inferiori a 30, valori compresi tra ``8`` e ``12`` dovrebbero essere sufficienti.

Un dettaglio d'angolo di ``1`` risulterà in angoli smussati invece di angoli arrotondati, il che è utile per alcuni effetti artistici.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Il raggio dell'angolo inferiore sinistro. Se ``0``, l'angolo non è arrotondato.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Il raggio dell'angolo inferiore destro. Se ``0``, l'angolo non è arrotondato.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Il raggio dell'angolo superiore sinistro. Se ``0``, l'angolo non è arrotondato.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

Il raggio dell'angolo superiore destro. Se ``0``, l'angolo non è arrotondato.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Attiva il disegno della parte interna dello stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande lo stylebox all'esterno del rettangolo di controllo sul lato inferiore. Utile in combinazione con :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>` per disegnare un bordo all'esterno del rettangolo di controllo.

\ **Nota:** A differenza di :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`, :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>` non *influenza* la dimensione dell'area cliccabile per i :ref:`Control<class_Control>`. Ciò può avere un impatto negativo sull'usabilità se utilizzato in modo errato, poiché l'utente potrebbe provare a cliccare su un'area dello StyleBox che non può effettivamente ricevere clic.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande lo stylebox all'esterno del rettangolo di controllo sul lato sinistro. Utile in combinazione con :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>` per disegnare un bordo all'esterno del rettangolo di controllo.

\ **Nota:** A differenza di :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>`, :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>` non *influenza* la dimensione dell'area cliccabile per i :ref:`Control<class_Control>`. Ciò può avere un impatto negativo sull'usabilità se utilizzato in modo errato, poiché l'utente potrebbe provare a cliccare su un'area dello StyleBox che non può effettivamente ricevere clic.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande lo stylebox all'esterno del rettangolo di controllo sul lato destro. Utile in combinazione con :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>` per disegnare un bordo all'esterno del rettangolo di controllo.

\ **Nota:** A differenza di :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>`, :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>` non *influenza* la dimensione dell'area cliccabile per i :ref:`Control<class_Control>`. Ciò può avere un impatto negativo sull'usabilità se utilizzato in modo errato, poiché l'utente potrebbe provare a cliccare su un'area dello StyleBox che non può effettivamente ricevere clic.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Espande lo stylebox all'esterno del rettangolo di controllo sul lato superiore. Utile in combinazione con :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>` per disegnare un bordo all'esterno del rettangolo di controllo.

\ **Nota:** A differenza di :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>`, :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>` non *influenza* la dimensione dell'area cliccabile per i :ref:`Control<class_Control>`. Ciò può avere un impatto negativo sull'usabilità se utilizzato in modo errato, poiché l'utente potrebbe provare a cliccare su un'area dello StyleBox che non può effettivamente ricevere clic.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0.6)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

Il colore dell'ombra. Non ha effetto se :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>` è inferiore a 1.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

L'offset dell'ombra in pixel. Aggiusta la posizione dell'ombra relativamente allo stylebox.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

La dimensione dell'ombra in pixel.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_skew:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **skew** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_skew**\ (\ )

Se impostato su un valore diverso da zero su entrambi gli assi, :ref:`skew<class_StyleBoxFlat_property_skew>` distorce lo StyleBox orizzontalmente e/o verticalmente. Può essere utilizzato per interfacce utente in stile "futuristico". I valori positivi inclinano lo StyleBox verso destra (asse X) e verso l'alto (asse Y), mentre i valori negativi inclinano lo StyleBox verso sinistra (asse X) e verso il basso (asse Y).

\ **Nota:** Per garantire che il testo non tocchi i bordi dello StyleBox, considera di aumentare il margine del contenuto dello :ref:`StyleBox<class_StyleBox>` (vedi :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`). È preferibile aumentare il margine del contenuto anziché il margine di espansione (vedi :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`), poiché l'aumento del margine di espansione non aumenta la dimensione dell'area cliccabile per i :ref:`Control<class_Control>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StyleBoxFlat_method_get_border_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width>`

Restituisce la larghezza del bordo specificato con :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_border_width_min:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width_min**\ (\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width_min>`

Restituisce il bordo più fino tra i quattro bordi.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_corner_radius:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_corner_radius>`

Restituisce il raggio dell'angolo ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_expand_margin>`

Restituisce la dimensione del margine di espansione del lato specificato con :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width:

.. rst-class:: classref-method

|void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width>`

Imposta la larghezza del bordo del lato specificato (:ref:`Side<enum_@GlobalScope_Side>`) su ``width`` pixel.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width_all:

.. rst-class:: classref-method

|void| **set_border_width_all**\ (\ width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width_all>`

Imposta la larghezza del bordo su ``width`` pixel per tutti i lati.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius:

.. rst-class:: classref-method

|void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius>`

Imposta il raggio d'angolo su ``radius`` pixel per l'angolo ``corner``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius_all:

.. rst-class:: classref-method

|void| **set_corner_radius_all**\ (\ radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius_all>`

Imposta il raggio dell'angolo su ``radius`` pixel per tutti gli angoli.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin>`

Imposta il margine di espansione a ``size`` pixel per il lato specificato con :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin_all>`

Imposta il margine di espansione a ``size`` pixel per tutti i lati.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
