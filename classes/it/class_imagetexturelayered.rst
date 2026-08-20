:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**Eredita:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

Classe di base per i tipi di texture che contengono i dati di più :ref:`ImageTexture<class_ImageTexture>`. Ogni immagine ha le stesse dimensioni e lo stesso formato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base per :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` e :ref:`CubemapArray<class_CubemapArray>`. Non può essere utilizzata direttamente, ma contiene tutte le funzioni necessarie per accedere ai tipi di risorse derivati. Vedi anche :ref:`Texture3D<class_Texture3D>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

Crea un **ImageTextureLayered** da un array di :ref:`Image<class_Image>`. Vedi :ref:`Image.create()<class_Image_method_create>` per il formato dati previsto. La prima immagine determina la larghezza, l'altezza, il formato immagine e le impostazioni di mipmapping. Le altre immagini *devono* avere la stessa larghezza, altezza, formato immagine e impostazioni di mipmapping.

Ogni :ref:`Image<class_Image>` rappresenta un ``layer``.

::

    # Riempi un array di immagini con diversi colori.
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # Crea e salva un array di texture 2D. L'array di immagini deve contenere almeno 1 immagine.
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # Crea e salva una cubemap. L'array di immagini deve contenere esattamente 6 immagini.
    # Le immagini in ogni cubemap sono specificate in questo ordine: X+, X-, Y+, Y-, Z+, Z-
    # (nel sistema di coordinate di Godot, quindi Y+ è "su" e Z- è "avanti").
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # Crea e salva un'array di cubemap. L'array di immagini deve contenere esattamente 6 immagini.
    # Le immagini in ogni cubemap sono specificate in questo ordine: X+, X-, Y+, Y-, Z+, Z-
    # (nel sistema di coordinate di Godot, quindi Y+ è "su" e Z- è "avanti").
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

Sostituisce i dati esistenti dell':ref:`Image<class_Image>` nel livello ``layer`` con questa nuova immagine.

L':ref:`Image<class_Image>` fornita deve avere la stessa larghezza, altezza, formato immagine e flag per il mipmapping del resto delle immagini referenziate.

Se il formato immagine non è supportato, sarà decompresso e convertito in un :ref:`Format<enum_Image_Format>` simile e supportato.

L'aggiornamento è immediato: è sincronizzato con il disegno.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
