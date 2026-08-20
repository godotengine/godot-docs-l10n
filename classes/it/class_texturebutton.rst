:github_url: hide

.. _class_TextureButton:

TextureButton
=============

**Eredita:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante visualizzato con una texture. Supporta gli stati Premuto, Passante, Disabilitato e Focalizzato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**TextureButton** ha la stessa funzionalità di :ref:`Button<class_Button>`, eccetto che usa gli sprite invece della risorsa :ref:`Theme<class_Theme>` di Godot. È più veloce da creare, ma non supporta la localizzazione come i :ref:`Control<class_Control>` più complessi.

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene le proprietà e i metodi comuni associati a questo nodo.

\ **Nota:** Si consiglia di impostare una texture per lo stato "normale" (:ref:`texture_normal<class_TextureButton_property_texture_normal>`). Se :ref:`texture_normal<class_TextureButton_property_texture_normal>` non è impostato, **TextureButton** riceverà comunque eventi di input e sarà cliccabile, ma l'utente non sarà in grado di vederlo a meno che non attivi un altro dei suoi stati con una texture assegnata (ad esempio, passandoci sopra il mouse per visualizzare :ref:`texture_hover<class_TextureButton_property_texture_hover>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_h<class_TextureButton_property_flip_h>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_v<class_TextureButton_property_flip_v>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`ignore_texture_size<class_TextureButton_property_ignore_texture_size>` | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`StretchMode<enum_TextureButton_StretchMode>` | :ref:`stretch_mode<class_TextureButton_property_stretch_mode>`               | ``2``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                        | :ref:`texture_click_mask<class_TextureButton_property_texture_click_mask>`   |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_disabled<class_TextureButton_property_texture_disabled>`       |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_focused<class_TextureButton_property_texture_focused>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_hover<class_TextureButton_property_texture_hover>`             |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_normal<class_TextureButton_property_texture_normal>`           |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_pressed<class_TextureButton_property_texture_pressed>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TextureButton_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureButton_StretchMode>`

.. _class_TextureButton_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_SCALE** = ``0``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo.

.. _class_TextureButton_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_TILE** = ``1``

Ripeti all'interno del rettangolo di delimitazione del nodo.

.. _class_TextureButton_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP** = ``2``

La texture mantiene le sue dimensioni originali e rimane nell'angolo in alto a sinistra del rettangolo di delimitazione.

.. _class_TextureButton_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

La texture mantiene le sue dimensioni originali e centrata nel rettangolo di delimitazione del nodo.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo, ma mantiene le proporzioni della texture.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo, la centra, e mantiene le proporzioni della texture.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Ridimensiona la texture in modo che il lato più corto si adatti al rettangolo di delimitazione. L'altro lato si adatta ai limiti del nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextureButton_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureButton_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Se ``true``, la texture è capovolta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureButton_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Se ``true``, la texture è capovolta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_ignore_texture_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_texture_size** = ``false`` :ref:`🔗<class_TextureButton_property_ignore_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_texture_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ignore_texture_size**\ (\ )

Se ``true``, la dimensione della texture non sarà considerata per il calcolo della dimensione minima, quindi il **TextureButton** può essere ridotto oltre la dimensione della texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureButton_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_TextureButton_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureButton_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureButton_StretchMode>` **get_stretch_mode**\ (\ )

Controlla il comportamento della texture quando si ridimensiona il rettangolo di delimitazione del nodo. Vedi le costanti di :ref:`StretchMode<enum_TextureButton_StretchMode>` per le opzioni disponibili.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_click_mask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **texture_click_mask** :ref:`🔗<class_TextureButton_property_texture_click_mask>`

.. rst-class:: classref-property-setget

- |void| **set_click_mask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_click_mask**\ (\ )

Immagine :ref:`BitMap<class_BitMap>` in puro bianco e nero da usare per il rilevamento dei clic. Sulla maschera, i pixel bianchi rappresentano l'area cliccabile del pulsante. Usalo per creare pulsanti con forme curve.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_disabled:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_disabled** :ref:`🔗<class_TextureButton_property_texture_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_texture_disabled**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_disabled**\ (\ )

La texture da visualizzare quando il nodo è disabilitato. Vedi :ref:`BaseButton.disabled<class_BaseButton_property_disabled>`. Se non assegnato, il **TextureButton** visualizza invece :ref:`texture_normal<class_TextureButton_property_texture_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_focused:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_focused** :ref:`🔗<class_TextureButton_property_texture_focused>`

.. rst-class:: classref-property-setget

- |void| **set_texture_focused**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_focused**\ (\ )

La texture da *sovrapporre alla texture di base* quando il nodo ha il focus del mouse o della tastiera. Poiché :ref:`texture_focused<class_TextureButton_property_texture_focused>` viene visualizzato sopra la texture di base, si dovrebbe usare una texture parzialmente trasparente per garantire che la texture di base resti visibile. Una texture che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una texture totalmente trasparente di qualunque dimensione. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_hover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_hover** :ref:`🔗<class_TextureButton_property_texture_hover>`

.. rst-class:: classref-property-setget

- |void| **set_texture_hover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_hover**\ (\ )

Texture da visualizzare quando il mouse passa sopra il nodo. Se non assegnato, **TextureButton** visualizza invece :ref:`texture_normal<class_TextureButton_property_texture_normal>` quando ci si passa sopra.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TextureButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

La texture predefinita da visualizzare, quando il nodo **non** è in stato disabilitato, passante o premuto. Questa texture è ancora visualizzata nello stato focalizzato, con :ref:`texture_focused<class_TextureButton_property_texture_focused>` disegnata sopra.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TextureButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

La texture da visualizzare quando si passa il mouse sul nodo, se il nodo ha il focus sulla tastiera e l'utente preme il tasto Invio oppure se l'utente preme il tasto :ref:`BaseButton.shortcut<class_BaseButton_property_shortcut>`. Se non assegnato, il **TextureButton** visualizza invece :ref:`texture_normal<class_TextureButton_property_texture_normal>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
