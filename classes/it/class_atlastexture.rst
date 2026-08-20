:github_url: hide

.. _class_AtlasTexture:

AtlasTexture
============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture che ritaglia parte di un'altra Texture2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Risorsa :ref:`Texture2D<class_Texture2D>` che disegna solo parte della sua texture :ref:`atlas<class_AtlasTexture_property_atlas>`, come definita dalla regione (:ref:`region<class_AtlasTexture_property_region>`). È inoltre possibile impostare un ulteriore :ref:`margin<class_AtlasTexture_property_margin>`, che è utile per piccoli aggiustamenti.

È possibile ritagliare molteplici risorse **AtlasTexture** dallo stesso :ref:`atlas<class_AtlasTexture_property_atlas>`. Impacchettare molte texture più piccole in una singola, grande texture aiuta a ottimizzare i costi di memoria video e delle chiamate per il rendering.

\ **Nota:** **AtlasTexture** non può essere utilizzato in un :ref:`AnimatedTexture<class_AnimatedTexture>` e potrebbe non ripetersi correttamente in nodi come :ref:`TextureRect<class_TextureRect>` o :ref:`Sprite2D<class_Sprite2D>`. Per ripetere un **AtlasTexture**, modifica invece la sua :ref:`region<class_AtlasTexture_property_region>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`atlas<class_AtlasTexture_property_atlas>`             |                                                                                        |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`filter_clip<class_AtlasTexture_property_filter_clip>` | ``false``                                                                              |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`margin<class_AtlasTexture_property_margin>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region<class_AtlasTexture_property_region>`           | ``Rect2(0, 0, 0, 0)``                                                                  |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | resource_local_to_scene                                     | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------+-------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AtlasTexture_property_atlas:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **atlas** :ref:`🔗<class_AtlasTexture_property_atlas>`

.. rst-class:: classref-property-setget

- |void| **set_atlas**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_atlas**\ (\ )

La texture che contiene l'atlante. Può essere qualsiasi tipo ereditante da :ref:`Texture2D<class_Texture2D>`, tra cui un altro **AtlasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_filter_clip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_clip** = ``false`` :ref:`🔗<class_AtlasTexture_property_filter_clip>`

.. rst-class:: classref-property-setget

- |void| **set_filter_clip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_filter_clip**\ (\ )

Se ``true``, l'area al di fuori della regione (:ref:`region<class_AtlasTexture_property_region>`) è ritagliata per evitare il bleeding dei pixel circostanti della texture.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_margin:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **margin** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_margin**\ (\ )

Il margine attorno alla regione (:ref:`region<class_AtlasTexture_property_region>`). Utile per piccoli aggiustamenti. Se il :ref:`Rect2.size<class_Rect2_property_size>` di questa proprietà ("w" e "h" nell'editor) è impostato, la texture disegnata è ridimensionata per adattarsi all'interno del margine.

.. rst-class:: classref-item-separator

----

.. _class_AtlasTexture_property_region:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_AtlasTexture_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region**\ (\ )

La regione usata per disegnare l':ref:`atlas<class_AtlasTexture_property_atlas>`. Se una delle dimensioni della regione è ``0``, il valore dalla dimensione dell':ref:`atlas<class_AtlasTexture_property_atlas>` sarà invece utilizzato per quell'asse.

\ **Nota:** Le dimensioni dell'immagine sono sempre numeri interi, quindi le dimensioni effettive della regione sono arrotondate per difetto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
