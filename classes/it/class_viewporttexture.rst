:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce il contenuto di una :ref:`Viewport<class_Viewport>` come texture dinamica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una **ViewportTexture** fornisce il contenuto di una :ref:`Viewport<class_Viewport>` sotto forma di una :ref:`Texture2D<class_Texture2D>` dinamica. Può essere utilizzata per combinare il rendering dei nodi :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` e :ref:`Node3D<class_Node3D>`. Ad esempio, è possibile utilizzare questa texture per visualizzare una scena 3D all'interno di una :ref:`TextureRect<class_TextureRect>` o un overlay 2D in una :ref:`Sprite3D<class_Sprite3D>`.

Per ottenere una **ViewportTexture** in codice, usa il metodo :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` sulla viewport di destinazione.

\ **Nota:** Una **ViewportTexture** è sempre locale alla sua scena (vedi :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). Se la radice della scena non è pronta, potrebbe restituire dati non corretti (vedi :ref:`Node.ready<class_Node_signal_ready>`).

\ **Nota:** Istanziare scene contenenti una **ViewportTexture** ad alta risoluzione potrebbe causare un evidente scatto nelle prestazioni.

\ **Nota:** Quando si utilizza una :ref:`Viewport<class_Viewport>` con :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` impostato su ``true``, la texture restituita sarà un'immagine HDR con codifica lineare. Potrebbe apparire più scura del normale se visualizzata direttamente sullo schermo. Per convertirla nella codifica sRGB non lineare, puoi fare quanto segue:

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **Nota:** Alcuni nodi come :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>` e :ref:`PointLight2D<class_PointLight2D>` non supportano l'utilizzo diretto di **ViewportTexture**. Per utilizzare i dati di texture da una **ViewportTexture** in questi nodi, è necessario creare una :ref:`ImageTexture<class_ImageTexture>` chiamando :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` sulla **ViewportTexture** e passando il risultato a :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. Questa conversione è un'operazione lenta, quindi non dovrebbe essere eseguita a ogni fotogramma.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di GUI in Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Demo di viewport 3D in 2D <https://godotengine.org/asset-library/asset/2804>`__

- `Demo di viewport 2D in 3D <https://godotengine.org/asset-library/asset/2803>`__

- `Demo di scaling della risoluzione 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

Il percorso al nodo :ref:`Viewport<class_Viewport>` da visualizzare. Questo è relativo alla radice della scena locale (vedi :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **non** ai nodi che usano questa texture.

\ **Nota:** Nell'editor, questo percorso viene aggiornato automaticamente quando la viewport di destinazione o uno dei suoi antenati viene rinominato o spostato. In fase di esecuzione, questo percorso potrebbe non aggiornarsi automaticamente se la radice della scena non può essere trovata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
