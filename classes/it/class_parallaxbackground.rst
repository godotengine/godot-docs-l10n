:github_url: hide

.. _class_ParallaxBackground:

ParallaxBackground
==================

**Deprecato:** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Eredita:** :ref:`CanvasLayer<class_CanvasLayer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo usato per creare uno sfondo a scorrimento parallasse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un ParallaxBackground usa uno o più nodi figli :ref:`ParallaxLayer<class_ParallaxLayer>` per creare un effetto parallasse. Ogni :ref:`ParallaxLayer<class_ParallaxLayer>` può muoversi a una velocità diversa tramite :ref:`ParallaxLayer.motion_offset<class_ParallaxLayer_property_motion_offset>`. Questo crea un'illusione di profondità in un gioco 2D. Se non usato con un :ref:`Camera2D<class_Camera2D>`, bisogna calcolare :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>` manualmente.

\ **Nota:** Ogni **ParallaxBackground** è disegnato su una specifica :ref:`Viewport<class_Viewport>` e non può essere condiviso tra più :ref:`Viewport<class_Viewport>`, vedi :ref:`CanvasLayer.custom_viewport<class_CanvasLayer_property_custom_viewport>`. Quando usi più :ref:`Viewport<class_Viewport>`, ad esempio in un gioco a schermo diviso, devi creare un singolo **ParallaxBackground** per ogni :ref:`Viewport<class_Viewport>` su cui vuoi che sia disegnato.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | layer                                                                                         | ``-100`` (overrides :ref:`CanvasLayer<class_CanvasLayer_property_layer>`) |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_offset<class_ParallaxBackground_property_scroll_base_offset>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_scale<class_ParallaxBackground_property_scroll_base_scale>`                 | ``Vector2(1, 1)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`scroll_ignore_camera_zoom<class_ParallaxBackground_property_scroll_ignore_camera_zoom>` | ``false``                                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>`                   | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`                         | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ParallaxBackground_property_scroll_base_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_offset**\ (\ )

Lo scostamento della posizione di base per tutti i figli :ref:`ParallaxLayer<class_ParallaxLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_base_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_scale**\ (\ )

La scala di movimento di base per tutti i figli :ref:`ParallaxLayer<class_ParallaxLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_ignore_camera_zoom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_ignore_camera_zoom** = ``false`` :ref:`🔗<class_ParallaxBackground_property_scroll_ignore_camera_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_zoom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_zoom**\ (\ )

Se ``true``, gli elementi nel :ref:`ParallaxLayer<class_ParallaxLayer>` figlio non sono influenzati dal livello di zoom della telecamera.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_begin** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Limiti in alto a sinistra per l'inizio dello scorrimento. Se la telecamera è fuori da questo limite, lo sfondo smetterà di scorrere. Deve essere inferiore a :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>` per funzionare.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_end** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Limiti in basso a destra per la fine dello scorrimento. Se la telecamera è fuori da questo limite, lo sfondo smetterà di scorrere. Deve essere superiore a :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>` per funzionare.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

Valore di scorrimento del ParallaxBackground. Calcolato automaticamente quando si utilizza una :ref:`Camera2D<class_Camera2D>`, ma può essere utilizzato per gestire manualmente lo scorrimento quando nessuna telecamera è presente.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
