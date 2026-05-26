:github_url: hide

.. _class_TextureRect:

TextureRect
===========

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo che visualizza una texture.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un controllo che visualizza una texture, ad esempio un'icona all'interno di una GUI. Il posizionamento della texture può essere controllato con la proprietà :ref:`stretch_mode<class_TextureRect_property_stretch_mode>`. La texture può essere ridimensionata, ripetuta o centrata all'interno del suo rettangolo di delimitazione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`ExpandMode<enum_TextureRect_ExpandMode>`   | :ref:`expand_mode<class_TextureRect_property_expand_mode>`   | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_h<class_TextureRect_property_flip_h>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_v<class_TextureRect_property_flip_v>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`     | mouse_filter                                                 | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`StretchMode<enum_TextureRect_StretchMode>` | :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`texture<class_TextureRect_property_texture>`           |                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TextureRect_ExpandMode:

.. rst-class:: classref-enumeration

enum **ExpandMode**: :ref:`🔗<enum_TextureRect_ExpandMode>`

.. _class_TextureRect_constant_EXPAND_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_KEEP_SIZE** = ``0``

La dimensione minima sarà uguale alla dimensione della texture, ovvero il **TextureRect** non può essere più piccolo della texture.

.. _class_TextureRect_constant_EXPAND_IGNORE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_IGNORE_SIZE** = ``1``

La dimensione della texture non sarà presa in considerazione per il calcolo delle dimensioni minime, quindi il **TextureRect** può essere ridotto oltre le dimensioni della texture.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH** = ``2``

L'altezza della texture sarà ignorata. La larghezza minima sarà uguale all'altezza attuale. Utile per i layout orizzontali, ad esempio all'interno di un :ref:`HBoxContainer<class_HBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH_PROPORTIONAL** = ``3``

Uguale a :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, ma mantiene le proporzioni della texture.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT** = ``4``

La larghezza della texture sarà ignorata. L'altezza minima sarà uguale alla larghezza attuale. Utile per i layout verticali, ad esempio all'interno di un :ref:`VBoxContainer<class_VBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT_PROPORTIONAL** = ``5``

Uguale a :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, ma mantiene le proporzioni della texture.

.. rst-class:: classref-item-separator

----

.. _enum_TextureRect_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureRect_StretchMode>`

.. _class_TextureRect_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_SCALE** = ``0``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo.

.. _class_TextureRect_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_TILE** = ``1``

Tile inside the node's bounding rectangle.

\ **Note:** :ref:`STRETCH_TILE<class_TextureRect_constant_STRETCH_TILE>` mode is not supported for :ref:`texture<class_TextureRect_property_texture>` set to an :ref:`AtlasTexture<class_AtlasTexture>` with non-zero :ref:`AtlasTexture.margin<class_AtlasTexture_property_margin>`.

.. _class_TextureRect_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP** = ``2``

La texture mantiene le sue dimensioni originali e rimane nell'angolo in alto a sinistra del rettangolo di delimitazione.

.. _class_TextureRect_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

La texture mantiene le sue dimensioni originali e centrata nel rettangolo di delimitazione del nodo.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo, ma mantiene le proporzioni della texture.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Ridimensiona la texture per adattarla al rettangolo di delimitazione del nodo, la centra, e mantiene le sue proporzioni.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Ridimensiona la texture in modo che il lato più corto si adatti al rettangolo di delimitazione. L'altro lato si adatta ai limiti del nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextureRect_property_expand_mode:

.. rst-class:: classref-property

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **expand_mode** = ``0`` :ref:`🔗<class_TextureRect_property_expand_mode>`

.. rst-class:: classref-property-setget

- |void| **set_expand_mode**\ (\ value\: :ref:`ExpandMode<enum_TextureRect_ExpandMode>`\ )
- :ref:`ExpandMode<enum_TextureRect_ExpandMode>` **get_expand_mode**\ (\ )

**Sperimentale:** Using :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, :ref:`EXPAND_FIT_WIDTH_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL>`, :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, or :ref:`EXPAND_FIT_HEIGHT_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL>` may result in unstable behavior in some :ref:`Container<class_Container>` controls. This behavior may be re-evaluated and changed in the future.

Definisce come le dimensioni minime sono determinate in base alle dimensioni della texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureRect_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Se ``true``, la texture è capovolta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureRect_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Se ``true``, la texture è capovolta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureRect_StretchMode>` **stretch_mode** = ``0`` :ref:`🔗<class_TextureRect_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureRect_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureRect_StretchMode>` **get_stretch_mode**\ (\ )

Controlla il comportamento della texture quando si ridimensiona il rettangolo di delimitazione del nodo.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TextureRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La risorsa :ref:`Texture2D<class_Texture2D>` del nodo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
