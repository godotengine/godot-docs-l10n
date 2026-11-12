:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**Deprecato:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un livello di scorrimento parallasse da utilizzare con :ref:`ParallaxBackground<class_ParallaxBackground>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un ParallaxLayer deve essere figlio di un nodo :ref:`ParallaxBackground<class_ParallaxBackground>`. Ogni ParallaxLayer può essere impostato per muoversi a velocità diverse rispetto al movimento della telecamera o al valore :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

I figli di questo nodo saranno influenzati dal suo offset di scorrimento.

\ **Nota:** Tutte le modifiche alla posizione e alla scala di questo nodo apportate dopo il suo ingresso nella scena saranno ignorate.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

The interval, in pixels, at which the **ParallaxLayer** is drawn repeatedly. Useful for creating an infinitely scrolling background. If an axis is set to ``0``, the **ParallaxLayer** will be drawn only once along that direction.

\ **Note:** If you want the repetition to pixel-perfect match a :ref:`Texture2D<class_Texture2D>` displayed by a child node, you should account for any scale applied to the texture when defining this interval. For example, if you use a child :ref:`Sprite2D<class_Sprite2D>` scaled to ``0.5`` to display a 600×600 texture, and want this sprite to be repeated continuously horizontally, you should set the mirroring to ``Vector2(300, 0)``.

\ **Note:** If the length of the viewport axis is bigger than twice the repeated axis size, it will not repeat infinitely, as the parallax layer only draws 2 instances of the layer at any given time. The visibility window is calculated from the parent :ref:`ParallaxBackground<class_ParallaxBackground>`'s position, not the layer's own position. So, if you use mirroring, **do not** change the **ParallaxLayer** position relative to its parent. Instead, if you need to adjust the background's position, set the :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` property in the parent :ref:`ParallaxBackground<class_ParallaxBackground>`.

\ **Note:** Despite the name, the layer will not be mirrored, it will only be repeated.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

Offset del ParallaxLayer rispetto a :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>` del ParallaxBackground genitore.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

Moltiplica il movimento del ParallaxLayer. Se un asse è impostato su ``0``, non scorrerà.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
