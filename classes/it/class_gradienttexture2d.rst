:github_url: hide

.. _class_GradientTexture2D:

GradientTexture2D
=================

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture 2D che crea un motivo con colori ottenuti da un :ref:`Gradient<class_Gradient>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture 2D che ottiene colori da un :ref:`Gradient<class_Gradient>` per riempire i dati della texture. Questa texture è in grado di trasformare una transizione di colore in diversi motivi, come un gradiente lineare o radiale. Come predefinito, la texture è riempita interpolando i colori a partire dagli offset :ref:`fill_from<class_GradientTexture2D_property_fill_from>` a :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, ma il riempimento del gradiente si può ripetere per coprire l'intera texture.

Il gradiente è campionato individualmente per ogni pixel, quindi non rappresenta necessariamente una copia esatta del gradiente (vedi :ref:`width<class_GradientTexture2D_property_width>` e :ref:`height<class_GradientTexture2D_property_height>`). Vedi anche :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`CurveTexture<class_CurveTexture>` e :ref:`CurveXYZTexture<class_CurveXYZTexture>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Fill<enum_GradientTexture2D_Fill>`     | :ref:`fill<class_GradientTexture2D_property_fill>`           | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_from<class_GradientTexture2D_property_fill_from>` | ``Vector2(0, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                | :ref:`fill_to<class_GradientTexture2D_property_fill_to>`     | ``Vector2(1, 0)``                                                                      |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>`              | :ref:`gradient<class_GradientTexture2D_property_gradient>`   |                                                                                        |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`height<class_GradientTexture2D_property_height>`       | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Repeat<enum_GradientTexture2D_Repeat>` | :ref:`repeat<class_GradientTexture2D_property_repeat>`       | ``0``                                                                                  |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | resource_local_to_scene                                      | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                      | :ref:`use_hdr<class_GradientTexture2D_property_use_hdr>`     | ``false``                                                                              |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                        | :ref:`width<class_GradientTexture2D_property_width>`         | ``64``                                                                                 |
   +----------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_GradientTexture2D_Fill:

.. rst-class:: classref-enumeration

enum **Fill**: :ref:`🔗<enum_GradientTexture2D_Fill>`

.. _class_GradientTexture2D_constant_FILL_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_LINEAR** = ``0``

I colori sono interpolati linearmente lungo una linea retta.

.. _class_GradientTexture2D_constant_FILL_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_RADIAL** = ``1``

I colori sono interpolati linearmente in un motivo circolare.

.. _class_GradientTexture2D_constant_FILL_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_SQUARE** = ``2``

I colori sono interpolati linearmente in un motivo quadrato.

.. _class_GradientTexture2D_constant_FILL_CONIC:

.. rst-class:: classref-enumeration-constant

:ref:`Fill<enum_GradientTexture2D_Fill>` **FILL_CONIC** = ``3``

I colori sono interpolati linearmente in un motivo conico.

.. rst-class:: classref-item-separator

----

.. _enum_GradientTexture2D_Repeat:

.. rst-class:: classref-enumeration

enum **Repeat**: :ref:`🔗<enum_GradientTexture2D_Repeat>`

.. _class_GradientTexture2D_constant_REPEAT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_NONE** = ``0``

Il riempimento del gradiente è limitato all'intervallo definito dagli offset :ref:`fill_from<class_GradientTexture2D_property_fill_from>` e :ref:`fill_to<class_GradientTexture2D_property_fill_to>`.

.. _class_GradientTexture2D_constant_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT** = ``1``

La texture è riempita a partire dall'offset :ref:`fill_from<class_GradientTexture2D_property_fill_from>` fino a :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, ripetendo lo stesso motivo in entrambe le direzioni.

.. _class_GradientTexture2D_constant_REPEAT_MIRROR:

.. rst-class:: classref-enumeration-constant

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **REPEAT_MIRROR** = ``2``

La texture è riempita a partire dall'offset :ref:`fill_from<class_GradientTexture2D_property_fill_from>` fino a :ref:`fill_to<class_GradientTexture2D_property_fill_to>`, rispecchiando il motivo in entrambe le direzioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GradientTexture2D_property_fill:

.. rst-class:: classref-property

:ref:`Fill<enum_GradientTexture2D_Fill>` **fill** = ``0`` :ref:`🔗<class_GradientTexture2D_property_fill>`

.. rst-class:: classref-property-setget

- |void| **set_fill**\ (\ value\: :ref:`Fill<enum_GradientTexture2D_Fill>`\ )
- :ref:`Fill<enum_GradientTexture2D_Fill>` **get_fill**\ (\ )

Il tipo di riempimento del gradiente.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_from** = ``Vector2(0, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_from>`

.. rst-class:: classref-property-setget

- |void| **set_fill_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_from**\ (\ )

L'offset iniziale utilizzato per riempire la texture specificato nelle coordinate UV.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_fill_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **fill_to** = ``Vector2(1, 0)`` :ref:`🔗<class_GradientTexture2D_property_fill_to>`

.. rst-class:: classref-property-setget

- |void| **set_fill_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_fill_to**\ (\ )

L'offset finale utilizzato per riempire la texture specificato nelle coordinate UV.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_GradientTexture2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

Il :ref:`Gradient<class_Gradient>` usato per riempire la texture.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``64`` :ref:`🔗<class_GradientTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

Il numero di campioni di colore verticali che saranno ottenuti dal :ref:`Gradient<class_Gradient>`, che rappresenta anche l'altezza della texture.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_repeat:

.. rst-class:: classref-property

:ref:`Repeat<enum_GradientTexture2D_Repeat>` **repeat** = ``0`` :ref:`🔗<class_GradientTexture2D_property_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_repeat**\ (\ value\: :ref:`Repeat<enum_GradientTexture2D_Repeat>`\ )
- :ref:`Repeat<enum_GradientTexture2D_Repeat>` **get_repeat**\ (\ )

Il tipo di ripetizione del gradiente.

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_use_hdr:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hdr** = ``false`` :ref:`🔗<class_GradientTexture2D_property_use_hdr>`

.. rst-class:: classref-property-setget

- |void| **set_use_hdr**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_hdr**\ (\ )

Se ``true``, la texture generata supporterà un'ampia gamma dinamica (formato :ref:`Image.FORMAT_RGBAF<class_Image_constant_FORMAT_RGBAF>`). Ciò consente agli effetti bagliore di funzionare se :ref:`Environment.glow_enabled<class_Environment_property_glow_enabled>` è ``true``. Se ``false``, la texture generata utilizzerà una bassa gamma dinamica; i colori sovra-luminosi saranno limitati (formato :ref:`Image.FORMAT_RGBA8<class_Image_constant_FORMAT_RGBA8>`).

.. rst-class:: classref-item-separator

----

.. _class_GradientTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``64`` :ref:`🔗<class_GradientTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

Il numero di campioni di colore orizzontali che saranno ottenuti dal :ref:`Gradient<class_Gradient>`, che rappresenta anche la larghezza della texture.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
